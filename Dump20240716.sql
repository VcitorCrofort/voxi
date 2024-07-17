CREATE DATABASE  IF NOT EXISTS `anla` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `anla`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: anla
-- ------------------------------------------------------
-- Server version	9.0.0

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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `NumDocumento` bigint NOT NULL,
  `tipoDocumento` varchar(255) NOT NULL,
  `firtsName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `CellPhone` bigint DEFAULT NULL,
  `Phone` bigint DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `habeasDaTA` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`,`NumDocumento`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependencias`
--

DROP TABLE IF EXISTS `dependencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependencias` (
  `DEPENDENCIA_ID` int NOT NULL,
  `DEPENDENCIA` varchar(255) NOT NULL,
  `TEMA` varchar(255) NOT NULL,
  `SUBTEMA_NIVEL_II` varchar(255) DEFAULT NULL,
  `SUBTEMA_NIVEL_III` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DEPENDENCIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependencias`
--

LOCK TABLES `dependencias` WRITE;
/*!40000 ALTER TABLE `dependencias` DISABLE KEYS */;
INSERT INTO `dependencias` VALUES (33,'Grupo_Alto_Magdalena_Cauca','Agroquímicos_y_Proyectos_Especiales',NULL,NULL),(34,'Grupo_De_Actuaciones_Sancionatorias_Ambientales','73',NULL,NULL),(35,'Grupo_De_Atención_al_Ciudadano','74',NULL,NULL),(36,'Grupo_De_Caribe_Pacifico','75',NULL,NULL),(37,'Grupo_De_Certificaciones_y_Vistos_Buenos','80',NULL,NULL),(38,'Grupo_De_Cobro_Coactivo','82',NULL,NULL),(39,'Grupo_De_Conceptos_Jurídicos','83',NULL,NULL),(40,'Grupo_De_Defensa_Jurídica','84',NULL,NULL),(41,'Grupo_De_Evaluación_De_Agroquímicos_y_Proyectos_Especiales','85',NULL,NULL),(42,'Grupo_De_Gestión_De_Notificaciones','86',NULL,NULL),(43,'Grupo_De_Gestión_De_SolicituDes_y_Peticiones','87',NULL,NULL),(44,'Grupo_De_Gestión_Documental','88',NULL,NULL),(45,'Grupo_De_Gestión_Financiera_y_Presupuestal','89',NULL,NULL),(46,'Grupo_De_Gestión_Humana','90',NULL,NULL),(47,'Grupo_De_Hidrocarburos','91',NULL,NULL),(48,'Grupo_De_Infraestructura','92',NULL,NULL),(49,'Grupo_De_Medio_Magdalena_Cauca_Catatumbo','93',NULL,NULL),(50,'Grupo_De_Minería','98',NULL,NULL),(51,'Grupo_De_Orinoquía_Amazonas','99',NULL,NULL),(52,'Grupo_De_Participación_Ciudadana','104',NULL,NULL),(53,'Grupo_De_Permisos_y_Trámites_Ambientales','105',NULL,NULL),(54,'Grupo_De_Seguimiento_De_Agroquímicos_y_Proyectos_Especiales','108',NULL,NULL),(55,'Grupo_Energía_Presas_Represas_y_Transvases','109',NULL,NULL),(56,'Grupo_Gestión_Administrativa','110',NULL,NULL),(57,'Grupo_Gestión_Contractual','111',NULL,NULL),(58,'Grupo_Valoración_y_Manejo_De_Impactos_en_Trámites_De_evaluación','112',NULL,NULL),(59,'No_es_competencia_De_la_Anla','117',NULL,NULL),(60,'Oficina_Asesora_Planeación','118',NULL,NULL),(61,'Oficina_De_Control_Disciplinario_Interno','119',NULL,NULL),(62,'Oficina_De_Control_Interno','120',NULL,NULL),(63,'Oficina_De_Tecnologías_De_la_Información','121',NULL,NULL);
/*!40000 ALTER TABLE `dependencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial` (
  `id` bigint NOT NULL,
  `comentarios` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temas`
--

DROP TABLE IF EXISTS `temas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `DEPENDENCIA_ID` int NOT NULL,
  `TEMA_I_ID` int NOT NULL,
  `TEMA_I` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temas`
--

LOCK TABLES `temas` WRITE;
/*!40000 ALTER TABLE `temas` DISABLE KEYS */;
INSERT INTO `temas` VALUES (1,33,68,'Agroquímicos_y_Proyectos_Especiales'),(2,33,69,'Energía_Presas_Represas_Trasvases_y_Embalses'),(3,33,70,'Hidrocarburos'),(4,33,71,'Infraestructura'),(5,33,72,'Minería'),(6,34,73,'Otros_Institucionales'),(7,35,74,'Otros_Institucionales'),(8,36,75,'Agroquímicos_y_Proyectos_Especiales'),(9,36,76,'Energía_Presas_Represas_Trasvases_y_Embalses'),(10,36,77,'Hidrocarburos'),(11,36,78,'Infraestructura'),(12,36,79,'Minería'),(13,37,80,'Certificaciones_y_Autorizaciones'),(14,37,81,'Vistos_Buenos_Ventanilla_Única_De_Comercio_Exterior_Vuce'),(15,38,82,'Otros_Institucionales'),(16,39,83,'Otros_Institucionales'),(17,40,84,'Otros_Institucionales'),(18,41,85,'Agroquímicos_y_Proyectos_Especiales'),(19,42,86,'Otros_Institucionales'),(20,43,87,'Otros_Institucionales'),(21,44,88,'Otros_Institucionales'),(22,45,89,'Otros_Institucionales'),(23,46,90,'Otros_Institucionales'),(24,47,91,'Hidrocarburos'),(25,48,92,'Infraestructura'),(26,49,93,'Agroquímicos_y_Proyectos_Especiales'),(27,49,94,'Energía_Presas_Represas_Trasvases_y_Embalses'),(28,49,95,'Hidrocarburos'),(29,49,96,'Infraestructura'),(30,49,97,'Minería'),(31,50,98,'Minería'),(32,51,99,'Agroquímicos_y_Proyectos_Especiales'),(33,51,100,'Energía_Presas_Represas_Trasvases_y_Embalses'),(34,51,101,'Hidrocarburos'),(35,51,102,'Infraestructura'),(36,51,103,'Minería'),(37,52,104,'Otros_Institucionales'),(38,53,105,'Permisos_Biodibersidad'),(39,53,106,'Permisos_Fuera_De_Licencia'),(40,53,107,'Posconsumo '),(41,54,108,'Agroquímicos_y_Proyectos_Especiales'),(42,55,109,'Energía_Presas_Represas_Trasvases_y_Embalses'),(43,56,110,'Otros_Institucionales'),(44,57,111,'Otros_Institucionales'),(45,58,112,'Agroquímicos_y_Proyectos_Especiales'),(46,58,113,'Energía_Presas_Represas_Trasvases_y_Embalses'),(47,58,114,'Hidrocarburos'),(48,58,115,'Infraestructura'),(49,58,116,'Minería'),(50,59,117,'No_es_competencia_De_la_Anla'),(51,60,118,'Otros_Institucionales'),(52,61,119,'Otros_Institucionales'),(53,62,120,'Otros_Institucionales'),(54,63,121,'Otros_Institucionales');
/*!40000 ALTER TABLE `temas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopersonas`
--

DROP TABLE IF EXISTS `tipopersonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopersonas` (
  `tipoPersona` varchar(255) NOT NULL,
  `descripcionPersona` varchar(255) NOT NULL,
  PRIMARY KEY (`tipoPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopersonas`
--

LOCK TABLES `tipopersonas` WRITE;
/*!40000 ALTER TABLE `tipopersonas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipopersonas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicaciones`
--

DROP TABLE IF EXISTS `ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Departamento` varchar(255) NOT NULL,
  `Ciudad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
INSERT INTO `ubicaciones` VALUES (1,'Amazonas','Miriti Paraná'),(2,'Amazonas','Leticia'),(3,'Amazonas','El Encanto'),(4,'Amazonas','La Chorrera'),(5,'Amazonas','La Pedrera'),(6,'Amazonas','La Victoria'),(7,'Amazonas','Puerto Arica'),(8,'Amazonas','Puerto Nariño'),(9,'Amazonas','Puerto Santander'),(10,'Amazonas','Tarapacá'),(11,'Amazonas','Puerto Alegría'),(12,'Antioquia','Medellín'),(13,'Antioquia','Abejorral'),(14,'Antioquia','Abriaquí'),(15,'Antioquia','Alejandría'),(16,'Antioquia','Amagá'),(17,'Antioquia','Amalfi'),(18,'Antioquia','Andes'),(19,'Antioquia','Angelópolis'),(20,'Antioquia','Angostura'),(21,'Antioquia','Anorí'),(22,'Antioquia','Anza'),(23,'Antioquia','Apartadó'),(24,'Antioquia','Arboletes'),(25,'Antioquia','Argelia'),(26,'Antioquia','Armenia'),(27,'Antioquia','Barbosa'),(28,'Antioquia','Bello'),(29,'Antioquia','Betania'),(30,'Antioquia','Betulia'),(31,'Antioquia','Ciudad Bolívar'),(32,'Antioquia','Briceño'),(33,'Antioquia','Buriticá'),(34,'Antioquia','Cáceres'),(35,'Antioquia','Caicedo'),(36,'Antioquia','Caldas'),(37,'Antioquia','Campamento'),(38,'Antioquia','Cañasgordas'),(39,'Antioquia','Caracolí'),(40,'Antioquia','Caramanta'),(41,'Antioquia','Carepa'),(42,'Antioquia','Carolina'),(43,'Antioquia','Caucasia'),(44,'Antioquia','Chigorodó'),(45,'Antioquia','Cisneros'),(46,'Antioquia','Cocorná'),(47,'Antioquia','Concepción'),(48,'Antioquia','Concordia'),(49,'Antioquia','Copacabana'),(50,'Antioquia','Dabeiba'),(51,'Antioquia','Don Matías'),(52,'Antioquia','Ebéjico'),(53,'Antioquia','El Bagre'),(54,'Antioquia','Entrerrios'),(55,'Antioquia','Envigado'),(56,'Antioquia','Fredonia'),(57,'Antioquia','Giraldo'),(58,'Antioquia','Girardota'),(59,'Antioquia','Gómez Plata'),(60,'Antioquia','Guadalupe'),(61,'Antioquia','Guarne'),(62,'Antioquia','Guatapé'),(63,'Antioquia','Heliconia'),(64,'Antioquia','Hispania'),(65,'Antioquia','Itagui'),(66,'Antioquia','Ituango'),(67,'Antioquia','Jericó'),(68,'Antioquia','La Ceja'),(69,'Antioquia','La Estrella'),(70,'Antioquia','La Pintada'),(71,'Antioquia','La Unión'),(72,'Antioquia','Liborina'),(73,'Antioquia','Maceo'),(74,'Antioquia','Marinilla'),(75,'Antioquia','Montebello'),(76,'Antioquia','Murindó'),(77,'Antioquia','Mutatá'),(78,'Antioquia','Nariño'),(79,'Antioquia','Necoclí'),(80,'Antioquia','Nechí'),(81,'Antioquia','Olaya'),(82,'Antioquia','Peñol'),(83,'Antioquia','Peque'),(84,'Antioquia','Pueblorrico'),(85,'Antioquia','Puerto Berrío'),(86,'Antioquia','Puerto Nare'),(87,'Antioquia','Puerto Triunfo'),(88,'Antioquia','Remedios'),(89,'Antioquia','Retiro'),(90,'Antioquia','Rionegro'),(91,'Antioquia','Sabanalarga'),(92,'Antioquia','Sabaneta'),(93,'Antioquia','Salgar'),(94,'Antioquia','San Francisco'),(95,'Antioquia','San Jerónimo'),(96,'Antioquia','San Luis'),(97,'Antioquia','San Pedro'),(98,'Antioquia','San Rafael'),(99,'Antioquia','San Roque'),(100,'Antioquia','San Vicente'),(101,'Antioquia','Santa Bárbara'),(102,'Antioquia','Santo Domingo'),(103,'Antioquia','El Santuario'),(104,'Antioquia','Segovia'),(105,'Antioquia','Sopetrán'),(106,'Antioquia','Támesis'),(107,'Antioquia','Tarazá'),(108,'Antioquia','Tarso'),(109,'Antioquia','Titiribí'),(110,'Antioquia','Toledo'),(111,'Antioquia','Turbo'),(112,'Antioquia','Uramita'),(113,'Antioquia','Urrao'),(114,'Antioquia','Valdivia'),(115,'Antioquia','Valparaíso'),(116,'Antioquia','Vegachí'),(117,'Antioquia','Venecia'),(118,'Antioquia','Yalí'),(119,'Antioquia','Yarumal'),(120,'Antioquia','Yolombó'),(121,'Antioquia','Yondó'),(122,'Antioquia','Zaragoza'),(123,'Antioquia','Frontino'),(124,'Antioquia','Granada'),(125,'Antioquia','Jardín'),(126,'Antioquia','Sonsón'),(127,'Antioquia','Belmira'),(128,'Antioquia','San Pedro de Uraba'),(129,'Antioquia','Santafé de Antioquia'),(130,'Antioquia','Santa Rosa de Osos'),(131,'Antioquia','San Andrés de Cuerquía'),(132,'Antioquia','Vigía del Fuerte'),(133,'Antioquia','San José de La Montaña'),(134,'Antioquia','San Juan de Urabá'),(135,'Antioquia','El Carmen de Viboral'),(136,'Antioquia','San Carlos'),(137,'Arauca','Arauquita'),(138,'Arauca','Cravo Norte'),(139,'Arauca','Fortul'),(140,'Arauca','Puerto Rondón'),(141,'Arauca','Saravena'),(142,'Arauca','Tame'),(143,'Arauca','Arauca'),(144,'Atlántico','Barranquilla'),(145,'Atlántico','Baranoa'),(146,'Atlántico','Candelaria'),(147,'Atlántico','Galapa'),(148,'Atlántico','Luruaco'),(149,'Atlántico','Malambo'),(150,'Atlántico','Manatí'),(151,'Atlántico','Piojó'),(152,'Atlántico','Polonuevo'),(153,'Atlántico','Sabanagrande'),(154,'Atlántico','Sabanalarga'),(155,'Atlántico','Santa Lucía'),(156,'Atlántico','Santo Tomás'),(157,'Atlántico','Soledad'),(158,'Atlántico','Suan'),(159,'Atlántico','Tubará'),(160,'Atlántico','Usiacurí'),(161,'Atlántico','Repelón'),(162,'Atlántico','Puerto Colombia'),(163,'Atlántico','Ponedera'),(164,'Atlántico','Juan de Acosta'),(165,'Atlántico','Palmar de Varela'),(166,'Atlántico','Campo de La Cruz'),(167,'Archipiélago_de_San_Andrés_Providencia_y_Santa_Catalina','Providencia'),(168,'Archipiélago_de_San_Andrés_Providencia_y_Santa_Catalina','San Andrés'),(169,'Bogotá_D.C.','Bogotá D.C.'),(170,'Bolívar','El Peñón'),(171,'Bolívar','Achí'),(172,'Bolívar','Arenal'),(173,'Bolívar','Arjona'),(174,'Bolívar','Arroyohondo'),(175,'Bolívar','Calamar'),(176,'Bolívar','Cantagallo'),(177,'Bolívar','Cicuco'),(178,'Bolívar','Córdoba'),(179,'Bolívar','Clemencia'),(180,'Bolívar','El Guamo'),(181,'Bolívar','Magangué'),(182,'Bolívar','Mahates'),(183,'Bolívar','Margarita'),(184,'Bolívar','Montecristo'),(185,'Bolívar','Mompós'),(186,'Bolívar','Morales'),(187,'Bolívar','Norosí'),(188,'Bolívar','Pinillos'),(189,'Bolívar','Regidor'),(190,'Bolívar','Río Viejo'),(191,'Bolívar','San Estanislao'),(192,'Bolívar','San Fernando'),(193,'Bolívar','San Juan Nepomuceno'),(194,'Bolívar','Santa Catalina'),(195,'Bolívar','Santa Rosa'),(196,'Bolívar','Simití'),(197,'Bolívar','Soplaviento'),(198,'Bolívar','Talaigua Nuevo'),(199,'Bolívar','Tiquisio'),(200,'Bolívar','Turbaco'),(201,'Bolívar','Turbaná'),(202,'Bolívar','Villanueva'),(203,'Bolívar','Cartagena'),(204,'Bolívar','María la Baja'),(205,'Bolívar','San Cristóbal'),(206,'Bolívar','Zambrano'),(207,'Bolívar','Barranco de Loba'),(208,'Bolívar','Santa Rosa del Sur'),(209,'Bolívar','Hatillo de Loba'),(210,'Bolívar','El Carmen de Bolívar'),(211,'Bolívar','San Martín de Loba'),(212,'Bolívar','Altos del Rosario'),(213,'Bolívar','San Jacinto del Cauca'),(214,'Bolívar','San Pablo de Borbur'),(215,'Bolívar','San Jacinto'),(216,'Boyacá','Tibasosa'),(217,'Boyacá','Tunja'),(218,'Boyacá','Almeida'),(219,'Boyacá','Aquitania'),(220,'Boyacá','Arcabuco'),(221,'Boyacá','Berbeo'),(222,'Boyacá','Betéitiva'),(223,'Boyacá','Boavita'),(224,'Boyacá','Boyacá'),(225,'Boyacá','Briceño'),(226,'Boyacá','Buena Vista'),(227,'Boyacá','Busbanzá'),(228,'Boyacá','Caldas'),(229,'Boyacá','Campohermoso'),(230,'Boyacá','Cerinza'),(231,'Boyacá','Chinavita'),(232,'Boyacá','Chiquinquirá'),(233,'Boyacá','Chiscas'),(234,'Boyacá','Chita'),(235,'Boyacá','Chitaraque'),(236,'Boyacá','Chivatá'),(237,'Boyacá','Cómbita'),(238,'Boyacá','Coper'),(239,'Boyacá','Corrales'),(240,'Boyacá','Covarachía'),(241,'Boyacá','Cubará'),(242,'Boyacá','Cucaita'),(243,'Boyacá','Cuítiva'),(244,'Boyacá','Chíquiza'),(245,'Boyacá','Chivor'),(246,'Boyacá','Duitama'),(247,'Boyacá','El Cocuy'),(248,'Boyacá','El Espino'),(249,'Boyacá','Firavitoba'),(250,'Boyacá','Floresta'),(251,'Boyacá','Gachantivá'),(252,'Boyacá','Gameza'),(253,'Boyacá','Garagoa'),(254,'Boyacá','Guacamayas'),(255,'Boyacá','Guateque'),(256,'Boyacá','Guayatá'),(257,'Boyacá','Güicán'),(258,'Boyacá','Iza'),(259,'Boyacá','Jenesano'),(260,'Boyacá','Jericó'),(261,'Boyacá','Labranzagrande'),(262,'Boyacá','La Capilla'),(263,'Boyacá','La Victoria'),(264,'Boyacá','Macanal'),(265,'Boyacá','Maripí'),(266,'Boyacá','Miraflores'),(267,'Boyacá','Mongua'),(268,'Boyacá','Monguí'),(269,'Boyacá','Moniquirá'),(270,'Boyacá','Muzo'),(271,'Boyacá','Nobsa'),(272,'Boyacá','Nuevo Colón'),(273,'Boyacá','Oicatá'),(274,'Boyacá','Otanche'),(275,'Boyacá','Pachavita'),(276,'Boyacá','Páez'),(277,'Boyacá','Paipa'),(278,'Boyacá','Pajarito'),(279,'Boyacá','Panqueba'),(280,'Boyacá','Pauna'),(281,'Boyacá','Paya'),(282,'Boyacá','Pesca'),(283,'Boyacá','Pisba'),(284,'Boyacá','Puerto Boyacá'),(285,'Boyacá','Quípama'),(286,'Boyacá','Ramiriquí'),(287,'Boyacá','Ráquira'),(288,'Boyacá','Rondón'),(289,'Boyacá','Saboyá'),(290,'Boyacá','Sáchica'),(291,'Boyacá','Samacá'),(292,'Boyacá','San Eduardo'),(293,'Boyacá','San Mateo'),(294,'Boyacá','Santana'),(295,'Boyacá','Santa María'),(296,'Boyacá','Santa Sofía'),(297,'Boyacá','Sativanorte'),(298,'Boyacá','Sativasur'),(299,'Boyacá','Siachoque'),(300,'Boyacá','Soatá'),(301,'Boyacá','Socotá'),(302,'Boyacá','Socha'),(303,'Boyacá','Sogamoso'),(304,'Boyacá','Somondoco'),(305,'Boyacá','Sora'),(306,'Boyacá','Sotaquirá'),(307,'Boyacá','Soracá'),(308,'Boyacá','Susacón'),(309,'Boyacá','Sutamarchán'),(310,'Boyacá','Sutatenza'),(311,'Boyacá','Tasco'),(312,'Boyacá','Tenza'),(313,'Boyacá','Tibaná'),(314,'Boyacá','Tinjacá'),(315,'Boyacá','Tipacoque'),(316,'Boyacá','Toca'),(317,'Boyacá','Tópaga'),(318,'Boyacá','Tota'),(319,'Boyacá','Turmequé'),(320,'Boyacá','Tutazá'),(321,'Boyacá','Umbita'),(322,'Boyacá','Ventaquemada'),(323,'Boyacá','Viracachá'),(324,'Boyacá','Zetaquira'),(325,'Boyacá','La Uvita'),(326,'Boyacá','Belén'),(327,'Boyacá','Tununguá'),(328,'Boyacá','Motavita'),(329,'Boyacá','Ciénega'),(330,'Boyacá','Togüí'),(331,'Boyacá','Villa de Leyva'),(332,'Boyacá','Paz de Río'),(333,'Boyacá','Santa Rosa de Viterbo'),(334,'Boyacá','San Pablo de Borbur'),(335,'Boyacá','San Luis de Gaceno'),(336,'Boyacá','San José de Pare'),(337,'Boyacá','San Miguel de Sema'),(338,'Boyacá','Tuta'),(339,'Caldas','Manizales'),(340,'Caldas','Aguadas'),(341,'Caldas','Anserma'),(342,'Caldas','Aranzazu'),(343,'Caldas','Belalcázar'),(344,'Caldas','Chinchiná'),(345,'Caldas','Filadelfia'),(346,'Caldas','La Dorada'),(347,'Caldas','La Merced'),(348,'Caldas','Manzanares'),(349,'Caldas','Marmato'),(350,'Caldas','Marulanda'),(351,'Caldas','Neira'),(352,'Caldas','Norcasia'),(353,'Caldas','Pácora'),(354,'Caldas','Palestina'),(355,'Caldas','Pensilvania'),(356,'Caldas','Riosucio'),(357,'Caldas','Risaralda'),(358,'Caldas','Salamina'),(359,'Caldas','Samaná'),(360,'Caldas','San José'),(361,'Caldas','Supía'),(362,'Caldas','Victoria'),(363,'Caldas','Villamaría'),(364,'Caldas','Viterbo'),(365,'Caldas','Marquetalia'),(366,'Caquetá','Milán'),(367,'Caquetá','Florencia'),(368,'Caquetá','Albania'),(369,'Caquetá','Curillo'),(370,'Caquetá','El Doncello'),(371,'Caquetá','El Paujil'),(372,'Caquetá','Morelia'),(373,'Caquetá','Puerto Rico'),(374,'Caquetá','La Montañita'),(375,'Caquetá','San Vicente del Caguán'),(376,'Caquetá','Solano'),(377,'Caquetá','Solita'),(378,'Caquetá','Valparaíso'),(379,'Caquetá','San José del Fragua'),(380,'Caquetá','Belén de Los Andaquies'),(381,'Caquetá','Cartagena del Chairá'),(382,'Casanare','Nunchía'),(383,'Casanare','Maní'),(384,'Casanare','Támara'),(385,'Casanare','Orocué'),(386,'Casanare','Yopal'),(387,'Casanare','Aguazul'),(388,'Casanare','Chámeza'),(389,'Casanare','Hato Corozal'),(390,'Casanare','La Salina'),(391,'Casanare','Monterrey'),(392,'Casanare','Pore'),(393,'Casanare','Recetor'),(394,'Casanare','Sabanalarga'),(395,'Casanare','Sácama'),(396,'Casanare','Tauramena'),(397,'Casanare','Trinidad'),(398,'Casanare','Villanueva'),(399,'Casanare','San Luis de Gaceno'),(400,'Casanare','Paz de Ariporo'),(401,'Cauca','Páez'),(402,'Cauca','Popayán'),(403,'Cauca','Almaguer'),(404,'Cauca','Argelia'),(405,'Cauca','Balboa'),(406,'Cauca','Bolívar'),(407,'Cauca','Buenos Aires'),(408,'Cauca','Cajibío'),(409,'Cauca','Caldono'),(410,'Cauca','Caloto'),(411,'Cauca','Corinto'),(412,'Cauca','El Tambo'),(413,'Cauca','Florencia'),(414,'Cauca','Guachené'),(415,'Cauca','Guapi'),(416,'Cauca','Inzá'),(417,'Cauca','Jambaló'),(418,'Cauca','La Sierra'),(419,'Cauca','La Vega'),(420,'Cauca','López'),(421,'Cauca','Mercaderes'),(422,'Cauca','Miranda'),(423,'Cauca','Morales'),(424,'Cauca','Padilla'),(425,'Cauca','Patía'),(426,'Cauca','Piamonte'),(427,'Cauca','Piendamó'),(428,'Cauca','Puerto Tejada'),(429,'Cauca','Puracé'),(430,'Cauca','Rosas'),(431,'Cauca','Santa Rosa'),(432,'Cauca','Silvia'),(433,'Cauca','Sotara'),(434,'Cauca','Suárez'),(435,'Cauca','Sucre'),(436,'Cauca','Timbío'),(437,'Cauca','Timbiquí'),(438,'Cauca','Toribio'),(439,'Cauca','Totoró'),(440,'Cauca','Villa Rica'),(441,'Cauca','Santander de Quilichao'),(442,'Cauca','San Sebastián'),(443,'Cesar','Valledupar'),(444,'Cesar','Aguachica'),(445,'Cesar','Agustín Codazzi'),(446,'Cesar','Astrea'),(447,'Cesar','Becerril'),(448,'Cesar','Bosconia'),(449,'Cesar','Chimichagua'),(450,'Cesar','Chiriguaná'),(451,'Cesar','Curumaní'),(452,'Cesar','El Copey'),(453,'Cesar','El Paso'),(454,'Cesar','Gamarra'),(455,'Cesar','González'),(456,'Cesar','La Gloria'),(457,'Cesar','Manaure'),(458,'Cesar','Pailitas'),(459,'Cesar','Pelaya'),(460,'Cesar','Pueblo Bello'),(461,'Cesar','La Paz'),(462,'Cesar','San Alberto'),(463,'Cesar','San Diego'),(464,'Cesar','San Martín'),(465,'Cesar','Tamalameque'),(466,'Cesar','Río de Oro'),(467,'Cesar','La Jagua de Ibirico'),(468,'Chocó','Carmen del Darien'),(469,'Chocó','Tadó'),(470,'Chocó','Quibdó'),(471,'Chocó','Acandí'),(472,'Chocó','Alto Baudo'),(473,'Chocó','Atrato'),(474,'Chocó','Bagadó'),(475,'Chocó','Bahía Solano'),(476,'Chocó','Bajo Baudó'),(477,'Chocó','Bojaya'),(478,'Chocó','Unión Panamericana'),(479,'Chocó','Cértegui'),(480,'Chocó','Condoto'),(481,'Chocó','Juradó'),(482,'Chocó','Lloró'),(483,'Chocó','Medio Atrato'),(484,'Chocó','Medio Baudó'),(485,'Chocó','Medio San Juan'),(486,'Chocó','Nóvita'),(487,'Chocó','Nuquí'),(488,'Chocó','Río Iro'),(489,'Chocó','Río Quito'),(490,'Chocó','Riosucio'),(491,'Chocó','Sipí'),(492,'Chocó','Unguía'),(493,'Chocó','Istmina'),(494,'Chocó','El Litoral del San Juan'),(495,'Chocó','El Cantón del San Pablo'),(496,'Chocó','El Carmen de Atrato'),(497,'Chocó','San José del Palmar'),(498,'Chocó','Belén de Bajira'),(499,'Córdoba','Montelíbano'),(500,'Córdoba','Montería'),(501,'Córdoba','Ayapel'),(502,'Córdoba','Buenavista'),(503,'Córdoba','Canalete'),(504,'Córdoba','Cereté'),(505,'Córdoba','Chimá'),(506,'Córdoba','Chinú'),(507,'Córdoba','Cotorra'),(508,'Córdoba','Lorica'),(509,'Córdoba','Los Córdobas'),(510,'Córdoba','Momil'),(511,'Córdoba','Moñitos'),(512,'Córdoba','Planeta Rica'),(513,'Córdoba','Pueblo Nuevo'),(514,'Córdoba','Puerto Escondido'),(515,'Córdoba','Purísima'),(516,'Córdoba','Sahagún'),(517,'Córdoba','San Andrés Sotavento'),(518,'Córdoba','San Antero'),(519,'Córdoba','San Pelayo'),(520,'Córdoba','Tierralta'),(521,'Córdoba','Tuchín'),(522,'Córdoba','Valencia'),(523,'Córdoba','La Apartada'),(524,'Córdoba','Puerto Libertador'),(525,'Córdoba','San Bernardo del Viento'),(526,'Córdoba','San José de Uré'),(527,'Córdoba','Ciénaga de Oro'),(528,'Córdoba','San Carlos'),(529,'Cundinamarca','Albán'),(530,'Cundinamarca','Anolaima'),(531,'Cundinamarca','Chía'),(532,'Cundinamarca','El Peñón'),(533,'Cundinamarca','Sopó'),(534,'Cundinamarca','Gama'),(535,'Cundinamarca','Sasaima'),(536,'Cundinamarca','Yacopí'),(537,'Cundinamarca','Anapoima'),(538,'Cundinamarca','Arbeláez'),(539,'Cundinamarca','Beltrán'),(540,'Cundinamarca','Bituima'),(541,'Cundinamarca','Bojacá'),(542,'Cundinamarca','Cabrera'),(543,'Cundinamarca','Cachipay'),(544,'Cundinamarca','Cajicá'),(545,'Cundinamarca','Caparrapí'),(546,'Cundinamarca','Caqueza'),(547,'Cundinamarca','Chaguaní'),(548,'Cundinamarca','Chipaque'),(549,'Cundinamarca','Choachí'),(550,'Cundinamarca','Chocontá'),(551,'Cundinamarca','Cogua'),(552,'Cundinamarca','Cota'),(553,'Cundinamarca','Cucunubá'),(554,'Cundinamarca','El Colegio'),(555,'Cundinamarca','El Rosal'),(556,'Cundinamarca','Fomeque'),(557,'Cundinamarca','Fosca'),(558,'Cundinamarca','Funza'),(559,'Cundinamarca','Fúquene'),(560,'Cundinamarca','Gachala'),(561,'Cundinamarca','Gachancipá'),(562,'Cundinamarca','Gachetá'),(563,'Cundinamarca','Girardot'),(564,'Cundinamarca','Granada'),(565,'Cundinamarca','Guachetá'),(566,'Cundinamarca','Guaduas'),(567,'Cundinamarca','Guasca'),(568,'Cundinamarca','Guataquí'),(569,'Cundinamarca','Guatavita'),(570,'Cundinamarca','Fusagasugá'),(571,'Cundinamarca','Guayabetal'),(572,'Cundinamarca','Gutiérrez'),(573,'Cundinamarca','Jerusalén'),(574,'Cundinamarca','Junín'),(575,'Cundinamarca','La Calera'),(576,'Cundinamarca','La Mesa'),(577,'Cundinamarca','La Palma'),(578,'Cundinamarca','La Peña'),(579,'Cundinamarca','La Vega'),(580,'Cundinamarca','Lenguazaque'),(581,'Cundinamarca','Macheta'),(582,'Cundinamarca','Madrid'),(583,'Cundinamarca','Manta'),(584,'Cundinamarca','Medina'),(585,'Cundinamarca','Mosquera'),(586,'Cundinamarca','Nariño'),(587,'Cundinamarca','Nemocón'),(588,'Cundinamarca','Nilo'),(589,'Cundinamarca','Nimaima'),(590,'Cundinamarca','Nocaima'),(591,'Cundinamarca','Venecia'),(592,'Cundinamarca','Pacho'),(593,'Cundinamarca','Paime'),(594,'Cundinamarca','Pandi'),(595,'Cundinamarca','Paratebueno'),(596,'Cundinamarca','Pasca'),(597,'Cundinamarca','Puerto Salgar'),(598,'Cundinamarca','Pulí'),(599,'Cundinamarca','Quebradanegra'),(600,'Cundinamarca','Quetame'),(601,'Cundinamarca','Quipile'),(602,'Cundinamarca','Apulo'),(603,'Cundinamarca','Ricaurte'),(604,'Cundinamarca','San Bernardo'),(605,'Cundinamarca','San Cayetano'),(606,'Cundinamarca','San Francisco'),(607,'Cundinamarca','Zipaquirá'),(608,'Cundinamarca','Sesquilé'),(609,'Cundinamarca','Sibaté'),(610,'Cundinamarca','Silvania'),(611,'Cundinamarca','Simijaca'),(612,'Cundinamarca','Soacha'),(613,'Cundinamarca','Subachoque'),(614,'Cundinamarca','Suesca'),(615,'Cundinamarca','Supatá'),(616,'Cundinamarca','Susa'),(617,'Cundinamarca','Sutatausa'),(618,'Cundinamarca','Tabio'),(619,'Cundinamarca','Tausa'),(620,'Cundinamarca','Tena'),(621,'Cundinamarca','Tenjo'),(622,'Cundinamarca','Tibacuy'),(623,'Cundinamarca','Tibirita'),(624,'Cundinamarca','Tocaima'),(625,'Cundinamarca','Tocancipá'),(626,'Cundinamarca','Topaipí'),(627,'Cundinamarca','Ubalá'),(628,'Cundinamarca','Ubaque'),(629,'Cundinamarca','Une'),(630,'Cundinamarca','Útica'),(631,'Cundinamarca','Vianí'),(632,'Cundinamarca','Villagómez'),(633,'Cundinamarca','Villapinzón'),(634,'Cundinamarca','Villeta'),(635,'Cundinamarca','Viotá'),(636,'Cundinamarca','Zipacón'),(637,'Cundinamarca','Facatativá'),(638,'Cundinamarca','San Juan de Río Seco'),(639,'Cundinamarca','Villa de San Diego de Ubate'),(640,'Cundinamarca','Guayabal de Siquima'),(641,'Cundinamarca','San Antonio del Tequendama'),(642,'Cundinamarca','Agua de Dios'),(643,'Cundinamarca','Carmen de Carupa'),(644,'Cundinamarca','Vergara'),(645,'Guainía','Inírida'),(646,'Guainía','Barranco Minas'),(647,'Guainía','Mapiripana'),(648,'Guainía','San Felipe'),(649,'Guainía','Puerto Colombia'),(650,'Guainía','La Guadalupe'),(651,'Guainía','Cacahual'),(652,'Guainía','Pana Pana'),(653,'Guainía','Morichal'),(654,'Guaviare','Calamar'),(655,'Guaviare','San José del Guaviare'),(656,'Guaviare','Miraflores'),(657,'Guaviare','El Retorno'),(658,'Huila','Neiva'),(659,'Huila','Acevedo'),(660,'Huila','Agrado'),(661,'Huila','Aipe'),(662,'Huila','Algeciras'),(663,'Huila','Altamira'),(664,'Huila','Baraya'),(665,'Huila','Campoalegre'),(666,'Huila','Colombia'),(667,'Huila','Elías'),(668,'Huila','Garzón'),(669,'Huila','Gigante'),(670,'Huila','Guadalupe'),(671,'Huila','Hobo'),(672,'Huila','Iquira'),(673,'Huila','Isnos'),(674,'Huila','La Argentina'),(675,'Huila','La Plata'),(676,'Huila','Nátaga'),(677,'Huila','Oporapa'),(678,'Huila','Paicol'),(679,'Huila','Palermo'),(680,'Huila','Palestina'),(681,'Huila','Pital'),(682,'Huila','Pitalito'),(683,'Huila','Rivera'),(684,'Huila','Saladoblanco'),(685,'Huila','Santa María'),(686,'Huila','Suaza'),(687,'Huila','Tarqui'),(688,'Huila','Tesalia'),(689,'Huila','Tello'),(690,'Huila','Teruel'),(691,'Huila','Timaná'),(692,'Huila','Villavieja'),(693,'Huila','Yaguará'),(694,'Huila','San Agustín'),(695,'Huila','Villavieja'),(696,'La_Guajira','Riohacha'),(697,'La_Guajira','Albania'),(698,'La_Guajira','Barrancas'),(699,'La_Guajira','Dibula'),(700,'La_Guajira','Distracción'),(701,'La_Guajira','El Molino'),(702,'La_Guajira','Fonseca'),(703,'La_Guajira','Hatonuevo'),(704,'La_Guajira','Maicao'),(705,'La_Guajira','Manaure'),(706,'La_Guajira','Uribia'),(707,'La_Guajira','Urumita'),(708,'La_Guajira','Villanueva'),(709,'La_Guajira','La Jagua del Pilar'),(710,'La_Guajira','San Juan del Cesar'),(711,'Magdalena','Santa Bárbara de Pinto'),(712,'Magdalena','Pueblo Viejo'),(713,'Magdalena','Santa Marta'),(714,'Magdalena','Algarrobo'),(715,'Magdalena','Aracataca'),(716,'Magdalena','Ariguaní'),(717,'Magdalena','Cerro San Antonio'),(718,'Magdalena','Chivolo'),(719,'Magdalena','Concordia'),(720,'Magdalena','El Banco'),(721,'Magdalena','El Piñon'),(722,'Magdalena','El Retén'),(723,'Magdalena','Fundación'),(724,'Magdalena','Guamal'),(725,'Magdalena','Nueva Granada'),(726,'Magdalena','Pedraza'),(727,'Magdalena','Pivijay'),(728,'Magdalena','Plato'),(729,'Magdalena','Remolino'),(730,'Magdalena','Salamina'),(731,'Magdalena','San Zenón'),(732,'Magdalena','Santa Ana'),(733,'Magdalena','Sitionuevo'),(734,'Magdalena','Tenerife'),(735,'Magdalena','Zapayán'),(736,'Magdalena','Zona Bananera'),(737,'Magdalena','Ciénaga'),(738,'Magdalena','San Sebastián de Buenavista'),(739,'Magdalena','Sabanas de San Angel'),(740,'Magdalena','Pijiño del Carmen'),(741,'Meta','Castilla la Nueva'),(742,'Meta','Villavicencio'),(743,'Meta','Acacias'),(744,'Meta','Cabuyaro'),(745,'Meta','Cubarral'),(746,'Meta','Cumaral'),(747,'Meta','El Calvario'),(748,'Meta','El Castillo'),(749,'Meta','El Dorado'),(750,'Meta','Granada'),(751,'Meta','Guamal'),(752,'Meta','Mapiripán'),(753,'Meta','Mesetas'),(754,'Meta','La Macarena'),(755,'Meta','Uribe'),(756,'Meta','Lejanías'),(757,'Meta','Puerto Concordia'),(758,'Meta','Puerto Gaitán'),(759,'Meta','Puerto López'),(760,'Meta','Puerto Lleras'),(761,'Meta','Puerto Rico'),(762,'Meta','Restrepo'),(763,'Meta','San Juanito'),(764,'Meta','San Martín'),(765,'Meta','Vista Hermosa'),(766,'Meta','Barranca de Upía'),(767,'Meta','Fuente de Oro'),(768,'Meta','San Carlos de Guaroa'),(769,'Meta','San Juan de Arama'),(770,'Nariño','Buesaco'),(771,'Nariño','San Andrés de Tumaco'),(772,'Nariño','Belén'),(773,'Nariño','Chachagüí'),(774,'Nariño','Arboleda'),(775,'Nariño','Pasto'),(776,'Nariño','Albán'),(777,'Nariño','Aldana'),(778,'Nariño','Ancuyá'),(779,'Nariño','Barbacoas'),(780,'Nariño','Colón'),(781,'Nariño','Consaca'),(782,'Nariño','Contadero'),(783,'Nariño','Córdoba'),(784,'Nariño','Cuaspud'),(785,'Nariño','Cumbal'),(786,'Nariño','Cumbitara'),(787,'Nariño','El Charco'),(788,'Nariño','El Peñol'),(789,'Nariño','El Rosario'),(790,'Nariño','El Tambo'),(791,'Nariño','Funes'),(792,'Nariño','Guachucal'),(793,'Nariño','Guaitarilla'),(794,'Nariño','Gualmatán'),(795,'Nariño','Iles'),(796,'Nariño','Imués'),(797,'Nariño','Ipiales'),(798,'Nariño','La Cruz'),(799,'Nariño','La Florida'),(800,'Nariño','La Llanada'),(801,'Nariño','La Tola'),(802,'Nariño','La Unión'),(803,'Nariño','Leiva'),(804,'Nariño','Linares'),(805,'Nariño','Los Andes'),(806,'Nariño','Magüí'),(807,'Nariño','Mallama'),(808,'Nariño','Mosquera'),(809,'Nariño','Nariño'),(810,'Nariño','Olaya Herrera'),(811,'Nariño','Ospina'),(812,'Nariño','Francisco Pizarro'),(813,'Nariño','Policarpa'),(814,'Nariño','Potosí'),(815,'Nariño','Providencia'),(816,'Nariño','Puerres'),(817,'Nariño','Pupiales'),(818,'Nariño','Ricaurte'),(819,'Nariño','Roberto Payán'),(820,'Nariño','Samaniego'),(821,'Nariño','Sandoná'),(822,'Nariño','San Bernardo'),(823,'Nariño','San Lorenzo'),(824,'Nariño','San Pablo'),(825,'Nariño','Santa Bárbara'),(826,'Nariño','Sapuyes'),(827,'Nariño','Taminango'),(828,'Nariño','Tangua'),(829,'Nariño','Santacruz'),(830,'Nariño','Túquerres'),(831,'Nariño','Yacuanquer'),(832,'Nariño','San Pedro de Cartago'),(833,'Nariño','El Tablón de Gómez'),(834,'Norte_de_Santander','Pamplona'),(835,'Norte_de_Santander','Pamplonita'),(836,'Norte_de_Santander','Cúcuta'),(837,'Norte_de_Santander','El Carmen'),(838,'Norte_de_Santander','Silos'),(839,'Norte_de_Santander','Cácota'),(840,'Norte_de_Santander','Toledo'),(841,'Norte_de_Santander','Mutiscua'),(842,'Norte_de_Santander','El Zulia'),(843,'Norte_de_Santander','Salazar'),(844,'Norte_de_Santander','Cucutilla'),(845,'Norte_de_Santander','Puerto Santander'),(846,'Norte_de_Santander','Gramalote'),(847,'Norte_de_Santander','El Tarra'),(848,'Norte_de_Santander','Teorama'),(849,'Norte_de_Santander','Arboledas'),(850,'Norte_de_Santander','Lourdes'),(851,'Norte_de_Santander','Bochalema'),(852,'Norte_de_Santander','Convención'),(853,'Norte_de_Santander','Hacarí'),(854,'Norte_de_Santander','Herrán'),(855,'Norte_de_Santander','Tibú'),(856,'Norte_de_Santander','San Cayetano'),(857,'Norte_de_Santander','San Calixto'),(858,'Norte_de_Santander','La Playa'),(859,'Norte_de_Santander','Chinácota'),(860,'Norte_de_Santander','Ragonvalia'),(861,'Norte_de_Santander','La Esperanza'),(862,'Norte_de_Santander','Villa del Rosario'),(863,'Norte_de_Santander','Chitagá'),(864,'Norte_de_Santander','Sardinata'),(865,'Norte_de_Santander','Abrego'),(866,'Norte_de_Santander','Los Patios'),(867,'Norte_de_Santander','Ocaña'),(868,'Norte_de_Santander','Bucarasica'),(869,'Norte_de_Santander','Santiago'),(870,'Norte_de_Santander','Labateca'),(871,'Norte_de_Santander','Cachirá'),(872,'Norte_de_Santander','Villa Caro'),(873,'Norte_de_Santander','Durania'),(874,'Putumayo','Puerto Asís'),(875,'Putumayo','Villagarzón'),(876,'Putumayo','Mocoa'),(877,'Putumayo','Colón'),(878,'Putumayo','Orito'),(879,'Putumayo','Puerto Caicedo'),(880,'Putumayo','Puerto Guzmán'),(881,'Putumayo','Leguízamo'),(882,'Putumayo','Sibundoy'),(883,'Putumayo','San Francisco'),(884,'Putumayo','San Miguel'),(885,'Putumayo','Santiago'),(886,'Putumayo','Valle de Guamez'),(887,'Quindío','Calarcá'),(888,'Quindío','Génova'),(889,'Quindío','Armenia'),(890,'Quindío','Buenavista'),(891,'Quindío','Circasia'),(892,'Quindío','Córdoba'),(893,'Quindío','Filandia'),(894,'Quindío','La Tebaida'),(895,'Quindío','Montenegro'),(896,'Quindío','Pijao'),(897,'Quindío','Quimbaya'),(898,'Quindío','Salento'),(899,'Risaralda','Pereira'),(900,'Risaralda','Apía'),(901,'Risaralda','Balboa'),(902,'Risaralda','Dosquebradas'),(903,'Risaralda','Guática'),(904,'Risaralda','La Celia'),(905,'Risaralda','La Virginia'),(906,'Risaralda','Marsella'),(907,'Risaralda','Mistrató'),(908,'Risaralda','Pueblo Rico'),(909,'Risaralda','Quinchía'),(910,'Risaralda','Santuario'),(911,'Risaralda','Santa Rosa de Cabal'),(912,'Risaralda','Belén de Umbría'),(913,'Santander','Chimá'),(914,'Santander','Capitanejo'),(915,'Santander','El Peñón'),(916,'Santander','Puerto Wilches'),(917,'Santander','Puerto Parra'),(918,'Santander','Bucaramanga'),(919,'Santander','Aguada'),(920,'Santander','Albania'),(921,'Santander','Aratoca'),(922,'Santander','Barbosa'),(923,'Santander','Barichara'),(924,'Santander','Barrancabermeja'),(925,'Santander','Betulia'),(926,'Santander','Bolívar'),(927,'Santander','Cabrera'),(928,'Santander','California'),(929,'Santander','Carcasí'),(930,'Santander','Cepitá'),(931,'Santander','Cerrito'),(932,'Santander','Charalá'),(933,'Santander','Charta'),(934,'Santander','Chipatá'),(935,'Santander','Cimitarra'),(936,'Santander','Concepción'),(937,'Santander','Confines'),(938,'Santander','Contratación'),(939,'Santander','Coromoro'),(940,'Santander','Curití'),(941,'Santander','El Guacamayo'),(942,'Santander','El Playón'),(943,'Santander','Encino'),(944,'Santander','Enciso'),(945,'Santander','Florián'),(946,'Santander','Floridablanca'),(947,'Santander','Galán'),(948,'Santander','Gambita'),(949,'Santander','Girón'),(950,'Santander','Guaca'),(951,'Santander','Guadalupe'),(952,'Santander','Guapotá'),(953,'Santander','Guavatá'),(954,'Santander','Güepsa'),(955,'Santander','Jesús María'),(956,'Santander','Jordán'),(957,'Santander','La Belleza'),(958,'Santander','Landázuri'),(959,'Santander','La Paz'),(960,'Santander','Lebríja'),(961,'Santander','Los Santos'),(962,'Santander','Macaravita'),(963,'Santander','Málaga'),(964,'Santander','Matanza'),(965,'Santander','Mogotes'),(966,'Santander','Molagavita'),(967,'Santander','Ocamonte'),(968,'Santander','Oiba'),(969,'Santander','Onzaga'),(970,'Santander','Palmar'),(971,'Santander','Páramo'),(972,'Santander','Piedecuesta'),(973,'Santander','Pinchote'),(974,'Santander','Puente Nacional'),(975,'Santander','Rionegro'),(976,'Santander','San Andrés'),(977,'Santander','San Gil'),(978,'Santander','San Joaquín'),(979,'Santander','San Miguel'),(980,'Santander','Santa Bárbara'),(981,'Santander','Simacota'),(982,'Santander','Socorro'),(983,'Santander','Suaita'),(984,'Santander','Sucre'),(985,'Santander','Suratá'),(986,'Santander','Tona'),(987,'Santander','Vélez'),(988,'Santander','Vetas'),(989,'Santander','Villanueva'),(990,'Santander','Zapatoca'),(991,'Santander','Palmas del Socorro'),(992,'Santander','San Vicente de Chucurí'),(993,'Santander','San José de Miranda'),(994,'Santander','Santa Helena del Opón'),(995,'Santander','Sabana de Torres'),(996,'Santander','El Carmen de Chucurí'),(997,'Santander','Valle de San José'),(998,'Santander','San Benito'),(999,'Santander','Hato'),(1000,'Sucre','Sampués'),(1001,'Sucre','Corozal'),(1002,'Sucre','Sincelejo'),(1003,'Sucre','Buenavista'),(1004,'Sucre','Caimito'),(1005,'Sucre','Coloso'),(1006,'Sucre','Coveñas'),(1007,'Sucre','Chalán'),(1008,'Sucre','El Roble'),(1009,'Sucre','Galeras'),(1010,'Sucre','Guaranda'),(1011,'Sucre','La Unión'),(1012,'Sucre','Los Palmitos'),(1013,'Sucre','Majagual'),(1014,'Sucre','Morroa'),(1015,'Sucre','Ovejas'),(1016,'Sucre','Palmito'),(1017,'Sucre','San Benito Abad'),(1018,'Sucre','San Marcos'),(1019,'Sucre','San Onofre'),(1020,'Sucre','San Pedro'),(1021,'Sucre','Sucre'),(1022,'Sucre','Tolú Viejo'),(1023,'Sucre','San Luis de Sincé'),(1024,'Sucre','San Juan de Betulia'),(1025,'Sucre','Santiago de Tolú'),(1026,'Tolima','Casabianca'),(1027,'Tolima','Anzoátegui'),(1028,'Tolima','Ibagué'),(1029,'Tolima','Líbano'),(1030,'Tolima','Lérida'),(1031,'Tolima','Suárez'),(1032,'Tolima','Alpujarra'),(1033,'Tolima','Alvarado'),(1034,'Tolima','Ambalema'),(1035,'Tolima','Armero'),(1036,'Tolima','Ataco'),(1037,'Tolima','Cajamarca'),(1038,'Tolima','Chaparral'),(1039,'Tolima','Coello'),(1040,'Tolima','Coyaima'),(1041,'Tolima','Cunday'),(1042,'Tolima','Dolores'),(1043,'Tolima','Espinal'),(1044,'Tolima','Falan'),(1045,'Tolima','Flandes'),(1046,'Tolima','Fresno'),(1047,'Tolima','Guamo'),(1048,'Tolima','Herveo'),(1049,'Tolima','Honda'),(1050,'Tolima','Icononzo'),(1051,'Tolima','Mariquita'),(1052,'Tolima','Melgar'),(1053,'Tolima','Murillo'),(1054,'Tolima','Natagaima'),(1055,'Tolima','Ortega'),(1056,'Tolima','Palocabildo'),(1057,'Tolima','Piedras'),(1058,'Tolima','Planadas'),(1059,'Tolima','Prado'),(1060,'Tolima','Purificación'),(1061,'Tolima','Rio Blanco'),(1062,'Tolima','Roncesvalles'),(1063,'Tolima','Rovira'),(1064,'Tolima','Saldaña'),(1065,'Tolima','Santa Isabel'),(1066,'Tolima','Venadillo'),(1067,'Tolima','Villahermosa'),(1068,'Tolima','Villarrica'),(1069,'Tolima','Valle de San Juan'),(1070,'Tolima','Carmen de Apicala'),(1071,'Tolima','San Luis'),(1072,'Tolima','San Antonio'),(1073,'Valle_del_Cauca','Tuluá'),(1074,'Valle_del_Cauca','Florida'),(1075,'Valle_del_Cauca','Jamundí'),(1076,'Valle_del_Cauca','Buenaventura'),(1077,'Valle_del_Cauca','El Dovio'),(1078,'Valle_del_Cauca','Roldanillo'),(1079,'Valle_del_Cauca','Argelia'),(1080,'Valle_del_Cauca','Sevilla'),(1081,'Valle_del_Cauca','Zarzal'),(1082,'Valle_del_Cauca','El Cerrito'),(1083,'Valle_del_Cauca','Cartago'),(1084,'Valle_del_Cauca','Caicedonia'),(1085,'Valle_del_Cauca','El Cairo'),(1086,'Valle_del_Cauca','La Unión'),(1087,'Valle_del_Cauca','Restrepo'),(1088,'Valle_del_Cauca','Dagua'),(1089,'Valle_del_Cauca','Guacarí'),(1090,'Valle_del_Cauca','Ansermanuevo'),(1091,'Valle_del_Cauca','Bugalagrande'),(1092,'Valle_del_Cauca','La Victoria'),(1093,'Valle_del_Cauca','Ginebra'),(1094,'Valle_del_Cauca','Yumbo'),(1095,'Valle_del_Cauca','Obando'),(1096,'Valle_del_Cauca','Bolívar'),(1097,'Valle_del_Cauca','Cali'),(1098,'Valle_del_Cauca','San Pedro'),(1099,'Valle_del_Cauca','Guadalajara de Buga'),(1100,'Valle_del_Cauca','Calima'),(1101,'Valle_del_Cauca','Andalucía'),(1102,'Valle_del_Cauca','Pradera'),(1103,'Valle_del_Cauca','Yotoco'),(1104,'Valle_del_Cauca','Palmira'),(1105,'Valle_del_Cauca','Riofrío'),(1106,'Valle_del_Cauca','Alcalá'),(1107,'Valle_del_Cauca','Versalles'),(1108,'Valle_del_Cauca','El Águila'),(1109,'Valle_del_Cauca','Toro'),(1110,'Valle_del_Cauca','Candelaria'),(1111,'Valle_del_Cauca','La Cumbre'),(1112,'Valle_del_Cauca','Ulloa'),(1113,'Valle_del_Cauca','Trujillo'),(1114,'Valle_del_Cauca','Vijes'),(1115,'Vaupés','Yavaraté'),(1116,'Vaupés','Mitú'),(1117,'Vaupés','Caruru'),(1118,'Vaupés','Pacoa'),(1119,'Vaupés','Taraira'),(1120,'Vaupés','Papunaua'),(1121,'Vichada','Puerto Carreño'),(1122,'Vichada','La Primavera'),(1123,'Vichada','Santa Rosalía'),(1124,'Vichada','Cumaribo'),(1125,'No_Aporta','No Aporta');
/*!40000 ALTER TABLE `ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2024-07-16 11:33:50
