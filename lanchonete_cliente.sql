-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: lanchonete
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(255) NOT NULL,
  `CEP` int NOT NULL,
  `RUA` varchar(255) NOT NULL,
  `NUMERO_CASA` int NOT NULL,
  `BAIRRO_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_CLIENTE_BAIRRO_idx` (`BAIRRO_ID`),
  CONSTRAINT `fk_CLIENTE_BAIRRO` FOREIGN KEY (`BAIRRO_ID`) REFERENCES `bairro` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Maria Luisa Rozza',89012400,'Rua São Joaquim',218,5),(2,'Jadina Maria Garcia',89026202,'Rua Progresso',5007,20),(3,'Sanli José Bayer',89066600,'Rua Professor Jacob Ineichen',238,15),(4,'Tiago Henrique Angioletti',89066354,'Rua Adele Wruck',495,15),(5,'Victor Matheus da Costa Mariano',89057001,'Rua Francisco Vahldieck',2487,8),(6,'Luiz Eduardo Andrzejewski dos Santos',89055571,'Rua Helmut Lueders',142,26),(7,'Bruno Sevegnani Hansen Jahn',89040400,'Rua Divinópolis',866,28),(8,'Ricardo Berri Mees',89040400,'Rua Divinópolis',866,28),(9,'Julia Tiedemann',89012400,'Rua Max Hering',433,31),(10,'Aline Kowalski',89041200,'Rua Imperatriz Leopoldina',149,28),(11,'Gustavo Eyroff',89046210,'Rua João Babel',170,28),(12,'Gustavo Luís Pandini',89057330,'Rua Jurema Beckhauser',27,26),(13,'Isabelle Tschoeke Volaco',89012510,'Rua Max Hering',55,31),(14,'Djordhan da Rosa Eyng',89053500,'Rua Almirante Armin Zimermmann',280,13),(15,'Larissa Beatriz Costa',89015280,'Rua Humaitá',338,35),(16,'Angelo Brocardo',89012400,'Rua Max Hering',488,31),(17,'Magali Jahn',89040498,'Rua José Woestemeier',219,28),(18,'Augusto Emmanuel de Souza',89030210,'Rua Fides Deeke',138,14),(19,'Vitor Fauste',89030030,'Rua Biguaçu',186,14),(20,'Bárbara Marquez',89066354,'Rua Adele Wruck',495,15);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-18 19:50:41
