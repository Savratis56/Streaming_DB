-- ============================================================
-- SCRIPT D'INSERTION - BASE DE DONNÉES STREAMING
-- ============================================================

-- ============================================================
-- 1. Contenu (aucune clé étrangère)
-- ============================================================
INSERT INTO Contenu (Titre_contenu, Date_sortie_contenu, Duree_contenu, Limite_age_contenu, Type_contenu, Bande_annonce, Genre_contenu, Description_contenu) VALUES
('Inception',                      '2010-07-16', '02:28:00', 12, 'Film',          'https://trailer/inception',          'Science-fiction', 'Un voleur s''infiltre dans les rêves.'),
('Breaking Bad',                   '2008-01-20', '00:47:00', 16, 'Série',         'https://trailer/breakingbad',        'Thriller',        'Un professeur de chimie devient criminel.'),
('Le Roi Lion',                    '1994-06-24', '01:28:00',  0, 'Film',          'https://trailer/roilion',            'Animation',       'Un lionceau doit reconquérir son royaume.'),
('Interstellar',                   '2014-11-07', '02:49:00', 12, 'Film',          'https://trailer/interstellar',       'Science-fiction', 'Des astronautes explorent des trous de ver.'),
('Stranger Things',                '2016-07-15', '00:51:00', 12, 'Série',         'https://trailer/strangerthings',     'Fantastique',     'Des enfants affrontent des forces surnaturelles.'),
('The Dark Knight',                '2008-07-18', '02:32:00', 12, 'Film',          'https://trailer/darkknight',         'Action',          'Batman affronte le Joker à Gotham.'),
('La Casa de Papel',               '2017-05-02', '01:10:00', 16, 'Série',         'https://trailer/lacasadepapel',      'Policier',        'Un braquage spectaculaire de la Monnaie royale.'),
('Titanic',                        '1997-12-19', '03:15:00', 10, 'Film',          'https://trailer/titanic',            'Romance',         'Une histoire d''amour sur le Titanic.'),
('Game of Thrones',                '2011-04-17', '00:57:00', 18, 'Série',         'https://trailer/got',                'Fantastique',     'Des familles nobles se disputent le Trône de Fer.'),
('The Shawshank Redemption',       '1994-09-23', '02:22:00', 16, 'Film',          'https://trailer/shawshank',          'Drame',           'Un homme injustement emprisonné cherche la liberté.'),
('Friends',                        '1994-09-22', '00:22:00', 10, 'Série',         'https://trailer/friends',            'Comédie',         'Les aventures de six amis à New York.'),
('Avengers: Endgame',              '2019-04-26', '03:01:00', 12, 'Film',          'https://trailer/endgame',            'Action',          'Les Avengers tentent d''annuler le snap de Thanos.'),
('The Crown',                      '2016-11-04', '00:58:00', 12, 'Série',         'https://trailer/thecrown',           'Historique',      'La vie de la famille royale britannique.'),
('Parasite',                       '2019-05-30', '02:12:00', 16, 'Film',          'https://trailer/parasite',           'Drame',           'Une famille pauvre s''infiltre chez les riches.'),
('Dark',                           '2017-12-01', '01:00:00', 16, 'Série',         'https://trailer/dark',               'Science-fiction', 'Des voyages temporels troublent une ville allemande.'),
('Le Seigneur des Anneaux',        '2001-12-19', '02:58:00', 12, 'Film',          'https://trailer/lotr',               'Aventure',        'Un hobbit part détruire l''Anneau unique.'),
('Black Mirror',                   '2011-12-04', '01:00:00', 18, 'Série',         'https://trailer/blackmirror',        'Thriller',        'Les dérives de la technologie moderne.'),
('Gladiateur',                     '2000-05-05', '02:35:00', 16, 'Film',          'https://trailer/gladiateur',         'Action',          'Un général romain assoiffé de vengeance.'),
('Mindhunter',                     '2017-10-13', '01:00:00', 18, 'Série',         'https://trailer/mindhunter',         'Policier',        'Le FBI développe le profilage criminel.'),
('Coco',                           '2017-11-22', '01:45:00',  0, 'Film',          'https://trailer/coco',               'Animation',       'Un garçon visite le Pays des Morts.'),
('Squid Game',                     '2021-09-17', '01:00:00', 18, 'Série',         'https://trailer/squidgame',          'Thriller',        'Des personnes endettées jouent pour survivre.'),
('La Pianiste',                    '2001-05-24', '02:11:00', 18, 'Film',          'https://trailer/lapianiste',         'Drame',           'Une professeure de piano et ses obsessions.'),
('Peaky Blinders',                 '2013-09-12', '01:00:00', 16, 'Série',         'https://trailer/peakyblinders',      'Historique',      'Un gang de Birmingham après la Première Guerre.'),
('Matrix',                         '1999-03-31', '02:16:00', 12, 'Film',          'https://trailer/matrix',             'Science-fiction', 'Un hacker découvre la réalité simulée.'),
('Lupin',                          '2021-01-08', '00:45:00', 12, 'Série',         'https://trailer/lupin',              'Policier',        'Un homme se venge grâce au personnage de Lupin.'),
('Forrest Gump',                   '1994-07-06', '02:22:00', 10, 'Film',          'https://trailer/forrestgump',        'Drame',           'La vie extraordinaire d''un homme ordinaire.'),
('The Witcher',                    '2019-12-20', '01:00:00', 18, 'Série',         'https://trailer/witcher',            'Fantastique',     'Un chasseur de monstres cherche sa destinée.'),
('Joker',                          '2019-10-04', '02:02:00', 16, 'Film',          'https://trailer/joker',              'Drame',           'L''origine du super-vilain Joker.'),
('Narcos',                         '2015-08-28', '00:49:00', 18, 'Série',         'https://trailer/narcos',             'Policier',        'L''ascension du cartel de Medellín.'),
('Dune',                           '2021-10-22', '02:35:00', 12, 'Film',          'https://trailer/dune',               'Science-fiction', 'Un jeune homme hérite d''une planète désertique.'),
('Emily in Paris',                 '2020-10-02', '00:30:00', 10, 'Série',         'https://trailer/emilyinparis',       'Romance',         'Une Américaine s''adapte à la vie parisienne.'),
('Seven',                          '1995-09-22', '02:07:00', 18, 'Film',          'https://trailer/seven',              'Thriller',        'Deux détectives traquent un tueur en série.'),
('Ozark',                          '2017-07-21', '01:00:00', 18, 'Série',         'https://trailer/ozark',              'Thriller',        'Un comptable blanchit de l''argent pour un cartel.'),
('Bohemian Rhapsody',              '2018-11-02', '02:14:00', 12, 'Film',          'https://trailer/bohemianrhapsody',   'Musical',         'La vie de Freddie Mercury et Queen.'),
('Cosmos: A Spacetime Odyssey',    '2014-03-09', '00:43:00',  0, 'Documentaire',  'https://trailer/cosmos',             'Documentaire',    'Exploration de l''univers par Neil deGrasse Tyson.');

