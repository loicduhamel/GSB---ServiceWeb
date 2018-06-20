-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Mar 03 Avril 2018 à 14:28
-- Version du serveur :  5.6.35
-- Version de PHP :  7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `service_web`
--

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `departement_id` int(11) NOT NULL,
  `departement_code` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `departement_nom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `departement_nom_uppercase` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `departement_slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `departement_nom_soundex` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`departement_id`, `departement_code`, `departement_nom`, `departement_nom_uppercase`, `departement_slug`, `departement_nom_soundex`) VALUES
(1, '01', 'Ain', 'AIN', 'ain', 'A500'),
(2, '02', 'Aisne', 'AISNE', 'aisne', 'A250'),
(3, '03', 'Allier', 'ALLIER', 'allier', 'A460'),
(5, '05', 'Hautes-Alpes', 'HAUTES-ALPES', 'hautes-alpes', 'H32412'),
(4, '04', 'Alpes-de-Haute-Provence', 'ALPES-DE-HAUTE-PROVENCE', 'alpes-de-haute-provence', 'A412316152'),
(6, '06', 'Alpes-Maritimes', 'ALPES-MARITIMES', 'alpes-maritimes', 'A41256352'),
(7, '07', 'Ardèche', 'ARDÈCHE', 'ardeche', 'A632'),
(8, '08', 'Ardennes', 'ARDENNES', 'ardennes', 'A6352'),
(9, '09', 'Ariège', 'ARIÈGE', 'ariege', 'A620'),
(10, '10', 'Aube', 'AUBE', 'aube', 'A100'),
(11, '11', 'Aude', 'AUDE', 'aude', 'A300'),
(12, '12', 'Aveyron', 'AVEYRON', 'aveyron', 'A165'),
(13, '13', 'Bouches-du-Rhône', 'BOUCHES-DU-RHÔNE', 'bouches-du-rhone', 'B2365'),
(14, '14', 'Calvados', 'CALVADOS', 'calvados', 'C4132'),
(15, '15', 'Cantal', 'CANTAL', 'cantal', 'C534'),
(16, '16', 'Charente', 'CHARENTE', 'charente', 'C653'),
(17, '17', 'Charente-Maritime', 'CHARENTE-MARITIME', 'charente-maritime', 'C6535635'),
(18, '18', 'Cher', 'CHER', 'cher', 'C600'),
(19, '19', 'Corrèze', 'CORRÈZE', 'correze', 'C620'),
(20, '2a', 'Corse-du-sud', 'CORSE-DU-SUD', 'corse-du-sud', 'C62323'),
(21, '2b', 'Haute-corse', 'HAUTE-CORSE', 'haute-corse', 'H3262'),
(22, '21', 'Côte-d\'or', 'CÔTE-D\'OR', 'cote-dor', 'C360'),
(23, '22', 'Côtes-d\'armor', 'CÔTES-D\'ARMOR', 'cotes-darmor', 'C323656'),
(24, '23', 'Creuse', 'CREUSE', 'creuse', 'C620'),
(25, '24', 'Dordogne', 'DORDOGNE', 'dordogne', 'D6325'),
(26, '25', 'Doubs', 'DOUBS', 'doubs', 'D120'),
(27, '26', 'Drôme', 'DRÔME', 'drome', 'D650'),
(28, '27', 'Eure', 'EURE', 'eure', 'E600'),
(29, '28', 'Eure-et-Loir', 'EURE-ET-LOIR', 'eure-et-loir', 'E6346'),
(30, '29', 'Finistère', 'FINISTÈRE', 'finistere', 'F5236'),
(31, '30', 'Gard', 'GARD', 'gard', 'G630'),
(32, '31', 'Haute-Garonne', 'HAUTE-GARONNE', 'haute-garonne', 'H3265'),
(33, '32', 'Gers', 'GERS', 'gers', 'G620'),
(34, '33', 'Gironde', 'GIRONDE', 'gironde', 'G653'),
(35, '34', 'Hérault', 'HÉRAULT', 'herault', 'H643'),
(36, '35', 'Ile-et-Vilaine', 'ILE-ET-VILAINE', 'ile-et-vilaine', 'I43145'),
(37, '36', 'Indre', 'INDRE', 'indre', 'I536'),
(38, '37', 'Indre-et-Loire', 'INDRE-ET-LOIRE', 'indre-et-loire', 'I536346'),
(39, '38', 'Isère', 'ISÈRE', 'isere', 'I260'),
(40, '39', 'Jura', 'JURA', 'jura', 'J600'),
(41, '40', 'Landes', 'LANDES', 'landes', 'L532'),
(42, '41', 'Loir-et-Cher', 'LOIR-ET-CHER', 'loir-et-cher', 'L6326'),
(43, '42', 'Loire', 'LOIRE', 'loire', 'L600'),
(44, '43', 'Haute-Loire', 'HAUTE-LOIRE', 'haute-loire', 'H346'),
(45, '44', 'Loire-Atlantique', 'LOIRE-ATLANTIQUE', 'loire-atlantique', 'L634532'),
(46, '45', 'Loiret', 'LOIRET', 'loiret', 'L630'),
(47, '46', 'Lot', 'LOT', 'lot', 'L300'),
(48, '47', 'Lot-et-Garonne', 'LOT-ET-GARONNE', 'lot-et-garonne', 'L3265'),
(49, '48', 'Lozère', 'LOZÈRE', 'lozere', 'L260'),
(50, '49', 'Maine-et-Loire', 'MAINE-ET-LOIRE', 'maine-et-loire', 'M346'),
(51, '50', 'Manche', 'MANCHE', 'manche', 'M200'),
(52, '51', 'Marne', 'MARNE', 'marne', 'M650'),
(53, '52', 'Haute-Marne', 'HAUTE-MARNE', 'haute-marne', 'H3565'),
(54, '53', 'Mayenne', 'MAYENNE', 'mayenne', 'M000'),
(55, '54', 'Meurthe-et-Moselle', 'MEURTHE-ET-MOSELLE', 'meurthe-et-moselle', 'M63524'),
(56, '55', 'Meuse', 'MEUSE', 'meuse', 'M200'),
(57, '56', 'Morbihan', 'MORBIHAN', 'morbihan', 'M615'),
(58, '57', 'Moselle', 'MOSELLE', 'moselle', 'M240'),
(59, '58', 'Nièvre', 'NIÈVRE', 'nievre', 'N160'),
(60, '59', 'Nord', 'NORD', 'nord', 'N630'),
(61, '60', 'Oise', 'OISE', 'oise', 'O200'),
(62, '61', 'Orne', 'ORNE', 'orne', 'O650'),
(63, '62', 'Pas-de-Calais', 'PAS-DE-CALAIS', 'pas-de-calais', 'P23242'),
(64, '63', 'Puy-de-Dôme', 'PUY-DE-DÔME', 'puy-de-dome', 'P350'),
(65, '64', 'Pyrénées-Atlantiques', 'PYRÉNÉES-ATLANTIQUES', 'pyrenees-atlantiques', 'P65234532'),
(66, '65', 'Hautes-Pyrénées', 'HAUTES-PYRÉNÉES', 'hautes-pyrenees', 'H321652'),
(67, '66', 'Pyrénées-Orientales', 'PYRÉNÉES-ORIENTALES', 'pyrenees-orientales', 'P65265342'),
(68, '67', 'Bas-Rhin', 'BAS-RHIN', 'bas-rhin', 'B265'),
(69, '68', 'Haut-Rhin', 'HAUT-RHIN', 'haut-rhin', 'H365'),
(70, '69', 'Rhône', 'RHÔNE', 'rhone', 'R500'),
(71, '70', 'Haute-Saône', 'HAUTE-SAÔNE', 'haute-saone', 'H325'),
(72, '71', 'Saône-et-Loire', 'SAÔNE-ET-LOIRE', 'saone-et-loire', 'S5346'),
(73, '72', 'Sarthe', 'SARTHE', 'sarthe', 'S630'),
(74, '73', 'Savoie', 'SAVOIE', 'savoie', 'S100'),
(75, '74', 'Haute-Savoie', 'HAUTE-SAVOIE', 'haute-savoie', 'H321'),
(76, '75', 'Paris', 'PARIS', 'paris', 'P620'),
(77, '76', 'Seine-Maritime', 'SEINE-MARITIME', 'seine-maritime', 'S5635'),
(78, '77', 'Seine-et-Marne', 'SEINE-ET-MARNE', 'seine-et-marne', 'S53565'),
(79, '78', 'Yvelines', 'YVELINES', 'yvelines', 'Y1452'),
(80, '79', 'Deux-Sèvres', 'DEUX-SÈVRES', 'deux-sevres', 'D2162'),
(81, '80', 'Somme', 'SOMME', 'somme', 'S500'),
(82, '81', 'Tarn', 'TARN', 'tarn', 'T650'),
(83, '82', 'Tarn-et-Garonne', 'TARN-ET-GARONNE', 'tarn-et-garonne', 'T653265'),
(84, '83', 'Var', 'VAR', 'var', 'V600'),
(85, '84', 'Vaucluse', 'VAUCLUSE', 'vaucluse', 'V242'),
(86, '85', 'Vendée', 'VENDÉE', 'vendee', 'V530'),
(87, '86', 'Vienne', 'VIENNE', 'vienne', 'V500'),
(88, '87', 'Haute-Vienne', 'HAUTE-VIENNE', 'haute-vienne', 'H315'),
(89, '88', 'Vosges', 'VOSGES', 'vosges', 'V200'),
(90, '89', 'Yonne', 'YONNE', 'yonne', 'Y500'),
(91, '90', 'Territoire de Belfort', 'TERRITOIRE DE BELFORT', 'territoire-de-belfort', 'T636314163'),
(92, '91', 'Essonne', 'ESSONNE', 'essonne', 'E250'),
(93, '92', 'Hauts-de-Seine', 'HAUTS-DE-SEINE', 'hauts-de-seine', 'H32325'),
(94, '93', 'Seine-Saint-Denis', 'SEINE-SAINT-DENIS', 'seine-saint-denis', 'S525352'),
(95, '94', 'Val-de-Marne', 'VAL-DE-MARNE', 'val-de-marne', 'V43565'),
(96, '95', 'Val-d\'oise', 'VAL-D\'OISE', 'val-doise', 'V432'),
(97, '976', 'Mayotte', 'MAYOTTE', 'mayotte', 'M300'),
(98, '971', 'Guadeloupe', 'GUADELOUPE', 'guadeloupe', 'G341'),
(99, '973', 'Guyane', 'GUYANE', 'guyane', 'G500'),
(100, '972', 'Martinique', 'MARTINIQUE', 'martinique', 'M6352'),
(101, '974', 'Réunion', 'RÉUNION', 'reunion', 'R500');

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Prenom` varchar(255) DEFAULT NULL,
  `Tel` varchar(100) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `Specialite` varchar(255) DEFAULT NULL,
  `Departement` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `medecin`
--

INSERT INTO `medecin` (`id`, `Nom`, `Prenom`, `Tel`, `Adresse`, `Specialite`, `Departement`) VALUES
(1, 'George', 'Holmes', '09 97 05 76 99', 'CP 774, 4369 Nullam Ave', ' Cabinet médical', 1),
(2, 'Beck', 'Bernard', '09 52 75 01 22', 'Appartement 543-6466 Proin Chemin', ' Biologiste', 2),
(3, 'Blair', 'Colin', '08 92 61 59 94', 'Appartement 233-3064 Sit Rd.', ' Biologiste', 3),
(4, 'Mcintyre', 'Martena', '08 23 39 54 68', '8496 Nullam Impasse', ' Psychiatre', 4),
(5, 'Huff', 'Rhonda', '02 43 32 50 40', '9459 Id Impasse', ' O.R.L - Otorhinolaryngologiste', 5),
(6, 'Stout', 'Christopher', '05 70 21 53 78', '7867 Nulla. Chemin', ' Orthodontiste', 6),
(7, 'Hale', 'Heidi', '05 08 45 63 64', '3066 Orci Avenue', ' Cabinet médical', 7),
(8, 'Stevens', 'Garth', '07 97 66 15 68', 'Appartement 925-8410 In Rue', ' Dentiste', 8),
(9, 'Reese', 'Irene', '05 93 39 64 22', 'Appartement 705-9482 Dui Impasse', ' Biologiste', 9),
(10, 'Crane', 'Belle', '04 69 83 04 81', 'CP 396, 1212 Vestibulum. Av.', ' Radiologue', 10),
(11, 'Howard', 'Mason', '01 10 54 19 41', '5925 Praesent Rd.', ' Ophtalmologiste', 59),
(12, 'Levy', 'Zane', '09 40 70 92 00', 'CP 138, 5192 Et, Rue', ' Nutritionniste', 59),
(13, 'Nicholson', 'Buckminster', '08 90 61 06 32', 'Appartement 626-462 Amet Rd.', ' Gynécologue', 62),
(14, 'Marshall', 'Cade', '02 75 19 25 40', '793-9818 Auctor Route', ' Biologiste', 62),
(15, 'Harrison', 'Yetta', '01 32 30 24 49', '8378 Nunc, Route', ' Radiologue', 11),
(16, 'Mcintosh', 'Cody', '06 17 33 47 51', 'CP 636, 7787 In Impasse', ' Chirurgien', 12),
(17, 'Martinez', 'Orla', '05 17 65 43 04', '', ' O.R.L - Otorhinolaryngologiste', 65),
(18, 'Ross', 'Shelly', '06 65 14 67 19', 'Appartement 226-2877 Lectus Av.', ' Orthodontiste', 66),
(19, 'Nixon', 'Griffith', '02 76 68 25 50', 'CP 276, 2843 Sed Chemin', ' Gynécologue', 67),
(20, 'Brennan', 'Ursula', '08 92 62 86 85', '186 Neque Chemin', ' Orthodontiste', 68),
(21, 'Atkinson', 'Amal', '09 49 40 01 37', '6118 Torquent Rd.', ' Radiologue', 69),
(22, 'Noel', 'Malik', '02 04 74 74 19', '845-8228 Aliquam Avenue', ' Echographiste', 70),
(23, 'Allen', 'Cade', '08 09 13 23 23', 'CP 887, 1745 Pellentesque Impasse', ' Cabinet médical', 71),
(24, 'Conley', 'Stone', '09 85 68 60 66', 'Appartement 416-3327 Mauris, Impasse', ' Psychiatre', 72),
(25, 'Eaton', 'Wyoming', '06 49 65 86 55', '7237 Facilisis Route', ' Cabinet médical', 73),
(26, 'Dickerson', 'Cyrus', '03 73 52 71 12', '869 Sed Route', ' Gynécologue', 74),
(27, 'Ware', 'Theodore', '01 43 06 77 16', 'CP 497, 6846 Fusce Impasse', ' Ophtalmologiste', 75),
(28, 'Montoya', 'Jonas', '06 56 32 77 79', '451-6863 Nunc Rd.', ' Echographiste', 76),
(29, 'Klein', 'Gavin', '01 41 75 21 83', '696-1983 Amet Rue', ' Pédiatre', 77),
(30, 'Knight', 'Ebony', '03 66 31 28 56', 'Appartement 944-617 Dolor Chemin', ' Echographiste', 93),
(31, 'Donaldson', 'Kennedy', '08 28 21 03 87', 'Appartement 940-5098 Sed Av.', ' Psychiatre', 20),
(32, 'Kelly', 'Steven', '08 30 20 57 38', '8900 Enim, Rd.', ' Echographiste', 21),
(33, 'Harrison', 'Kiara', '09 35 70 60 40', '8344 Vestibulum Impasse', ' Radiologue', 22),
(34, 'Delaney', 'Ivan', '08 62 63 13 42', '5706 Nam Impasse', ' Orthodontiste', 23),
(35, 'Munoz', 'Maris', '05 56 90 89 23', '870-7461 Lorem. Avenue', ' O.R.L - Otorhinolaryngologiste', 24),
(36, 'Bullock', 'Nina', '08 17 55 95 68', 'Appartement 642-8437 Pede Av.', ' Gynécologue', 25),
(37, 'Talley', 'Quamar', '05 73 24 69 37', '598-8867 Sapien, Avenue', ' Dentiste', 26),
(38, 'Odom', 'Nicholas', '09 47 26 09 16', '593-3803 Eleifend, Route', ' Biologiste', 27),
(39, 'Ortiz', 'Vincent', '01 26 29 13 59', 'CP 916, 2974 Neque. Rue', ' O.R.L - Otorhinolaryngologiste', 28),
(40, 'Foster', 'Tucker', '02 40 67 96 99', '307-5737 Semper Chemin', ' Echographiste', 29),
(41, 'Crane', 'Aline', '09 49 29 72 98', '574 Vel Avenue', ' Dermatologue', 30),
(42, 'Cotton', 'Quentin', '02 70 82 04 42', 'Appartement 444-4226 Dictum Rd.', ' Pédiatre', 31),
(43, 'Puckett', 'Abbot', '02 82 76 11 33', 'Appartement 193-3343 Tellus Route', ' Biologiste', 32),
(44, 'Davenport', 'Alvin', '09 74 07 89 90', '5637 Sed Impasse', ' Ophtalmologiste', 33),
(45, 'Alvarez', 'Colleen', '05 18 87 48 49', 'Appartement 840-4094 Sapien, Av.', ' Biologiste', 34),
(46, 'Baxter', 'Arsenio', '06 97 67 99 08', '493-4143 Eu Impasse', ' Echographiste', 35),
(47, 'French', 'Chava', '04 79 54 06 40', '', ' Radiologue', 36),
(48, 'Pena', 'Dawn', '07 57 18 64 63', '8476 Duis Ave', ' Cabinet médical', 37),
(49, 'Taylor', 'Veronica', '07 65 20 68 02', 'Appartement 231-3793 Est, Av.', '', 38),
(50, 'Holcomb', 'James', '05 33 81 48 66', 'CP 149, 298 Vehicula Ave', ' Echographiste', 39),
(51, 'Blake', 'Teagan', '08 73 28 09 33', 'CP 564, 3719 Malesuada Av.', ' Radiologue', 40),
(52, 'Pearson', 'Sacha', '03 21 72 28 74', 'CP 611, 1860 Nunc Impasse', ' Nutritionniste', 41),
(53, 'Petty', 'Uma', '06 68 77 51 65', '6180 Magna. Chemin', ' Radiologue', 42),
(54, 'Potter', 'Steel', '09 58 81 86 37', 'Appartement 423-844 Dignissim Route', ' Nutritionniste', 43),
(55, 'Santiago', 'Ria', '02 66 34 48 13', 'CP 926, 3317 Scelerisque Chemin', ' Allergologue', 44),
(56, 'Burke', 'Aaron', '04 71 67 64 71', '804-9073 Lorem Chemin', ' Gynécologue', 45),
(57, 'Wallace', 'Leila', '03 95 78 10 72', '5138 Vitae Ave', ' Orthodontiste', 46),
(58, 'Henson', 'Natalie', '02 21 59 07 03', '134-4093 Ut, Avenue', ' Anesthésiste', 47),
(59, 'Mcclure', 'Phillip', '09 23 24 30 64', 'CP 304, 3482 Felis Av.', ' Pédiatre', 48),
(60, 'Callahan', 'Tatyana', '09 73 73 75 19', '8093 Sed Rue', ' Psychiatre', 49),
(61, 'Woods', 'Miranda', '04 21 14 27 67', 'CP 205, 9432 Hymenaeos. Avenue', ' Biologiste', 50),
(62, 'Stout', 'Ramona', '06 78 37 57 82', '597 Aliquet, Route', ' Allergologue', 51),
(63, 'Ortiz', 'Kelly', '07 24 08 80 70', '606-9949 Semper Avenue', ' Allergologue', 52),
(64, 'Sears', 'Kyle', '01 95 18 38 26', '2734 Vivamus Av.', ' Ophtalmologiste', 53),
(65, 'Berger', 'Lawrence', '05 72 38 07 04', 'CP 322, 6381 Ligula. Ave', ' Anesthésiste', 54),
(66, 'Fulton', 'Abdul', '09 94 25 72 08', '509-5627 Quis Route', ' O.R.L - Otorhinolaryngologiste', 55),
(67, 'Eaton', 'James', '06 89 20 82 83', '712-3582 Aliquam Impasse', ' Orthodontiste', 56),
(68, 'Shepherd', 'Illana', '02 79 95 30 35', '686-517 In Ave', ' Gynécologue', 57),
(69, 'Kidd', 'Jackson', '02 68 54 26 33', '8827 Tellus Rd.', ' Chirurgien', 58),
(70, 'Ramirez', 'Rhoda', '07 72 76 34 88', '8174 A Route', ' Pédiatre', 59),
(71, 'Maxwell', 'Judith', '03 62 10 40 48', 'CP 679, 4009 Libero. Ave', ' Pédiatre', 60),
(72, 'Dyer', 'Amelia', '08 80 88 63 49', 'Appartement 866-5011 Eu Impasse', ' Radiologue', 61),
(73, 'Harrell', 'Palmer', '05 11 55 14 27', '6492 Eu Chemin', ' Ophtalmologiste', 62),
(74, 'Wood', 'Chava', '09 38 19 47 32', '473-2430 Varius Rd.', ' Ophtalmologiste', 63),
(75, 'Rowland', 'Gabriel', '02 06 42 08 11', 'Appartement 153-9945 Amet, Impasse', ' Psychiatre', 64),
(76, 'Vazquez', 'Jayme', '01 28 44 22 29', 'Appartement 499-4670 Nisi Chemin', ' Pédiatre', 65),
(77, 'Weeks', 'Abigail', '04 41 30 57 49', '', ' Dentiste', 66),
(78, 'Garcia', 'Risa', '09 22 64 38 62', 'Appartement 566-159 Placerat, Impasse', ' Cabinet médical', 67),
(79, 'Duke', 'Miranda', '09 14 64 66 57', 'CP 193, 8848 In Av.', ' Anesthésiste', 68),
(80, 'Zimmerman', 'Nathaniel', '04 59 55 24 68', '8200 Magnis Avenue', ' Anesthésiste', 69),
(81, 'Frazier', 'Akeem', '02 62 37 97 05', 'CP 410, 5852 Mollis Rd.', ' Psychiatre', 70),
(82, 'Cardenas', 'Marny', '08 32 10 23 11', 'CP 239, 8789 Nullam Avenue', ' O.R.L - Otorhinolaryngologiste', 71),
(83, 'Boyle', 'Bradley', '08 84 88 64 30', 'Appartement 261-2499 Luctus Chemin', ' Echographiste', 72),
(84, 'Koch', 'Wyatt', '08 60 92 83 59', '877-2586 Eu Route', ' Orthodontiste', 73),
(85, 'Carter', 'Nichole', '08 87 89 20 54', '5322 Integer Impasse', ' Gynécologue', 74),
(86, 'Kirk', 'Leandra', '05 90 22 39 75', '726-7172 A Route', ' Ophtalmologiste', 75),
(87, 'Kelly', 'Drew', '01 79 68 45 29', 'CP 608, 6317 Tellus. Rue', ' Chirurgien', 76),
(88, 'Knowles', 'Rhoda', '01 12 19 78 18', '489-6699 Lacus. Avenue', ' Nutritionniste', 77),
(89, 'George', 'Sybil', '08 86 89 32 08', 'CP 875, 6166 Enim. Av.', ' Pédiatre', 78),
(90, 'Mclaughlin', 'Vera', '01 90 16 59 26', 'Appartement 486-448 Lacus, Rd.', ' Psychiatre', 79),
(91, 'Powell', 'Herman', '08 18 80 85 44', 'Appartement 454-4975 Fusce Impasse', ' Orthodontiste', 80),
(92, 'Leblanc', 'Quintessa', '08 17 33 91 23', 'Appartement 555-2339 Turpis Avenue', ' Echographiste', 81),
(93, 'Maddox', 'Alfonso', '08 99 75 50 24', '5994 Dictum Route', ' Allergologue', 82),
(94, 'Pitts', 'Randall', '04 41 10 53 37', 'CP 517, 2359 Purus. Route', ' Echographiste', 83),
(95, 'Lambert', 'Griffin', '07 59 51 86 30', 'Appartement 520-2081 Bibendum Rd.', '', 84),
(96, 'Chan', 'Deanna', '08 55 63 63 77', 'Appartement 956-602 Curae; Chemin', ' Anesthésiste', 85),
(97, 'Waters', 'Mollie', '06 09 75 23 47', '884-7858 Odio. Ave', ' Biologiste', 86),
(98, 'Harding', 'Melanie', '09 59 42 43 77', '586-8431 Ante Rue', ' Chirurgien', 87),
(99, 'Fry', 'Abel', '03 68 08 51 70', 'Appartement 851-3473 Mattis. Impasse', ' Nutritionniste', 88),
(100, 'Murray', 'Zia', '03 54 68 58 90', '5220 Aliquam Av.', ' Anesthésiste', 89);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` mediumint(8) NOT NULL,
  `Utilisateur` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Mail` varchar(255) DEFAULT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `Utilisateur`, `Password`, `Mail`, `Nom`, `Prenom`) VALUES
(1, 'loic.duhamel', 'Duhamel62', 'loic.duhamel@hotmail.fr', '', ''),
(2, 'adrien.verhenne', 'Verhenne59', 'aghia59560@gmail.com', '', ''),
(3, 'kris.crinon', 'Crinon59', 'kriscrinon@gmail.com', '', ''),
(4, 'jocelyn.hamel', 'Hammel59', 'sakkowhml@gmail.com', '', ''),
(5, 'gsb', 'gsb', 'gsb@gsb.fr', '', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`departement_id`),
  ADD KEY `departement_slug` (`departement_slug`),
  ADD KEY `departement_code` (`departement_code`),
  ADD KEY `departement_nom_soundex` (`departement_nom_soundex`),
  ADD KEY `departement_code_2` (`departement_code`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `departement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;