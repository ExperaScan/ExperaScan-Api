-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

INSERT INTO `2016_p2_restful_games` (`id`, `name`, `genre`, `publisher`, `publish_date`) VALUES
(0,	'Fallout 4',	'Action RPG',	'Bethesda',	'13-01-2015 08:42:00 PM');





DROP TABLE IF EXISTS `es_orders`;
CREATE TABLE `es_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_price` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `es_orders` (`id`, `timestamp`, `total_price`, `seller_id`) VALUES
(1,	'2017-04-12 12:21:29',	149,	1),
(2,	'2017-04-20 10:15:02',	149,	1),
(3,	'2017-04-20 10:18:21',	149,	1),
(4,	'2017-04-20 10:23:36',	0,	1),
(5,	'2017-04-20 10:23:56',	149,	1),
(6,	'2017-04-20 10:24:27',	0,	1),
(7,	'2017-04-20 10:24:34',	149,	1),
(8,	'2017-04-20 10:25:10',	149,	1),
(9,	'2017-04-20 10:30:20',	149,	1),
(10,	'2017-04-20 10:31:25',	0,	1),
(11,	'2017-04-20 10:36:00',	588,	1),
(12,	'2017-04-20 11:19:31',	319,	1),
(13,	'2017-04-20 11:27:02',	2752,	1),
(14,	'2017-04-20 11:34:43',	2365,	1),
(15,	'2017-04-20 11:40:40',	0,	1),
(16,	'2017-04-20 11:40:49',	149,	1),
(17,	'2017-04-20 11:48:46',	447,	1),
(18,	'2017-04-20 12:07:43',	878,	1),
(19,	'2017-04-20 14:45:25',	1260,	1),
(20,	'2017-04-20 14:50:25',	369,	1),
(21,	'2017-04-21 08:27:00',	170,	1),
(22,	'2017-04-21 09:15:28',	2304,	1),
(23,	'2017-04-21 11:30:42',	249,	1),
(24,	'2017-04-21 12:15:23',	249,	1),
(25,	'2017-04-21 12:20:53',	249,	1),
(26,	'2017-04-21 12:35:39',	269,	1);