-- ============================================================
-- 2. Abonnement (aucune clé étrangère)
-- ============================================================
INSERT INTO Abonnement (Type_abonnement, Prix_Abonnement, Statut_abonnement, Nb_ecran_max, Qualite_video_abonnement, Date_debut_abonnement, Date_fin_abonnement) VALUES
('Basique',   5.99,  'Actif',    1, 'HD',       '2024-01-01', '2025-01-01'),
('Basique',   5.99,  'Expiré',   1, 'HD',       '2023-01-01', '2024-01-01'),
('Standard',  9.99,  'Actif',    2, 'Full HD',  '2024-03-15', '2025-03-15'),
('Standard',  9.99,  'Suspendu', 2, 'Full HD',  '2024-02-01', '2025-02-01'),
('Standard',  9.99,  'Actif',    2, 'Full HD',  '2024-06-01', '2025-06-01'),
('Premium',  13.99,  'Actif',    4, '4K',       '2024-04-10', '2025-04-10'),
('Premium',  13.99,  'Résilié',  4, '4K',       '2023-05-01', '2024-05-01'),
('Premium',  13.99,  'Actif',    4, '4K',       '2024-07-20', '2025-07-20'),
('VIP',      19.99,  'Actif',   10, '4K',       '2024-01-15', '2025-01-15'),
('VIP',      19.99,  'Actif',   10, '4K',       '2024-09-01', '2025-09-01');

