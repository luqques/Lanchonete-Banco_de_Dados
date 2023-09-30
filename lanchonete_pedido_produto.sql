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
-- Table structure for table `pedido_produto`
--

DROP TABLE IF EXISTS `pedido_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_produto` (
  `PEDIDO_ID` int NOT NULL,
  `PRODUTO_ID` int NOT NULL,
  `QUANTIDADE` int NOT NULL,
  `PRECO_PAGO` double NOT NULL,
  PRIMARY KEY (`PEDIDO_ID`,`PRODUTO_ID`),
  KEY `fk_PEDIDO_PRODUTO_PEDIDO_ID_idx` (`PEDIDO_ID`),
  KEY `fk_PEDIDO_PRODUTO_PRODUTO_ID_idx` (`PRODUTO_ID`),
  CONSTRAINT `fk_PEDIDO_PRODUTO_PEDIDO_ID` FOREIGN KEY (`PEDIDO_ID`) REFERENCES `pedido` (`ID`),
  CONSTRAINT `fk_PEDIDO_PRODUTO_PRODUTO_ID` FOREIGN KEY (`PRODUTO_ID`) REFERENCES `produto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_produto`
--

LOCK TABLES `pedido_produto` WRITE;
/*!40000 ALTER TABLE `pedido_produto` DISABLE KEYS */;
INSERT INTO `pedido_produto` VALUES (1,3,1,9),(1,27,1,14.5),(2,12,1,15.5),(2,27,1,14.5),(2,37,1,12),(3,7,1,22),(3,10,1,27.5),(3,17,1,7),(3,27,2,14.5),(4,17,1,7),(4,38,1,10),(5,9,1,27),(5,31,1,10),(6,37,1,12),(7,13,1,17.5),(7,20,1,9.5),(8,8,1,15),(8,33,1,7),(9,11,1,15),(9,30,1,14.5),(9,34,1,4.5),(10,2,1,15),(10,18,1,6),(10,28,1,14.5),(11,29,1,14.5),(11,40,1,8),(12,7,1,22),(12,22,1,2.5),(12,36,1,7.5);
/*!40000 ALTER TABLE `pedido_produto` ENABLE KEYS */;
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
