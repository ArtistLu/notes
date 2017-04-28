# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.11)
# Database: study-mysql
# Generation Time: 2017-04-28 01:53:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table order_seq
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_seq`;

CREATE TABLE `order_seq` (
  `order_sn` char(8) NOT NULL DEFAULT '',
  `timestr` char(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `order_seq` WRITE;
/*!40000 ALTER TABLE `order_seq` DISABLE KEYS */;

INSERT INTO `order_seq` (`order_sn`, `timestr`)
VALUES
	('186','20170423'),
	('64','20170422'),
	('12','20170424');

/*!40000 ALTER TABLE `order_seq` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rate`;

CREATE TABLE `rate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `low` decimal(6,0) DEFAULT '0',
  `up` decimal(10,0) DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;

INSERT INTO `rate` (`id`, `low`, `up`, `rate`)
VALUES
	(1,0,1500,0.03),
	(20,1500,4500,0.1),
	(21,4500,9000,0.2),
	(22,9000,35000,0.25),
	(23,35000,55000,0.3),
	(24,55000,80000,0.35),
	(25,80000,999999999,0.45);

/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tmp_sq
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmp_sq`;

CREATE TABLE `tmp_sq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_equipment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_equipment`;

CREATE TABLE `user_equipment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `shoes` varchar(10) NOT NULL DEFAULT '',
  `cloth` varchar(10) NOT NULL DEFAULT '',
  `arms` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_equipment` WRITE;
/*!40000 ALTER TABLE `user_equipment` DISABLE KEYS */;

INSERT INTO `user_equipment` (`id`, `user_id`, `shoes`, `cloth`, `arms`)
VALUES
	(1,1,'布鞋','西装','锤子'),
	(2,2,'皮鞋','衬衫','棒槌'),
	(3,3,'溜冰鞋','夹克','榔头'),
	(4,4,'无鞋','裸奔','空手');

/*!40000 ALTER TABLE `user_equipment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_kill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_kill`;

CREATE TABLE `user_kill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `kills` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `user_kill` WRITE;
/*!40000 ALTER TABLE `user_kill` DISABLE KEYS */;

INSERT INTO `user_kill` (`id`, `user_id`, `created_at`, `kills`)
VALUES
	(1,1,'2017-04-21 00:00:00',3),
	(2,2,'2017-04-21 00:00:00',9),
	(3,3,'2017-04-21 00:00:00',2),
	(4,4,'2017-04-21 00:00:00',1),
	(5,1,'2017-04-22 00:00:00',5),
	(6,2,'2017-04-22 00:00:00',7),
	(7,3,'2017-04-22 00:00:00',6),
	(8,4,'2017-04-22 00:00:00',9),
	(9,1,'2017-04-23 00:00:00',3),
	(10,2,'2017-04-23 00:00:00',1),
	(11,3,'2017-04-23 00:00:00',3),
	(12,4,'2017-04-23 00:00:00',7),
	(13,1,'2017-04-24 00:00:00',9),
	(14,2,'2017-04-24 00:00:00',3),
	(15,3,'2017-04-24 00:00:00',6),
	(16,4,'2017-04-24 00:00:00',2);

/*!40000 ALTER TABLE `user_kill` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_skill
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_skill`;

CREATE TABLE `user_skill` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `skill` char(10) NOT NULL DEFAULT '',
  `skill_level` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_skill` WRITE;
/*!40000 ALTER TABLE `user_skill` DISABLE KEYS */;

INSERT INTO `user_skill` (`id`, `user_id`, `skill`, `skill_level`)
VALUES
	(1,1,'紧箍咒',5),
	(2,1,'打坐',4),
	(3,1,'念经',5),
	(4,1,'变化',0),
	(5,2,'变化',5),
	(6,2,'腾云',5),
	(7,2,'浮水',3),
	(8,2,'念经',2),
	(9,2,'请神',5),
	(10,2,'紧箍咒',0),
	(11,3,'变化',4),
	(12,3,'腾云',3),
	(13,3,'浮水',5),
	(14,3,'念经',0),
	(15,3,'紧箍咒',0),
	(16,4,'变化',2),
	(17,4,'腾云',2),
	(18,4,'浮水',4),
	(19,4,'念经',1),
	(20,4,'紧箍咒',0);

/*!40000 ALTER TABLE `user_skill` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `over` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phones` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `salary` decimal(6,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `over`, `overx`, `phones`, `salary`)
VALUES
	(1,'唐僧','转世灵童','佛','13611154325,13322876547,17654356788',54000),
	(2,'孙悟空','齐天大圣','斗战胜佛','13611154326,13322876548,17654356789',30000),
	(3,'猪八戒','天蓬元帅','净坛使者','13611154327,13322876549,17654356780',15000),
	(4,'沙僧','卷帘大将','xx和尚','13611154328',8000);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users_test
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_test`;

CREATE TABLE `users_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(3) DEFAULT NULL,
  `over` varchar(5) DEFAULT NULL,
  `phones` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users_test` WRITE;
/*!40000 ALTER TABLE `users_test` DISABLE KEYS */;

INSERT INTO `users_test` (`id`, `name`, `over`, `phones`)
VALUES
	(1,'唐僧','转世灵童','13611154325,13322876547,17654356788'),
	(2,'孙悟空','齐天大圣','13611154326,13322876548,17654356789'),
	(3,'猪八戒','天蓬元帅','13611154327,13322876549,17654356780'),
	(4,'沙僧','卷帘大将','13611154328'),
	(8,'唐僧','转世灵童','13611154325,13322876547,17654356788'),
	(9,'孙悟空','齐天大圣','13611154326,13322876548,17654356789');

/*!40000 ALTER TABLE `users_test` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usersx
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usersx`;

CREATE TABLE `usersx` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(8) NOT NULL DEFAULT '',
  `over` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usersx` WRITE;
/*!40000 ALTER TABLE `usersx` DISABLE KEYS */;

INSERT INTO `usersx` (`id`, `name`, `over`)
VALUES
	(1,'孙悟空','成佛'),
	(2,'牛魔王','over'),
	(3,'二逼王','over'),
	(4,'傻逼王','over'),
	(5,'xx王','over');

/*!40000 ALTER TABLE `usersx` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