-- ============================================================
-- 3. Client (FK -> Abonnement)
-- ============================================================
INSERT INTO Client (Nom_client, Prenom_client, Email_client, Mot_de_passe_client, Date_creation_client, Statut_client, Pays_client, Id_abonnement) VALUES
('Martin',   'Alice',     'alice.martin@email.com',     'hash_pw_1',  '2024-01-10', 'Actif',    'France',     1),
('Dupont',   'Bruno',     'bruno.dupont@email.com',     'hash_pw_2',  '2023-03-22', 'Actif',    'France',     3),
('Leclerc',  'Clara',     'clara.leclerc@email.com',    'hash_pw_3',  '2024-04-05', 'Actif',    'Belgique',   6),
('Moreau',   'David',     'david.moreau@email.com',     'hash_pw_4',  '2023-06-14', 'Suspendu', 'France',     4),
('Bernard',  'Emma',      'emma.bernard@email.com',     'hash_pw_5',  '2024-02-28', 'Actif',    'Suisse',     9),
('Petit',    'Félix',     'felix.petit@email.com',      'hash_pw_6',  '2023-11-01', 'Actif',    'France',     5),
('Robert',   'Gabrielle', 'gabrielle.robert@email.com', 'hash_pw_7',  '2024-05-17', 'Actif',    'Canada',     8),
('Simon',    'Hugo',      'hugo.simon@email.com',       'hash_pw_8',  '2023-08-09', 'Supprimé', 'France',     2),
('Michel',   'Inès',      'ines.michel@email.com',      'hash_pw_9',  '2024-01-25', 'Actif',    'France',    10),
('Leroy',    'Jules',     'jules.leroy@email.com',      'hash_pw_10', '2023-09-30', 'Actif',    'Luxembourg', 3),
('Garcia',   'Karine',    'karine.garcia@email.com',    'hash_pw_11', '2024-03-11', 'Actif',    'Espagne',    6),
('Martinez', 'Luc',       'luc.martinez@email.com',     'hash_pw_12', '2023-12-20', 'Actif',    'France',     1),
('Thomas',   'Marie',     'marie.thomas@email.com',     'hash_pw_13', '2024-06-02', 'Actif',    'France',     9),
('Roux',     'Nicolas',   'nicolas.roux@email.com',     'hash_pw_14', '2023-07-18', 'Actif',    'Maroc',      5),
('Vincent',  'Olivia',    'olivia.vincent@email.com',   'hash_pw_15', '2024-02-14', 'Suspendu', 'France',     7),
('Fontaine', 'Paul',      'paul.fontaine@email.com',    'hash_pw_16', '2023-10-05', 'Actif',    'France',     3),
('Girard',   'Quentin',   'quentin.girard@email.com',   'hash_pw_17', '2024-04-22', 'Actif',    'Tunisie',    8),
('Bonnet',   'Rachel',    'rachel.bonnet@email.com',    'hash_pw_18', '2023-05-31', 'Actif',    'France',     6),
('Dupuis',   'Samuel',    'samuel.dupuis@email.com',    'hash_pw_19', '2024-07-08', 'Actif',    'Algérie',   10),
('Lambert',  'Théa',      'thea.lambert@email.com',     'hash_pw_20', '2023-02-17', 'Actif',    'France',     5),
('Rousseau', 'Ugo',       'ugo.rousseau@email.com',     'hash_pw_21', '2024-08-13', 'Actif',    'France',     1),
('Blanc',    'Véra',      'vera.blanc@email.com',       'hash_pw_22', '2023-04-26', 'Actif',    'Italie',     9),
('Morin',    'William',   'william.morin@email.com',    'hash_pw_23', '2024-09-01', 'Actif',    'France',     3),
('Faure',    'Xénia',     'xenia.faure@email.com',      'hash_pw_24', '2023-01-15', 'Actif',    'Portugal',   6),
('Gaillard', 'Yann',      'yann.gaillard@email.com',    'hash_pw_25', '2024-10-07', 'Actif',    'France',     8);