DROP TABLE IF EXISTS `es_order_has_products`;
CREATE TABLE `es_order_has_products` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_expiration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `es_order_has_products` (`order_id`, `product_id`, `product_expiration_date`) VALUES
(1,	1,	'2017-07-31'),
(1,	2,	'2017-04-21'),
(3,	1,	'2017-04-20'),
(5,	1,	'2017-05-30'),
(7,	1,	'2017-04-20'),
(8,	1,	'2017-05-30'),
(9,	1,	'2017-05-30'),
(11,	1,	'2017-04-20'),
(11,	2,	'2030-07-24'),
(11,	3,	'2017-04-28'),
(11,	6,	'2017-05-02'),
(11,	5,	'2017-05-04'),
(12,	6,	'2017-05-02'),
(12,	1,	'2017-05-30'),
(12,	3,	'2017-04-28'),
(13,	6,	'2017-05-02'),
(13,	6,	'2017-05-02'),
(13,	3,	'2017-04-28'),
(13,	3,	'2017-04-28'),
(13,	3,	'2017-04-28'),
(13,	3,	'2017-04-28'),
(13,	2,	'2017-04-22'),
(13,	1,	'2017-04-20'),
(13,	5,	'2017-05-04'),
(13,	5,	'2017-05-04'),
(13,	5,	'2017-05-04'),
(13,	5,	'2017-05-04'),
(13,	5,	'2017-05-04'),
(13,	5,	'2017-05-04'),
(13,	2,	'2030-07-24'),
(13,	2,	'2030-07-24'),
(13,	5,	'2017-05-04'),
(13,	1,	'2017-04-20'),
(13,	1,	'2017-04-20'),
(13,	1,	'2017-04-20'),
(13,	3,	'2017-04-28'),
(13,	3,	'2017-04-28'),
(13,	1,	'2017-05-30'),
(13,	6,	'2017-05-02'),
(14,	1,	'2017-05-30'),
(14,	1,	'2017-05-30'),
(14,	1,	'2017-05-30'),
(14,	1,	'2017-05-30'),
(14,	6,	'2017-05-02'),
(14,	2,	'2030-07-24'),
(14,	1,	'2017-04-20'),
(14,	5,	'2017-05-04'),
(14,	4,	'2017-04-26'),
(14,	2,	'2017-04-22'),
(14,	3,	'2017-04-28'),
(14,	3,	'2017-04-28'),
(14,	1,	'2017-05-30'),
(14,	6,	'2017-05-02'),
(14,	6,	'2017-05-02'),
(14,	3,	'2017-04-28'),
(14,	2,	'2017-04-22'),
(14,	5,	'2017-05-04'),
(14,	1,	'2017-04-20'),
(16,	1,	'2017-04-20'),
(17,	1,	'2017-04-20'),
(17,	1,	'2017-04-20'),
(17,	1,	'2017-04-20'),
(18,	1,	'2017-04-20'),
(18,	1,	'2017-05-30'),
(18,	6,	'2017-05-02'),
(18,	5,	'2017-05-04'),
(18,	5,	'2017-05-04'),
(18,	5,	'2017-05-04'),
(18,	5,	'2017-05-04'),
(19,	5,	'2017-05-04'),
(19,	1,	'2017-04-20'),
(19,	2,	'2017-04-22'),
(19,	6,	'2017-05-02'),
(19,	3,	'2017-04-28'),
(19,	4,	'2017-04-26'),
(19,	2,	'2030-07-24'),
(19,	1,	'2017-05-30'),
(19,	2,	'2030-07-24'),
(19,	6,	'2017-05-02'),
(20,	6,	'2017-05-02'),
(20,	1,	'2017-05-30'),
(20,	5,	'2017-05-04'),
(21,	6,	'2017-05-02'),
(21,	3,	'2017-04-28'),
(22,	1,	'2017-04-20'),
(22,	1,	'2017-04-20'),
(22,	4,	'2017-04-26'),
(22,	2,	'2017-04-22'),
(22,	4,	'2017-04-26'),
(22,	1,	'2017-05-30'),
(22,	3,	'2017-04-28'),
(22,	6,	'2017-05-02'),
(22,	2,	'2030-07-24'),
(22,	5,	'2017-05-04'),
(22,	1,	'2017-05-30'),
(22,	4,	'2017-04-26'),
(22,	2,	'2017-04-22'),
(22,	1,	'2017-04-20'),
(22,	1,	'2017-04-20'),
(22,	1,	'2017-04-20'),
(22,	1,	'2017-04-20'),
(23,	1,	'2017-04-20'),
(23,	6,	'2017-05-02'),
(24,	1,	'2017-04-20'),
(24,	6,	'2017-05-02'),
(25,	1,	'2017-04-20'),
(25,	6,	'2017-05-02'),
(26,	5,	'2017-05-04'),
(26,	1,	'2017-04-20');

DROP TABLE IF EXISTS `es_products`;
CREATE TABLE `es_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `es_products` (`id`, `product_code`, `name`, `price`) VALUES
(1,	54491472,	'Coca Cola Fles 500ml',	149),
(2,	2147483647,	'Fanta Fles 300ml',	149),
(3,	6841562,	'Boeren Tijger Bruin Half',	70),
(4,	31773541,	'Boeren Volkoren Wit Heel',	125),
(5,	78651654,	'Lays Paprika Chips Groot',	120),
(6,	64132355,	'AH Naturel Chips Groot',	100);

DROP TABLE IF EXISTS `es_sellers`;
CREATE TABLE `es_sellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `es_sellers` (`id`, `name`, `store_id`) VALUES
(1,	'Menno',	1),
(2,	'Marc',	1);

