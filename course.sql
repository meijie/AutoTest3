/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.20 : Database - course
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`course` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `course`;

/*Table structure for table `addUserCase` */

DROP TABLE IF EXISTS `addUserCase`;

CREATE TABLE `addUserCase` (
  `id` int(100) NOT NULL COMMENT '用户id',
  `userName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户姓名',
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `sex` int(2) DEFAULT NULL COMMENT '性别',
  `age` int(100) DEFAULT NULL COMMENT '年龄',
  `permission` int(2) DEFAULT NULL COMMENT '权限',
  `isDelete` int(2) DEFAULT NULL COMMENT '是否删除',
  `expected` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '期望值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `addUserCase` */

insert  into `addUserCase`(`id`,`userName`,`password`,`sex`,`age`,`permission`,`isDelete`,`expected`) values (1,'zhao9','123456',0,35,1,0,'true');

/*Table structure for table `getUseInfoCase` */

DROP TABLE IF EXISTS `getUseInfoCase`;

CREATE TABLE `getUseInfoCase` (
  `id` int(100) NOT NULL COMMENT '用例id',
  `userId` int(100) DEFAULT NULL COMMENT '用户id',
  `expected` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '期望值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `getUseInfoCase` */

insert  into `getUseInfoCase`(`id`,`userId`,`expected`) values (1,1,'getUserInfo');

/*Table structure for table `getUserListCase` */

DROP TABLE IF EXISTS `getUserListCase`;

CREATE TABLE `getUserListCase` (
  `id` int(11) NOT NULL COMMENT '用例id',
  `userName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `age` int(100) DEFAULT NULL COMMENT '年龄',
  `sex` int(2) DEFAULT NULL COMMENT '性别',
  `expected` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'getUserList',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `getUserListCase` */

insert  into `getUserListCase`(`id`,`userName`,`age`,`sex`,`expected`) values (1,NULL,NULL,0,'getUserList');

/*Table structure for table `loginCase` */

DROP TABLE IF EXISTS `loginCase`;

CREATE TABLE `loginCase` (
  `id` int(100) NOT NULL COMMENT '用例id',
  `userName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户姓名',
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户密码',
  `expected` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '期望值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `loginCase` */

insert  into `loginCase`(`id`,`userName`,`password`,`expected`) values (1,'zhangsan','123456','true'),(2,'zhangsanerror','123','false');

/*Table structure for table `updateUserInfoCase` */

DROP TABLE IF EXISTS `updateUserInfoCase`;

CREATE TABLE `updateUserInfoCase` (
  `id` int(100) NOT NULL COMMENT '用户id',
  `userId` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `userName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户姓名',
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `sex` int(2) DEFAULT NULL COMMENT '性别',
  `age` int(100) DEFAULT NULL COMMENT '年龄',
  `permission` int(2) DEFAULT NULL COMMENT '权限',
  `isDelete` int(2) DEFAULT NULL COMMENT '是否删除',
  `expected` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '期望值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `updateUserInfoCase` */

insert  into `updateUserInfoCase`(`id`,`userId`,`userName`,`password`,`sex`,`age`,`permission`,`isDelete`,`expected`) values (1,'2','hahahaha',NULL,NULL,NULL,NULL,NULL,'getUpdateUserInfo'),(2,'8',NULL,NULL,NULL,NULL,NULL,1,'getUpdateUserInfo');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `userName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户姓名',
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户密码',
  `age` int(100) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `permission` int(2) DEFAULT NULL COMMENT '权限',
  `isDelete` int(2) DEFAULT NULL COMMENT '是否删除',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`password`,`age`,`sex`,`permission`,`isDelete`) values (1,'zhangsan','123456',20,'0',0,0),(2,'hahahaha','123456',25,'1',1,0),(3,'wangwu','123456',30,'0',1,0),(4,'zhaoliu','123456',40,'1',1,0),(5,'zhang1','123',20,'0',0,0),(6,'zhao2','wqer',30,'1',1,0),(7,'li3','sdffa',50,'1',0,0),(8,'wu5','qazedx',40,'1',0,1),(9,'zhao9','123456',35,'0',1,0),(10,'zhao9','123456',35,'0',1,0),(11,'zhao9','123456',35,'0',1,0);

/*Table structure for table `user2` */

DROP TABLE IF EXISTS `user2`;

CREATE TABLE `user2` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `age` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user2` */

insert  into `user2`(`id`,`name`,`sex`,`age`) values (1,'zhangsan','man',10),(2,'lisi','woman',8),(3,'zhaoliu','man',6),(4,'wangwu','woman',4),(5,'meimei','man',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
