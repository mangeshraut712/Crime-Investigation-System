-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: crimeinvestigations
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases` (
  `caseId` int NOT NULL AUTO_INCREMENT,
  `firId` int NOT NULL,
  `dateEnter` varchar(11) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `objects` varchar(255) DEFAULT NULL,
  `typeOfCrime` varchar(255) DEFAULT NULL,
  `details` varchar(1000) NOT NULL,
  PRIMARY KEY (`caseId`),
  KEY `firId` (`firId`),
  CONSTRAINT `cases_ibfk_1` FOREIGN KEY (`firId`) REFERENCES `fir` (`firId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criminal`
--

DROP TABLE IF EXISTS `criminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `criminal` (
  `criminalId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `mstatus` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `dateArrest` varchar(255) DEFAULT NULL,
  `dateRelease` varchar(255) DEFAULT 'NILL',
  `dateBirth` varchar(255) DEFAULT NULL,
  `bplace` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `act` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`criminalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criminal`
--

LOCK TABLES `criminal` WRITE;
/*!40000 ALTER TABLE `criminal` DISABLE KEYS */;
/*!40000 ALTER TABLE `criminal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fir`
--

DROP TABLE IF EXISTS `fir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fir` (
  `firId` int NOT NULL AUTO_INCREMENT,
  `policeStationName` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `act` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dateAdded` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `details` varchar(1000) NOT NULL,
  PRIMARY KEY (`firId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fir`
--

LOCK TABLES `fir` WRITE;
/*!40000 ALTER TABLE `fir` DISABLE KEYS */;
/*!40000 ALTER TABLE `fir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_officer`
--

DROP TABLE IF EXISTS `police_officer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_officer` (
  `police_officerId` int NOT NULL AUTO_INCREMENT,
  `police_stationId` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`police_officerId`),
  KEY `police_stationId` (`police_stationId`),
  CONSTRAINT `police_officer_ibfk_1` FOREIGN KEY (`police_stationId`) REFERENCES `police_station` (`police_stationId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_officer`
--

LOCK TABLES `police_officer` WRITE;
/*!40000 ALTER TABLE `police_officer` DISABLE KEYS */;
INSERT INTO `police_officer` VALUES (2,1,'Ashok Patil','DCP','22442854','Pune','ashok','ashok@123');
/*!40000 ALTER TABLE `police_officer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_station`
--

DROP TABLE IF EXISTS `police_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_station` (
  `police_stationId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`police_stationId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_station`
--

LOCK TABLES `police_station` WRITE;
/*!40000 ALTER TABLE `police_station` DISABLE KEYS */;
INSERT INTO `police_station` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `police_station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 10:57:59
