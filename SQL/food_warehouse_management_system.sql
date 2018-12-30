-- MySQL dump 10.13  Distrib 5.5.47, for Win32 (x64)
--
-- Host: 127.0.0.1    Database: food_warehouse_management_system
-- ------------------------------------------------------
-- Server version	5.5.47

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(40) NOT NULL COMMENT '管理员用户名',
  `password` varchar(40) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `username`, `password`) VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `in_storage_merchandise`
--

DROP TABLE IF EXISTS `in_storage_merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `in_storage_merchandise` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `name` varchar(40) NOT NULL COMMENT '商品名称',
  `provenance` varchar(40) DEFAULT NULL COMMENT '商品产地',
  `units` varchar(40) DEFAULT NULL COMMENT '商品计量单位',
  `univalent` int(11) DEFAULT NULL COMMENT '商品单价',
  `quantity` int(11) DEFAULT NULL COMMENT '商品数量',
  `date` date NOT NULL COMMENT '商品日期',
  `time` time NOT NULL COMMENT '商品时间',
  `shelf_life` int(11) NOT NULL COMMENT '商品保质期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `in_storage_merchandise`
--

LOCK TABLES `in_storage_merchandise` WRITE;
/*!40000 ALTER TABLE `in_storage_merchandise` DISABLE KEYS */;
INSERT INTO `in_storage_merchandise` (`id`, `name`, `provenance`, `units`, `univalent`, `quantity`, `date`, `time`, `shelf_life`) VALUES (1,'旺旺雪饼','中国大陆','斤',26,100,'2018-12-30','17:59:55',270),(2,'士力架巧克力','北京','斤',30,500,'2018-12-30','00:00:00',300),(3,'德运牛奶','澳大利亚','盒',100,20,'2018-12-24','00:00:00',365),(4,'蜜柚','福建漳州','个',10,100,'2018-12-31','18:05:50',7);
/*!40000 ALTER TABLE `in_storage_merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `out_storage_merchandise`
--

DROP TABLE IF EXISTS `out_storage_merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `out_storage_merchandise` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `name` varchar(40) NOT NULL COMMENT '商品名称',
  `provenance` varchar(40) DEFAULT NULL COMMENT '商品产地',
  `units` varchar(40) DEFAULT NULL COMMENT '商品计量单位',
  `univalent` int(11) DEFAULT NULL COMMENT '商品单价',
  `quantity` int(11) DEFAULT NULL COMMENT '商品数量',
  `date` date NOT NULL COMMENT '商品日期',
  `time` time NOT NULL COMMENT '商品时间',
  `shelf_life` int(11) NOT NULL COMMENT '商品保质期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `out_storage_merchandise`
--

LOCK TABLES `out_storage_merchandise` WRITE;
/*!40000 ALTER TABLE `out_storage_merchandise` DISABLE KEYS */;
INSERT INTO `out_storage_merchandise` (`id`, `name`, `provenance`, `units`, `univalent`, `quantity`, `date`, `time`, `shelf_life`) VALUES (1,'德运牛奶','澳大利亚','盒',100,20,'2018-12-28','00:00:00',365);
/*!40000 ALTER TABLE `out_storage_merchandise` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-30 18:20:42