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

### looping (pour la representation en mcd et gereration du MLD correspondant)

### 1. MCD inspiré a la solution gerené par chat gpt:


### 2. MlD correspondant au mcd:

