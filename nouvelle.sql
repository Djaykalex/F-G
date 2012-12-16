-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Dim 16 Décembre 2012 à 19:47
-- Version du serveur: 5.1.53
-- Version de PHP: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `nouvelle`
--

-- --------------------------------------------------------

--
-- Structure de la table `acls`
--

CREATE TABLE IF NOT EXISTS `acls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `isauth` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=150 ;

--
-- Contenu de la table `acls`
--

INSERT INTO `acls` (`id`, `controller`, `action`, `isauth`, `role_id`) VALUES
(1, 'news', 'add', 1, 12),
(2, 'news', 'list', 0, 12),
(3, 'news', 'edit', 0, 12),
(4, 'news', 'erase', 0, 12),
(5, 'news', 'add', 1, 13),
(6, 'news', 'list', 1, 13),
(7, 'news', 'edit', 1, 13),
(8, 'news', 'erase', 1, 13),
(9, 'users', 'add', 1, 13),
(10, 'users', 'list', 0, 13),
(11, 'users', 'edit', 0, 13),
(12, 'users', 'erase', 0, 13),
(13, 'guilde', 'add', 1, 13),
(14, 'guilde', 'list', 0, 13),
(15, 'guilde', 'edit', 0, 13),
(16, 'guilde', 'erase', 0, 13),
(65, 'news', 'add', 1, 0),
(66, 'news', 'list', 1, 0),
(67, 'news', 'edit', 1, 0),
(68, 'news', 'erase', 1, 0),
(69, 'users', 'add', 0, 0),
(70, 'users', 'list', 1, 0),
(71, 'users', 'edit', 0, 0),
(72, 'users', 'erase', 0, 0),
(73, 'guilde', 'add', 0, 0),
(74, 'guilde', 'list', 0, 0),
(75, 'guilde', 'edit', 0, 0),
(76, 'guilde', 'erase', 0, 0),
(101, 'news', 'add', 1, 2),
(102, 'news', 'list', 1, 2),
(103, 'news', 'edit', 1, 2),
(104, 'news', 'erase', 0, 2),
(105, 'users', 'add', 0, 2),
(106, 'users', 'list', 1, 2),
(107, 'users', 'edit', 0, 2),
(108, 'users', 'erase', 0, 2),
(109, 'guilde', 'add', 0, 2),
(110, 'guilde', 'list', 1, 2),
(111, 'guilde', 'edit', 1, 2),
(112, 'guilde', 'erase', 1, 2),
(113, 'news', 'add', 1, 5),
(114, 'news', 'list', 1, 5),
(115, 'news', 'edit', 1, 5),
(116, 'news', 'erase', 1, 5),
(117, 'users', 'add', 1, 5),
(118, 'users', 'list', 1, 5),
(119, 'users', 'edit', 1, 5),
(120, 'users', 'erase', 1, 5),
(121, 'guilde', 'add', 1, 5),
(122, 'guilde', 'list', 1, 5),
(123, 'guilde', 'edit', 0, 5),
(124, 'guilde', 'erase', 0, 5),
(137, 'news', 'add', 0, 1),
(138, 'news', 'list', 0, 1),
(139, 'news', 'edit', 0, 1),
(140, 'news', 'erase', 0, 1),
(141, 'users', 'add', 0, 1),
(142, 'users', 'list', 0, 1),
(143, 'users', 'edit', 0, 1),
(144, 'users', 'erase', 0, 1),
(145, 'guilde', 'add', 0, 1),
(146, 'guilde', 'list', 0, 1),
(147, 'guilde', 'edit', 0, 1),
(148, 'guilde', 'erase', 0, 1),
(149, 'news', 'index', 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Created` date NOT NULL,
  `created_by` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `resume` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Modify` datetime NOT NULL,
  `Modify_by` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Online` int(11) NOT NULL,
  `icone` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `petit_icone` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `articles_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_type_id` (`articles_type_id`),
  KEY `Online` (`Online`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `name`, `Created`, `created_by`, `content`, `resume`, `Modify`, `Modify_by`, `Online`, `icone`, `petit_icone`, `title`, `alt`, `articles_type_id`) VALUES