-- ============================================================
-- 4. Profil (FK -> Client)
-- ============================================================
INSERT INTO Profil (Nom_profil, Avatar_profil, Type_profil, Limite_age, Langue_Preferee, Date_creation_profil, Id_client) VALUES
('Alice_Principal',  'avatar_01.png', 'Adulte',      18, 'Français',   '2024-01-10',  1),
('Alice_Kids',       'avatar_02.png', 'Enfant',       7, 'Français',   '2024-01-10',  1),
('Bruno_Pro',        'avatar_03.png', 'Adulte',      18, 'Français',   '2023-03-22',  2),
('Bruno_Ado',        'avatar_04.png', 'Adolescent',  15, 'Anglais',    '2023-03-22',  2),
('Clara',            'avatar_05.png', 'Adulte',      18, 'Anglais',    '2024-04-05',  3),
('David',            'avatar_06.png', 'Adulte',      18, 'Français',   '2023-06-14',  4),
('Emma_Principale',  'avatar_07.png', 'Adulte',      18, 'Français',   '2024-02-28',  5),
('Emma_Enfant',      'avatar_08.png', 'Enfant',       6, 'Français',   '2024-02-28',  5),
('Felix',            'avatar_09.png', 'Adulte',      18, 'Espagnol',   '2023-11-01',  6),
('Gabrielle',        'avatar_10.png', 'Adulte',      18, 'Anglais',    '2024-05-17',  7),
('Hugo',             'avatar_11.png', 'Adulte',      18, 'Français',   '2023-08-09',  8),
('Ines_Adulte',      'avatar_12.png', 'Adulte',      18, 'Français',   '2024-01-25',  9),
('Ines_Ado',         'avatar_13.png', 'Adolescent',  14, 'Anglais',    '2024-01-25',  9),
('Jules',            'avatar_14.png', 'Adulte',      18, 'Français',   '2023-09-30', 10),
('Karine',           'avatar_15.png', 'Adulte',      18, 'Espagnol',   '2024-03-11', 11),
('Luc_Principal',    'avatar_16.png', 'Adulte',      18, 'Français',   '2023-12-20', 12),
('Luc_Kids',         'avatar_17.png', 'Enfant',       8, 'Français',   '2023-12-20', 12),
('Marie',            'avatar_18.png', 'Adulte',      18, 'Français',   '2024-06-02', 13),
('Nicolas',          'avatar_19.png', 'Adulte',      18, 'Arabe',      '2023-07-18', 14),
('Olivia',           'avatar_20.png', 'Adulte',      18, 'Français',   '2024-02-14', 15),
('Paul',             'avatar_21.png', 'Adulte',      18, 'Français',   '2023-10-05', 16),
('Quentin_Adulte',   'avatar_22.png', 'Adulte',      18, 'Arabe',      '2024-04-22', 17),
('Quentin_Ado',      'avatar_23.png', 'Adolescent',  16, 'Français',   '2024-04-22', 17),
('Rachel',           'avatar_24.png', 'Adulte',      18, 'Français',   '2023-05-31', 18),
('Samuel',           'avatar_25.png', 'Adulte',      18, 'Arabe',      '2024-07-08', 19),
('Thea_Adulte',      'avatar_26.png', 'Adulte',      18, 'Français',   '2023-02-17', 20),
('Thea_Enfant',      'avatar_27.png', 'Enfant',       9, 'Français',   '2023-02-17', 20),
('Ugo',              'avatar_28.png', 'Adulte',      18, 'Français',   '2024-08-13', 21),
('Vera_Principale',  'avatar_29.png', 'Adulte',      18, 'Italien',    '2023-04-26', 22),
('Vera_Ado',         'avatar_30.png', 'Adolescent',  17, 'Anglais',    '2023-04-26', 22),
('William',          'avatar_31.png', 'Adulte',      18, 'Français',   '2024-09-01', 23),
('Xenia',            'avatar_32.png', 'Adulte',      18, 'Portugais',  '2023-01-15', 24),
('Yann_Adulte',      'avatar_33.png', 'Adulte',      18, 'Français',   '2024-10-07', 25),
('Yann_Kids',        'avatar_34.png', 'Enfant',       5, 'Français',   '2024-10-07', 25),
('Invite_Commun',    'avatar_35.png', 'Invité',      18, 'Français',   '2024-11-01',  1);

