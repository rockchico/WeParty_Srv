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

-- Dump completed on 2016-05-31 17:22:00
