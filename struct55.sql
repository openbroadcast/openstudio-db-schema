-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.5.60-log - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour openstudio
CREATE DATABASE IF NOT EXISTS `openstudio` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `openstudio`;

-- Listage de la structure de la table openstudio. artistes
CREATE TABLE IF NOT EXISTS `artistes` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) NOT NULL DEFAULT '',
  `LastBroadcasting` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.artistes : 0 rows
/*!40000 ALTER TABLE `artistes` DISABLE KEYS */;
/*!40000 ALTER TABLE `artistes` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. campagnes
CREATE TABLE IF NOT EXISTS `campagnes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `annonceur` varchar(255) NOT NULL DEFAULT '',
  `campagne` varchar(255) NOT NULL DEFAULT '',
  `mediaid` int(11) unsigned NOT NULL DEFAULT '0',
  `duree` float NOT NULL DEFAULT '0',
  `diffusions_total` decimal(11,0) NOT NULL DEFAULT '0',
  `diffusions_count` decimal(11,0) NOT NULL DEFAULT '0',
  `station` int(11) unsigned NOT NULL DEFAULT '0',
  `valide` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `date_encodage` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_debut` date NOT NULL DEFAULT '0000-00-00',
  `date_fin` date NOT NULL DEFAULT '0000-00-00',
  `date_dernier_ecran` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.campagnes : 0 rows
/*!40000 ALTER TABLE `campagnes` DISABLE KEYS */;
/*!40000 ALTER TABLE `campagnes` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. canvas
CREATE TABLE IF NOT EXISTS `canvas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `format` int(11) unsigned NOT NULL DEFAULT '0',
  `Categorie` int(11) unsigned NOT NULL DEFAULT '0',
  `ssCategorie` int(11) unsigned NOT NULL DEFAULT '0',
  `Comment` char(32) NOT NULL DEFAULT '',
  `protectioncd` mediumint(9) unsigned NOT NULL DEFAULT '3600',
  `protectionartist` mediumint(8) unsigned NOT NULL DEFAULT '3600',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=latin1 COMMENT='Canvas Programmation';

-- Listage des données de la table openstudio.canvas : 49 rows
/*!40000 ALTER TABLE `canvas` DISABLE KEYS */;
INSERT INTO `canvas` (`id`, `format`, `Categorie`, `ssCategorie`, `Comment`, `protectioncd`, `protectionartist`) VALUES
	(4, 3, 2, 36, '1ER DISQUE', 9000, 3600),
	(5, 3, 2, 25, '2EME DISQUE (Annees 2000)', 9000, 3600),
	(6, 3, 1, 49, 'RETOUR PUB', 600, 0),
	(7, 3, 2, 36, '1ER DISQUE', 9000, 3600),
	(8, 3, 2, 24, 'SOUVENIR1', 9000, 3600),
	(9, 3, 1, 50, '', 600, 0),
	(10, 3, 2, 23, 'SOUVENIR2', 9000, 3600),
	(11, 3, 1, 49, '', 600, 0),
	(12, 3, 2, 36, '20 MINUTES', 9000, 3600),
	(13, 3, 1, 50, '', 600, 0),
	(14, 3, 2, 26, 'SEUL AVANT PUB (Annee 2010)', 9000, 3600),
	(15, 3, 1, 49, '', 600, 0),
	(16, 3, 2, 36, '31 MINUTES', 9000, 3600),
	(17, 3, 1, 50, '', 600, 0),
	(18, 3, 2, 23, 'SOUVENIR1', 9000, 3600),
	(19, 3, 1, 49, '', 600, 0),
	(20, 3, 2, 23, 'SOUVENIR2', 9000, 3600),
	(21, 3, 1, 50, '', 600, 0),
	(22, 3, 2, 36, '41 MINUTES', 9000, 3600),
	(23, 3, 1, 49, '', 600, 0),
	(24, 3, 2, 24, 'SOUVENIR1', 9000, 3600),
	(25, 3, 1, 50, '', 600, 0),
	(26, 3, 2, 24, 'SOUVENIR2', 9000, 600),
	(27, 3, 1, 49, '', 600, 0),
	(28, 3, 2, 23, 'FIN HEURE', 9000, 3600),
	(29, 3, 2, 23, 'CD SECOURS', 9000, 3600),
	(30, 3, 2, 23, 'CD SECOURS', 9000, 3600),
	(31, 3, 2, 23, 'CD SECOURS', 9000, 3600),
	(80, 4, 2, 23, '', 600, 600),
	(81, 4, 2, 23, '', 600, 600),
	(82, 4, 2, 23, '', 600, 600),
	(83, 4, 2, 23, '', 600, 600),
	(84, 4, 2, 23, '', 600, 600),
	(85, 4, 2, 23, '', 600, 600),
	(86, 4, 2, 23, '', 600, 600),
	(87, 4, 2, 23, '', 600, 600),
	(88, 4, 2, 23, '', 600, 600),
	(89, 4, 2, 23, '', 600, 600),
	(90, 4, 2, 23, '', 600, 600),
	(91, 4, 2, 23, '', 600, 600),
	(92, 4, 2, 23, '', 600, 600),
	(93, 4, 2, 23, '', 600, 600),
	(94, 4, 2, 23, '', 600, 600),
	(95, 4, 2, 23, '', 600, 600),
	(96, 4, 2, 23, '', 600, 600),
	(102, 2, 7, 0, 'Top H', 600, 600),
	(103, 1, 4, 0, 'Pub In', 600, 600),
	(104, 1, 8, 0, 'ECRAN PUB', 600, 600),
	(105, 1, 5, 0, 'Pub Out', 600, 600);
