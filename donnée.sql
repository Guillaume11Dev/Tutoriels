-- Adminer 4.8.1 MySQL 5.5.5-10.5.15-MariaDB-0+deb11u1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;


INSERT INTO `Noter` (`refUtilisateur`, `refPhoto`, `note`) VALUES
('bernard@gmail.com',	1,	5),
('bernard@gmail.com',	2,	5),
('bernard@gmail.com',	3,	5),
('michel@gmail.com',	1,	7),
('michel@gmail.com',	2,	7),
('michel@gmail.com',	3,	7),
('patrick@gmail.com',	1,	6),
('patrick@gmail.com',	2,	6),
('patrick@gmail.com',	3,	6);

INSERT INTO `Photo` (`id`, `lien`, `date`, `refPhotographe`, `refappareil`) VALUES
(1,	'photo1.png',	'2022-03-30',	'pierre@gmail.com',	'telephone'),
(2,	'photo2.png',	'2022-03-30',	'pierre@gmail.com',	'telephone'),
(3,	'photo3.png',	'2022-03-30',	'pierre@gmail.com',	'telephone');

INSERT INTO `Photographe` (`mail`, `nom`, `prenom`, `motdepasse`) VALUES
('pierre@gmail.com',	'dubois',	'pierre',	'pierre42');



INSERT INTO `TypeAppareil` (`letypeAppareil`) VALUES
('telephone');

INSERT INTO `Utilisateur` (`mailUtilisateur`, `motdepasse`) VALUES
('bernard@gmail.com',	'bernard42'),
('michel@gmail.com',	'michel42'),
('patrick@gmail.com',	'patrick42');

-- 2022-03-30 09:59:24