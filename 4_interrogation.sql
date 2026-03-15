USE streaming;

-- afficher le catalogue complet des films
SELECT * FROM Contenu;

-- afficher le catalogue des films sortie entre 2010 et 2026 pour la recommandation du plus recent au plus ancien
SELECT * FROM Contenu 
	WHERE Date_sortie_contenu BETWEEN '2010-01-01' AND CURDATE()
    ORDER BY Date_sortie_contenu desc; 
    
-- cibler des utilisateurs actifs avec un abonnement standard, premium ou VIP
SELECT Nom_client, Prenom_client, Pays_client, Email_client  FROM client 
	WHERE Statut_client = 'Actif' AND Id_abonnement IN (
		Select Id_abonnement FROM abonnement 
			Where Type_abonnement IN ('Standard', 'Premium', 'VIP')
		)
	ORDER BY Nom_client ;

-- contenu a forte sensation pour proposer aux adultes
SELECT DISTINCT Titre_contenu, Date_sortie_contenu, Limite_age_contenu 
	FROM contenu
		WHERE Genre_contenu IN ('Action', 'Thriller', 'Horreur') AND Limite_age_contenu >= 16 
		ORDER BY Titre_contenu;
        
-- les genres les plus representer dans le catalogue
SELECT Genre_contenu, COUNT(*) as Nbre
	FROM contenu
	GROUP BY (Genre_contenu) 
	ORDER BY Nbre DESC; 

-- Profils adultes et adolescents francophones ou anglophones,
SELECT DISTINCT Nom_profil, Type_profil, Langue_Preferee
FROM Profil
WHERE Type_profil IN ('Adulte', 'Adolescent')
  AND Langue_Preferee LIKE '%an%'
ORDER BY Nom_profil ASC;

-- Offres d'abonnement actives à prix intermédiaire (5€ - 15€), pour cibler les clients susceptibles de monter en gamme (upsell)
SELECT Type_abonnement, Prix_Abonnement, Statut_abonnement,
       Qualite_video_abonnement, Nb_ecran_max
FROM Abonnement
WHERE Statut_abonnement IN ('Actif', 'Suspendu')
  AND Prix_Abonnement BETWEEN 5.00 AND 15.00
ORDER BY Type_abonnement ASC, Prix_Abonnement ASC;

-- Genres les plus représentés dans le catalogue (plus de 2 contenus) pour orienter les axes de recommandation du service marketing
SELECT Genre_contenu,
       COUNT(*) AS nb_contenus
FROM Contenu
GROUP BY Genre_contenu
HAVING COUNT(*) > 2
ORDER BY nb_contenus DESC;

--  Contenus les mieux notés par les abonnés (moyenne >= 4), prioritaires dans les listes de recommandations
SELECT c.Titre_contenu,
       ROUND(AVG(a.note_avis), 2) AS note_moyenne,
       COUNT(a.Id_avis)           AS nb_avis
FROM emetre e
INNER JOIN Avis a    ON a.Id_avis     = e.Id_avis
INNER JOIN Contenu c ON c.Id_contenu  = a.Id_contenu
GROUP BY c.Id_contenu, c.Titre_contenu
HAVING AVG(a.note_avis) >= 4
ORDER BY note_moyenne DESC;

-- Clients avec plusieurs profils actifs, foyers à fort potentiel pour des recommandations multi-profils
SELECT c.Nom_client, c.Prenom_client,
       COUNT(p.Id_Profil) AS nb_profils
FROM Client c
INNER JOIN Profil p ON c.Id_client = p.Id_client
GROUP BY c.Id_client, c.Nom_client, c.Prenom_client
HAVING COUNT(p.Id_Profil) > 1
ORDER BY nb_profils DESC;

-- Contenus les plus regardés avec leur taux de complétion moyen, indicateur clé pour mesurer l'engagement et affiner les recommandations
SELECT c.Titre_contenu,
       ROUND(AVG(r.Progression), 1) AS taux_completion_moyen,
       COUNT(*)                      AS nb_vues
FROM Contenu c
INNER JOIN regarder r ON c.Id_contenu = r.Id_contenu
GROUP BY c.Id_contenu, c.Titre_contenu
HAVING COUNT(*) >= 2
ORDER BY nb_vues DESC;

-- Revenus générés par type d'abonnement (abonnements actifs),  pour identifier les segments les plus rentables à fidéliser
SELECT Type_abonnement,
       COUNT(*)             AS nb_abonnements,
       SUM(Prix_Abonnement) AS chiffre_affaires,
       MAX(Prix_Abonnement) AS prix_max,
       MIN(Prix_Abonnement) AS prix_min
FROM Abonnement
WHERE Statut_abonnement = 'Actif'
GROUP BY Type_abonnement
HAVING SUM(Prix_Abonnement) > 20
ORDER BY chiffre_affaires DESC;

