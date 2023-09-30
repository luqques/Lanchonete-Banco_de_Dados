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
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(255) NOT NULL,
  `VALOR_ENTREGA` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Água Verde',8),(2,'Badenfurt',10.5),(3,'Boa Vista',5.25),(4,'Bom Retiro',5.25),(5,'Centro',5),(6,'Escola Agrícola',8),(7,'Fidélis',20),(8,'Fortaleza',15),(9,'Fortaleza Alta',20),(10,'Garcia',10),(11,'Glória',20),(12,'Itoupava Central',25.5),(13,'Itoupava Norte',10),(14,'Itoupava Seca',7),(15,'Itoupavazinha',30),(16,'Jardim Blumenau',6),(17,'Nova Esperança',17),(18,'Passo Manso',20),(19,'Ponta Aguda',6),(20,'Progresso',30),(21,'Ribeirão Fresco',7),(22,'Salto',15),(23,'Salto do Norte',21.5),(24,'Salto Weissbach',23),(25,'Testo Salto',40),(26,'Tribess',20),(27,'Valparaíso',23),(28,'Velha',25),(29,'Velha Central',30),(30,'Velha Grande',40),(31,'Victor Konder',7),(32,'Vila Formosa',15),(33,'Vila Itoupava',75),(34,'Vila Nova',8),(35,'Vorstadt',9);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
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
