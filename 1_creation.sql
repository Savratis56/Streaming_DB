CREATE DATABASE streaming;
USE streaming;
CREATE TABLE Contenu(
   Id_contenu INT AUTO_INCREMENT,
   Titre_contenu VARCHAR(255) NOT NULL,
   Date_sortie_contenu DATE NOT NULL,
   Duree_contenu TIME NOT NULL,
   Limite_age_contenu INT NOT NULL,
   Type_contenu VARCHAR(15) NOT NULL,
   Bande_annonce VARCHAR(255),
   Genre_contenu VARCHAR(50)NOT NULL,
   Description_contenu TEXT NOT NULL,
   PRIMARY KEY(Id_contenu)
);

CREATE TABLE Abonnement(
   Id_abonnement INT AUTO_INCREMENT,
   Type_abonnement VARCHAR(20) NOT NULL DEFAULT 'AUCUN',
   Prix_Abonnement DECIMAL(5,2) NOT NULL DEFAULT 0,
   Statut_abonnement VARCHAR(20) NOT NULL,
   Nb_ecran_max INT NOT NULL,
   Qualite_video_abonnement VARCHAR(50) NOT NULL,
   Date_debut_abonnement DATE NOT NULL,
   Date_fin_abonnement DATE NOT NULL,
   PRIMARY KEY(Id_abonnement)
);

CREATE TABLE Saison(
   Id_saison INT AUTO_INCREMENT,
   Numero_Saison INT NOT NULL,
   annee_saison INT NOT NULL,
   Id_contenu INT,
   PRIMARY KEY(Id_saison),
   CONSTRAINT FK_saison_contenu FOREIGN KEY(Id_contenu) REFERENCES Contenu(Id_contenu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Episode(
   Id_episode INT AUTO_INCREMENT,
   Numero_episode INT NOT NULL,
   Titre_episode VARCHAR(255) NOT NULL,
   Duree TIME NOT NULL,
   Resume_episode VARCHAR(255),
   Id_saison INT,
   PRIMARY KEY(Id_episode),
   CONSTRAINT FK_saison FOREIGN KEY(Id_saison) REFERENCES Saison(Id_saison) ON UPDATE CASCADE ON DELETE CASCADE,
   UNIQUE (Id_saison, Numero_episode)
);

CREATE TABLE Avis(
   Id_avis INT AUTO_INCREMENT,
   note_avis INT NOT NULL,
   Commentaire_avis TEXT ,
   Date_avis TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   Id_contenu INT,
   PRIMARY KEY(Id_avis),
   CONSTRAINT FK_avis_contenu FOREIGN KEY(Id_contenu) REFERENCES Contenu(Id_contenu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Client(
   Id_client INT AUTO_INCREMENT,
   Nom_client VARCHAR(50) NOT NULL,
   Prenom_client VARCHAR(50) NOT NULL,
   Email_client VARCHAR(100) NOT NULL,
   Mot_de_passe_client VARCHAR(255) NOT NULL,
   Date_creation_client DATE NOT NULL,
   Statut_client VARCHAR(50) NOT NULL,
   Pays_client VARCHAR(50) NOT NULL,
   Id_abonnement INT,
   PRIMARY KEY(Id_client),
   UNIQUE(Email_client),
   FOREIGN KEY(Id_abonnement) REFERENCES Abonnement(Id_abonnement) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Profil(
   Id_Profil INT AUTO_INCREMENT,
   Nom_profil VARCHAR(50) NOT NULL,
   Avatar_profil VARCHAR(50),
   Type_profil VARCHAR(50) NOT NULL,
   Limite_age INT NOT NULL,
   Langue_Preferee VARCHAR(50),
   Date_creation_profil DATE NOT NULL,
   Id_client INT,
   PRIMARY KEY(Id_Profil),
   FOREIGN KEY(Id_client) REFERENCES Client(Id_client) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE regarder(
   Id_Profil INT,
   Id_contenu INT,
   Progression INT DEFAULT 0,
   Statut VARCHAR(50),
   Date_dernier_vue DATETIME NOT NULL,
   PRIMARY KEY(Id_Profil, Id_contenu),
   FOREIGN KEY(Id_Profil) REFERENCES Profil(Id_Profil) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY(Id_contenu) REFERENCES Contenu(Id_contenu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE ajouter(
   Id_Profil INT,
   Id_contenu INT,
   Date_ajout DATETIME NOT NULL,
   PRIMARY KEY(Id_Profil, Id_contenu),
   FOREIGN KEY(Id_Profil) REFERENCES Profil(Id_Profil) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY(Id_contenu) REFERENCES Contenu(Id_contenu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE emetre(
   Id_Profil INT,
   Id_avis INT,
   PRIMARY KEY(Id_Profil, Id_avis),
   FOREIGN KEY(Id_Profil) REFERENCES Profil(Id_Profil) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY(Id_avis) REFERENCES Avis(Id_avis) ON UPDATE CASCADE ON DELETE CASCADE
);