-- Profils avec leur type d'abonnement, pour adapter les recommandations selon la qualité vidéo disponible
SELECT p.Nom_profil, p.Type_profil, p.Langue_Preferee,
       c.Nom_client, c.Prenom_client,
       a.Type_abonnement, a.Qualite_video_abonnement
FROM Profil p
INNER JOIN Client c     ON p.Id_client     = c.Id_client
INNER JOIN Abonnement a ON c.Id_abonnement = a.Id_abonnement
ORDER BY a.Type_abonnement, p.Nom_profil;

-- Détail complet des épisodes par série et saison, pour construire des recommandations de continuation de visionnage
SELECT co.Titre_contenu AS serie,
       s.Numero_Saison,
       e.Numero_episode,
       e.Titre_episode,
       e.Duree
FROM Episode e
INNER JOIN Saison s   ON e.Id_saison  = s.Id_saison
INNER JOIN Contenu co ON s.Id_contenu = co.Id_contenu
ORDER BY co.Titre_contenu, s.Numero_Saison, e.Numero_episode;

-- Tous les contenus avec leur note moyenne, y compris ceux sans avis pour détecter les contenus à promouvoir
SELECT c.Titre_contenu, c.Type_contenu, c.Genre_contenu,
       COUNT(a.Id_avis)           AS nb_avis,
       ROUND(AVG(a.note_avis), 2) AS note_moyenne
FROM Contenu c
LEFT JOIN Avis a ON c.Id_contenu = a.Id_contenu
GROUP BY c.Id_contenu, c.Titre_contenu, c.Type_contenu, c.Genre_contenu
ORDER BY nb_avis DESC;

-- Tous les abonnements avec les clients associés, y compris les abonnements sans client pour détecter les offres non utilisées
SELECT a.Type_abonnement, a.Prix_Abonnement, a.Statut_abonnement,
       c.Nom_client, c.Prenom_client, c.Pays_client
FROM Client c
RIGHT JOIN Abonnement a ON c.Id_abonnement = a.Id_abonnement
ORDER BY a.Type_abonnement;

-- Historique complet de visionnage par profil avec le contenu regardé, base comportementale pour le moteur de recommandation
SELECT p.Nom_profil, p.Type_profil,
       co.Titre_contenu, co.Genre_contenu, co.Type_contenu,
       r.Progression, r.Statut, r.Date_dernier_vue
FROM Profil p
INNER JOIN regarder r  ON p.Id_Profil  = r.Id_Profil
INNER JOIN Contenu co  ON r.Id_contenu = co.Id_contenu
ORDER BY p.Nom_profil, r.Date_dernier_vue DESC;

-- Contenus plébiscités (au moins un avis noté 5/5), à mettre en avant dans les recommandations "Coup de cœur"
SELECT Titre_contenu, Type_contenu, Genre_contenu
FROM Contenu
WHERE Id_contenu IN (
    SELECT Id_contenu
    FROM Avis
    WHERE note_avis = 5
)
ORDER BY Titre_contenu;

-- Profils n'ayant encore rien ajouté à leur liste, cibles pour une campagne d'incitation à la personnalisation
SELECT Nom_profil, Type_profil, Langue_Preferee
FROM Profil
WHERE Id_Profil NOT IN (
    SELECT Id_Profil
    FROM ajouter
)
ORDER BY Nom_profil;

-- Clients ayant un profil Enfant dans leur foyer, pour leur recommander du contenu familial et jeunesse
SELECT c.Nom_client, c.Prenom_client, c.Email_client, c.Pays_client
FROM Client c
WHERE EXISTS (
    SELECT 1
    FROM Profil p
    WHERE p.Id_client   = c.Id_client
      AND p.Type_profil = 'Enfant'
)
ORDER BY c.Nom_client;

-- Contenus jamais regardés par aucun profil, catalogue inexploité à promouvoir activement via les recommandations
SELECT Titre_contenu, Type_contenu, Genre_contenu, Date_sortie_contenu
FROM Contenu c
WHERE NOT EXISTS (
    SELECT 1
    FROM regarder r
    WHERE r.Id_contenu = c.Id_contenu
)
ORDER BY Titre_contenu;

-- Contenus dont la limite d'âge dépasse celle de tous les contenus d'animation,à exclure des recommandations pour les profils Enfant et Adolescent
SELECT Titre_contenu, Type_contenu, Genre_contenu, Limite_age_contenu
FROM Contenu
WHERE Limite_age_contenu > ALL (
    SELECT Limite_age_contenu
    FROM Contenu
    WHERE Genre_contenu = 'Animation'
)
ORDER BY Limite_age_contenu DESC;