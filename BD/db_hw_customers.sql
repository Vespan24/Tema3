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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27 19:29:13
