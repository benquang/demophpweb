-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: toys
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `toys`
--

DROP TABLE IF EXISTS `toys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toys` (
  `toy_id` int NOT NULL,
  `toy_name` varchar(200) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `descriptions` text NOT NULL,
  `price` float NOT NULL,
  `images` varchar(20) DEFAULT NULL,
  `stock` int NOT NULL,
  `is_available` tinyint(1) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`toy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toys`
--

LOCK TABLES `toys` WRITE;
/*!40000 ALTER TABLE `toys` DISABLE KEYS */;
INSERT INTO `toys` VALUES (101,'Transformers Studio Series 86-07','Action Figures','now you can have it',10.5,'20280332_fpx.jpg',0,1,'2022-10-04 15:12:54','2022-10-04 15:12:54'),(102,'Marvel Spider-Man Bend','Action Figures','try it now',5.5,'18989244_fpx.jpg',5,1,'2022-10-04 15:17:13','2022-10-04 15:17:13'),(103,'Marvel Legends Series J. Jonah Jameson','Action Figures','non',50.7,'20521472_fpx.jpg',0,1,'2022-10-04 16:48:58','2022-10-04 16:48:58'),(104,'Marvel Spider-Man Flying','Vehicles','n',100.5,NULL,0,1,'2022-10-09 11:54:55','2022-10-09 11:54:55'),(105,'Con quay','Dan Gian','n',200,NULL,0,1,'2022-10-09 11:54:55','2022-10-09 11:54:55'),(106,'Con Lan','Dan Gian','n',150,NULL,0,1,'2022-10-09 11:57:52','2022-10-09 11:57:52'),(107,'Den Ong Sao','Dan Gian','n',190.5,NULL,0,1,'2022-10-09 11:57:52','2022-10-09 11:57:52'),(108,'Bong bong nuoc','Dan Gian','n',1,NULL,0,1,'2022-10-09 11:57:52','2022-10-09 11:57:52'),(109,'Den Keo Quan','Dan Gian','n',90,NULL,0,1,'2022-10-09 11:57:52','2022-10-09 11:57:52'),(110,'To He','Dan Gian','n',115.5,NULL,0,1,'2022-10-09 11:57:52','2022-10-09 11:57:52'),(111,'Dieu','Dan Gian','n',30,NULL,0,1,'2022-10-09 11:57:52','2022-10-09 11:57:52');
/*!40000 ALTER TABLE `toys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-10 21:05:32
