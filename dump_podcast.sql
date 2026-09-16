CREATE DATABASE  IF NOT EXISTS `podcast` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `podcast`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: podcast
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `descargas`
--

DROP TABLE IF EXISTS `descargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descargas` (
  `iddescargas` int NOT NULL AUTO_INCREMENT,
  `idusuario` int NOT NULL,
  `idpodcast` int NOT NULL,
  `fecha_descarga` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iddescargas`),
  KEY `idusuario_idx` (`idusuario`),
  KEY `idpodcast_idx` (`idpodcast`),
  CONSTRAINT `fk_descargas_podcast` FOREIGN KEY (`idpodcast`) REFERENCES `podcast` (`idpodcast`),
  CONSTRAINT `fk_descargas_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descargas`
--

LOCK TABLES `descargas` WRITE;
/*!40000 ALTER TABLE `descargas` DISABLE KEYS */;
INSERT INTO `descargas` VALUES (1,1,1,'2026-09-14 13:01:16'),(2,1,3,'2026-09-14 13:01:16'),(3,2,2,'2026-09-14 13:01:16'),(4,3,2,'2026-09-14 13:01:16'),(5,4,5,'2026-09-14 13:01:16'),(6,5,6,'2026-09-14 13:01:16'),(7,6,1,'2026-09-14 13:01:16'),(8,7,8,'2026-09-14 13:01:16'),(9,8,4,'2026-09-14 13:01:16'),(10,9,7,'2026-09-14 13:01:16');
/*!40000 ALTER TABLE `descargas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcast`
--

DROP TABLE IF EXISTS `podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `podcast` (
  `idpodcast` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `duracion_min` int NOT NULL,
  PRIMARY KEY (`idpodcast`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcast`
--

LOCK TABLES `podcast` WRITE;
/*!40000 ALTER TABLE `podcast` DISABLE KEYS */;
INSERT INTO `podcast` VALUES (1,'Tecnología al Día - Ep. 01: IA en 2026',45),(2,'Historia Oculta - Ep. 14: La Roma Antigua',62),(3,'Desarrollo Personal - Ep. 08: Hábitos Atómicos',30),(4,'Crónica Negra - Ep. 22: Casos Sin Resolver',55),(5,'Economía Simple - Ep. 05: Cómo Ahorrar Mejor',40),(6,'Cinefilia - Ep. 50: Clásicos del Cine Sci-Fi',75),(7,'Ciencia Express - Ep. 19: Explorando el Cosmos',25),(8,'Gaming Zone - Ep. 33: Análisis de la Temporada',50),(9,'Salud y Deporte - Ep. 11: Nutrición Realista',35),(10,'Mundo Misterio - Ep. 04: Leyendas Urbanas',48);
/*!40000 ALTER TABLE `podcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `email` varchar(80) NOT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Laura Gómez','laura.gomez@example.com'),(2,'Carlos Ruiz','carlos.ruiz@example.com'),(3,'Sofía Morales','sofia.m@example.com'),(4,'David Fernández','david.f@example.com'),(5,'Elena Martín','elena.martin@example.com'),(6,'Javier Torres','javi.torres@example.com'),(7,'Marta Navarro','marta.n@example.com'),(8,'Alejandro Sanz','a.sanz@example.com'),(9,'Beatriz Vega','b.vega@example.com'),(10,'Ignacio López','ignacio.lopez@example.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-14 13:07:44
