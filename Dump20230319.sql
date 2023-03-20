-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bdgrupal
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `email` varchar(125) DEFAULT NULL,
  `address` varchar(125) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(35) DEFAULT NULL,
  `created_up` datetime DEFAULT NULL,
  `updated_up` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Roberto','Perez','robert@correo.com','calle 2 c/ calle5','-25.341598046627272, -57.51004148510815','0945432423','2023-03-19 08:23:18','2023-03-19 08:23:18'),(2,'Juan','Perez','juan@correo.com','calle 1 c/ calle3','-25.338378791652207, -57.51407552793903','09864323','2023-03-19 08:25:22','2023-03-19 08:25:22'),(3,'Maria','Perez','maria@correo.com','calle2','-25.338378791652207, -57.51407552793903','093223',NULL,NULL),(4,'Benito Agustín','Almada Barrios','bbbbb@correo.com','Juan Baez c/ Rta1','-25.338495151781164, -57.521542797755885','099911111','2023-03-19 20:38:22','2023-03-19 20:38:22'),(5,'Roberto','Apeprueba4','correo@correo','dirección','https://goo.gl/maps/sszDGcVCMAw5KY647','0921','2023-03-19 20:55:31','2023-03-19 20:55:31'),(6,'BENITO','ALMADA','bbbbb@correo.com','san lorenzo','https://goo.gl/maps/sszDGcVCMAw5KY647','1212','2023-03-19 20:59:38','2023-03-19 20:59:38'),(7,'Benito Agustín','Diaz','correo@correo','san lorenzo','https://goo.gl/maps/sszDGcVCMAw5KY647','092912','2023-03-19 21:00:16','2023-03-19 21:00:16');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pagos`
--

DROP TABLE IF EXISTS `detalle_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` decimal(10,0) DEFAULT NULL,
  `created_up` datetime DEFAULT NULL,
  `updated_up` datetime DEFAULT NULL,
  `orden_id` int NOT NULL,
  `pago_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detalle_pagos_ordenes1_idx` (`orden_id`),
  KEY `fk_detalle_pagos_Pagos1_idx` (`pago_id`),
  CONSTRAINT `fk_detalle_pagos_ordenes1` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`),
  CONSTRAINT `fk_detalle_pagos_Pagos1` FOREIGN KEY (`pago_id`) REFERENCES `pagos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pagos`
--

LOCK TABLES `detalle_pagos` WRITE;
/*!40000 ALTER TABLE `detalle_pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `created_up` datetime DEFAULT NULL,
  `updated_up` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Pendientes','2023-03-18 22:05:40','2023-03-18 22:28:25'),(2,'En proceso','2023-03-18 22:06:41','2023-03-18 22:06:41'),(3,'Concluido','2023-03-18 22:06:48','2023-03-18 22:06:48'),(4,'Reclamado','2023-03-18 22:06:55','2023-03-18 22:06:55');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medio_pago`
--

DROP TABLE IF EXISTS `medio_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medio_pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medio_pago`
--

LOCK TABLES `medio_pago` WRITE;
/*!40000 ALTER TABLE `medio_pago` DISABLE KEYS */;
INSERT INTO `medio_pago` VALUES (1,'paypal');
/*!40000 ALTER TABLE `medio_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_time` datetime DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `created_up` datetime DEFAULT NULL,
  `updated_up` datetime DEFAULT NULL,
  `usuario_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `servicio_id` int NOT NULL,
  `estado_id` int NOT NULL,
  `cant` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ordenes_usuarios_idx` (`usuario_id`),
  KEY `fk_ordenes_clientes1_idx` (`cliente_id`),
  KEY `fk_ordenes_servicios1_idx` (`servicio_id`),
  KEY `fk_ordenes_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_ordenes_clientes1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `fk_ordenes_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`),
  CONSTRAINT `fk_ordenes_servicios1` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`),
  CONSTRAINT `fk_ordenes_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (3,'2023-03-18 22:30:25',200000,'2023-03-19 08:13:16','2023-03-19 08:13:16',11,1,4,1,2),(4,'2023-03-18 22:34:25',200000,'2023-03-19 08:43:40','2023-03-19 08:43:40',11,1,5,1,3),(7,'2023-03-18 22:28:25',400000,'2023-03-19 16:07:48','2023-03-19 16:07:48',12,2,5,1,2),(8,'2023-03-18 22:28:25',400000,'2023-03-19 16:07:53','2023-03-19 16:07:53',12,3,5,1,1),(9,'2023-03-18 22:28:25',400000,'2023-03-19 16:07:56','2023-03-19 16:07:56',12,1,5,1,1),(11,'2023-03-18 22:28:25',400000,'2023-03-19 16:08:28','2023-03-19 16:08:28',12,1,4,1,1),(12,'2023-03-19 16:18:28',2000,'2023-03-19 16:18:28','2023-03-19 16:18:28',1,2,4,1,1);
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nro_factura` int DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `timbrado` int DEFAULT NULL,
  `medio_pago_id` int NOT NULL,
  `transaccion` int DEFAULT NULL,
  `orden_id` int DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pagos_medio_pago1_idx` (`medio_pago_id`),
  KEY `fk_orden_id` (`orden_id`),
  CONSTRAINT `fk_orden_id` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`),
  CONSTRAINT `fk_pagos_medio_pago1` FOREIGN KEY (`medio_pago_id`) REFERENCES `medio_pago` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,12345,NULL,12345,1,12345,3,10000);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_name` varchar(55) DEFAULT NULL,
  `description` text,
  `precio` decimal(12,0) DEFAULT NULL,
  `created_up` datetime DEFAULT NULL,
  `updated_up` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (4,'revisión','a domicilio',10000,'2023-03-19 12:45:22','2023-03-19 18:06:27'),(5,'Mantenimiento','Se realiza en domicilio o en la empresa',10000,'2023-03-19 12:45:57','2023-03-19 12:45:57'),(6,'Reparación','Se realiza en domicilio o en la empresa',450000,'2023-03-19 12:46:14','2023-03-19 12:46:14');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `created_up` datetime DEFAULT NULL,
  `updated_up` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (11,'Usuario1','Usuario1','usuario1@correo.com','$2b$12$hz.xMuyQWimWvOumniBVsOcYxdPWtOxrNZLW/XsftP8sjiSAKolUi',1,NULL,NULL),(12,'Usuario2','Usuario2','usuario2@correo.com','$2b$12$sXa6gbdYcJiEixZisOoKwOUxDGL7yu8fuNypTMGDirjLcKuaiQVWS',2,NULL,NULL),(13,'Usuario3','Usuario3','usuario3@correo.com','$2b$12$hkcq6823OcFF.sHm61iVOu1Aty.ptRRcDebbiejsTHaLyDqlBNMPW',3,NULL,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-19 23:17:00
