CREATE DATABASE  IF NOT EXISTS `db_hw` /*!40100 DEFAULT CHARACTER SET utf32 COLLATE utf32_romanian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_hw`;
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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf32 COLLATE utf32_romanian_ci DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf32 COLLATE utf32_romanian_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf32 COLLATE utf32_romanian_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf32 COLLATE utf32_romanian_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf32 COLLATE utf32_romanian_ci DEFAULT NULL,
  `postalCode` varchar(50) CHARACTER SET utf32 COLLATE utf32_romanian_ci DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf32 COLLATE utf32_romanian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'k.marin','Marin','Karin','0711111111','Str.Pansel Nr.2','Tg.Ocna',NULL,'Romania'),(2,'alex9000','Marin','Alexandru','0711115111','Str.Livia Bl.D2','Urziceni','800923','Romania'),(3,'popescu.andrei','Popescu','Andrei','0711111112','Str.Anais Nr.15','Marasesti','611112','Romania'),(4,'iris.mihai','Mihai','Iris-Elena','07221155111','Str.Arborilor Nr.4 Bl.A5, Et.7','Bucuresti',NULL,'Romania'),(5,'oct.nov.dec','Grigore','Angelo','0777777777','Str.Mihai Eminescu Nr.10','Urziceni','899090','Romania'),(6,'alin.mihai','Vasilescu','Alin','0711888111','Str.Pansel Nr.2','Tg.Ocna',NULL,'Romania'),(7,'sabinaaa','Mihai','Sabina','0716751890','Str.Alexandrion Bl.A6 Sc.F Ap.18','Adjud',NULL,'Romania'),(8,'k.marin2','Marin','Karin','0733333331','Str.Arborelui Nr.7','Ploiesti','811333','Romania'),(9,'appost900','Marin','Karin','0745611111','Aleea Livezilor Nr.2','Bucuresti','700999','Romania'),(10,'mihail.dutzu','Mihail','Daniel','0711155555','Aleea Livezilor Nr.2','Bucuresti',NULL,'Romania'),(11,'grigAlex','Grozavu','Grigore-Alexandru','07211111112','Str.Spitalului 7, Bl.A10, Sc.I, Ap.28','Bucuresti',NULL,'Romania');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `product_code` varchar(15) COLLATE utf32_romanian_ci NOT NULL,
  `order_id` int NOT NULL,
  `quantity` int DEFAULT '1',
  `priceEach` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `orderdetails_ibfk_1_idx` (`order_id`),
  KEY `orderdetails_ibfk_2` (`product_code`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`ID`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_code`) REFERENCES `products` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf32 COLLATE=utf32_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,'89XDTY',3,1,1399.99),(17,'YETTI43',2,1,250.89),(18,'89XDTY',3,1,1399.99);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `order_date` date DEFAULT NULL,
  `shipped_date` date DEFAULT NULL,
  `status` varchar(15) COLLATE utf32_romanian_ci DEFAULT 'In Progress',
  `comments` text COLLATE utf32_romanian_ci,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `orders_ibfk_1` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf32 COLLATE=utf32_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2022-06-17','2022-06-21','Finished',NULL,1),(2,'2021-06-17','2021-09-21','Finished','Fragil',10),(3,'2022-03-22','2022-07-24','Finished','Livrare la domiciliu',10),(4,'2022-07-22',NULL,'Not shipped','Adresa de livrare nu coincide',9),(5,'2022-04-14','2022-07-24','In progress','Adresa de livrare nu coincide',5);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf32 COLLATE=utf32_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,10,'2021-06-17',250.89),(3,10,'2022-03-22',1699.99),(4,1,'2021-06-21',55.78);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2022-07-27 19:27:15