-- ============================================================
-- 5. Saison (FK -> Contenu — Id des Séries : 2,5,7,9,11,15,21,25)
-- ============================================================
INSERT INTO Saison (Numero_Saison, annee_saison, Id_contenu) VALUES
(1, 2008,  2),   -- Breaking Bad S1
(2, 2009,  2),   -- Breaking Bad S2
(1, 2016,  5),   -- Stranger Things S1
(1, 2017,  7),   -- La Casa de Papel S1
(1, 2011,  9),   -- Game of Thrones S1
(1, 1994, 11),   -- Friends S1
(1, 2017, 15),   -- Dark S1
(1, 2021, 21);   -- Squid Game S1

-- ============================================================
-- 6. Episode (FK -> Saison)
-- ============================================================
INSERT INTO Episode (Numero_episode, Titre_episode, Duree, Resume_episode, Id_saison) VALUES
(1, 'Pilote',                          '00:58:00', 'Walter apprend qu''il a un cancer.',                   1),
(2, 'Le chat dans le sac',             '00:48:00', 'Walter et Jesse font face à leur premier prisonnier.', 1),
(3, 'Et le beurre dans les épinards',  '00:48:00', 'Walter jongle entre deux vies.',                       1),
(1, 'Quatre jours dehors',             '00:58:00', 'Walter sort de prison.',                               2),
(2, 'Grilled',                         '00:47:00', 'Tuco retient Walter et Jesse captifs.',                2),
(1, 'La disparition de Will',          '00:47:00', 'Un enfant disparaît mystérieusement.',                 3),
(2, 'Le sous-sol',                     '00:55:00', 'Les enfants explorent le monde à l''envers.',          3),
(3, 'Holly',                           '00:51:00', 'Onze retrouve ses amis.',                              3),
(1, 'Je suis le professeur',           '01:10:00', 'Le Professeur recrute son équipe.',                    4),
(2, 'Dans la Monnaie',                 '01:00:00', 'Le braquage commence.',                                4),
(1, 'La Glacière',                     '00:57:00', 'Daenerys reçoit ses œufs de dragon.',                  5),
(2, 'La Route Royale',                 '00:56:00', 'Ned Stark rejoint la Cour.',                           5),
(1, 'Pilote Friends',                  '00:22:00', 'Monica rencontre Rachel.',                             6),
(2, 'Le Poulet Fossile',               '00:22:00', 'Le groupe commande son dîner habituel.',               6),
(1, 'Disparitions',                    '01:00:00', 'Des enfants disparaissent à Winden.',                  7),
(2, 'Vérité',                          '01:00:00', 'La police enquête sur les disparitions.',              7),
(3, 'Passé et Présent',                '01:00:00', 'Des liens entre 1986 et 2019 apparaissent.',           7),
(1, 'Red Light, Green Light',          '00:32:00', 'Les joueurs découvrent les règles mortelles.',         8),
(2, 'L''Enfer',                        '00:32:00', 'Les survivants font face au jeu suivant.',             8),
(3, 'Le Parapluie',                    '00:33:00', 'Les alliances se forment et se brisent.',              8);

