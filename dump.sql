-- MySQL dump 10.13  Distrib 5.7.11, for osx10.11 (x86_64)
--
-- Host: 127.0.0.1    Database: vk
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `group_photo`
--

DROP TABLE IF EXISTS `group_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_photo` (
  `id` int(50) NOT NULL,
  `group_id` int(50) NOT NULL,
  `photo_id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_photo`
--

LOCK TABLES `group_photo` WRITE;
/*!40000 ALTER TABLE `group_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groups_name` varchar(100) NOT NULL,
  `groups_nickname` varchar(100) NOT NULL,
  `group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL DEFAULT '',
  `picture_url` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL DEFAULT '',
  `photo_type` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=456239455 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (456239032,'','https://pp.vk.me/c836326/v836326213/20c3f/Wcl_AWMbINg.jpg','',''),(456239040,'','https://pp.vk.me/c836127/v836127854/10899/phrVm8RC1IM.jpg','',''),(456239103,'','https://pp.vk.me/c626928/v626928516/3f08a/pnuB0bWViAY.jpg','',''),(456239267,'','https://pp.vk.me/c836524/v836524854/1680e/3IAkXUcdqzo.jpg','',''),(456239268,'','https://pp.vk.me/c836524/v836524854/1681a/ToBpRL9NQ2k.jpg','',''),(456239269,'','https://pp.vk.me/c836524/v836524854/16824/IQWXUIdqXuY.jpg','',''),(456239271,'','https://pp.vk.me/c836524/v836524854/16834/mDyjbiCs7BY.jpg','',''),(456239272,'','https://pp.vk.me/c836524/v836524854/1683f/pVCALWTerd8.jpg','',''),(456239274,'','https://pp.vk.me/c836524/v836524854/16851/SYYob8aph-Q.jpg','',''),(456239275,'','https://pp.vk.me/c836524/v836524854/1685a/seRs_6X2boI.jpg','',''),(456239276,'','https://pp.vk.me/c836524/v836524854/16863/8JlEAWLHDGM.jpg','',''),(456239277,'','https://pp.vk.me/c836524/v836524854/1686c/ACt15J-Sw64.jpg','',''),(456239309,'','https://pp.vk.me/c836525/v836525854/148d6/94U4Nxn07fU.jpg','',''),(456239358,'','https://pp.vk.me/c836525/v836525854/14936/1XmuRQqsqL0.jpg','',''),(456239359,'','https://pp.vk.me/c836525/v836525854/14940/kXIhkpaSkbA.jpg','',''),(456239360,'','https://pp.vk.me/c836525/v836525854/1494a/EwWkWVzVSBg.jpg','',''),(456239382,'','https://pp.vk.me/c836525/v836525854/14964/J1Ar--u4gyI.jpg','',''),(456239444,'','https://pp.vk.me/c836428/v836428213/15eb3/kioH2-ClFOQ.jpg','',''),(456239445,'','https://pp.vk.me/c836428/v836428213/15f32/6hVM-aqkIvM.jpg','',''),(456239447,'','https://pp.vk.me/c836428/v836428213/161b0/c_skl6ke7eQ.jpg','',''),(456239448,'','https://pp.vk.me/c836428/v836428213/16283/61j4MsPpw2s.jpg','',''),(456239449,'','https://pp.vk.me/c836428/v836428213/16315/TTpvn_Cp4cw.jpg','',''),(456239450,'','https://pp.vk.me/c836326/v836326213/202e9/8LABNfl2BhE.jpg','',''),(456239453,'','https://pp.vk.me/c836326/v836326213/20e2c/kj5qxpZ9IrQ.jpg','',''),(456239454,'','https://pp.vk.me/c836326/v836326213/21148/3SZ4IS4Pd44.jpg','','');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `group_id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_photo`
--

DROP TABLE IF EXISTS `user_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_photo` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `photo_id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_photo`
--

LOCK TABLES `user_photo` WRITE;
/*!40000 ALTER TABLE `user_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_photo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-30 19:56:36
