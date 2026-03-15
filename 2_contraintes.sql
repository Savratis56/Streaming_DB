ALTER TABLE Contenu
    ADD CONSTRAINT check_age CHECK (Limite_age_contenu BETWEEN 0 AND 21),
    ADD CONSTRAINT check_genre CHECK (Genre_contenu IN ('Action','Aventure','Comédie','Drame','Horreur','Thriller','Science-Fiction','Fantastique','Romance','Historique','Animation','Documentaire','Musical','Policier','Famille')),
	ADD CONSTRAINT check_bande_annonce_url CHECK (Bande_annonce REGEXP '^(https?://).+'),
	ADD CONSTRAINT check_type_contenu CHECk (Type_contenu IN ('Film', 'Série', 'Documentaire'));

ALTER TABLE Abonnement
	ADD CONSTRAINT check_type_abonnement CHECK (Type_abonnement IN ('Basique', 'Standard', 'Premium', 'VIP')),
    ADD CONSTRAINT check_prix_abonnement CHECK (Prix_Abonnement >= 0),
    ADD CONSTRAINT check_statut_abonnement CHECK (Statut_abonnement IN ('Actif', 'Suspendu', 'Résilié', 'Expiré')),
    ADD CONSTRAINT check_nb_ecran_max CHECK (Nb_ecran_max BETWEEN 0 AND 10),
    ADD CONSTRAINT check_qualite_video CHECK (Qualite_video_abonnement IN ( 'HD', 'Full HD', '4K')),
    ADD CONSTRAINT check_dates_abonnement CHECK ( Date_fin_abonnement >= Date_debut_abonnement);
    
ALTER TABLE Saison
	ADD CONSTRAINT check_numero_saison CHECK (Numero_Saison > 0),
    ADD CONSTRAINT check_annee_saison CHECK (annee_saison >= 1900 );

ALTER TABLE Episode
	ADD CONSTRAINT check_numero_episode CHECK (Numero_episode > 0),
	ADD CONSTRAINT check_duree_episode CHECK (Duree > '00:00:00'); 
    
ALTER TABLE Avis
	ADD CONSTRAINT check_note_avis CHECK (note_avis BETWEEN 0 AND 5);

ALTER TABLE Client
	ADD CONSTRAINT check_email_client CHECK (Email_client LIKE '%@%'),
    ADD CONSTRAINT check_statut_client CHECK (Statut_client IN ('Actif','Suspendu','Supprimé'));

ALTER TABLE Profil
	ADD CONSTRAINT check_limite_age_profil CHECK (Limite_age >= 0 AND Limite_age <= 120),
    ADD CONSTRAINT check_type_profil CHECK (Type_profil IN ('Adulte', 'Enfant', 'Adolescent', 'Invité'));

ALTER TABLE regarder
	ADD CONSTRAINT check_progression CHECK (Progression >= 0 AND Progression <= 100),
    ADD CONSTRAINT check_statut_regarder CHECK (Statut IN ('En cours', 'Terminé')),
    ADD CONSTRAINT check_statut_progression CHECK ((Statut = 'Terminé' AND Progression = 100) OR (Statut = 'En cours' AND Progression < 100));