-- ============================================================
-- 7. Avis (FK -> Contenu)
-- ============================================================
INSERT INTO Avis (note_avis, Commentaire_avis, Date_avis, Id_contenu) VALUES
(5, 'Chef-d''œuvre absolu, scénario bluffant.',              '2024-02-10 10:00:00',  1),
(5, 'La meilleure série jamais créée.',                      '2024-03-15 14:30:00',  2),
(4, 'Magnifique pour toute la famille.',                     '2024-01-20 09:15:00',  3),
(5, 'Nolan au sommet de son art.',                           '2024-04-08 18:00:00',  4),
(4, 'Ambiance unique, très prenant.',                        '2024-05-11 20:45:00',  5),
(5, 'Le Joker de Ledger est inoubliable.',                   '2024-02-25 16:20:00',  6),
(4, 'Série addictive, cliffhangers constants.',              '2024-06-03 11:00:00',  7),
(3, 'Bon film mais un peu long.',                            '2024-01-15 21:00:00',  8),
(5, 'Épopée fantastique incomparable.',                      '2024-07-22 15:30:00',  9),
(5, 'Film qui touche profondément.',                         '2024-03-30 13:00:00', 10),
(4, 'Toujours aussi drôle après 30 ans.',                    '2024-08-14 19:00:00', 11),
(4, 'Spectaculaire, un vrai événement cinématographique.',   '2024-04-19 17:45:00', 12),
(3, 'Bien réalisé mais trop lent par moments.',              '2024-09-07 10:30:00', 13),
(5, 'Bong Joon-ho est un génie.',                            '2024-05-28 22:00:00', 14),
(5, 'Série allemande déroutante et brillante.',              '2024-10-01 08:00:00', 15),
(5, 'Trilogie monumentale.',                                 '2024-02-05 20:00:00', 16),
(4, 'Chaque épisode est une gifle.',                         '2024-11-10 14:00:00', 17),
(4, 'Russell Crowe impressionnant.',                         '2024-06-17 12:30:00', 18),
(5, 'Fascinant et troublant.',                               '2024-07-04 09:00:00', 19),
(5, 'Pixar encore au top !',                                 '2024-03-03 16:00:00', 20),
(5, 'Phénomène mondial mérité.',                             '2024-08-29 18:30:00', 21),
(3, 'Film difficile, mais puissant.',                        '2024-09-18 11:45:00', 22),
(4, 'Cillian Murphy magistral.',                             '2024-10-23 20:15:00', 23),
(5, 'Révolutionnaire, même 25 ans après.',                   '2024-11-05 17:00:00', 24),
(4, 'Omar Sy parfait dans ce rôle.',                         '2024-12-01 13:30:00', 25);

-- ============================================================
-- regarder (FK -> Profil, Contenu)
-- Rappel : Statut='Terminé' => Progression=100 | Statut='En cours' => Progression<100
-- ============================================================
INSERT INTO regarder (Id_Profil, Id_contenu, Progression, Statut, Date_dernier_vue) VALUES
( 1,  1, 100, 'Terminé',  '2024-03-01 21:00:00'),
( 1,  4,  75, 'En cours', '2024-04-10 20:00:00'),
( 1,  6, 100, 'Terminé',  '2024-05-15 19:30:00'),
( 2,  3, 100, 'Terminé',  '2024-02-15 15:00:00'),
( 2, 20,  40, 'En cours', '2024-06-10 17:00:00'),
( 3,  6, 100, 'Terminé',  '2024-05-20 22:00:00'),
( 3, 14,  60, 'En cours', '2024-07-18 20:30:00'),
( 4, 10,  50, 'En cours', '2024-06-08 19:30:00'),
( 4, 16, 100, 'Terminé',  '2024-08-22 21:00:00'),
( 5, 14, 100, 'Terminé',  '2024-07-03 18:00:00'),
( 5, 30,  85, 'En cours', '2024-09-11 20:00:00'),
( 6,  2,  30, 'En cours', '2024-08-11 21:15:00'),
( 6, 24, 100, 'Terminé',  '2024-10-05 18:45:00'),
( 7, 21, 100, 'Terminé',  '2024-09-25 20:45:00'),
( 7, 12,  55, 'En cours', '2024-11-03 19:00:00'),
( 8, 20, 100, 'Terminé',  '2024-10-05 17:00:00'),
( 8,  3, 100, 'Terminé',  '2024-12-01 16:30:00'),
( 9, 24, 100, 'Terminé',  '2024-11-14 19:00:00'),
( 9, 28,  70, 'En cours', '2024-12-20 21:00:00'),
(10, 12,  60, 'En cours', '2024-12-01 20:30:00'),
(10, 35, 100, 'Terminé',  '2024-12-15 14:00:00'),
(11, 16, 100, 'Terminé',  '2024-01-30 22:00:00'),
(11, 18,  45, 'En cours', '2024-03-12 20:00:00'),
(12,  9,  80, 'En cours', '2024-03-18 21:00:00'),
(12, 22, 100, 'Terminé',  '2024-04-25 18:00:00'),
(13,  5, 100, 'Terminé',  '2024-04-27 18:30:00'),
(13, 15,  25, 'En cours', '2024-05-30 22:00:00'),
(14,  7,  45, 'En cours', '2024-05-09 20:00:00'),
(14, 29, 100, 'Terminé',  '2024-06-28 19:30:00'),
(15, 28, 100, 'Terminé',  '2024-06-22 19:45:00'),
(15, 32,  65, 'En cours', '2024-07-14 21:00:00'),
(16, 15,  20, 'En cours', '2024-07-30 22:15:00'),
(16, 10, 100, 'Terminé',  '2024-08-19 20:00:00'),
(17, 35, 100, 'Terminé',  '2024-08-16 16:00:00'),
(17, 26,  50, 'En cours', '2024-09-07 18:30:00'),
(18, 30,  90, 'En cours', '2024-09-03 21:30:00'),
(18,  1, 100, 'Terminé',  '2024-10-11 20:00:00'),
(19, 18, 100, 'Terminé',  '2024-10-19 20:00:00'),
(19,  4,  35, 'En cours', '2024-11-22 19:00:00'),
(20, 11,  55, 'En cours', '2024-11-07 19:00:00'),
(20, 34, 100, 'Terminé',  '2024-12-18 21:30:00'),
(21, 34, 100, 'Terminé',  '2024-12-10 22:30:00'),
(21,  8,  80, 'En cours', '2024-12-28 20:00:00'),
(22,  8, 100, 'Terminé',  '2024-01-22 21:00:00'),
(22, 33,  15, 'En cours', '2024-02-14 22:00:00'),
(23, 26,  35, 'En cours', '2024-02-28 18:00:00'),
(23,  6, 100, 'Terminé',  '2024-03-20 21:45:00'),
(24, 32, 100, 'Terminé',  '2024-03-14 20:00:00'),
(24, 27,  70, 'En cours', '2024-04-18 19:00:00'),
(25, 22,  10, 'En cours', '2024-04-06 20:30:00');
-- ============================================================
-- 9. ajouter (FK -> Profil, Contenu)
-- ============================================================
INSERT INTO ajouter (Id_Profil, Id_contenu, Date_ajout) VALUES
( 1,  2, '2024-01-15 10:00:00'),
( 2, 20, '2024-02-10 11:30:00'),
( 3,  9, '2024-03-05 14:00:00'),
( 4,  1, '2024-04-12 09:00:00'),
( 5,  7, '2024-05-08 16:45:00'),
( 6, 24, '2024-06-18 20:00:00'),
( 7,  5, '2024-07-25 18:30:00'),
( 8,  3, '2024-08-02 08:00:00'),
( 9, 21, '2024-09-14 19:15:00'),
(10, 16, '2024-10-09 21:00:00'),
(11,  4, '2024-11-21 17:00:00'),
(12, 11, '2024-12-03 12:00:00'),
(13, 15, '2024-01-28 10:30:00'),
(14, 29, '2024-02-19 15:00:00'),
(15,  6, '2024-03-31 20:00:00'),
(16, 33, '2024-04-24 11:00:00'),
(17, 12, '2024-05-17 09:30:00'),
(18, 25, '2024-06-06 14:00:00'),
(19, 30, '2024-07-11 18:00:00'),
(20, 17, '2024-08-27 22:00:00'),
(21, 10, '2024-09-22 16:30:00'),
(22, 13, '2024-10-15 13:00:00'),
(23,  8, '2024-11-04 19:45:00'),
(24, 27, '2024-12-08 10:00:00'),
(25, 19, '2024-01-07 08:30:00');

-- ============================================================
-- 10. emetre (FK -> Profil, Avis)
-- ============================================================
INSERT INTO emetre (Id_Profil, Id_avis) VALUES
( 1,  1),
( 3,  2),
( 5,  3),
( 7,  4),
( 9,  5),
(10,  6),
(12,  7),
(14,  8),
(15,  9),
(16, 10),
(18, 11),
(19, 12),
(21, 13),
(22, 14),
(24, 15),
(25, 16),
(26, 17),
(28, 18),
(29, 19),
(31, 20),
(32, 21),
(33, 22),
( 6, 23),
( 8, 24),
(11, 25);