DROP TABLE IF EXISTS `es_stores`;
CREATE TABLE `es_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `home_number` varchar(6) NOT NULL,
  `zip_code` varchar(6) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `es_stores` (`id`, `name`, `street`, `home_number`, `zip_code`, `city`, `phone`) VALUES
(1,	'Spar',	'Glashaven',	'6',	'3011XH',	'Rotterdam',	'010-404 7655');

INSERT INTO `gebruikers` (`idgebruiker`, `voornaam`, `tussenvoegsel`, `achternaam`, `telefoonnummer`, `emailadres`, `wachtwoord`, `admin`) VALUES
(23,	'Kalle',	'van',	'Lent',	123,	'kalvanlent@gmail.com',	'202cb962ac59075b964b07152d234b70',	1),
(27,	'kalle',	'van',	'Lent',	123,	'0892756@hr.nl',	'3a22c9ea9a3039d180e0a514a5a3b619',	0),
(28,	'Carlijn',	'',	'Schipper',	651516,	'car@schip.com',	'202cb962ac59075b964b07152d234b70',	0),
(31,	'Bob',	'',	'Joziasse',	11,	'bobiseenlul@lul.lul',	'9f9d51bc70ef21ca5c14f307980a29d8',	0),
(32,	'test',	'test',	'test',	100000000,	'j.van.den.berg@hr.nl',	'098f6bcd4621d373cade4e832627b4f6',	0);

INSERT INTO `posts` (`post_id`, `user_id`, `text`, `emotion`, `song_id`, `path`) VALUES
(121,	22,	'met kalle',	1,	'5b88tNINg4Q4nrRbrCXUmg',	'Uploads/WIN_20150410_172424.JPG'),
(122,	22,	'zomervakantie',	1,	'6YUTL4dYpB9xZO5qExPf05',	'Uploads/1966325_379305035583474_8738396327014267256_o.jpg'),
(134,	22,	'Basketbal kampioenen!',	1,	'6u5M4jPpYkoRV4vVHDQvkd',	'Uploads/Ben2kampioengr.jpg'),
(147,	28,	'Dit is een mobiele test',	1,	'3WLfwlGFy5f2A4O1daqeq8',	'Uploads/IMG-20150411-WA0001.jpg'),
(148,	29,	'kkkk',	1,	'3WMbD1OyfKuwWDWMNbPQ4g',	''),
(183,	0,	'Aa',	1,	'15uTxjdvNnV6U5u5L4vpnM',	''),
(184,	32,	'het werkt!',	1,	'0BF6mdNROWgYo3O3mNGrBc',	''),
(185,	22,	'bifuehi4wugbi',	1,	'368S2jjTfDk9Hk9x9YDzwj',	''),
(186,	22,	'jhsgbrvvv',	1,	'1brwdYwjltrJo7WHpIvbYt',	''),
(187,	22,	'Wed Jan 20 09:50:43 +0000 2016 								 								How do you get someone to look up from their phone? #WhoSaysNoToMentos https://t.co/zbSjkNaIgX',	1,	'3UvzVx56WgHbdEiP8A84wy',	'Uploads/mentosmenno2 logo vierkant.png'),
(188,	22,	'rwrg',	1,	'46GGxd8TVRt6FjUBfCavVT',	'Uploads/IMG_20150612_035038329.jpg'),
(189,	22,	'regr',	1,	'1k4G4ACWCcW2MmwuErtFTr',	'Uploads/mentosmenno2 logo vierkant.png'),
(190,	28,	'ghfghgfh',	1,	'3pXF1nA74528Edde4of9CC',	''),
(191,	32,	'Bij walter',	1,	'2EGtyWosnePYoFZ4y346pI',	''),
(192,	22,	'ragga',	1,	'5TYp68p9u8j6dx1MxIYuts',	'Uploads/Aarnoutse-Bea_920x400-150x150.jpg');

INSERT INTO `project_2_pages` (`page`, `text`) VALUES
('aboutus',	'<p>Hiemstra Sport is, met een onderbreking van bijna 5 jaar, al 43 jaar gevestigd in Barendrecht. De laatste 15 jaar zelfs in een pand van 700m², waar u een groot assortiment voor vele takken van sport aantreft. Vakbekwame medewerkers staan u te woord en kunnen u alles vertellen over de verschillende artikelen. <strong>Hiemstra Sport staat voor service naar de klant</strong> Bij Hiemstra Sport vinden wij de volgende dingen belangrijk: Service, vakkennis, groot assortiment, sfeer en een aantrekkelijk prijsniveau. Het uitgebreide assortiment bij Hiemstra Sport bestaat o.a. uit kleding, schoenen en accessoires van veel bekende merken. Verder is er een bespanafdeling voor rackets en een onderhoudsafdeling voor ski’s en snowboards. Bovendien is er een afdeling voor textielbedrukking, waardoor Hiemstra Sport is gespecialiseerd in het leveren van complete outfits met sponsornaam aan verenigingen, scholen en bedrijven. De medewerkers kunnen u goed informeren over de verschillen tussen de soortgelijke artikelen onderling; de kennis reikt zelfs tot de kleinste accessoires. <strong>Klantenpas</strong> Voor iedere klant bestaat de mogelijkheid om bij Hiemstra Sport een klantenpas aan te vragen. Met deze klantenpas ontvangt u een korting op het gehele assortiment, behalve op reeds afgeprijsde artikelen en speciale bestellingen.</p>'),
('home',	'<p>Per 31 mei a.s. sluiten wij onze bovenverdieping. Daarom is <strong>bijna alle kleding</strong> op onze bovenverdieping afgeprijsd met <strong>25 tot 75% korting</strong>! Ook op onze benedenverdieping zijn ook een aantal artikelgroepen afgeprijsd:</p><ul><li>Badmintonrackets 50% korting</li><li>Squashrackets 50% korting</li><li>Tennisrackets 30% korting</li><li>Zwemvliezen 25% korting</li><li>Duikbrillen 25% korting</li><li>Hockeytassen 50% korting</li><li>Hockeyfoudralen 75% korting</li></ul>\r\n<p><iframe src=\"//www.youtube.com/embed/RTm72UawIOA?rel=0\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"\"></iframe> <img src=\"http://s12.postimg.org/zecl2plyl/2015_WK04_OPHEFFING_BOVENVERDIEPING.png\" alt=\"advertentie\" border=\"0\" /></p>'),
('vacancy',	'<p>Er zijn momenteel geen vacatures.</p>');

INSERT INTO `project_2_products` (`ID`, `itemnumber`, `name`, `price`) VALUES
(1,	'123456-789',	'Schoenen',	80.00),
(2,	'987654-321',	'Bal',	24.00);

INSERT INTO `project_2_users` (`ID`, `email`, `password`, `usertype`, `sex`, `firstname`, `middlename`, `lastname`, `street`, `homenumber`, `town`, `phone`, `sports`, `newsletter`) VALUES
(1,	'mentosmenno@hotmail.com',	'pass',	'admin',	'man',	'Menno',	'van den',	'Ende',	'Haydnsingel',	'17',	'Barendrecht',	'+316299684502',	'Basketbal2',	'yes'),
(17,	'0894225@hr.nl',	'pass',	'user',	'man',	'Menno',	'van den',	'Ende',	'Haydnsingel',	'17',	'Barendrecht',	'',	'',	'no'),
(18,	'mentosmenno2@hotmail.com',	'pass',	'user',	'man',	'Menno',	'van den',	'Ende',	'Haydnsingel',	'17',	'Barendrecht',	'+31629968450',	'',	'no'),
(19,	'0892756@hr.nl',	'joep',	'user',	'man',	'kalle',	'van',	'lent',	'123',	'123',	'joep',	'123',	'voetbal',	'no'),
(20,	'test@test.nl',	'admin',	'admin',	'man',	'Tester',	'van de',	'Testers',	'Teststraat',	'1234',	'Rotterdam',	'0000-000000',	'Voetbal',	'no'),
(21,	'j.van.den.berg@hr.nl',	'pass',	'user',	'man',	'J',	'van den',	'Berg',	'Coolsingel',	'1',	'Rotterdam',	'0101111111',	'Voetbal',	'no'),
(22,	'j@hr.nl',	'test',	'user',	'man',	'test',	'test',	'test',	'test',	'1',	'test',	'0100000000',	'test',	'no');

INSERT INTO `reservering` (`id`, `date`, `camperId`) VALUES
(11,	20150522,	'Camper F'),
(12,	20150522,	'Camper F'),
(13,	20150522,	'Camper G'),
(14,	20150522,	'Camper G'),
(15,	20150522,	'Camper E'),
(16,	20150522,	'Camper E'),
(17,	20150522,	'Camper F'),
(18,	20150522,	'Camper F'),
(19,	20150422,	'Camper F'),
(20,	20150422,	'Camper F'),
(21,	20150422,	'Camper H'),
(22,	20150422,	'Camper H'),
(23,	20150422,	'Camper I'),
(24,	20150422,	'Camper I'),
(25,	20150422,	'Camper C'),
(26,	20150422,	'Camper C'),
(27,	20150916,	'Camper E'),
(28,	20150916,	'Camper E');

INSERT INTO `reserveringen` (`reservering_id`, `uren`, `minuten`, `datum`, `aantal_personen`, `extra_wensen`, `tafel`, `gebruiker_id`, `goedgekeurd`) VALUES
(12,	20,	10,	'2015-01-13 00:00:00',	5,	'blwa',	'',	23,	0);

INSERT INTO `restful_songs` (`id`, `name`, `artist`, `album`, `albumArt`, `date`) VALUES
(1,	'Hello',	'Adele',	'Hello',	'http://assets.rollingstone.com/assets/2015/media/213800/_original/1445526804/1035x1035-unnamed.jpg',	'12-01-2016 19:29:10'),
(2,	'Sweets (Soda Pop) - Radio Edit',	'Fox Stevenson',	'Sweets (Soda Pop)',	'http://images.junostatic.com/full/CS2604381-02A-BIG.jpg',	'12-01-2016 19:30:12'),
(3,	'Beat It',	'Michael Jackson',	'Beat It',	'https://upload.wikimedia.org/wikipedia/en/6/65/Michael_Jackson_-_Beat_It_cover.jpg',	'10-01-2016 20:29:30'),
(4,	'Dancing In The Moonlight',	'Toploader',	'Dancing In The Moonlight',	'http://www.securecrazydiamond.com/dizq/59504.jpg',	'12-01-2016 20:30:41'),
(5,	'I Believe I Can Fly',	'R. Kelly',	'I Believe I Can Fly',	'http://www.jaren90muziek.nl/data/qhgyxzak/front.jpg',	'12-01-2016 20:32:16'),
(6,	'Rood',	'Marco Borsato',	'Rood',	'http://streamd.hitparade.ch/cdimages/marco_borsato-rood_s.jpg',	'13-01-2016 19:42:30');


INSERT INTO `users` (`user_id`, `name`, `email`, `picture`, `spotify_Id`) VALUES
(22,	'Menno van den Ende',	'mentosmenno@hotmail.com',	'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p200x200/11082641_1552023891727453_1407133131445436689_n.jpg?oh=efc09579989e4a076c94a7122a8bca9a&oe=55E000F5&__gda__=1435997687_a6d962f0d343fd2385ccf4616d3efb73',	'11143134707'),
(27,	'Hiemstra Sport',	'john@hiemstrasport.nl',	'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/s200x200/1013824_400415130098007_7776189834833444928_n.jpg?oh=30a5f0cee37ea457a7534b42943614d8&oe=559D830C&__gda__=1437454742_fe79014ed07d1187036a72369fe9686a',	'11183863816'),
(28,	'Maarten van Willigen',	'maarten_vanwilligen@yahoo.com',	'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/s200x200/1380590_692468180847090_468103274158314222_n.jpg?oh=34c17dafec46061ce981c80849fff5ba&oe=55E2247F&__gda__=1440795695_cb32eff5d250c06d0d1abeb9448644f0',	'1130011591'),
(29,	'Linda van Willigen',	'lindawilligen@gmail.com',	'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p200x200/1383982_224937977706869_237067004_n.jpg?oh=1abf455b099583b4a1b5ec2e8f7a52c1&oe=55B7449E&__gda__=1437632344_29d9a57a2943e07b4cf5155eb47c2185',	'11153085736'),
(30,	'Jelle van den Ende',	'judojelle@hotmail.com',	'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p200x200/10968491_416334201866878_749009575489132566_n.jpg?oh=bb8fcdae2b69dfd211cfe71225a47537&oe=559DE39B&__gda__=1437641050_99192a81b4ac59ea0c3c0cbed89588b2',	'1183759684'),
(31,	'0894225@hr.nl',	'0894225@hr.nl',	'afbeeldingen/user42.png',	'0894225'),
(32,	'kalvanlent@gmail.com',	'kalvanlent@gmail.com',	'afbeeldingen/user42.png',	'lentekal'),
(33,	'Carlijn Schipper',	'schippercarlijn@gmail.com',	'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p200x200/10933739_761900863895598_5730350939883528494_n.jpg?oh=0027387f569d53349073056604555c5b&oe=55A7DCB4&__gda__=1440185682_2d4e1f878dae9e8c6fc99a570547de86',	'1128620311');

SET NAMES utf8mb4;


INSERT INTO `wp_portfolio_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1,	1,	'De heer WordPress',	'',	'https://wordpress.org/',	'',	'2015-02-20 12:36:54',	'2015-02-20 12:36:54',	'Hallo, dit is een reactie.\nReacties verwijderen kan door in te loggen en de reacties op de berichten te bekijken. Je hebt daar de mogelijkheid om reacties te bewerken of te verwijderen.',	0,	'1',	'',	'',	0,	0);


