/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.1.61-log : Database - mixi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `order_food` */

DROP TABLE IF EXISTS `order_food`;

CREATE TABLE `order_food` (
  `nid` int(100) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(30) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `food_name` varchar(30) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `last_order_time` datetime DEFAULT NULL,
  `uid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6035 DEFAULT CHARSET=utf8;

/*Data for the table `order_food` */



/*Table structure for table `order_priv` */

DROP TABLE IF EXISTS `order_priv`;

CREATE TABLE `order_priv` (
  `order_date` date DEFAULT NULL,
  `last_order_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_priv` */



/*Table structure for table `order_rice` */

DROP TABLE IF EXISTS `order_rice`;

CREATE TABLE `order_rice` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(30) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `d_date` date DEFAULT NULL,
  `d_create` datetime DEFAULT NULL,
  `ts` tinyint(1) DEFAULT '0',
  `food_name` varchar(1000) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `dining_id` int(11) DEFAULT NULL,
  `dining_name` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `is_pay` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17036 DEFAULT CHARSET=utf8;

/*Data for the table `order_rice` */



/*Table structure for table `order_status` */

DROP TABLE IF EXISTS `order_status`;

CREATE TABLE `order_status` (
  `d_date` date NOT NULL,
  `b_close` tinyint(1) DEFAULT '0',
  `ts` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`d_date`,`ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_status` */



/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `user_name` varchar(30) DEFAULT NULL,
  `userId` varchar(30) DEFAULT NULL,
  `nick_name` varchar(30) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `user_pwd` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_info` */



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
