# STREAMING_DB

## Prompt generer a ChatGpt

Tu travailles dans le domaine du streaming. Ton entreprise a comme activité de proposer un vaste catalogue de films, séries et documentaires en vidéo à la demande (VOD) via un système d'abonnement. C’est une entreprise comme Netflix, Disney+ ou Amazon Prime Video. Nous avons besoin de structurer notre base de données. Les données ont été collectées sur la gestion des comptes clients, la personnalisation des espaces de visionnage selon l'âge, le catalogue d'contenu audiovisuelles disponibles, et la façon dont nos clients sauvegardent leurs films et séries préférés pour les regarder plus tard. Inspire-toi de l’architecture générale de la plateforme Netflix. Ton entreprise veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.


## Resultat du prompt

📌 Analyse des besoins – Plateforme de Streaming (Méthode MERISE)

🎯 Contexte du projet

L’entreprise développe une plateforme de vidéo à la demande par abonnement (SVOD).
La plateforme permet :
* La gestion des comptes clients
* La gestion d’abonnements
* La création de profils personnalisés
* La consultation d’un catalogue d’contenu
* La sauvegarde de contenus (liste “À regarder plus tard”)
* Le suivi de l’historique de visionnage

Cette partie correspond à la phase d’analyse dans MERISE : identification des données et des règles de gestion.

1️⃣ Gestion des comptes clients

📌 Objectif métier

Un utilisateur doit pouvoir :
* Créer un compte
* Souscrire à un abonnement
* Gérer ses informations personnelles
* Résilier son abonnement

📊 Données à gérer

Entité : Client

| Attribut      | Description                |
| ------------- | -------------------------- |
| id_client     | Identifiant unique         |
| nom           | Nom du client              |
| prenom        | Prénom du client           |
| email         | Adresse email (unique)     |
| mot_de_passe  | Mot de passe               |
| date_creation | Date de création du compte |
| pays          | Pays de résidence          |
| statut_compte | Actif / Suspendu / Résilié |

Entité : Abonnement

| Attribut        | Description                          |
| --------------- | ------------------------------------ |
| id_abonnement   | Identifiant unique                   |
| type_abonnement | Standard / Premium / etc             |
| prix            | Prix mensuel                         |
| nb_ecrans_max   | Nombre d’écrans simultanés autorisés |
| qualite_video   | HD / 4K                              |
| date_debut      | Date de début                        |
| date_fin        | Date de fin                          |
| statut          | Actif / Expiré                       |

📌 Règles de gestion

* Un client possède au maximum un abonnement actif.
* Un email est unique dans la base.
* Un abonnement limite le nombre d’écrans simultanés.

2️⃣ Gestion des profils

Chaque compte peut contenir plusieurs profils (comme sur Netflix).

📌 Objectif métier

Un client peut :

* Créer plusieurs profils
* Définir un profil enfant
* Personnaliser la langue


Entité : Profil

| Attribut        | Description               |
| --------------- | ------------------------- |
| id_profil       | Identifiant unique        |
| nom_profil      | Nom affiché               |
| avatar          | Image/avatar              |
| type_profil     | Adulte / Enfant           |
| limite_age      | Âge maximum autorisé      |
| langue_preferee | Langue par défaut         |
| date_creation   | Date de création          |
| id_client       | Clé étrangère vers Client |

📌 Règles de gestion

* Un profil appartient obligatoirement à un seul client.
* Un client peut posséder plusieurs profils.
* Un profil enfant ne peut voir que les contenus adaptés à son âge.
* L’historique est propre à chaque profil.

3️⃣ Catalogue des contenu

La plateforme propose :

* Films
* Séries
* Documentaires

🎬 Entité : contenu

| Attribut           | Description                 |
| ------------------ | --------------------------- |
| id_oeuvre          | Identifiant unique          |
| titre              | Titre de l’œuvre            |
| description        | Résumé                      |
| date_sortie        | Date de sortie              |
| duree              | Durée (en minutes)          |
| type               | Film / Série / Documentaire |
| classification_age | Âge minimum                 |
| bande_annonce      | URL                         |
| genre              | genre                       |

 🎞 Spécificité des séries
 
Entité : Saison

| Attribut      | Description        |
| ------------- | ------------------ |
| id_saison     | Identifiant unique |
| numero_saison | Numéro             |
| annee         | Année              |
| id_oeuvre     | Clé étrangère      |

Entité : Episode

| Attribut       | Description        |
| -------------- | ------------------ |
| id_episode     | Identifiant unique |
| numero_episode | Numéro             |
| titre          | Titre              |
| duree          | Durée              |
| resume         | Résumé             |
| id_saison      | Clé étrangère      |

4️⃣ Liste “À regarder plus tard”

📌 Objectif métier

Un profil peut :

* Ajouter une œuvre à sa liste
* Supprimer une œuvre
* Consulter sa liste personnelle
  
Entité associative : Liste_Favoris

| Attribut   | Description   |
| ---------- | ------------- |
| id_profil  | Clé étrangère |
| id_oeuvre  | Clé étrangère |
| date_ajout | Date d’ajout  |

Relation N:N entre Profil et Œuvre.

5️⃣ Historique de visionnage

📌 Objectif métier

Enregistrer :
* Ce qu’un profil regarde
* La progression
* Le statut (en cours / terminé)

  Entité : Visionnage

| Attribut      | Description         |
| ------------- | ------------------- |
| id_visionnage | Identifiant         |
| date_debut    | Début du visionnage |
| date_fin      | Fin                 |
| progression   | Pourcentage         |
| statut        | En cours / Terminé  |
| id_profil     | Clé étrangère       |
| id_oeuvre     | Clé étrangère       |

Relation N:N entre Profil et Œuvre via Visionnage.

6️⃣ Système de notation (optionnel)

Entité : Avis

| Attribut    | Description   |
| ----------- | ------------- |
| id_avis     | Identifiant   |
| note        | Note (1 à 5)  |
| commentaire | Texte         |
| date_avis   | Date          |
| id_profil   | Clé étrangère |
| id_oeuvre   | Clé étrangère |

7️⃣ Contraintes générales

* Respect de la classification d’âge.
* Suppression d’un client ⇒ suppression des profils associés.
* Un abonnement détermine le nombre d’écrans simultanés.
* Disponibilité possible des contenu selon le pays.
* Historique indépendant pour chaque profil.

📌 Liste des entités principales

* Client
* Abonnement
* Profil
* Oeuvre
* Saison
* Episode
* Genre
* Visionnage
* Liste_Favoris
* Avis

## MCD

<img width="1026" height="799" alt="image" src="https://github.com/user-attachments/assets/16af2909-0be5-4f99-89c1-05f589769e6f" />

## MLD

<img width="1917" height="293" alt="image" src="https://github.com/user-attachments/assets/64413a03-2f07-4699-a408-7f827a97fc76" />














