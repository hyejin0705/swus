CREATE DATABASE  IF NOT EXISTS `swusdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `swusdb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: swusdb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `member_team`
--

DROP TABLE IF EXISTS `member_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_team` (
  `member_id` int NOT NULL,
  `team_id` int NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `is_leader` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_id`,`team_id`),
  KEY `FKfly863tmgmm8wnj0u1sqgqu5u` (`team_id`),
  CONSTRAINT `FKfly863tmgmm8wnj0u1sqgqu5u` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`),
  CONSTRAINT `FKgqbjnbjtn5tycg5ih6r80wmr1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_team`
--

LOCK TABLES `member_team` WRITE;
/*!40000 ALTER TABLE `member_team` DISABLE KEYS */;
INSERT INTO `member_team` VALUES (1,1,'2023-02-16 06:12:45.975853','Y'),(1,5,'2023-02-16 06:57:25.119369','Y'),(2,1,'2023-02-16 06:39:28.268154','N'),(2,2,'2023-02-16 06:33:01.396016','N'),(2,3,'2023-02-16 07:01:20.094152','N'),(2,5,'2023-02-16 06:58:25.404925','N'),(3,1,'2023-02-16 06:39:13.081423','N'),(3,3,'2023-02-16 07:00:56.058855','N'),(3,5,'2023-02-16 06:58:15.567375','N'),(4,1,'2023-02-16 06:39:40.033221','N'),(4,2,'2023-02-16 06:32:48.361315','Y'),(4,3,'2023-02-16 07:00:22.981064','Y'),(4,5,'2023-02-16 06:58:40.140022','N'),(5,1,'2023-02-16 06:32:05.397516','N'),(5,2,'2023-02-16 06:34:24.749238','N'),(5,5,'2023-02-16 06:58:47.074432','N'),(6,1,'2023-02-16 08:30:55.808918','N'),(6,4,'2023-02-16 06:40:43.273930','Y'),(6,5,'2023-02-16 06:58:33.289713','N'),(6,7,'2023-02-16 21:50:56.418333','Y'),(16,2,'2023-02-16 07:09:10.817421','N'),(164,6,'2023-02-16 13:48:12.229974','Y'),(166,6,'2023-02-16 13:49:00.336051','N');
/*!40000 ALTER TABLE `member_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17  9:03:36