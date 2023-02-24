CREATE DATABASE  IF NOT EXISTS `credits` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `credits`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: credits
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `kod_сlients` int NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `vid_sobstvenosti` tinytext NOT NULL,
  `adress` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `kontact_face` tinytext NOT NULL,
  PRIMARY KEY (`kod_сlients`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Семенов А.В','ЧП\"Вано\"','Сахарова д12. кв11','06863958','Димидов Р.К'),(2,'Димидов С.С','ООО\"Вамин\"','Арбузова д59. кв2','09862156','Бенедикт П.Р'),(3,'Фомичев Д.А','ЗАО \"ВТБ\"','Пушкина д34. кв134','06689751','Герасимова Ю.П'),(4,'Файзулина К.Р','ООО \"Агро\"','Шмидта д65. кв 44','09876235','Владимирова С.К'),(5,'Иванов А.Г','ЧП \"Кедр\"','Дарвина д87. кв56','09952315','Никитин Д.М'),(6,'Петров К.И','ОАО \"ТНПК\"','Карбышева д67. кв89','06898712','Кулагин Е.Р'),(7,'Фесенко В.К','ОАО \"Газ\"','Садовая д23. кв74','09526487','Тимофеев В.Ф');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit` (
  `kod_credit` int NOT NULL AUTO_INCREMENT,
  `sum_credit` double(10,2) NOT NULL,
  `data_vudachi` date NOT NULL,
  `type_dogovor` tinytext NOT NULL,
  `Type_credits_kod_vida` int NOT NULL,
  `Client_kod_сlients` int NOT NULL,
  PRIMARY KEY (`kod_credit`,`Type_credits_kod_vida`),
  KEY `fk_Credit_Type_credits1_idx` (`Type_credits_kod_vida`),
  KEY `fk_Credit_Client1_idx` (`Client_kod_сlients`),
  CONSTRAINT `fk_Credit_Client1` FOREIGN KEY (`Client_kod_сlients`) REFERENCES `client` (`kod_сlients`),
  CONSTRAINT `fk_Credit_Type_credits1` FOREIGN KEY (`Type_credits_kod_vida`) REFERENCES `type_credits` (`kod_vida`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit`
--

LOCK TABLES `credit` WRITE;
/*!40000 ALTER TABLE `credit` DISABLE KEYS */;
INSERT INTO `credit` VALUES (1,50000.00,'2020-02-12','Форма 3',3,3),(2,25000.00,'2019-10-11','Форма 1',1,2),(3,100000.00,'2019-11-28','Форма 2',2,1),(4,350000.00,'2020-07-29','Форма 3',4,4),(5,75000.00,'2020-03-21','Форма 3',3,6),(6,150000.00,'2019-03-17','Форма 2',2,7),(7,25000.00,'2020-08-29','Форма 1',1,5);
/*!40000 ALTER TABLE `credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `kod_strahovki` int NOT NULL AUTO_INCREMENT,
  `strahovaya_firma` varchar(45) NOT NULL,
  `kod_clients` int NOT NULL,
  `sum_strahovki` double(10,2) NOT NULL,
  `Stuff_kod_staff` int NOT NULL,
  `Credit_kod_credit` int NOT NULL,
  `Credit_Type_credits_kod_vida` int NOT NULL,
  PRIMARY KEY (`kod_strahovki`),
  KEY `fk_Insurance_Stuff1_idx` (`Stuff_kod_staff`),
  KEY `fk_Insurance_Credit1_idx` (`Credit_kod_credit`,`Credit_Type_credits_kod_vida`),
  CONSTRAINT `fk_Insurance_Credit1` FOREIGN KEY (`Credit_kod_credit`, `Credit_Type_credits_kod_vida`) REFERENCES `credit` (`kod_credit`, `Type_credits_kod_vida`),
  CONSTRAINT `fk_Insurance_Stuff1` FOREIGN KEY (`Stuff_kod_staff`) REFERENCES `stuff` (`kod_stuff`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'СК\"ВУСУ\"',1,75000.00,5,3,2),(2,'СК\"УНИКО\"',3,20000.00,3,1,3),(3,'СК\"КРАИНА\"',6,30000.00,6,5,3),(4,'\"УКР СТРАХОВАНИЕ\"',7,100000.00,7,6,2);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repayment`
--

DROP TABLE IF EXISTS `repayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repayment` (
  `kod_pogash` int NOT NULL AUTO_INCREMENT,
  `data_pogash` date NOT NULL,
  `sum_pogash` double(10,2) NOT NULL,
  `Credit_kod_credit` int NOT NULL,
  `Credit_Type_credits_kod_vida` int NOT NULL,
  PRIMARY KEY (`kod_pogash`),
  KEY `fk_Repayment_Credit1_idx` (`Credit_kod_credit`,`Credit_Type_credits_kod_vida`),
  CONSTRAINT `fk_Repayment_Credit1` FOREIGN KEY (`Credit_kod_credit`, `Credit_Type_credits_kod_vida`) REFERENCES `credit` (`kod_credit`, `Type_credits_kod_vida`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repayment`
--

LOCK TABLES `repayment` WRITE;
/*!40000 ALTER TABLE `repayment` DISABLE KEYS */;
INSERT INTO `repayment` VALUES (1,'2020-05-11',10000.00,1,3),(2,'2020-02-22',25000.00,3,2),(3,'2020-09-27',20000.00,4,4),(4,'2020-06-18',10000.00,5,3),(5,'2020-01-14',5000.00,2,1),(6,'2020-12-25',7000.00,7,1),(7,'2020-01-10',45000.00,6,2);
/*!40000 ALTER TABLE `repayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff`
--

DROP TABLE IF EXISTS `stuff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stuff` (
  `kod_stuff` int NOT NULL AUTO_INCREMENT,
  `name_stuff` tinytext NOT NULL,
  `stuff_post` tinytext NOT NULL,
  `Credit_kod_credit` int NOT NULL,
  `Credit_Type_credits_kod_vida` int NOT NULL,
  PRIMARY KEY (`kod_stuff`),
  KEY `fk_Stuff_Credit1_idx` (`Credit_kod_credit`,`Credit_Type_credits_kod_vida`),
  CONSTRAINT `fk_Stuff_Credit1` FOREIGN KEY (`Credit_kod_credit`, `Credit_Type_credits_kod_vida`) REFERENCES `credit` (`kod_credit`, `Type_credits_kod_vida`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff`
--

LOCK TABLES `stuff` WRITE;
/*!40000 ALTER TABLE `stuff` DISABLE KEYS */;
INSERT INTO `stuff` VALUES (1,'Ибрагимов  Д.Р','Фин консультант',2,1),(2,'Петров И.Б','Фин консультант',4,4),(3,'Хасанова И.И','Операционист',1,3),(4,'Якушев М.Б','Операционист',7,1),(5,'Логинова К.Р','Операционист',3,2),(6,'Яценюк  Ю.В','Операционист',5,3),(7,'Дьячков Ф.Л','Операционист',6,2);
/*!40000 ALTER TABLE `stuff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_credits`
--

DROP TABLE IF EXISTS `type_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_credits` (
  `kod_vida` int NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `uslov_poluchnia` tinytext NOT NULL,
  `stavka` double NOT NULL,
  `srok` tinytext NOT NULL,
  PRIMARY KEY (`kod_vida`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_credits`
--

LOCK TABLES `type_credits` WRITE;
/*!40000 ALTER TABLE `type_credits` DISABLE KEYS */;
INSERT INTO `type_credits` VALUES (1,'Оплата частями','беспроцентный',0,'24 месяца'),(2,'Автокредит','под процент',17,'до 7 лет'),(3,'Кредит под залог','фиксированая ставка',15,'до 10 лет'),(4,'Ипотека','фиксированая ставка',10,'до 30 лет');
/*!40000 ALTER TABLE `type_credits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10 16:17:28
