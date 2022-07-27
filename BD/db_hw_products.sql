-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_hw
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `code` varchar(15) COLLATE utf32_romanian_ci NOT NULL,
  `name` varchar(70) COLLATE utf32_romanian_ci NOT NULL,
  `description` text COLLATE utf32_romanian_ci,
  `stock` smallint NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('12454TY3','Manusa de box pentru copii',NULL,10780,40.50),('1FGXY3','Piscina Family',NULL,2006,300.00),('58967543','Pepsi Max 300 ml','Bucura-te de acelasi gust Pepsi, dar fara zahar',10000,2.79),('89XDTY','Masina de spalat SAMSUNG GT4778','Masina de clasa A+',8995,1399.99),('HGTHY677','Plush Aggretsuko',NULL,150,89.00),('HYJJUJU','Figurina Batman',NULL,200,140.00),('U8933TO','Ciocolata Milka-Cow Spots',NULL,10000,5.56),('UTTHTO','Paleta de machiaj ADA-True beauty','Renumita firma face creionul folosit de toate femeile din Romania scoate a doua paleta de machiaj',1500,30.00),('UTTHTY','Paleta de machiaj ADA','Renumita firma face creionul folosit de toate femeile din Romania scoate prima paleta de machiaj',1900,25.78),('YETTI43','Cosplay Zuko-Avatar','Contine: Hainele, peruca, lentile de contact',100,250.89);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27 19:29:13
