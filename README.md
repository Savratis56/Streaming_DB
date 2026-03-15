# 🎬 BASE DE DONNEE POUR LA GESTION D'UN SITE DE STREAMING.
Création d'une base de données pour la gestion d'une application de streaming - Projet académique EFREI Paris.

## 🛠️ Outils

### 🤖 IA (pour l'analyse du domaine, et la génération des données)

Utilisation d'un prompt spécifique pour plus de conformité à l'exigence de la vie réelle.

**Prompt généré à l'IAG :**

Tu travailles dans le domaine de la diffusion de contenus audiovisuels en ligne (streaming vidéo). Ton entreprise a comme activité de proposer un service de streaming par abonnement permettant à ses clients d'accéder à un catalogue de film, séries et épisodes, vie des profils personnalisés. C'est entreprise comme Netflix, Disney+ ou prime vidéo. Les données ont été collectées sur les clients et leurs abonnements, les profils associés à chaque compte, les contenus disponibles (films et séries avec leurs saisons et épisodes), ainsi que les interactions des profils avec ces contenus (visionnage, ajout à une liste, avis). Inspire-toi des sites web suivant :

- [Netflix](https://www.netflix.com/browse)
- [Productions originales, films à succès et séries -- Disney+ France](https://www.disneyplus.com/fr-fr)
- [Bienvenue dans Prime Video](https://www.primevideo.com/-/fr/offers/nonprimehomepage/?language=fr)

Ton entreprise veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c'est-à-dire de collecter les besoins auprès de l'entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu'il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.

D'abord, établis les règles de gestions des données de ton entreprise, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu'un qui connaît le fonctionnement de l'entreprise, mais pas comment se construit un système d'information.

Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.

Fournis donc les règles de gestion et le dictionnaire de données.

---

**Solution générée par l'IAG :**

Voici une proposition claire comme si quelqu'un de l'entreprise expliquait le fonctionnement du service avant la conception technique du système d'information.

### 1. 📋 Règles de gestion des données

- Un client doit créer un **compte** pour accéder au service de streaming.
- Chaque compte est associé à **une adresse email unique**.
- Un compte possède **un abonnement actif** pour accéder aux contenus.
- Un abonnement possède un **type d'offre** (standard, premium, etc.).
- Un abonnement possède **une date de début** et **une date de fin**.
- Un abonnement est associé à **un mode de paiement**.
- Un compte peut créer **plusieurs profils utilisateurs**.
- Chaque profil possède **un nom** et éventuellement **une image/avatar**.
- Un profil peut être **profil adulte ou profil enfant**.
- Un profil est toujours associé **à un seul compte**.
- Un profil peut **consulter le catalogue de contenus** disponibles.
- Un contenu peut être **un film ou une série**.
- Un contenu possède **un titre, une description, une durée et une date de sortie**.
- Un contenu appartient à **un ou plusieurs genres** (action, comédie, etc.).
- Une série est composée **d'une ou plusieurs saisons**.
- Une saison appartient **à une seule série**.
- Une saison contient **plusieurs épisodes**.
- Un épisode possède **un titre, une durée et un numéro d'épisode**.
- Un profil peut **regarder un contenu ou un épisode**.
- Le système enregistre **la date et la durée de visionnage**.
- Un profil peut **mettre un contenu dans sa liste personnelle** (watchlist).
- Un profil peut **supprimer un contenu de sa liste**.
- Un profil peut **donner une note ou un avis sur un contenu**.
- Un profil peut **interrompre un visionnage et le reprendre plus tard**.
- Le système conserve **l'historique des contenus visionnés par chaque profil**.
- Certains contenus peuvent être **des productions originales de la plateforme**.
- Un contenu possède **une classification d'âge** (tout public, 12+, 16+, etc.).
- Un contenu possède **une langue principale et éventuellement des sous-titres**.

### 2. 📚 Dictionnaire de données brutes

| Signification de la donnée | Type | Taille |
|---|---|---|
| Identifiant du compte client | Numérique | 10 |
| Nom du client | Texte | 50 |
| Prénom du client | Texte | 50 |
| Adresse email du client | Texte | 100 |
| Mot de passe du compte | Texte | 255 |
| Date de création du compte | Date | 10 |
| Type d'abonnement | Texte | 30 |
| Prix de l'abonnement | Numérique | 5 |
| Date de début de l'abonnement | Date | 10 |
| Date de fin de l'abonnement | Date | 10 |
| Mode de paiement | Texte | 30 |
| Identifiant du profil | Numérique | 10 |
| Nom du profil | Texte | 50 |
| Type de profil (adulte/enfant) | Texte | 10 |
| Image/avatar du profil | Texte | 255 |
| Identifiant du contenu | Numérique | 10 |
| Titre du contenu | Texte | 150 |
| Description du contenu | Texte | 500 |
| Type de contenu (film/série) | Texte | 10 |
| Genre du contenu | Texte | 50 |
| Date de sortie du contenu | Date | 10 |
| Durée du contenu | Numérique | 4 |
| Classification d'âge | Texte | 5 |
| Identifiant de la saison | Numérique | 10 |
| Numéro de la saison | Numérique | 2 |
| Identifiant de l'épisode | Numérique | 10 |
| Numéro de l'épisode | Numérique | 3 |
| Durée de l'épisode | Numérique | 4 |
| Date de visionnage | Date | 10 |
| Progression de visionnage | Numérique | 3 |
| Note donnée par le profil | Numérique | 2 |
| Commentaire / avis du profil | Texte | 300 |
| Date d'ajout à la liste | Date | 10 |

---

### 3. 🗃️ Prompt pour la génération des données d'insertion
 
**Prompt généré à l'IAG :**
 
Donne les requêtes d'insertion permettant de remplir la base de données dont le modèle relationnel est le suivant :

- Abonnement( Id_abonnement INT, Type_abonnement VARCHAR(20), Prix_Abonnement DECIMAL(5,2), Statut_abonnement VARCHAR(20), Nb_ecran_max INT, Qualite_video_abonnement VARCHAR(50), Date_debut_abonnement DATE, Date_fin_abonnement DATE )
- Client( Id_client INT, Nom_client VARCHAR(50), Prenom_client VARCHAR(50), Email_client VARCHAR(100), Mot_de_passe_client VARCHAR(255), Date_creation_client DATE, Statut_client VARCHAR(50), Pays_client VARCHAR(50), #Id_abonnement INT )
- Profil( Id_Profil INT, Nom_profil VARCHAR(50), Avatar_profil VARCHAR(50), Type_profil VARCHAR(50), Limite_age INT, Langue_Preferee VARCHAR(50), Date_creation_profil DATE, #Id_client INT )
- Contenu( Id_contenu INT, Titre_contenu VARCHAR(255), Date_sortie_contenu DATE, Duree_contenu TIME, Limite_age_contenu INT, Type_contenu VARCHAR(15), Bande_annonce VARCHAR(255), Genre_contenu VARCHAR(50), Description_contenu TEXT )
- Saison( Id_saison INT, Numero_Saison INT, annee_saison INT, #Id_contenu INT )
- Épisode( Id_episode INT, Numero_episode INT, Titre_episode VARCHAR(255), Duree TIME, Resume_episode VARCHAR(255), #Id_saison INT )
- Avis( Id_avis INT, note_avis INT, Commentaire_avis TEXT, Date_avis TIMESTAMP, #Id_contenu INT )
- regarder( #Id_Profil INT, #Id_contenu INT, Progression INT, Statut VARCHAR(50), Date_dernier_vue DATETIME )
- Ajouter( #Id_Profil INT, #Id_contenu INT, Date_ajout DATETIME )
- emetre( #Id_Profil INT, #Id_avis INT )metre(#Id_Profil, #Id_avis)
 
Les clés primaires correspondent aux id, sauf si autre chose est précisé. Les clés étrangères sont identifiées par les #, et ont le même nom que les clés primaires auxquelles elles font référence.
 
Nombre de lignes souhaitées par table :
- Abonement : 35 lignes (avec les types 'Basique', 'Standard', 'Premium', 'VIP')
- Client : 25 lignes
- Profil : 35 lignes (avec les types 'Adulte', 'Enfant', 'Adolescent')
- Contenu : 35 lignes (mix de Films et Séries)
- Saison : 8 lignes
- Episode : 20 lignes
- Avis : 25 lignes (notes entre 0 et 5)
- regarder : 50 lignes
- ajouter : 25 lignes
- emetre : 25 lignes
 
Les clés étrangères doivent faire référence aux clés primaires existantes : donne les lignes en commençant par remplir les tables dans lesquelles il n'y a pas de clés étrangères, puis les tables dans lesquelles les clés étrangères font référence aux clés primaires des tables déjà remplies. Fournis l'ensemble sous la forme d'un script SQL prêt à être exécuté.
 
Respecte bien les contraintes suivantes :
- `Type_abonnement` IN ('Basique', 'Standard', 'Premium', 'VIP')
- `Statut_abonnement` IN ('Actif', 'Suspendu', 'Résilié', 'Expiré')
- `Qualite_video_abonnement` IN ('HD', 'Full HD', '4K')
- `Nb_ecran_max` BETWEEN 0 AND 10
- `Statut_client` IN ('Actif', 'Suspendu', 'Supprimé')
- `Type_profil` IN ('Adulte', 'Enfant', 'Adolescent', 'Invité')
- `Type_contenu` IN ('Film', 'Série', 'Documentaire')
- `Genre_contenu` IN ('Action', 'Aventure', 'Comédie', 'Drame', 'Horreur', 'Thriller', 'Science-Fiction', 'Fantastique', 'Romance', 'Historique', 'Animation', 'Documentaire', 'Musical', 'Policier', 'Famille')
- `Limite_age_contenu` BETWEEN 0 AND 21
- `note_avis` BETWEEN 0 AND 5
- `Progression` BETWEEN 0 AND 100
- `Statut` IN ('En cours', 'Terminé') — si Terminé alors Progression = 100, si En cours alors Progression < 100
- `Date_fin_abonnement` >= `Date_debut_abonnement`
  
---

### LOOPING (pour la representation en mcd et gereration du MLD correspondant)

### 1. MCD inspiré a la solution gerené par chat gpt:

![MCD](assets/Capture%20d'%C3%A9cran%202026-03-12%20213458.png)

### 2. MlD correspondant au MCD:

![MCD](assets/Capture%20d'%C3%A9cran%202026-03-15%20135631.png)

---

### scenario d'utilisation :

Pour une entreprise qui travaille dans la diffusion de contenus audiovisuels en ligne (streaming vidéo), la base de donnée va etre utiliser par le service marketing pour des recommendations de contenue en fonction des preferences de chaque profil.

auteur - fekoua motcheka karl junior & Ariel steve Wantou Touko 