INSERT INTO `wp_portfolio_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1,	'siteurl',	'http://stud.cmi.hro.nl/0894225/Portfolio',	'yes'),
(2,	'home',	'http://stud.cmi.hro.nl/0894225/Portfolio',	'yes'),
(3,	'blogname',	'Portfolio',	'yes'),
(4,	'blogdescription',	'En nog een WordPress site',	'yes'),
(5,	'users_can_register',	'0',	'yes'),
(6,	'admin_email',	'0894225@hr.nl',	'yes'),
(7,	'start_of_week',	'1',	'yes'),
(8,	'use_balanceTags',	'0',	'yes'),
(9,	'use_smilies',	'1',	'yes'),
(10,	'require_name_email',	'1',	'yes'),
(11,	'comments_notify',	'1',	'yes'),
(12,	'posts_per_rss',	'10',	'yes'),
(13,	'rss_use_excerpt',	'0',	'yes'),
(14,	'mailserver_url',	'mail.example.com',	'yes'),
(15,	'mailserver_login',	'login@example.com',	'yes'),
(16,	'mailserver_pass',	'password',	'yes'),
(17,	'mailserver_port',	'110',	'yes'),
(18,	'default_category',	'1',	'yes'),
(19,	'default_comment_status',	'open',	'yes'),
(20,	'default_ping_status',	'open',	'yes'),
(21,	'default_pingback_flag',	'0',	'yes'),
(22,	'posts_per_page',	'10',	'yes'),
(23,	'date_format',	'j F Y',	'yes'),
(24,	'time_format',	'H:i ',	'yes'),
(25,	'links_updated_date_format',	'j F Y H:i',	'yes'),
(26,	'comment_moderation',	'0',	'yes'),
(27,	'moderation_notify',	'1',	'yes'),
(28,	'permalink_structure',	'',	'yes'),
(29,	'gzipcompression',	'0',	'yes'),
(30,	'hack_file',	'0',	'yes'),
(31,	'blog_charset',	'UTF-8',	'yes'),
(32,	'moderation_keys',	'',	'no'),
(33,	'active_plugins',	'a:0:{}',	'yes'),
(34,	'category_base',	'',	'yes'),
(35,	'ping_sites',	'http://rpc.pingomatic.com/',	'yes'),
(36,	'advanced_edit',	'0',	'yes'),
(37,	'comment_max_links',	'2',	'yes'),
(38,	'gmt_offset',	'0',	'yes'),
(39,	'default_email_category',	'1',	'yes'),
(40,	'recently_edited',	'',	'no'),
(41,	'template',	'twentyfifteen',	'yes'),
(42,	'stylesheet',	'twentyfifteen',	'yes'),
(43,	'comment_whitelist',	'1',	'yes'),
(44,	'blacklist_keys',	'',	'no'),
(45,	'comment_registration',	'0',	'yes'),
(46,	'html_type',	'text/html',	'yes'),
(47,	'use_trackback',	'0',	'yes'),
(48,	'default_role',	'subscriber',	'yes'),
(49,	'db_version',	'31536',	'yes'),
(50,	'uploads_use_yearmonth_folders',	'1',	'yes'),
(51,	'upload_path',	'',	'yes'),
(52,	'blog_public',	'0',	'yes'),
(53,	'default_link_category',	'2',	'yes'),
(54,	'show_on_front',	'posts',	'yes'),
(55,	'tag_base',	'',	'yes'),
(56,	'show_avatars',	'1',	'yes'),
(57,	'avatar_rating',	'G',	'yes'),
(58,	'upload_url_path',	'',	'yes'),
(59,	'thumbnail_size_w',	'150',	'yes'),
(60,	'thumbnail_size_h',	'150',	'yes'),
(61,	'thumbnail_crop',	'1',	'yes'),
(62,	'medium_size_w',	'300',	'yes'),
(63,	'medium_size_h',	'300',	'yes'),
(64,	'avatar_default',	'mystery',	'yes'),
(65,	'large_size_w',	'1024',	'yes'),
(66,	'large_size_h',	'1024',	'yes'),
(67,	'image_default_link_type',	'file',	'yes'),
(68,	'image_default_size',	'',	'yes'),
(69,	'image_default_align',	'',	'yes'),
(70,	'close_comments_for_old_posts',	'0',	'yes'),
(71,	'close_comments_days_old',	'14',	'yes'),
(72,	'thread_comments',	'1',	'yes'),
(73,	'thread_comments_depth',	'5',	'yes'),
(74,	'page_comments',	'0',	'yes'),
(75,	'comments_per_page',	'50',	'yes'),
(76,	'default_comments_page',	'newest',	'yes'),
(77,	'comment_order',	'asc',	'yes'),
(78,	'sticky_posts',	'a:0:{}',	'yes'),
(79,	'widget_categories',	'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(80,	'widget_text',	'a:0:{}',	'yes'),
(81,	'widget_rss',	'a:0:{}',	'yes'),
(82,	'uninstall_plugins',	'a:0:{}',	'no'),
(83,	'timezone_string',	'',	'yes'),
(84,	'page_for_posts',	'0',	'yes'),
(85,	'page_on_front',	'0',	'yes'),
(86,	'default_post_format',	'0',	'yes'),
(87,	'link_manager_enabled',	'0',	'yes'),
(88,	'initial_db_version',	'30133',	'yes'),
(89,	'wp_portfolio_user_roles',	'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',	'yes'),
(90,	'WPLANG',	'nl_NL',	'yes'),
(91,	'widget_search',	'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',	'yes'),
(92,	'widget_recent-posts',	'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(93,	'widget_recent-comments',	'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(94,	'widget_archives',	'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',	'yes'),
(95,	'widget_meta',	'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',	'yes'),
(96,	'sidebars_widgets',	'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}',	'yes'),
(97,	'cron',	'a:4:{i:1458736624;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1458741553;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1458760920;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}',	'yes'),
(106,	'auto_core_update_notified',	'a:4:{s:4:\"type\";s:4:\"fail\";s:5:\"email\";s:13:\"0894225@hr.nl\";s:7:\"version\";s:5:\"4.2.7\";s:9:\"timestamp\";i:1458729376;}',	'yes'),
(107,	'_transient_random_seed',	'ab234b82131792114a8b36b817f7122a',	'yes'),
(131,	'_transient_is_multi_author',	'0',	'yes'),
(132,	'_transient_twentyfifteen_categories',	'1',	'yes'),
(171,	'db_upgraded',	'1',	'yes'),
(215,	'_site_transient_timeout_theme_roots',	'1458731163',	'yes'),
(216,	'_site_transient_theme_roots',	'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";}',	'yes'),
(220,	'auto_core_update_failed',	'a:6:{s:9:\"attempted\";s:5:\"4.2.7\";s:7:\"current\";s:5:\"4.2.7\";s:10:\"error_code\";s:18:\"files_not_writable\";s:10:\"error_data\";s:18:\"wp-admin/about.php\";s:9:\"timestamp\";i:1458729376;s:5:\"retry\";b:0;}',	'yes'),
(224,	'_site_transient_update_core',	'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-4.4.2.zip\";s:6:\"locale\";s:5:\"nl_NL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-4.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.4.2\";s:7:\"version\";s:5:\"4.4.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.4.2\";s:7:\"version\";s:5:\"4.4.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-4.4.2.zip\";s:6:\"locale\";s:5:\"nl_NL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-4.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.4.2\";s:7:\"version\";s:5:\"4.4.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-4.3.3.zip\";s:6:\"locale\";s:5:\"nl_NL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-4.3.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.3.3\";s:7:\"version\";s:5:\"4.3.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-4.2.7.zip\";s:6:\"locale\";s:5:\"nl_NL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nl_NL/wordpress-4.2.7.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.7\";s:7:\"version\";s:5:\"4.2.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1458729383;s:15:\"version_checked\";s:5:\"4.2.5\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.2.5\";s:7:\"updated\";s:19:\"2015-08-12 12:07:26\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.2.5/nl_NL.zip\";s:10:\"autoupdate\";b:1;}}}',	'yes'),
(225,	'_site_transient_update_themes',	'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1458729384;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.2\";s:14:\"twentyfourteen\";s:3:\"1.4\";s:14:\"twentythirteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.4.zip\";}s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.1.6.zip\";}s:14:\"twentythirteen\";a:4:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentythirteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.1.7.zip\";}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2015-07-27 22:21:25\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.2/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentyfourteen\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"1.4\";s:7:\"updated\";s:19:\"2015-07-27 22:21:24\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentyfourteen/1.4/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentythirteen\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2015-07-27 22:21:22\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentythirteen/1.5/nl_NL.zip\";s:10:\"autoupdate\";b:1;}}}',	'yes'),
(226,	'_site_transient_update_plugins',	'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1458729384;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.1.8.zip\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"3.1.5\";s:7:\"updated\";s:19:\"2015-08-01 15:55:42\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1.5/nl_NL.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}}}',	'yes');

INSERT INTO `wp_portfolio_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1,	2,	'_wp_page_template',	'default');

