CREATE DATABASE  IF NOT EXISTS `formula1_2024` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `formula1_2024`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: formula1_2024
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `equipes`
--

DROP TABLE IF EXISTS `equipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipes` (
  `posicao` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` int DEFAULT NULL,
  `pontuacao` int NOT NULL,
  PRIMARY KEY (`posicao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipes`
--

LOCK TABLES `equipes` WRITE;
/*!40000 ALTER TABLE `equipes` DISABLE KEYS */;
INSERT INTO `equipes` VALUES (1,'Red Bull Rancing Honda RBPT',2005,389),(2,'McLaren Mercedes',1963,338),(3,'Ferrari',1929,322),(4,'Mercedes',2010,241),(5,'Aston Martin Aramco Mercedes',2021,69),(6,'RB Honda RBPT',2020,33),(7,'Haas Ferrari',2016,27),(8,'Alpine Renault',2021,9),(9,'Williams Mercedes',1977,4),(10,'Kick Sauber Ferrari',2019,0);
/*!40000 ALTER TABLE `equipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilotos`
--

DROP TABLE IF EXISTS `pilotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilotos` (
  `posicao` int NOT NULL,
  `nome` varchar(40) NOT NULL,
  `idade` int DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT NULL,
  `pontos` int NOT NULL,
  `dnf` int DEFAULT NULL,
  `podios` int DEFAULT NULL,
  `voltas_rapidas` int DEFAULT NULL,
  `equipe` int DEFAULT NULL,
  PRIMARY KEY (`posicao`),
  KEY `equipe` (`equipe`),
  CONSTRAINT `pilotos_ibfk_1` FOREIGN KEY (`equipe`) REFERENCES `equipes` (`posicao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilotos`
--

LOCK TABLES `pilotos` WRITE;
/*!40000 ALTER TABLE `pilotos` DISABLE KEYS */;
INSERT INTO `pilotos` VALUES (1,'Max Verstappen',26,'Holanda',265,1,9,2,1),(2,'Lando Norris',24,'Reino Unido',189,0,8,1,2),(3,'Charles Leclerc',26,'Mônaco',162,1,5,2,3),(4,'Carlos Sainz',29,'Espanha',154,1,5,1,3),(5,'Oscar Piastri',23,'Austrália',149,0,3,1,2),(6,'Lewis Hamilton',39,'Reino Unido',125,1,3,2,4),(7,'Sergio Perez',34,'México',124,2,4,0,2),(8,'George Russell',26,'Reino Unido',116,2,2,2,4),(9,'Fernando Alonso',42,'Espanha',45,0,0,2,5),(10,'Lance Stroll',25,'Canadá',24,1,0,0,5),(11,'Nico Hulkenberg',36,'Alemanha',22,1,0,0,9),(12,'Yuki Tsunoda',24,'Japão',22,1,0,0,6),(13,'Daniel Ricciardo',35,'Austrália',11,2,0,0,6),(14,'Oliver Bearman',19,'Reino Unido',6,NULL,0,0,3),(15,'Pierre Gasly',28,'França',6,2,0,0,7),(16,'Kevin Magnussen',31,'Dinamarca',5,1,0,0,9),(17,'Alexander Albon',28,'Tailândia',4,3,0,0,8),(18,'Esteban Ocon',27,'França',3,1,0,0,7),(19,'Zhou Guanyu',25,'China',0,1,0,0,10),(20,'Logan Sargeant',23,'EUA',0,2,0,0,8),(21,'Valtteri Bottas',34,'Finlândia',0,1,0,0,10);
/*!40000 ALTER TABLE `pilotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-26 10:47:27
