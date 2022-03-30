-- Adminer 4.8.1 MySQL 5.5.5-10.5.15-MariaDB-0+deb11u1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `ApourTAG`;
CREATE TABLE `ApourTAG` (
  `refphoto` int(11) NOT NULL,
  `RefTag` varchar(30) NOT NULL,
  PRIMARY KEY (`refphoto`,`RefTag`),
  KEY `RefTag` (`RefTag`),
  CONSTRAINT `ApourTAG_ibfk_1` FOREIGN KEY (`refphoto`) REFERENCES `Photo` (`id`),
  CONSTRAINT `ApourTAG_ibfk_2` FOREIGN KEY (`RefTag`) REFERENCES `TAG` (`libelletag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `Noter`;
CREATE TABLE `Noter` (
  `refUtilisateur` varchar(30) NOT NULL,
  `refPhoto` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  PRIMARY KEY (`refUtilisateur`,`refPhoto`),
  KEY `refPhoto` (`refPhoto`),
  CONSTRAINT `Noter_ibfk_1` FOREIGN KEY (`refUtilisateur`) REFERENCES `Utilisateur` (`mailUtilisateur`),
  CONSTRAINT `Noter_ibfk_2` FOREIGN KEY (`refPhoto`) REFERENCES `Photo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `Photo`;
CREATE TABLE `Photo` (
  `id` int(11) NOT NULL,
  `lien` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `refPhotographe` varchar(30) NOT NULL,
  `refappareil` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refappareil` (`refappareil`),
  KEY `refPhotographe` (`refPhotographe`),
  CONSTRAINT `Photo_ibfk_1` FOREIGN KEY (`refappareil`) REFERENCES `TypeAppareil` (`letypeAppareil`),
  CONSTRAINT `Photo_ibfk_2` FOREIGN KEY (`refPhotographe`) REFERENCES `Photographe` (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `Photographe`;
CREATE TABLE `Photographe` (
  `mail` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `motdepasse` varchar(30) NOT NULL,
  PRIMARY KEY (`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `TAG`;
CREATE TABLE `TAG` (
  `libelletag` varchar(30) NOT NULL,
  PRIMARY KEY (`libelletag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `Tarif`;
CREATE TABLE `Tarif` (
  `note moyenne` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  PRIMARY KEY (`note moyenne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `TypeAppareil`;
CREATE TABLE `TypeAppareil` (
  `letypeAppareil` varchar(30) NOT NULL,
  PRIMARY KEY (`letypeAppareil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `Utilisateur`;
CREATE TABLE `Utilisateur` (
  `mailUtilisateur` varchar(30) NOT NULL,
  `motdepasse` varchar(30) NOT NULL,
  PRIMARY KEY (`mailUtilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2022-03-30 06:47:53