/*!40000 ALTER TABLE `canvas` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.categories : 8 rows
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `nom`) VALUES
	(1, 'Jingles'),
	(2, 'Musiques'),
	(3, 'Intervention'),
	(4, 'PubIn'),
	(5, 'PubOut'),
	(6, 'Comblage'),
	(7, 'Top Horaire'),
	(8, 'Pub');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. formats
CREATE TABLE IF NOT EXISTS `formats` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.formats : 4 rows
/*!40000 ALTER TABLE `formats` DISABLE KEYS */;
INSERT INTO `formats` (`ID`, `Name`) VALUES
	(1, 'PUB'),
	(2, 'TOP HORAIRE'),
	(3, 'SEMAINE'),
	(4, 'WEEKEND-80');
/*!40000 ALTER TABLE `formats` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. grillepub
CREATE TABLE IF NOT EXISTS `grillepub` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `heure` tinyint(2) NOT NULL DEFAULT '0',
  `minute` tinyint(2) NOT NULL DEFAULT '0',
  `seconde` tinyint(2) NOT NULL DEFAULT '0',
  `canvas` int(11) unsigned NOT NULL DEFAULT '0',
  `prior` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `duree` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `heure` (`heure`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.grillepub : 97 rows
/*!40000 ALTER TABLE `grillepub` DISABLE KEYS */;
INSERT INTO `grillepub` (`id`, `heure`, `minute`, `seconde`, `canvas`, `prior`, `duree`) VALUES
	(1, 0, 59, 45, 2, 0, 10),
	(2, 1, 59, 45, 2, 0, 10),
	(3, 2, 59, 45, 2, 0, 10),
	(4, 3, 59, 45, 2, 0, 10),
	(5, 4, 59, 45, 2, 0, 10),
	(6, 5, 59, 45, 2, 0, 10),
	(7, 6, 59, 45, 2, 0, 10),
	(8, 7, 59, 45, 2, 0, 10),
	(9, 8, 59, 45, 2, 0, 10),
	(10, 9, 59, 45, 2, 0, 10),
	(11, 10, 59, 45, 2, 0, 10),
	(12, 11, 59, 45, 2, 0, 10),
	(13, 12, 59, 45, 2, 0, 10),
	(14, 13, 59, 45, 2, 0, 10),
	(15, 14, 59, 45, 2, 0, 10),
	(16, 15, 59, 45, 2, 0, 10),
	(17, 16, 59, 45, 2, 0, 10),
	(18, 17, 59, 45, 2, 0, 10),
	(19, 18, 59, 45, 2, 0, 10),
	(20, 19, 59, 45, 2, 0, 10),
	(21, 20, 59, 45, 2, 0, 10),
	(22, 21, 59, 45, 2, 0, 10),
	(23, 22, 59, 45, 2, 0, 10),
	(24, 23, 59, 45, 2, 0, 10),
	(25, 0, 5, 0, 1, 0, 60),
	(26, 0, 27, 0, 1, 0, 60),
	(28, 0, 47, 0, 1, 0, 60),
	(29, 1, 5, 0, 1, 0, 60),
	(30, 1, 27, 0, 1, 0, 60),
	(32, 1, 47, 0, 1, 0, 60),
	(33, 2, 5, 0, 1, 0, 60),
	(34, 2, 27, 0, 1, 0, 60),
	(36, 2, 47, 0, 1, 0, 60),
	(37, 3, 5, 0, 1, 0, 60),
	(38, 3, 27, 0, 1, 0, 60),
	(40, 3, 47, 0, 1, 0, 60),
	(41, 4, 5, 0, 1, 0, 60),
	(42, 4, 27, 0, 1, 0, 60),
	(44, 4, 47, 0, 1, 0, 60),
	(45, 5, 5, 0, 1, 0, 60),
	(46, 5, 27, 0, 1, 0, 60),
	(48, 5, 47, 0, 1, 0, 60),
	(49, 6, 5, 0, 1, 0, 60),
	(50, 6, 27, 0, 1, 0, 60),
	(52, 6, 47, 0, 1, 0, 60),
	(53, 7, 5, 0, 1, 0, 60),
	(54, 7, 27, 0, 1, 0, 60),
	(56, 7, 47, 0, 1, 0, 60),
	(57, 8, 5, 0, 1, 0, 60),
	(58, 8, 27, 0, 1, 0, 60),
	(60, 8, 47, 0, 1, 0, 60),
	(61, 9, 5, 0, 1, 0, 60),
	(62, 9, 27, 0, 1, 0, 60),
	(64, 9, 47, 0, 1, 0, 60),
	(65, 10, 5, 0, 1, 0, 60),
	(66, 10, 27, 0, 1, 0, 60),
	(68, 10, 47, 0, 1, 0, 60),
	(69, 11, 5, 0, 1, 0, 60),
	(70, 11, 27, 0, 1, 0, 60),
	(72, 11, 47, 0, 1, 0, 60),
	(73, 12, 5, 0, 1, 0, 60),
	(74, 12, 27, 0, 1, 0, 60),
	(76, 12, 47, 0, 1, 0, 60),
	(77, 13, 5, 0, 1, 0, 60),
	(78, 13, 27, 0, 1, 0, 60),
	(80, 13, 47, 0, 1, 0, 60),
	(81, 14, 5, 0, 1, 0, 60),
	(82, 14, 27, 0, 1, 0, 60),
	(84, 14, 47, 0, 1, 0, 60),
	(85, 15, 5, 0, 1, 0, 60),
	(86, 15, 27, 0, 1, 0, 60),
	(88, 15, 47, 0, 1, 0, 60),
	(89, 16, 5, 0, 1, 0, 60),
	(90, 16, 27, 0, 1, 0, 60),
	(92, 16, 47, 0, 1, 0, 60),
	(93, 17, 5, 0, 1, 0, 60),
	(94, 17, 27, 0, 1, 0, 60),
	(96, 17, 47, 0, 1, 0, 60),
	(97, 18, 5, 0, 1, 0, 60),
	(98, 18, 27, 0, 1, 0, 60),
	(100, 18, 47, 0, 1, 0, 60),
	(101, 19, 5, 0, 1, 0, 60),
	(102, 19, 27, 0, 1, 0, 60),
	(104, 19, 47, 0, 1, 0, 60),
	(105, 20, 5, 0, 1, 0, 60),
	(106, 20, 27, 0, 1, 0, 60),
	(108, 20, 47, 0, 1, 0, 60),
	(109, 21, 5, 0, 1, 0, 60),
	(110, 21, 27, 0, 1, 0, 60),
	(112, 21, 47, 0, 1, 0, 60),
	(113, 22, 5, 0, 1, 0, 60),
	(114, 22, 27, 0, 1, 0, 60),
	(116, 22, 47, 0, 1, 0, 60),
	(117, 23, 5, 0, 1, 0, 60),
	(118, 23, 27, 0, 1, 0, 60),
	(120, 23, 47, 0, 1, 0, 60),
	(121, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `grillepub` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. log
CREATE TABLE IF NOT EXISTS `log` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlaylistID` int(11) unsigned NOT NULL DEFAULT '0',
  `Date_Joue` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.log : 0 rows
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. planning
CREATE TABLE IF NOT EXISTS `planning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FromHour` decimal(2,0) NOT NULL DEFAULT '0',
  `ToHour` decimal(2,0) NOT NULL DEFAULT '23',
  `lundi` tinyint(1) NOT NULL DEFAULT '0',
  `mardi` tinyint(1) NOT NULL DEFAULT '0',
  `mercredi` tinyint(1) NOT NULL DEFAULT '0',
  `jeudi` tinyint(1) NOT NULL DEFAULT '0',
  `vendredi` tinyint(1) NOT NULL DEFAULT '0',
  `samedi` tinyint(1) NOT NULL DEFAULT '0',
  `dimanche` tinyint(1) NOT NULL DEFAULT '0',
  `canvas` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.planning : 1 rows
/*!40000 ALTER TABLE `planning` DISABLE KEYS */;
INSERT INTO `planning` (`id`, `FromHour`, `ToHour`, `lundi`, `mardi`, `mercredi`, `jeudi`, `vendredi`, `samedi`, `dimanche`, `canvas`) VALUES
	(1, 0, 23, 1, 1, 1, 1, 1, 1, 1, 3);
/*!40000 ALTER TABLE `planning` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. playlist
CREATE TABLE IF NOT EXISTS `playlist` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Artiste` int(11) unsigned NOT NULL DEFAULT '0',
  `Titre` varchar(64) NOT NULL DEFAULT '',
  `Album` varchar(64) NOT NULL DEFAULT '',
  `Annee` year(4) NOT NULL DEFAULT '0000',
  `Duree` float NOT NULL DEFAULT '0',
  `Frequence` mediumint(8) unsigned NOT NULL DEFAULT '44100',
  `Tempo` float NOT NULL DEFAULT '0',
  `Intro` float NOT NULL DEFAULT '0',
  `FadeIn` float NOT NULL DEFAULT '0',
  `FadeOut` float NOT NULL DEFAULT '0',
  `Path` text NOT NULL,
  `Categorie` int(11) unsigned NOT NULL DEFAULT '0',
  `ssCategorie` int(11) unsigned NOT NULL DEFAULT '0',
  `Valide` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `Date_Insert` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Mod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Joue` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `Artiste` (`Artiste`),
  KEY `Categorie` (`Categorie`,`ssCategorie`,`Valide`),
  KEY `Titre` (`Titre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.playlist : 0 rows
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. pub_locales
CREATE TABLE IF NOT EXISTS `pub_locales` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlaylistID` int(11) unsigned NOT NULL DEFAULT '0',
  `Station` int(11) unsigned NOT NULL DEFAULT '0',
  `Joue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Date_Insert` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Mod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Joue` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Play` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `Station` (`Station`),
  KEY `Date_Play` (`Date_Play`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.pub_locales : 0 rows
/*!40000 ALTER TABLE `pub_locales` DISABLE KEYS */;
/*!40000 ALTER TABLE `pub_locales` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. sscategories
CREATE TABLE IF NOT EXISTS `sscategories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categorie` int(11) unsigned NOT NULL DEFAULT '0',
  `nom` varchar(12) NOT NULL DEFAULT '',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `categorie` (`categorie`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.sscategories : 50 rows
/*!40000 ALTER TABLE `sscategories` DISABLE KEYS */;
INSERT INTO `sscategories` (`id`, `categorie`, `nom`, `hide`) VALUES
	(1, 2, 'DSC-2000', 0),
	(2, 2, 'DSC-1990', 0),
	(3, 2, 'DSC-1980', 0),
	(4, 2, 'DSC-1970', 0),
	(5, 2, 'DSC-1960', 0),
	(6, 2, 'DSC-1950', 0),
	(7, 2, 'DSC-1940', 0),
	(8, 2, 'DSC-1930', 0),
	(9, 2, 'Tube-Matin', 0),
	(10, 2, 'Tube-Midi', 0),
	(11, 2, 'Tube-ApresMi', 0),
	(12, 2, 'Tube-Soiree', 0),
	(13, 2, 'Tube-Nuit', 0),
	(14, 2, 'Tube-WeekEnd', 0),
	(15, 2, 'Tube-Noel', 0),
	(16, 2, 'Tube-Ete', 0),
	(17, 2, 'Tube-1930', 0),
	(18, 2, 'Tube-1940', 0),
	(19, 2, 'Tube-1950', 0),
	(21, 2, 'Tube-1960', 0),
	(22, 2, 'Tube-1970', 0),
	(23, 2, 'Tube-1980', 0),
	(24, 2, 'Tube-1990', 0),
	(25, 2, 'Tube-2000', 0),
	(26, 2, 'Tube-2010', 0),
	(27, 2, 'FR-1930', 0),
	(28, 2, 'FR-1940', 0),
	(29, 2, 'FR-1950', 0),
	(30, 2, 'FR-1960', 0),
	(31, 2, 'FR-1970', 0),
	(32, 2, 'FR-1980', 0),
	(33, 2, 'FR-1990', 0),
	(34, 2, 'FR-2010', 0),
	(35, 2, 'FR-2000', 0),
	(36, 2, 'PowerPlay', 0),
	(37, 1, 'Jingles', 1),
	(38, 1, 'Jin.Temporel', 1),
	(39, 1, 'Jin. Saison', 1),
	(40, 1, 'Accaps', 1),
	(41, 1, 'Tapis', 1),
	(42, 1, 'Promos', 1),
	(43, 1, 'Hitmix', 1),
	(47, 1, 'Jin. US', 1),
	(48, 1, 'Jin. W-E', 1),
	(49, 1, 'Rallye', 0),
	(50, 1, 'Maximum', 0),
	(51, 1, 'Liners', 0),
	(52, 1, 'Tapis/Loop', 0),
	(53, 1, 'Max Accaps', 0),
	(54, 1, 'Divers', 0);
/*!40000 ALTER TABLE `sscategories` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. stations
CREATE TABLE IF NOT EXISTS `stations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stationName` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.stations : 0 rows
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. timer
CREATE TABLE IF NOT EXISTS `timer` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlaylistID` int(11) unsigned NOT NULL DEFAULT '0',
  `Frequence` mediumint(9) unsigned NOT NULL DEFAULT '44100',
  `Tempo` float NOT NULL DEFAULT '0',
  `Intro` float NOT NULL DEFAULT '0',
  `FadeIn` float NOT NULL DEFAULT '0',
  `FadeOut` float NOT NULL DEFAULT '0',
  `Joue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Prior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Date_Insert` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Mod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Joue` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Play` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `Date_Play` (`Date_Play`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.timer : 0 rows
/*!40000 ALTER TABLE `timer` DISABLE KEYS */;
/*!40000 ALTER TABLE `timer` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. utilisateurs
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `valide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `droits` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.utilisateurs : 1 rows
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` (`id`, `login`, `password`, `valide`, `droits`) VALUES
	(5, 'mickael', '774411', 1, 1);
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. utilisateurs_actions
CREATE TABLE IF NOT EXISTS `utilisateurs_actions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `action_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.utilisateurs_actions : 0 rows
/*!40000 ALTER TABLE `utilisateurs_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateurs_actions` ENABLE KEYS */;

-- Listage de la structure de la table openstudio. waitlist
CREATE TABLE IF NOT EXISTS `waitlist` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PlaylistID` int(11) unsigned NOT NULL DEFAULT '0',
  `Frequence` mediumint(8) unsigned NOT NULL DEFAULT '44100',
  `Tempo` float NOT NULL DEFAULT '0',
  `Intro` float NOT NULL DEFAULT '0',
  `FadeIn` float NOT NULL DEFAULT '0',
  `FadeOut` float NOT NULL DEFAULT '0',
  `Joue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Date_Play` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Insert` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Date_Mod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `Date_Play` (`Date_Play`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Listage des données de la table openstudio.waitlist : 0 rows
/*!40000 ALTER TABLE `waitlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `waitlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
