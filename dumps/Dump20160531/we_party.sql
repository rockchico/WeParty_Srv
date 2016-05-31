-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: we_party
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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'The title opa2','This is the article body.','2016-05-06 19:04:19','2016-05-06 23:21:23'),(2,'A title once again','And the article body follows.','2016-05-06 19:04:19',NULL),(3,'Title strikes back','This is really exciting! Not.','2016-05-06 19:04:19',NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'festa','casa do fábio','0728a200630cec4b33e33e20646bc54a'),(2,'José da Silva','jose@gmail.com','0728a200630cec4b33e33e20646bc54a'),(3,'José da Silva','jose@gmail.com','0728a200630cec4b33e33e20646bc54a'),(4,'João Da Rocha ','Joao@gmail.com','aa1bf4646de67fd9086cf6c79007026c'),(5,'João Da Rocha ','Joao@gmail.com','aa1bf4646de67fd9086cf6c79007026c'),(6,'Mariana Pimenta ','Mariana@gmail.com','51cdaf9d03056fa316a7af90dfb1866b'),(7,'Zé Mane ','Ze@gmail.com','b120e5d603a9afcba83814a2a746e4a6'),(8,'John Kennedy ','John@teste.com','984f9e80e7eb5bf1eed229d0aa35d806'),(9,'Mario Bros ','Mario@fmail.com','e10adc3949ba59abbe56e057f20f883e'),(10,NULL,'jose@gmail.com','0728a200630cec4b33e33e20646bc54a'),(11,'Teste de ALmeida','joseww@gmail.com','0728a200630cec4b33e33e20646bc54a'),(12,'Teste de ALmeida','jose2@gmail.com','aa1bf4646de67fd9086cf6c79007026c'),(13,'Teste de ALmeida','jose3@gmail.com','aa1bf4646de67fd9086cf6c79007026c'),(14,'Francisco Schwertner','francisco schwertner','984f9e80e7eb5bf1eed229d0aa35d806'),(15,'Francisco Schwertner','rockchico@gmail.com','0728a200630cec4b33e33e20646bc54a'),(16,'Francisco','rockchico2@gmail.com','08a4415e9d594ff960030b921d42b91e'),(17,'Francisco Schwertner','rockchico3@gmail.com','aa1bf4646de67fd9086cf6c79007026c');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-31 17:31:32
