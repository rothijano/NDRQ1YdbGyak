-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: beadando
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
-- Table structure for table `bankkartya`
--

DROP TABLE IF EXISTS `bankkartya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankkartya` (
  `Kartyaszam` varchar(20) NOT NULL,
  `Bank` varchar(30) DEFAULT NULL,
  `Lejarati_datum` date DEFAULT NULL,
  `Tipus` varchar(20) DEFAULT NULL,
  `VevoID` int DEFAULT NULL,
  PRIMARY KEY (`Kartyaszam`),
  KEY `VevoID` (`VevoID`),
  CONSTRAINT `bankkartya_ibfk_1` FOREIGN KEY (`VevoID`) REFERENCES `vevo` (`VevoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankkartya`
--

LOCK TABLES `bankkartya` WRITE;
/*!40000 ALTER TABLE `bankkartya` DISABLE KEYS */;
INSERT INTO `bankkartya` VALUES ('0000346537483461','OTP','2025-11-09','betéti kártya',14),('0004375261464743','Budapest Bank','2025-11-07','hitelkártya',9),('0008362948562857','Raiffeisen','2025-10-31','betéti kártya',8),('0034634623463246','Raiffeisen','2025-11-06','betéti kártya',3),('0036234632463432','OTP','2025-11-03','betéti kártya',2),('0056237438347311','CIB Bank','2025-11-11','többfunkciós kártya',15),('0072463263463463','OTP','2025-11-02','többfunkciós kártya',3),('0076297466052345','Budapest Bank','2025-11-01','hitelkártya',7),('0123485487436352','OTP','2025-11-08','többfunkciós kártya',10),('0346234632463246','CIB Bank','2025-11-05','többfunkciós kártya',1),('0346346234632463','MKB','2025-11-04','hitelkártya',5),('0457235615146346','MKB','2025-11-10','hitelkártya',1),('0543345344523453','MKB','2025-10-29','hitelkártya',12),('5432467234523460','CIB Bank','2025-10-30','többfunkciós kártya',7),('7629746285628560','OTP','2025-10-28','betéti kártya',9);
/*!40000 ALTER TABLE `bankkartya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etel`
--

DROP TABLE IF EXISTS `etel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etel` (
  `Etel` varchar(25) NOT NULL,
  `RendelesID` int DEFAULT NULL,
  PRIMARY KEY (`Etel`),
  KEY `RendelesID` (`RendelesID`),
  CONSTRAINT `etel_ibfk_1` FOREIGN KEY (`RendelesID`) REFERENCES `rendeles` (`RendelesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etel`
--

LOCK TABLES `etel` WRITE;
/*!40000 ALTER TABLE `etel` DISABLE KEYS */;
INSERT INTO `etel` VALUES ('Pizza',1),('Gyros',2),('Hamburger',3),('Döner',4),('Dürüm',5),('Carbonara',6),('Lasagne',7),('Hot-Dog',8),('Sajttorta',9),('Pizzakenyér',10);
/*!40000 ALTER TABLE `etel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etterem`
--

DROP TABLE IF EXISTS `etterem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etterem` (
  `EtteremID` int NOT NULL,
  `Nyitvatartas` varchar(20) DEFAULT NULL,
  `Nev` varchar(30) DEFAULT NULL,
  `Telefonszam` varchar(9) DEFAULT NULL,
  `Weboldal` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`EtteremID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etterem`
--

LOCK TABLES `etterem` WRITE;
/*!40000 ALTER TABLE `etterem` DISABLE KEYS */;
INSERT INTO `etterem` VALUES (1,'10-23','Pizza Hut','209876543','pizza.hut.hu'),(2,'9-24','Pizza bázis','208765432','pizza.bazis.hu'),(3,'10-22','Pizza tábor','306876546','pizza.tabor.hu'),(4,'10-01','Pizza Gábor','307364563','pizza.gabor.hu'),(5,'9-23','Döner King','303834657','doner.king.hu'),(6,'10-22','Rockabilly Chicken','709728374','rockabilly.chicken.hu'),(7,'11-24','Ördögkonyha','704738277','ordogkonyha.hu'),(8,'10-22','DonPepe','309834782','donpepe.hu'),(9,'0-24','	McDonalds','201231239','mcdonalds.hu'),(10,'10-22','Király Pizza','309874783','kiralypizza.hu'),(11,'11-21','Bohém Marha Bisztró','209874283','bohem.hu'),(12,'10-23','Fald fel amerikát','709836848','faldfel.hu');
/*!40000 ALTER TABLE `etterem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `futar`
--

DROP TABLE IF EXISTS `futar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futar` (
  `FutarID` int NOT NULL,
  `Nev` varchar(30) DEFAULT NULL,
  `Telefonszam` int DEFAULT NULL,
  `EtteremID` int DEFAULT NULL,
  PRIMARY KEY (`FutarID`),
  KEY `EtteremID` (`EtteremID`),
  CONSTRAINT `futar_ibfk_1` FOREIGN KEY (`EtteremID`) REFERENCES `etterem` (`EtteremID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futar`
--

LOCK TABLES `futar` WRITE;
/*!40000 ALTER TABLE `futar` DISABLE KEYS */;
INSERT INTO `futar` VALUES (1,'Kiss József',205234534,4),(2,'Nagy János',303452345,7),(3,'Lakatos Géza',304564563,1),(4,'Kiss Anna',205634566,3),(5,'Nagy Tibor',704563456,5),(6,'Horváth Lajos',706345643,2),(7,'Tóth Gábor',209368253,5),(8,'Nagy Fanni',208263463,7),(9,'Végh Béla',706655665,3),(10,'Juhász Gergely',304568654,7),(11,'Mészáros Gábor',308123456,4),(12,'Fekete Mária',309994445,6),(13,'Magyar Lajos',206234556,2),(14,'Németh Róbert',208822553,7),(15,'Török Béla',307256677,2);
/*!40000 ALTER TABLE `futar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ido`
--

DROP TABLE IF EXISTS `ido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ido` (
  `RendelesID` int DEFAULT NULL,
  `Ido` varchar(5) NOT NULL,
  PRIMARY KEY (`Ido`),
  KEY `RendelesID` (`RendelesID`),
  CONSTRAINT `ido_ibfk_1` FOREIGN KEY (`RendelesID`) REFERENCES `rendeles` (`RendelesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ido`
--

LOCK TABLES `ido` WRITE;
/*!40000 ALTER TABLE `ido` DISABLE KEYS */;
INSERT INTO `ido` VALUES (1,'60'),(2,'45'),(3,'55'),(4,'70'),(5,'62'),(6,'71'),(7,'57'),(8,'120'),(9,'90'),(10,'40'),(11,'35'),(12,'52');
/*!40000 ALTER TABLE `ido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rendeles`
--

DROP TABLE IF EXISTS `rendeles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rendeles` (
  `RendelesID` int NOT NULL,
  `Teljes_ar` varchar(7) DEFAULT NULL,
  `Etterem_neve` varchar(35) DEFAULT NULL,
  `VevoID` int DEFAULT NULL,
  `EtteremID` int NOT NULL,
  PRIMARY KEY (`RendelesID`),
  KEY `VevoID` (`VevoID`),
  KEY `EtteremID` (`EtteremID`),
  CONSTRAINT `rendeles_ibfk_1` FOREIGN KEY (`VevoID`) REFERENCES `vevo` (`VevoID`),
  CONSTRAINT `rendeles_ibfk_2` FOREIGN KEY (`EtteremID`) REFERENCES `etterem` (`EtteremID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rendeles`
--

LOCK TABLES `rendeles` WRITE;
/*!40000 ALTER TABLE `rendeles` DISABLE KEYS */;
INSERT INTO `rendeles` VALUES (1,'1200',' Fald fel amerikát',2,7),(2,'3000','Bohém Marha Bisztró',4,3),(3,'4000',' McDonalds ',5,6),(4,'3500','DonPepe',6,3),(5,'3200','DönerKing',7,6),(6,'1200','Ördög Konyha',8,2),(7,'800','Pizza Tábor',9,7),(8,'2000','Király Pizza',1,2),(9,'3200','Pizza Hut',12,6),(10,'4300','McDonalds',13,8),(11,'1200','Fald fel amerikát',14,2),(12,'1400','DönerKing',4,5),(13,'1200','KirályPizza',10,7),(14,'1400','Ördögkonyha',12,2),(15,'1300','McDonalds',3,5);
/*!40000 ALTER TABLE `rendeles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vevo`
--

DROP TABLE IF EXISTS `vevo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vevo` (
  `VevoID` int NOT NULL,
  `Nev` varchar(30) DEFAULT NULL,
  `Telefonszam` int DEFAULT NULL,
  `Varos` varchar(30) DEFAULT NULL,
  `Iranyitoszam` varchar(4) DEFAULT NULL,
  `Utca` varchar(30) DEFAULT NULL,
  `Hazszam` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`VevoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vevo`
--

LOCK TABLES `vevo` WRITE;
/*!40000 ALTER TABLE `vevo` DISABLE KEYS */;
INSERT INTO `vevo` VALUES (1,'Kiss János',704343433,'Miskolc','3509','Virág utca','1'),(2,'Nagy Géza',301212123,'Miskolc','3510','Szeder utca','32'),(3,'Lakatos Anna',201212123,'Ózd','3662','Mogyoró utca','34'),(4,'Kiss Tibor',701212123,'Kazincbarcika','3700','Fő utca','21'),(5,'Nagy Lajos',204343432,'Miskolc','3509','Hóvirág utca','43'),(6,'Horváth Gábor',206543234,'Miskolc','3510','Mátyás Király út','23'),(7,'Tóth Fanni',302345676,'Ózd','3662','Tardonai út','3'),(8,'Nagy Béla',203454345,'Kazincbarcika','3700','Herbolyai út','23'),(9,'Végh Gergely',301231231,'Miskolc','3509','Fő utca','21'),(10,'Juhász Gábor',206545679,'Miskolc','3510','Napsugár utca','43'),(11,'Mészáros Mária',309999999,'Ózd','3662','Teve utca','2'),(12,'Fekete Lajos',208888888,'Kazincbarcika','3700','Kutya utca','5'),(13,'Magyar Róbert',207777777,'Miskolc','3509','Szurikáta utca','12'),(14,'Németh Béla',204444444,'Miskolc','3510','Fő utca','5'),(15,'Török József',307755678,'Ózd','3662','Király utca','2');
/*!40000 ALTER TABLE `vevo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'beadando'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 16:05:39