INSERT INTO `wp_portfolio_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1,	1,	'2015-02-20 12:36:54',	'2015-02-20 12:36:54',	'Welkom bij WordPress. Dit is je eerste bericht. Pas het aan of verwijder het en start met bloggen!',	'Hallo wereld!',	'',	'publish',	'open',	'open',	'',	'hallo-wereld',	'',	'',	'2015-02-20 12:36:54',	'2015-02-20 12:36:54',	'',	0,	'http://stud.cmi.hro.nl/0894225/Portfolio/?p=1',	0,	'post',	'',	1),
(2,	1,	'2015-02-20 12:36:54',	'2015-02-20 12:36:54',	'Dit is een voorbeelpagina. Het verschilt met een bericht omdat het een vaste plek heeft en in de sitenavigatie getoond wordt (in de meeste thema\'s). De meeste gebruikers beginnen met een Over mij pagina om zich voor te stellen aan aan potenti&#235;le bezoekers. Bijvoorbeeld:\n\n<blockquote>Hallo! Overdag ben ik postbode, maar \'s avonds timmer ik aan de weg als acteur. Dit is mijn blog. Ik woon in Hilversum, samen met Vlekkie, m\'n trouwe viervoeter. Ik hou van cocktails en, af en toe, een zomerse bui op m\'n hoofd.</blockquote>\n\n...of zoiets:\n\n<blockquote>XYZ Dingetjes BV levert al sinds 1971 talloze dingetjes van hoge kwaliteit aan een groot publiek. XYZ is gevestigd in Bolsward, heeft ca. 2.000 medewerkers en doet allerlei geweldige dingen voor de Friese gemeenschap.</blockquote>\n\nAls nieuwe WordPress gebruiker kan je naar <a href=\"http://stud.cmi.hro.nl/0894225/Portfolio/wp-admin/\">het dashboard</a> gaan om deze voorbeeldpagina te verwijderen en nieuwe pagina\'s aan te maken voor je site. Veel plezier!',	'Voorbeeld pagina',	'',	'publish',	'open',	'open',	'',	'voorbeeld-pagina',	'',	'',	'2015-02-20 12:36:54',	'2015-02-20 12:36:54',	'',	0,	'http://stud.cmi.hro.nl/0894225/Portfolio/?page_id=2',	0,	'page',	'',	0),
(3,	1,	'2015-02-20 13:59:14',	'0000-00-00 00:00:00',	'',	'Automatische concepten',	'',	'auto-draft',	'open',	'open',	'',	'',	'',	'',	'2015-02-20 13:59:14',	'0000-00-00 00:00:00',	'',	0,	'http://stud.cmi.hro.nl/0894225/Portfolio/?p=3',	0,	'post',	'',	0);

INSERT INTO `wp_portfolio_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1,	'Geen categorie',	'geen-categorie',	0);

