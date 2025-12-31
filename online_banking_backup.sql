-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: online_banking
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

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
-- Table structure for table `ACCOUNT`
--

DROP TABLE IF EXISTS `ACCOUNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACCOUNT` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `F_NAME` varchar(20) DEFAULT NULL,
  `L_NAME` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(60) DEFAULT NULL,
  `CITY` varchar(15) DEFAULT NULL,
  `BRANCH` varchar(15) DEFAULT NULL,
  `ZIP` varchar(8) DEFAULT NULL,
  `PHONE` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `ACCOUNT_TYPE` varchar(15) DEFAULT NULL,
  `REG_DATE` varchar(15) DEFAULT NULL,
  `DOB` varchar(15) DEFAULT NULL,
  `NIC` varchar(20) DEFAULT NULL,
  `BALANCE` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCOUNT`
--

LOCK TABLES `ACCOUNT` WRITE;
/*!40000 ALTER TABLE `ACCOUNT` DISABLE KEYS */;
INSERT INTO `ACCOUNT` VALUES (4,'Jineth','Hettiarachchi','808/1,Sinharamulla','Kelaniya','Kelaniya','11600','0774383665','jinethc808@yahoo.com','Savings','2025-06-24','1982-10-30','123123123V',1002.01),(5,'Mala','Hettiarachchi','808/2,Sinharamulla','Kelaniya','Kelaniya','11601','0774383665','jinethc808@yahoo.com','Savings','2025-06-24','1958-05-15','583042671V',2000.00);
/*!40000 ALTER TABLE `ACCOUNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AMOUNT`
--

DROP TABLE IF EXISTS `AMOUNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AMOUNT` (
  `ID` varchar(10) DEFAULT NULL,
  `AMOUNT` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AMOUNT`
--

LOCK TABLES `AMOUNT` WRITE;
/*!40000 ALTER TABLE `AMOUNT` DISABLE KEYS */;
INSERT INTO `AMOUNT` VALUES ('SLKa001235',80000),('SLKa001236',0),('SLKa001234',370000);
/*!40000 ALTER TABLE `AMOUNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPOSIT`
--

DROP TABLE IF EXISTS `DEPOSIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPOSIT` (
  `ID` varchar(10) DEFAULT NULL,
  `YEAR` int DEFAULT NULL,
  `INTEREST` int DEFAULT NULL,
  `AMOUNT` int DEFAULT NULL,
  `DEPOSIT_DATE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPOSIT`
--

LOCK TABLES `DEPOSIT` WRITE;
/*!40000 ALTER TABLE `DEPOSIT` DISABLE KEYS */;
INSERT INTO `DEPOSIT` VALUES ('SLKa001234',1,8,100000,'2017/04/20 04:19:56');
/*!40000 ALTER TABLE `DEPOSIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOAN`
--

DROP TABLE IF EXISTS `LOAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOAN` (
  `ID` varchar(10) DEFAULT NULL,
  `AMOUNT` int DEFAULT NULL,
  `STATUS` varchar(8) DEFAULT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(60) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOAN`
--

LOCK TABLES `LOAN` WRITE;
/*!40000 ALTER TABLE `LOAN` DISABLE KEYS */;
INSERT INTO `LOAN` VALUES ('SLKa001235',200000,'pending','Rajith','Fernando','Kandy Road, Kurunegala','rajith.fernando@gmail.com'),('SLKa001234',100000,'pending','Nimal','Perera','Nugegoda, Colombo','nimal.perera@gmail.com'),('SLKa001234',20000,'success','Nimal','Perera','Nugegoda, Colombo','nimal.perera@gmail.com');
/*!40000 ALTER TABLE `LOAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SAVINGS_ACCOUNT`
--

DROP TABLE IF EXISTS `SAVINGS_ACCOUNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SAVINGS_ACCOUNT` (
  `ACCOUNT_NUMBER` int NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` int NOT NULL,
  `OPENING_DATE` date NOT NULL,
  `BALANCE` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ACCOUNT_NUMBER`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  CONSTRAINT `SAVINGS_ACCOUNT_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `ACCOUNT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SAVINGS_ACCOUNT`
--

LOCK TABLES `SAVINGS_ACCOUNT` WRITE;
/*!40000 ALTER TABLE `SAVINGS_ACCOUNT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SAVINGS_ACCOUNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANSACTIONS`
--

DROP TABLE IF EXISTS `TRANSACTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANSACTIONS` (
  `TRANSACTION_ID` int NOT NULL AUTO_INCREMENT,
  `ACCOUNT_ID` int DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL,
  `TRANSACTION_DATE` date DEFAULT NULL,
  `CUSTOMER_ID` varchar(50) DEFAULT NULL,
  `BALANCE_AFTER` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`),
  KEY `ACCOUNT_ID` (`ACCOUNT_ID`),
  CONSTRAINT `TRANSACTIONS_ibfk_1` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `ACCOUNT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANSACTIONS`
--

LOCK TABLES `TRANSACTIONS` WRITE;
/*!40000 ALTER TABLE `TRANSACTIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRANSACTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testuser','a8b64babd5b4a03462bbd404d6f14ac041b7f143b3d7c6968e512c31600e6f99','2025-06-23 04:36:51'),(2,'testadmin','82a79f11b4acb52a642ef7e339dfce4aa92ff65ed2e7ab702d798dbe10eca0b8','2025-06-23 13:20:24');
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

-- Dump completed on 2025-06-24  2:05:53
