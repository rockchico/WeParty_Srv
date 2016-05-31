CREATE DATABASE  IF NOT EXISTS `we_party` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `we_party`;
-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: we_party
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;
INSERT INTO `parties` VALUES (1,'',NULL,'2016-05-12 23:52:26','2016-05-12 23:52:26',0),(2,'',NULL,'2016-05-12 23:56:21','2016-05-12 23:56:21',0),(3,'',NULL,'2016-05-12 23:57:48','2016-05-12 23:57:48',0),(4,'opa','epa','2016-05-12 23:58:49','2016-05-12 23:58:49',0),(5,'Teste ','Casa ','2016-05-13 00:01:29','2016-05-13 00:01:29',0),(6,'Festa Loka ','No AP ','2016-05-13 00:06:05','2016-05-13 00:06:05',0),(7,'Festa Loka ','No AP 2','2016-05-13 00:44:43','2016-05-13 00:44:43',0),(8,'Teste 2','Em casa ','2016-05-13 00:52:17','2016-05-13 00:52:17',0),(9,'Teste 3','Bla bla ','2016-05-13 00:54:13','2016-05-13 00:54:13',0),(10,'Teste 6','Casa ','2016-05-13 01:18:31','2016-05-13 01:18:31',1),(11,'opa','epa','2016-05-13 22:15:21','2016-05-13 22:15:21',1),(12,'festa','casa do fábio','2016-05-13 22:52:40','2016-05-13 22:52:40',1),(13,'','',NULL,NULL,0),(14,'','',NULL,NULL,0),(15,'Festa Tri ','Casa do José ',NULL,NULL,17);
/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-31 17:22:00
