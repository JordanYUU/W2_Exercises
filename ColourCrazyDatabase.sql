CREATE DATABASE  IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.39

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
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Number` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `MemberStatus` tinyint(1) NOT NULL,
  `MemberID` int DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `LoyalCustomers` (`MemberID`),
  CONSTRAINT `LoyalCustomers` FOREIGN KEY (`MemberID`) REFERENCES `members` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2,'James Bond','555-333-0007','jamesbond@email.com',1,1),(3,'Jenny Bond','555-333-0009','jenbond@email.com',0,NULL),(4,'Goopoo Loopoo','242-142-5917','Gloopie@hasbro.com',1,2),(5,'TJ Kreen','125-125-6126','KreenMachine@gmail.com',1,3),(6,'Stoopu Doopu','528-528-157','StDoopu@hasbro.com',0,NULL),(7,'Goopie','162-159-1952','menacetosociety@hotmail.com',0,NULL),(8,'Mr Denmark','105-152-0840','MDMK@outlook.com',0,NULL),(9,'Glub Tubbis Wepple','808-428-5425','iAmFren@goobermail.com',0,NULL),(10,'Gub Gub','1800-FREN','GubGub@thunderbird.com',1,4),(11,'EREN','877-1500','eREN@yahoo.com',1,5),(12,'Hack Jarlow','907-142-8910','RealHackJarlow@realpeople.com',0,NULL),(13,'GuyMan','222-2222','GuyMan@yeardown.org',1,6);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `MemberID` int NOT NULL AUTO_INCREMENT,
  `MemberName` varchar(25) DEFAULT NULL,
  `MemberLV` enum('Bronze','Silver','Gold') DEFAULT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'James Bond','Bronze'),(2,'Goopoo Loopoo','Bronze'),(3,'TJ Kreen','Gold'),(4,'Gub Gub','Silver'),(5,'EREN','Bronze'),(6,'GuyMan','Gold');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `MenuID` int NOT NULL AUTO_INCREMENT,
  `ItemName` enum('Blue Burger','Red Ramen','Green Gyro','Yellow Yogurt','Purple Platter','Dog Bone','Tree Bark') DEFAULT NULL,
  `ItemPrice` decimal(5,2) DEFAULT NULL,
  `ItemDesc` text,
  PRIMARY KEY (`MenuID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Blue Burger',24.99,'Burger but blue'),(2,'Red Ramen',17.99,'Ramen but red'),(3,'Green Gyro',19.49,'Gyro but green'),(4,'Yellow Yogurt',10.49,'Yogurt but yellow'),(5,'Purple Platter',59.99,'Every item but purple. Comes with a complimentary, non-edible platter'),(6,'Dog Bone',0.99,'Bone for a bark... I mean dog'),(7,'Tree Bark',777.77,'The bark of a tree');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderName` varchar(25) NOT NULL,
  `OrderType` varchar(25) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `OrderCost` decimal(6,2) DEFAULT NULL,
  `OrderItems` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Goopie','DineIn','2024-09-24',777.77,'Tree Bark'),(2,'TJ Kreen','CarryOut','2024-09-27',20.98,'Yogurt x2'),(3,'Gub Gub','Reservation','2024-10-11',98.01,'Dog Bone x99'),(4,'GuyMan','Delivery','2024-09-09',84.48,'Plurple Platter, Blue Burger'),(5,'Mr Denmark','Reservation','2024-10-22',19.49,'Green Gyro'),(6,'Glub Tubbis Wepple','DineIn','2024-10-02',10.49,'Yellow Yogurt'),(7,'Goopoo Loopoo','CarryOut','2024-10-17',17.99,'Red Ramen'),(8,'EREN','Reservation','2024-09-19',59.99,'Purple Platter'),(9,'Stoopu Doopu','Delivery','2024-09-01',0.99,'Dog Bone'),(10,'Hack Jarlow','Reservatuib','2024-10-31',777.77,'Tree Bark');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `ServiceID` int NOT NULL AUTO_INCREMENT,
  `DineIn` tinyint(1) DEFAULT NULL,
  `CarryOut` tinyint(1) DEFAULT NULL,
  `Delivery` tinyint(1) DEFAULT NULL,
  `Reservation` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'restaurant'
--

--
-- Dumping routines for database 'restaurant'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 19:19:56