(3, 'Les editeurs du Fury-Game ', '2012-02-29', 'Djayk', '<h3>\r\n	<img src="/FuryGame/upload/images/174.jpg" style="margin-right: 10px; float: left; width: 100px; height: 100px;" />Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla,</h3>\r\n', '<p>\r\n	Voici la liste des &eacute;diteurs qui seront pr&eacute;sent pour le Fury-Game 2013 !</p>\r\n', '2012-12-16 15:55:22', '1', 1, 'img/articles/art_editeurs.jpg', 'img/articles/art_editeurs_petit.jpg', 'Les editeurs du Fury-Game ', 'Les editeurs du Fury-Game', 1),
(20, 'Participation au Fury-Game !', '2011-12-25', 'Djayk', '<p>\r\n	Oportunum est, ut arbitror, explanare nunc causam, quae ad exitium praecipitem Aginatium inpulit iam inde a priscis maioribus nobilem, ut locuta est pertinacior fama. nec enim super hoc ulla documentorum rata est fides.</p>\r\n<p>\r\n	<img alt="" src="/FuryGame/FuryGame/upload/images/4iedb-warhammer_logo_20cometa.gif" style="width: 347px; height: 266px;" /></p>\r\n', 'Vous souhaitez participer au tournoi Warhammer avec vos amis, c''est ici ', '2012-11-22 15:25:46', '1', 1, 'img/articles/art_participation.jpg\r\n', 'img/articles/art_participation_petit.jpg', 'Participation au Fury-Game !', 'Participation au Fury-Game !', 1),
(26, 'Vos jeux preferes !!', '2012-04-16', 'Djayk', '<p>\r\n	Haec igitur Epicuri non probo, inquam. De cetero vellem equidem aut ipse doctrinis fuisset instructior est enim, quod tibi ita videri necesse est, non satis politus iis artibus, quas qui tenent, eruditi appellantur aut ne deterruisset alios a studiis. quamquam te quidem video minime esse deterritum.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 'Le jeu de plateau pour 4 a 8 joueurs de quoi s''affronter en masse !!', '2012-11-22 13:00:45', '1', 1, 'img/articles/art_jeux_prefere.jpg\r\n', 'img/articles/art_jeux_prefere_petit.jpg', 'Vos jeux preferes !!', 'Vos jeux preferes !!', 1),
(34, 'Grand concour Fury-Game!', '2012-05-30', 'Djayk', '<p>\r\n	Sed (saepe enim redeo ad Scipionem, cuius omnis sermo erat de amicitia) querebatur, quod omnibus in rebus homines diligentiores essent; capras et oves quot quisque haberet, dicere posse, amicos quot haberet, non posse dicere et in illis quidem parandis adhibere curam, in amicis eligendis neglegentis esse nec habere quasi signa quaedam et notas, quibus eos qui ad amicitias essent idonei, iudicarent. Sunt igitur firmi et stabiles et constantes eligendi; cuius generis est magna penuria. Et iudicare difficile est sane nisi expertum; experiendum autem est in ipsa amicitia. Ita praecurrit amicitia iudicium tollitque experiendi potestatem.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 'Sed (saepe enim redeo ad Scipionem, cuius omnis sermo erat de amicitia) querebatur, quod omnibus in ', '2012-10-03 13:11:01', '1', 1, 'img/articles/art_concours.jpg\r\n', 'img/articles/art_concours_petit.jpg', 'Grand concour Fury-Game!', 'Grand concour Fury-Game!', 1),
(36, 'Le Parc Bocaud Accueil le Fury-Game ', '2012-05-30', 'Djayk', '<p>\r\n	Et est admodum mirum videre plebem innumeram mentibus ardore quodam infuso cum dimicationum curulium eventu pendentem. haec similiaque memorabile nihil vel serium agi Romae permittunt. ergo redeundum ad textum.</p>\r\n', 'sLe parc bocaud sera le lieu du festoch, un endroit calme et unique !', '2012-10-03 13:10:30', '1', 1, 'img/articles/art_site.jpg\r\n', 'img/articles/art_site_petit.jpg', 'Le Parc Bocaud Accueil le Fury-Game ', 'Le Parc Bocaud Accueil le Fury-Game ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `articles_authors`
--

CREATE TABLE IF NOT EXISTS `articles_authors` (
  `article_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `articles_authors`
--

INSERT INTO `articles_authors` (`article_id`, `author_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(20, 3);

-- --------------------------------------------------------

--
-- Structure de la table `articles_types`
--

CREATE TABLE IF NOT EXISTS `articles_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `articles_types`
--

INSERT INTO `articles_types` (`id`, `img`, `name`) VALUES
(1, 'img/ico_tablero_red.png', 'Festival Fury Game'),
(2, 'img/ico_ro_redl.png', 'Tournoi Fury Game'),
(3, '', 'Partenariats'),
(4, 'img/ico_cartas_red.png', 'News'),
(5, '', 'Sponsors');

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Djayk'),
(2, 'So'),
(3, 'Ange');

-- --------------------------------------------------------

--
-- Structure de la table `banniere`
--

CREATE TABLE IF NOT EXISTS `banniere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lien` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Contenu de la table `banniere`
--

INSERT INTO `banniere` (`id`, `lien`, `name`) VALUES
(1, 'img/bannieres/ban1.png', 'Banniere 1'),
(2, 'img/bannieres/ban2.png', 'Banniere 2'),
(3, 'img/bannieres/ban3.png', 'Banniere 3'),
(4, 'img/bannieres/ban4.png', 'Banniere 4'),
(5, 'img/bannieres/ban5.png', 'Banniere 5'),
(6, 'img/bannieres/ban6.png', 'Banniere 6'),
(7, 'img/bannieres/ban7.png', 'Banniere 7'),
(8, 'img/bannieres/ban8.png', 'Banniere 8'),
(9, 'img/bannieres/ban9.png', 'Banniere 9'),
(10, 'img/bannieres/ban10.png', 'Banniere 10'),
(11, 'img/bannieres/ban11.png', 'Banniere 11'),
(12, 'img/bannieres/ban12.png', 'Banniere 12'),
(13, 'img/bannieres/ban13.png', 'Banniere 13'),
(14, 'img/bannieres/ban14.png', 'Banniere 14'),
(15, 'img/bannieres/ban15.png', 'Banniere 15'),
(16, 'img/bannieres/ban16.png', 'Banniere 16'),
(17, 'img/bannieres/ban17.png', 'Banniere 17'),
(18, 'img/bannieres/ban18.png', 'Banniere 18'),
(19, 'img/bannieres/ban19.png', 'Banniere 19'),
(20, 'img/bannieres/ban20.png', 'Banniere 20');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
  `online` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `isauth_id` int(11) NOT NULL,
  `guildes_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  KEY `isauth_id` (`isauth_id`),
  KEY `guildes_id` (`guildes_id`),
  KEY `online` (`online`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=98 ;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `content`, `online`, `article_id`, `isauth_id`, `guildes_id`) VALUES
(1, '<p>\r\n	plop ca va</p>\r\n', 1, 20, 12, 1),
(2, '<p>\r\n	ouai bien et toi !!</p>\r\n', 1, 20, 12, 1),
(7, '<p>\r\n	salut je test</p>\r\n', 1, 3, 12, 1),
(8, '<p>\r\n	plop ty</p>\r\n', 1, 3, 12, 1),
(29, '<p>\r\n	rert ert ert ert ert ert</p>\r\n', 1, 20, 21, 100),
(60, '<p>\r\n	le kirk</p>\r\n', 1, 20, 10, 5),
(61, '<p>\r\n	Vita est illis semper in fuga uxoresque mercenariae conductae ad tempus ex pacto atque, ut sit species matrimonii, dotis nomine futura coniunx hastam et tabernaculum offert marito, post statum diem si id elegerit discessura, et incredibile est quo ardore apud eos in venerem uterque solvitur sexus.</p>\r\n', 1, 20, 31, 0),
(69, '<p>\r\n	pomme 200</p>\r\n', 1, 3, 21, 100),
(70, '<p>\r\n	je suis deg de la pomme</p>\r\n', 1, 3, 21, 100),
(71, '<p>\r\n	yop moi c&#39;est jason !</p>\r\n', 1, 3, 9, 2),
(72, '<p>\r\n	yop jai une guilde now</p>\r\n', 1, 20, 31, 107),
(73, '<p>\r\n	jai perdu ma guilde</p>\r\n', 1, 20, 31, 0),
(74, '<p>\r\n	je viens de cr&eacute;er ma guilde</p>\r\n', 1, 20, 31, 0),
(75, '<p>\r\n	poire je fais partis de la guilde les mattounets 107</p>\r\n', 1, 20, 22, 0),
(76, '<p>\r\n	jai une guilde moi</p>\r\n', 1, 20, 22, 0),
(77, '<p>\r\n	je suis furyfury je suis dans une guilde en tant que membre</p>\r\n', 1, 3, 37, 1),
(78, '<p>\r\n	je suis djayk normalement je ne devrais pas avoir de guilde</p>\r\n', 1, 3, 1, 0),
(79, '<p>\r\n	je suis Reiija le nouveau de la guilde Black Rock</p>\r\n', 1, 3, 41, 6),
(80, '<p>\r\n	Moi ... je suis le solitaire</p>\r\n', 1, 3, 42, 0),
(81, '<p>\r\n	siixty avec guilde mais sa n&#39;apparait pas</p>\r\n', 1, 3, 31, 0),
(82, '<p>\r\n	1er test avec isauth_id = id</p>\r\n', 1, 3, 31, 0),
(83, '<p>\r\n	2eme test siixty</p>\r\n', 1, 3, 31, 108),
(84, '<p>\r\n	je suis une guilde poire</p>\r\n', 1, 3, 22, 108),
(85, '<p>\r\n	je suis une poire mattounets</p>\r\n', 1, 3, 22, 107),
(86, '<p>\r\n	probleme user_id</p>\r\n', 1, 3, 22, 0),
(87, '<p>\r\n	la je suis reconnu et il ny a pas le undefined variable</p>\r\n', 1, 3, 22, 107),
(88, '<p>\r\n	poire avec un if else</p>\r\n', 1, 3, 22, 107),
(90, '<p>\r\n	siixty le ouf last test</p>\r\n', 1, 3, 31, 108),
(91, '<p>\r\n	reiijalefere jai pas encore cr&eacute;e ma guilde</p>\r\n', 1, 3, 43, 0),
(92, '<p>\r\n	reiijalefere jai une guilde de fou maintenant</p>\r\n', 1, 3, 43, 109),
(93, '<p>\r\n	order by id desc</p>\r\n', 1, 20, 21, 100),
(94, '<p>\r\n	Jai refait ma guilde, poire</p>\r\n', 1, 3, 22, 112),
(95, '<p>\r\n	Le munchkind j&#39;ai trop h&acirc;te !! ce jeu est vraiment trop bon !!</p>\r\n', 1, 44, 21, 100),
(96, '<p>\r\n	&Eacute;tant un gros warrior de base, se jeu me correspond totalement !</p>\r\n', 1, 46, 26, 111),
(97, '<p>\r\n	je suis qui?</p>\r\n', 1, 46, 93, 0);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires_guildes`
--

CREATE TABLE IF NOT EXISTS `commentaires_guildes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `online` int(11) NOT NULL,
  `guildes_focus_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isauth_id` int(11) NOT NULL,
  `guildes_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isauth_id` (`isauth_id`),
  KEY `guildes_id` (`guildes_id`),
  KEY `online` (`online`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=151 ;

--
-- Contenu de la table `commentaires_guildes`
--

INSERT INTO `commentaires_guildes` (`id`, `content`, `online`, `guildes_focus_id`, `isauth_id`, `guildes_id`) VALUES
(10, '<p>\r\n	test 150 sam</p>\r\n', 1, '0', 36, 2),
(11, '<p>\r\n	test 250 eme</p>\r\n', 1, '0', 36, 2),
(103, 'kirk', 1, '0', 10, 100),
(142, 'pomme 10 51', 1, 'Crazy Horde', 21, 2),
(143, 'crazy crazy sam', 1, 'Crazy Horde', 36, 2),
(146, '<p>\r\n	Cest ma guilde et je suis guilde Master !</p>\r\n', 1, 'Millenium', 10, 5),
(147, '<p>\r\n	blackrock on va vous &eacute;craser</p>\r\n', 1, 'Crazy Horde', 36, 6),
(148, '<p>\r\n	Pas de fureur sans poire !</p>\r\n', 1, 'Les mattounets', 22, 1),
(149, 'je suis tanguy', 0, 'tanguy guilde', 94, 113),
(150, '<p>\r\n	les petits loups</p>\r\n', 1, 'Crazy Horde', 21, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` int(10) NOT NULL,
  `adresse_mail` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id`, `name`, `prenom`, `telephone`, `adresse_mail`, `message`) VALUES
(1, 'alex', 'alex', 606060606, 'alex@gmail.com', 'azeazeazeazeazeazeazeaz'),
(2, 'alex', 'alex', 606060606, 'alex@gmail.com', 'azeazeazeazeazeazeazeaz'),
(10, 'Hacout', 'alexandre', 123456789, 'alex@gmail.com', 'Plop un petit test pour test !!!!'),
(11, 'nom', 'prenom', 123456789, 'adressemail', 'texttexttest'),
(12, 'nom', 'prenom', 123456456, 'adressmail@mail.com', 'testtesttesttext'),
(13, 'alex', 'alex', 123456789, 'alexandrehacout@orange.fr', 'zeazeahzieh iazheihaz ieh aizoheioazhe ohaze'),
(14, 'alex', 'alex', 670532733, 'alexandrehacout@orange.fr', 'azuehiuazeihazi a aizh eiuahzieua zehi ahzie haiz ehiuazheahzei ahize hiazhei azieaoiz'),
(15, 'alex', 'alex', 670532733, 'alexandrehacout@orange.fr', 'hze haizeh iaz eoiazieiouzehia heiua zheia hoieua hzeiuhaz oeiuha zeh '),
(16, 'alex', 'alex', 670532733, 'alexandrehacout@orange.fr', 'erhzieh roizhe roiuz eoirh zoier oize roiz eiour hzioe rio zeir zie hriz er'),
(17, 'testalex', 'textalex', 670532733, 'alexandrehacout@orange.fr', 'zea zeaze iha ze aizehi uaiueihaze aiu eiu aizue iua zeh a'),
(18, 'testalex', 'textalex', 123456789, 'test@test.com', 'eaz eaz e aze azeazeaeazta z rtarz tzt '),
(19, 'trouvÃ©', 'trouvÃ©', 123456987, 'alex@gmail.com', 'az eaze azeazeazeaze ae ae a ae ae'),
(20, 'kirk', 'krik', 2147483647, 'krik@kirk.com', 'ae zra razr ar jkhk hk hjk hk hjkhjkhjk hk k hk'),
(21, 'logo', 'logo', 2147483647, 'logo@logo.com', 'eaz eaze aze azeaze aze aze azeazeazeazea'),
(22, 'logo', 'logo', 123456789, 'logo@logo.com', 'bvbc vbcv bcbcbcbcbv cb cb cb c c cb cb'),
(23, 'red', 'red', 123456789, 'red@red.com', 'eaz eaze aze aze azeaze aze a zea zeaze '),
(24, 'azert', 'azert', 1231231230, 'aezert@azert.com', 'zea eaze aze azeaze az ae aze aze ae'),
(25, 'toto', 'toto', 123123123, 'toto@toto.com', 'g ererger geg ehehtrhezqeherq'),
(26, 'pilote', 'pilote', 123456789, 'pilote@pilote.com', 'aze aze azejaz oeijaz ehoa hzpehaoizheoiahzeo'),
(27, 'pilote', 'pilote', 123456789, 'pilote@pilote.com', ' zerz erzer zer zer zer zr ze rzer '),
(28, 'pilote', 'pilote', 123456798, 'pilote@pilote.com', 'erz erz erzer zer zer zer zer zer'),
(29, 'pilote', 'pilote', 123456789, 'pilote@pilote.com', 'imi mimimiumo mi mimimi'),
(30, 'tetrtert', 'ertetert', 123456789, 'ertertert@tertert.com', 'aze azea zeazraer ara raze rzer'),
(31, 'testfinal', 'testfinal', 123456789, 'testfinal@testfinal.com', 'azeaz eaz eaz eaze aze aze aze aze az e'),
(32, 'testfinal', 'testfinal', 123456789, 'testfinal@testfinal.com', 'ttsrtret ertert ert erteterte rt et et e'),
(33, 'teste', 'teste', 123456789, 'teste@teste.com', 'azeaze aze ae aze aze aeae aez'),
(34, 'final', 'final', 123456789, 'final@final.com', 'ae aze aze azea zeaeazeazeaz azea');

-- --------------------------------------------------------

--
-- Structure de la table `guildes`
--

CREATE TABLE IF NOT EXISTS `guildes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dicton` text COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(750) COLLATE utf8_unicode_ci NOT NULL,
  `logo_id` int(11) NOT NULL,
  `banniere_id` int(11) NOT NULL,
  `isauth_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logo_id` (`logo_id`),
  KEY `isauth_id` (`isauth_id`),
  KEY `banniere_id` (`banniere_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=114 ;

--
-- Contenu de la table `guildes`
--

INSERT INTO `guildes` (`id`, `name`, `dicton`, `content`, `logo_id`, `banniere_id`, `isauth_id`) VALUES
(0, 'Pas de Guilde', 'Moi j''aime pas les guildes', 'Pour ceux qui ne veulent pas cree de guilde ...Ou pas encore..', 1, 1, 0),
(1, 'Hellfury', 'Qui peut le plus .. peut le moins ! ou pas', '<p>\r\n	Emensis itaque difficultatibus multis et nive obrutis callibus plurimis ubi prope Rauracum ventum est ad supercilia fluminis Rheni, resistente multitudine Alamanna pontem suspendere navium conpage Romani vi nimia vetabantur ritu grandinis undique convolantibus telis, et cum id inpossibile vide', 5, 2, 12),
(2, 'Fury Game', 'Je rajoute un dicton pour la saint ...', 'hripzaherip hzaoeiroizer iozeh riohuzer', 3, 3, 4),
(5, 'Millenium', 'ÃŠtre les meilleurs tout simplement...', '	Accedat huc suavitas quaedam oportet sermonum atque morum, haudquaquam mediocre condimentum amicitiae. Tristitia autem et in omni re severitas habet illa quidem gravitatem, sed amicitia remissior esse debet et liberior et dulcior et ad omnem comitatem facilitatemque proclivior.', 1, 5, 10),
(6, 'Black rock', 'pourquoi ca me fait ca !!', '<p>\r\n	Ac</p>\r\n', 4, 6, 19),
(100, 'Crazy Horde', 'Quand un canard s''approche de toi, c''est qu''il y a de l''oseille pas loin !', '<p>\r\n	Emensis itaque difficultatibus multis et nive obrutis Emensis itaque difficultatibus multis et nive obrutis erz Emensis itaque difficultatibus multis et nive obrutis Emensis itaque difficultatibus multis et nive obrutis erz Emensis itaque difficultatibus</p>\r\n<p>\r\n	&nbsp;ergerg</p>\r\n', 1, 9, 21),
(109, 'reiijalefere', 'reiijalefere !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 'reiijaleferereiijaleferereiijaleferereiijaleferereiijalefere\r\nreiijaleferereiijalefere\r\nvreiijaleferereiijaleferereiijaleferereiijaleferereiijalefere\r\nreiijaleferereiijaleferereiijaleferereiijalefere\r\nreiijaleferereiijaleferereiijaleferereiijalefere\r\nreiijaleferereiijaleferereiijaleferereiijalefere', 2, 6, 43),
(110, 'Dell', 'Quand il y a de la biere il y a dell', 'Quand il y a de la biere il y a dell\r\nQuand il y a de la biere il y a dell Quand il y a de la biere il y a dell Quand il y a de la biere il y a dell Quand il y a de la biere il y a dell Quand il y a de la biere il y a dellQuand il y a de la biere il y a dellQuand il y a de la biere il y a dellQuand il y a de la biere il y a dellil y a de la biere il y a dellQuand il y a de la biere il y a dellQuand il y a de la biere il y a dellil y a de la biere il y a dellQuand il y a de la biere il y a dellQuand il y a de la biere il y a dellil y a de la biere il y a dellQuand il y a de la biere il y a dellQuand il y a de la biere il y a dellil y a de la biere il y a dellQuand il y a de la biere il y a dellQuand il y a de la biere il y a dellil y a de la', 16, 11, 13),
(111, 'War LegenD', 'War LegenD une guilde ancienne de PGM !!', 'War LegenD une guilde ancienne de PGM !! War LegenD une guilde ancienne de PGM !! War LegenD une guilde ancienne de PGM !!War LegenD une guilde ancienne de PGM !!War LegenD une guilde ancienne de PGM !!War LegenD une guilde ancienne de PGM !!', 4, 2, 26),
(112, 'Les mattounets', 'Les mattounets sont les plus fort ', 'Les mattounets sont les plus fort  Les mattounets sont les plus fort  Les mattounets sont les plus fort  Les mattounets sont les plus fort  Les mattounets sont les plus fort  Les mattounets sont les plus fort ', 6, 2, 22),
(113, 'tanguy guilde', 'rzae rtzetr ztzer tzt zer', 'ze zt zt zte zetz tz etzt z etzet ', 3, 10, 94);

-- --------------------------------------------------------

--
-- Structure de la table `isauth`
--

CREATE TABLE IF NOT EXISTS `isauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isauth` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pseudo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `guildes_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `guildes_id` (`guildes_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=98 ;

--
-- Contenu de la table `isauth`
--

INSERT INTO `isauth` (`id`, `login`, `pass`, `isauth`, `role_id`, `name`, `prenom`, `pseudo`, `guildes_id`) VALUES
(1, 'alex@gmail.com', 'b30f4169e054ee7b8c243480bcfcef62416f3b08', 1, 5, 'hacout', 'alex', 'Djayk', 0),
(2, 'matt@gmail.com', 'matt', 1, 2, 'Hacout', 'matt', 'Matt', 0),
(3, 'alex@matt.com', 'alexmatt', 1, 2, 'Perez', 'ange', 'angel', 0),
(4, 'robb@flynn.com', 'robb', 1, 1, 'flynn', 'robb', 'MachineHead', 0),
(9, 'jason@jason.com', 'jason', 1, 2, 'jason', 'jason', 'jason', 2),
(10, 'kirk@kirk.com', 'kirk', 1, 1, 'kirk', 'kirk', 'kirk', 0),
(12, 'alex2@gmail.com', 'alexandre', 1, 1, 'Hacout', 'Alex', 'Djayk', 0),
(13, 'dell@dell.com', 'dell', 1, 1, 'dell', 'dell', 'mcdell', 0),
(18, 'isauth@isauth.com', 'isauth', 1, 2, 'isauth', 'isauthtype', 'isauth', 5),
(19, 'bille@bille.com', 'f936b100efdbe2bbb925b3c3316c17c9a0292679', 1, 1, 'bille', 'bille', 'bille', 0),
(21, 'pomme@pomme.com', '752c14ea195c460bac3c3b7896975ee9fd15eeb7', 1, 1, 'pomme', 'pomme', 'pomme', 0),
(22, 'poire@poire.com', 'poire', 1, 1, 'poire', 'poire', 'poire', 0),
(23, 'abricot@abricot.com', 'abricot', 1, 1, 'abricot', 'abricot', 'abricot', 0),
(24, 'iefm@iefm.com', 'f76d63e203bd2a7ae017b23e13b251e32a950e80', 1, 2, 'iefm', 'iefm', 'iefm', 6),
(26, 'warrior@warrior.com', 'warrior', 1, 1, 'warrior', 'warrior', 'warrior', 0),
(31, 'siixty@siixty.com', 'siixty', 1, 1, 'siixty', 'siixty', 'siixty', 0),
(32, 'membre@membre.com', 'membre', 1, 2, 'membre', 'membre', 'membre', 0),
(36, 'sam@sam.com', 'sam', 1, 2, 'sam', 'sam', 'sam', 0),
(37, 'furyfury@furyfury.com', 'furyfury', 1, 2, 'furyfury', 'furyfury', 'furyfury', 1),
(38, 'Peon@Peon.com', 'Peon', 1, 2, 'Peon', 'Peon', 'Peon du ciel', 100),
(39, 'Sansguilde@Sansguilde.com', 'Sansguilde', 1, 1, 'Sansguilde', 'Sansguilde', 'Sansguilde', 0),
(40, 'sansrien@sansrien.com', 'sansrien', 1, 1, 'sansrien', 'sansrien', 'sansrien', 0),
(41, 'Reiija@Reiija.com', 'Reiija', 1, 2, 'Reiija', 'Reiija', 'Reiija', 6),
(42, 'lesolitaire@lesolitaire.com', 'lesolitaire', 1, 2, 'lesolitaire', 'lesolitaire', 'lesolitaire', 0),
(43, 'reiijalefere@reiijalefere.com', 'reiijalefere', 1, 1, 'reiijalefere', 'reiijalefere', 'reiijalefere', 0),
(79, 'passwod@passwod.com', '1521478ea661c5e4111bf70a59227f42f93eded9', 1, 1, 'passwod', 'passwod', 'passwod', 0),
(81, 'test@test.com', '63c2a69cf8f7e98743e13edf988b2a56965d4c05', 1, 1, 'test', 'test', 'test', 0),
(83, 'test1@test1.com', 'b6589fc6ab0dc82cf12099d1c2d40ab994e8410c', 1, 1, 'test1', 'test1', 'test1', 0),
(84, 'zerzer@zerze.com', 'b6589fc6ab0dc82cf12099d1c2d40ab994e8410c', 1, 1, 'rerzer', 'rzerzerz', 'erzerzer', 0),
(92, 'matt@matt.com', '62789ebb0c180765c95d627605eb51eb25e1af5a', 1, 1, 'matt', 'matt', 'matt', 0),
(93, 'finaltest@finaltest.com', '79d2e6e49bf644e3869aad978670e6be3c41a408', 1, 1, 'finaltest', 'finaltest', 'finaltest', 0),
(94, 'tanguy@tanguy.com', 'c10ed06154523c21e5875adfa8dd06eafa499eee', 1, 1, 'tanguy ', 'tanguy ', 'tanguy ', 0),
(96, 'helldjayk@gmail.com', '6cacc98ef2095029daa0cf5390fce6030daeaa7d', 1, 1, 'angetest', 'angetest', 'angetest', 0),
(97, 'helldjayk@gmail.com', '62789ebb0c180765c95d627605eb51eb25e1af5a', 1, 1, 'alexange', 'alexange', 'alexange', 0);

-- --------------------------------------------------------

--
-- Structure de la table `jeux_tournois`
--

CREATE TABLE IF NOT EXISTS `jeux_tournois` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `front_image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `title_image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `boite` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `img1` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `img2` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `img3` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `img4` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `lien_editeur` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `duree` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `nb_joueurs` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `liens` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tfg` text COLLATE utf8_unicode_ci NOT NULL,
  `nb_points` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `nb_points_class` int(10) NOT NULL,
  `liens_nb_points` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Contenu de la table `jeux_tournois`
--

INSERT INTO `jeux_tournois` (`id`, `front_image`, `title_image`, `alt`, `boite`, `img1`, `img2`, `img3`, `img4`, `lien_editeur`, `name`, `description`, `content`, `age`, `duree`, `nb_joueurs`, `image`, `liens`, `tfg`, `nb_points`, `nb_points_class`, `liens_nb_points`) VALUES
(1, 'img/jeux_tournois/BB_TM_Logo.png', 'Team Manager BloodBowl', 'Team Manager BloodBowl', 'img/jeux_tournois/BBTM1.jpg', 'img/jeux_tournois/bb_tm_img1.png', 'img/jeux_tournois/bb_tm_img2.png', 'img/jeux_tournois/BB_TM_Logo.png', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/', 'Team Manager BloodBowl', 'Bloodbowl est un hymne sportif dedie aux os brises, aux demonstrations athletiques a couper le souffle, a la violence et franchement a la tricherie.\r\n\r\n\r\n', 'Les equipes Chaotiques, Naines, Elfiques, Humaines, Orques et Skavens rivalisent les unes contre les autres lors d''une saison brutale. Le manager qui construit la meilleure equipe et attire la plus grand nombre de fans gagnera la recompense du Manager de l Annee attribuee par Spike ! Magazine.\r\n</br></br>\r\nLe manager qui echoue bah, par exemple les Chaos All-Stars font cuire et mangent leur manager a l issue d’une saison de defaites. (S ils gagnent on leur permet de le manger cru!)\r\n\r\nBloodBowl Team Manager est un jeu de cartes pour 2-4 managers, qui les tiendra en haleine pour une saison entiere de BloodBowl.\r\nPersonnalisez votre equipe en selectionnant des stars, en engageant des entraineurs, en ameliorant les installations sportives et en trichant comme un fou.', 14, '1-2H', '2-4', 'img/jeux_tournois/BB_TM_Logo.png', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=260&enmi=Blood%20Bowl:%20Team%20Manager', 'Pour le Fury-Game, Bloodbowl est un jeu incontournable ! Ce jeu s''adapte tres bien au concept du tournoi Guilde vs Guilde.\r\n</br></br>\r\nEn 2 contre 2, Bloodbowl va vous permettre en cas de victoire de remporter le maximum de points, soit 50 points!', 'img/jeux_tournois/50pts.png', 50, 'Team Manager BloodBowl'),
(2, 'img/jeux_tournois/AGOTbandeau.jpg', 'Le trone de fer', 'Le trône de fer', 'img/jeux_tournois/tdf_boite.jpg', 'img/jeux_tournois/tdf_img1.png', 'img/jeux_tournois/tdf_img2.png', 'img/jeux_tournois/AGOTbandeau.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/index.asp', 'Le trône de fer', ' Votre père, objecta le prince Oberyn, peut ne pas vivre éternellement. \r\n« Il est peu judicieux de proférer de telles félonies dans l’enceinte du Donjon Rouge, prince. » dit Tyrion. « Les oisillons sont tout ouïe. » ', 'A travers les Sept Royaumes, les Grandes Maisons de Westeros luttent pour le contrôle du Trône de Fer. Alors que la puissante Maison Baratheon, l’honorable Maison Stark, la perfide Maison Lannister et la féroce Maison Targraryen sont engagées dans un combat à mort pour l’avenir du continent, de sombres forces surnaturelles se regroupent derrière le mur défensif du royaume. L’hiver approche. Sortirez-vous victorieux de cette lutte sans merci ?</br></br>\r\nCe jeu complet contient plus de 200 cartes richement illustrées qui vous permettront de changer le destin de Westeros.', 12, '1-2H', '2-4', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=191', 'Sur les terres des Sept Royaumes, les Grandes Maisons de Westeros s’affrontent pour le contrôle du Trône de Fer. \r\n</br>\r\nMode de jeu : </br>\r\n- 1 contre 1 </br> - 2 contre 2.', 'img/jeux_tournois/45pts.png', 45, 'Le trone de fer'),
(3, 'img/jeux_tournois/risk.jpg', 'Risk ', 'Risk ', 'img/jeux_tournois/risk_boite.jpg', '', 'img/jeux_tournois/risk_img2.png', 'img/jeux_tournois/risk.jpg', 'img/jeux_tournois/hasbro_logo.png', 'http://www.hasbro.com/fr_BE/', 'Risk ', 'Diriger, conquérir, écraser mes adversaires, j''ai été programmé pour cela.', 'Nouvelle version du grand classique. Il faut être le premier à mener à bien sa mission secrète ou être le premier à conquérir le monde! Les éléments de jeu ont été revus pour plus de réalisme dans les combats. Avec 360 pions en 3 dimensions. 3 modes de jeu.', 12, '1H', '2-6', '', 'http://www.hasbro.com/fr_BE/play/details.cfm?R=AA676355-5056-900B-100C-142F82464024:fr_BE', '', 'img/jeux_tournois/35pts.png', 35, 'Risk '),
(4, 'img/jeux_tournois/munchkin_col1.jpg', 'Munchkin', 'Munchkin', 'img/jeux_tournois/munchkind.jpg', 'img/jeux_tournois/munchkin_img1.png', 'img/jeux_tournois/munchkin_img2.png', 'img/jeux_tournois/munchkin_col1.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/index.asp', 'Munchkind', 'Bienvenue dans le Donjon! Tuez tout ce qui se présente devant vous. Poignardez vos amis. Ramassez tous les trésors et fuyez !', ' Entrez dans l''univers Munchkin où vous attendent des objets magiques et des monstres à faire pleurer de rire. Ce jeu de cartes pour 3 à 6 joueurs ne dure pas plus d''1 heure mais alors quelle aventure !\r\n\r\nEn utilisant la parodie des jeux de rôle, Munchkin a su recréer un univers complètement délirant, peuplé de monstres et d''objets plus drôles les uns que les autres. Ce jeu d''ambiance joue clairement la carte de l''interactivité et engage les joueurs à développer les alliances combatives et trahisons amicales.\r\n</br></br>\r\nAvec ses cartes aux illustrations hilarantes et son côté léger, Munchkin est une expérience ludique à part qui plaira à tous pourvu que vous ne vous preniez pas trop au sérieux. ', 10, '45 min', '3-6', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=119&enmi=Munchkin', 'Munchkin est certainement le jeu prefere de l''equipe. C est pourquoi nous sommes oblige de vous le proposer.\r\n</br></br>\r\nMunchkin est jouable en 3 contre 3, et vous permet en cas de victoire d''obtenir 35 points', 'img/jeux_tournois/35pts.png', 35, 'Munchkin'),
(5, 'img/jeux_tournois/munchkincthulhu_col1.jpg', 'Munchkin Cthulhu', 'Munchkin Cthulhu', 'img/jeux_tournois/munchkin_cthulhu_boite.jpg', 'img/jeux_tournois/munchkin_cthulhu_img1.png', 'img/jeux_tournois/munchkin_cthulhu_img2.png', 'img/jeux_tournois/munchkincthulhu_col1.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/', 'Munchkin Cthulhu', 'Amis grosbills, le moment est venu d''affronter votre pire cauchemar...vos amis, heu non, les maléfiques sbires de Cthulhu ! Y survivrez-vous ? Resterez-vous sain d''esprit ? Ou... gagnerez-vous des niveaux ? Mouhahahahaha !', ' Les étoiles sont alignées…\r\n\r\n… et les Munchkins défoncent les portes de lieux où l’Homme N’Était Pas Censé Aller. Ce sont des Investigateurs, des Tabasseurs de monstres, des Professeurs et des Cultistes… et ils descendent les monstres du Mythe pour leur faire les poches… euh, les tentacules… enfin, les trucs, quoi. Après tout, quand on est un vrai grosbill, peu importe de devenir fou. L’important, c’est de participer, du moment qu’on GAGNE !', 12, '1H', '3-6', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=154', 'Munchkin cthulhu est un addon a la série. \r\n</br></br>\r\nMunchkin est jouable en 3 contre 3, et vous permet en cas de victoire d''obtenir 35 points', 'img/jeux_tournois/35pts.png', 35, 'Munchkin Cthulhu'),
(6, 'img/jeux_tournois/MZombBand1.jpg', 'Munchkin Zombies', 'Munchkin Zombies', 'img/jeux_tournois/munchkin_zombie_boite.jpg', 'img/jeux_tournois/munchkin_zombie_img1.png', 'img/jeux_tournois/munchkin_zombie_img2.png', 'img/jeux_tournois/MZombBand1.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/', 'Munchkin Zombies', 'Les munchkins sont morts, mais ça ne les arrête pas pour autant ! Transformés en zombies, ils gagnent des niveaux en dévorant de succulents cerveauuuuuuxxx !\r\n', 'Et voici le jeu le plus dégueu et le plus idiot de la gamme Munchkin ! Vous jouez des zombies qui défoncent des portes et qui dévorent des cerveaux. Les «monstres» que vous attaquez sont des gens ordinaires, sans défense pour certains, mortellement dangereux pour d’autres, avec quelques zombies renégats pour faire bonne mesure.\r\n  Votre armure ? Tout ce sur quoi vous êtes tombé dans votre quête de cerveaux....', 10, '1-2H', '3-6', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=277&enmi=Munchkin%20Zombies', 'Au Fury-Game on aime les zombies, c''est vrai. Surtout quand ils sont aussi délirant que ceux dans le Munchkin version zombie.\r\n</br></br>\r\nUne guilde composée de zombies aura peu être plus de chance de remporter le titre du tournoi Fury-Game !', 'img/jeux_tournois/35pts.png', 35, 'Munchkin Zombies'),
(7, 'img/jeux_tournois/Zombicide_col1.jpg', 'Zombicide', 'Zombicide', 'img/jeux_tournois/zombicide_boite.jpg', 'img/jeux_tournois/zombicide_img1.png', 'img/jeux_tournois/zombicide_img2.png', 'img/jeux_tournois/Zombicide_col1.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/index.asp', 'Zombicide', 'La SCIENCE a permis à l’Homme de transformer la faune et la flore. Ces altérations ont eu de graves conséquences sur l’organisme humain. Elles métamorphosent les gens en morts- vivants.\r\nCherchez des ARMES, il est temps de se livrer à un...', 'Zombicide est un jeu coopératif : les joueurs affrontent des Zombies dirigés par le jeu lui-même. Chaque joueur dirige un, deux, trois ou quatre Survivants d’une infection zombie. Le but du jeu est simple: survivre et compléter les objectifs donnés.\r\n</br>\r\nLes Survivants tuent les Zombies avec tout ce qui leur tombe sous la main. S’ils trouvent de meilleures armes, ils peuvent tuer plus de Zombies! La bonne nouvelle est que les Zombies sont lents, stupides et prévisibles. La mauvaise est... qu’il y a plein de Zombies.\r\nLes Survivants tuent les Zombies avec tout ce qui leur tombe sous la main. S’ils trouvent de meilleures armes, ils peuvent tuer plus de Zombies! La bonne nouvelle est que les Zombies sont lents, stupides et prévisibles. La mauvaise est... qu’il y a plein de Zombies.', 14, '1H', '1-6', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=279', 'Pour les amateurs de zombies, Zombicide est un must have !\r\n</br></br>\r\nNous allons modifier les objectifs pour le mode tournoi et ainsi adapter les regles. La partie se fera en 3 contre 3.\r\n</br></br>\r\n35 points pour eliminer des zombies, que demander de plus !\r\n', 'img/jeux_tournois/35pts.png', 35, 'Zombicide'),
(8, 'img/jeux_tournois/zombie_dice_col.jpg', 'Zombie Dice', 'Zombie Dice', 'img/jeux_tournois/zombie_dice_boite.jpg', 'img/jeux_tournois/zombie_dice_img1.png', 'img/jeux_tournois/zombie_dice_img2.png', 'img/jeux_tournois/zombie_dice_col.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/', 'Zombie Dice', 'Vous êtes un zombie. Et vous voulez des cerveeaauux. Plus que vos copains zombies.', ' 	Zombie Dice\r\nZombie Dice\r\n\r\n  Vous êtes un zombie. Et vous voulez des cerveeaauux. Plus que vos copains zombies.\r\n\r\nZombie Dice est un jeu rapide et facile pour tout fan de zombie (ou pour une famille de zombies).\r\n\r\nLes 13 dés personnalisés sont vos victimes. Tentez votre chance pour manger leurs cerveaux, mais arrêtez-vous avant que le fusil à pompe ne mette à fin à votre tour.\r\n</br></br>\r\nVous êtes un zombie frais ou pas frais, entier ou partiel, lent ou rapide … peu importe car vous ne voulez qu’une seule chose: des cerveeaauux. Et chez les zombies, la camaraderie ça n’existe pas c’est un monde cruel et impitoyable enfin pas vraiment c’est juste que vous êtes morts et vous n’avez que faire des us et coutumes de la société !', 10, '10-20 min', '2-8', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=264', 'Comment gagner un maximum de points facilement et rapidement?\r\n</br>\r\nZombie Dice est un jeu simple qui va vous permettre de gagner 20 points en 20 - 30 minutes.\r\n</br> </br> \r\nDe quoi atteindre le top 3 du tournoi Fury-Game ! ', 'img/jeux_tournois/20pts.png', 20, 'Zombie Dice'),
(9, 'img/jeux_tournois/zombies_col1.jpg', 'Zombies', 'Zombies', 'img/jeux_tournois/zombies_boite.jpg', 'img/jeux_tournois/zombies_img1.png', 'img/jeux_tournois/zombies_img2.png', 'img/jeux_tournois/zombies_col1.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/', 'Zombies', 'C''est jour de foule au centre commercial. Les allées sont pleines et les magasins sont pris d''assaut. Mais les clients habituels ont laissé leur place (sans se faire prier) à des zombies affamés. Et ils sont ravis de vous voir franchir les portes du centre…\r\n', 'Zombies!!! Vous place au coeur de l’action, alors que vous essayez d’échapper à la horde de zombies. Les joueurs doivent autant utiliser leurs muscles que leurs neurones pour atteindre le premier l’héliport et être certains de s’enfuir.\r\n</br></br>\r\nLe seul problème est que les zombies sont partout, qu’ils sont affamés et que vos adversaires préféreraient vraiment que vous restiez là.\r\nZombies!!! est un jeu pour deux à six joueurs, il propose une carte évolutive et une armée grandissante de mort-vivants. A tour de rôle, les joueurs créent le plateau de jeu en posant des tuiles, placent les zombies, courent comme des dératés, combattent et sèment le chaos dans les rangs ennemis. Ce qui fait de chaque partie de Zombies!!! une expérience unique.', 14, '30-60 min', '2-6', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=142', 'Encore des zombies !! toujours des zombies...\r\nDans cette version, vous allez pouvoir jouer à 2 modes de jeu : \r\n</br>\r\n- 2 contre 2 </br>\r\n- 3 contre 3 </br>\r\nLa première équipe à atteindre l’aéroport ou tuer 15 zombies, remportera 25 points.\r\nLes règles seront modifiées pour rendre la partie plus rapide. ', 'img/jeux_tournois/25pts.png', 25, 'Zombies'),
(10, 'img/jeux_tournois/talisman_col1.jpg', 'Talisman', 'Talisman', 'img/jeux_tournois/talisman_boite.jpg', 'img/jeux_tournois/talisman_img1.jpg', 'img/jeux_tournois/talisman_img1.png', 'img/jeux_tournois/talisman_col1.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/index.asp', 'Talisman', 'Voici la quatrième édition du classique des jeux de plateau d''Heroic Fantasy !\r\nDécouvrez ou redécouvrez ce jeu. Vous y incarnerez un personnage qui doit accomplir des quêtes afin de progresser et d''être finalement capable de s''emparer de la Couronne de Commandement, l''épreuve Ultime.', 'Trois Seigneurs Draconiques sont revenus dans leur foyer ancestral des Terres de Feu, chacun réclamant la domination de ce territoire et combattant pour récupérer la légendaire Couronne de Commandement. Le dragon récupérant cet artéfact deviendra le Roi Dragon, et tout ce qui vit autour de lui obéira ou subira son courroux. Une nouvelle quête de la Couronne de Commandement a débuté, encore plus dangereuse et plus terrifiante…\r\n', 14, '90 min', '2-6', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=176', 'Talisman et l''un des jeux de plateau qui vous permettra de remporter 45 points!\r\n</br></br>\r\nPour ce jeu, 2 modes de jeu sont possible :</br> \r\nle 2 contre 2 ou le 3 contre 3.\r\n', 'img/jeux_tournois/45pts.png', 45, 'Talisman'),
(11, 'img/jeux_tournois/Blokus.jpg', 'Blokus', 'Blokus', 'img/jeux_tournois/blokus_boite.jpg', 'img/jeux_tournois/blokus_img1.png', 'img/jeux_tournois/blokus_img2.png', 'img/jeux_tournois/Blokus.jpg', 'img/jeux_tournois/mattel_logo.png', 'http://lesjouetsmattel.fr/', 'Blokus', 'Blokus Classique en famille ou entre amis, il faudra redoubler de stratégie pour remporter la partie !', 'Blokus Classique est un jeu de société très stratégique où les participants doivent placer l''ensemble de leurs pièces sur le plateau avant les autres.\r\n</br></br>\r\nPour remporter la partie,\r\nil faut faire preuve de tactique et de stratégie. Chacun a sa technique : bloquer\r\nl’adversaire ou aller conquérir son territoire ? S’allier à certains joueurs ou faire cavalier seul ? ', 9, '30 min', '2-4', '', 'http://lesjouetsmattel.fr/blokus/blokus-classic', 'Blokus est un jeu qui peu vous rapporter un max de points rapidement. \r\n</br>\r\nPour le tournoi il y a aura 2 modes de jeux : </br>\r\n- 2 contre 2 </br>\r\n- 1 vs 1 vs 1 vs 1\r\n', 'img/jeux_tournois/20pts.png', 20, 'Blokus'),
(12, 'img/jeux_tournois/connect4.jpg', 'Connect 4', 'Connect 4', 'img/jeux_tournois/connect4_boite.jpg', 'img/jeux_tournois/connect4_img1.png', 'img/jeux_tournois/connect4_img2.png', 'img/jeux_tournois/connect4.jpg', 'img/jeux_tournois/hasbro_logo.png', 'http://www.hasbro.com/fr_FR/', 'Connect 4', 'Développez une stratégie de vainqueur pour être le premier à aligner 4 pions !\r\n\r\nPion après pion, échafaudez une tactique imparable pour vaincre votre adversaire', 'A tour de rôle, chaque joueur insère un pion en haut de la grille. Vous pouvez aussi éjecter les pions de la ligne du bas et renverser le cours de la partie. Perfectionnez votre stratégie en maîtrisant les 3 modes de jeu :</br>\r\nMODE CLASSIQUE </br> MODE INTENSIF </br> MODE DEHORS', 6, '30 min', '2', '', 'http://www.hasbro.com/games/fr_FR/shop/details.cfm?R=77286880-5056-900B-10B0-00CFA907E579:fr_FR', '', 'img/jeux_tournois/20pts.png', 20, 'Connect 4'),
(13, 'img/jeux_tournois/scrabble.jpg', 'Scrabble classique', 'Scrabble classique', 'img/jeux_tournois/scrabble_boite.jpg', 'img/jeux_tournois/scrabble_img1.png', 'img/jeux_tournois/scrabble_img2.png', 'img/jeux_tournois/scrabble.jpg', 'img/jeux_tournois/mattel_logo.png', ' http://lesjouetsmattel.fr/', 'Scrabble classique', 'Scrabble classique ! Le Scrabble est un grand classique des jeux de lettres qui plaît toujours autant ...', 'Le plus riche et le plus célèbre des jeux de lettres. Idéal pour un moment de détente en famille ou bien pour un challenge en tête à tête. \r\n</br></br>\r\nToujours fascinant, chaque partie et la promesse d''un plaisir de jeu toujours renouvelé. le Scrabble offre des possibilités de combinaisons de mots quasi infinies et son aspect ludo-éducatif en fait un jeu idéal pour mener de véritables compétitions ! Un jeu où chacun a son mot à dire !', 10, '1H', '2-4', '', 'http://lesjouetsmattel.fr/scrabble/scrabble-classique', '', 'img/jeux_tournois/35pts.png', 35, 'Scrabble classique'),
(14, 'img/jeux_tournois/starcraft.jpg', 'Starcraft', 'Starcraft', 'img/jeux_tournois/sc_boite.jpg', '', '', 'img/jeux_tournois/starcraft.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/', 'Starcraft', 'Trois puissantes races extra-terrestres se battent pour le contrôle de la galaxie. Vous pouvez choisir de prendre le commandement des polyvalents Terrans, des mystérieux Protoss ou des voraces Zerg.', 'Une fois encore, Edge vous donne la possibilité de passer de votre  jeu video préféré à votre jeu de plateau. Les joueurs prennent le contrôle des Protoss, Terran ou Zerg pour combattre à travers une multitude de mondes. Chacune des trois races est unique avec un style de jeu bien distinct. Deux factions de chaque race permettent de jouer jusqu’à six joueurs et en équipe.', 12, '2-4H', '2-6', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=120&enmi=Starcraft', '', 'img/jeux_tournois/50pts.png', 50, 'Starcraft'),
(15, 'img/jeux_tournois/animacartes_col.jpg', 'Anima', 'Anima', 'img/jeux_tournois/anima_boite.jpg', 'img/jeux_tournois/anima_img1.png', 'img/jeux_tournois/anima_img2.png', 'img/jeux_tournois/animacartes_col.jpg', 'img/jeux_tournois/edge.png', 'http://www.edgeent.com/v2_fr/', 'Anima', 'Le cauchemar sans nom avait prit forme, altérant les piliers mêmes de la réalité. Des divinités tombèrent, des puissances ancestrales se dressèrent et le monde entier se retrouva au bord de la destruction…', 'Inconscients de leur destin, ils sont les seuls à pouvoir arrêter la résurrection d''Omega et la terrible destruction qui va en découler. C''est à vous de constituer votre groupe, de contrôler ses pouvoirs et ses capacités, et de ramener l''Orbe d''Infinité au néant qu''elle n''aurait jamais dû quitter.\r\n</br></br>\r\nVous contrôlez une équipe de 1 à 4 personnages parmi les 20 disponibles. Vous contrôlez leurs pouvoirs magiques, leurs capacités, et leurs techniques de Ki afin d''accomplir des missions qui vous permettront d''arrêter le retour du Seigneur de l''Infinité. Mais faites attention, car les autres joueurs vont contrecarrer vos plans avec leurs cartes Complot, afin de vous ralentir et de s''assurer la victoire.', 12, '30-120 min', '2-5', '', 'http://www.edgeent.com/v2_fr/edge_minisite.asp?eidm=121', 'Un jeu de cartes jouable en 1 contre tous.\r\n', 'img/jeux_tournois/45pts.png', 45, 'Anima');

-- --------------------------------------------------------

--
-- Structure de la table `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `logo`
--

INSERT INTO `logo` (`id`, `name`, `img`) VALUES
(1, 'Danger', 'img/logos/1.png'),
(2, 'Bouclier', 'img/logos/2.png'),
(3, 'Boule de feu', 'img/logos/3.png'),
(4, 'Crane de squelette', 'img/logos/4.png'),
(5, 'Double epee', 'img/logos/5.png'),
(6, 'Etoile', 'img/logos/6.png'),
(8, 'Hache double', 'img/logos/8.png'),
(9, 'Sablier', 'img/logos/9.png'),
(10, 'Tache', 'img/logos/10.png'),
(11, 'Ying_Yiang', 'img/logos/11.png'),
(15, 'Biere', 'img/logos/12.png'),
(16, 'Double bieres', 'img/logos/13.png');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE IF NOT EXISTS `membres` (
  `isauth_id` int(11) NOT NULL,
  `guildes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `membres`
--

INSERT INTO `membres` (`isauth_id`, `guildes_id`) VALUES
(32, 6),
(18, 100),
(2, 107),
(9, 107),
(39, 127),
(31, 108),
(43, 109),
(13, 110),
(26, 111),
(22, 112),
(94, 113);

-- --------------------------------------------------------

--
-- Structure de la table `months`
--

CREATE TABLE IF NOT EXISTS `months` (
  `num` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `months`
--

INSERT INTO `months` (`num`, `name`) VALUES
(1, 'Janvier'),
(2, 'Fevrier'),
(3, 'Mars'),
(12, 'Decembre');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Guild Master'),
(2, 'Membre'),
(5, 'Master');