INSERT INTO `wp_portfolio_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1,	1,	0);

INSERT INTO `wp_portfolio_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1,	1,	'category',	'',	0,	1);

INSERT INTO `wp_portfolio_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1,	1,	'nickname',	'0894225'),
(2,	1,	'first_name',	''),
(3,	1,	'last_name',	''),
(4,	1,	'description',	''),
(5,	1,	'rich_editing',	'true'),
(6,	1,	'comment_shortcuts',	'false'),
(7,	1,	'admin_color',	'fresh'),
(8,	1,	'use_ssl',	'0'),
(9,	1,	'show_admin_bar_front',	'true'),
(10,	1,	'wp_portfolio_capabilities',	'a:1:{s:13:\"administrator\";b:1;}'),
(11,	1,	'wp_portfolio_user_level',	'10'),
(12,	1,	'dismissed_wp_pointers',	'wp360_locks,wp390_widgets'),
(13,	1,	'show_welcome_panel',	'1'),
(14,	1,	'session_tokens',	'a:1:{s:64:\"cbb9a03f02110e06deb551dc0906298a1b2e57b745ada65468fc378de0eba3af\";a:4:{s:10:\"expiration\";i:1432219637;s:2:\"ip\";s:14:\"145.24.235.100\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36\";s:5:\"login\";i:1432046837;}}'),
(15,	1,	'wp_portfolio_dashboard_quick_press_last_post_id',	'3');

INSERT INTO `wp_portfolio_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1,	'0894225',	'$P$BoWbGEg/nqsl5ZTYBWre6LCG6OC6hz.',	'0894225',	'0894225@hr.nl',	'',	'2015-02-20 12:36:54',	'',	0,	'0894225');

-- 2017-04-22 14:17:12
