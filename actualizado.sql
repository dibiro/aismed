-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: aismed
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add centros',7,'add_centros'),(20,'Can change centros',7,'change_centros'),(21,'Can delete centros',7,'delete_centros'),(22,'Can add servicios',8,'add_servicios'),(23,'Can change servicios',8,'change_servicios'),(24,'Can delete servicios',8,'delete_servicios'),(25,'Can add centros por servicios',9,'add_centrosporservicios'),(26,'Can change centros por servicios',9,'change_centrosporservicios'),(27,'Can delete centros por servicios',9,'delete_centrosporservicios'),(28,'Can add horarios',10,'add_horarios'),(29,'Can change horarios',10,'change_horarios'),(30,'Can delete horarios',10,'delete_horarios'),(31,'Can add centros por horarios',11,'add_centrosporhorarios'),(32,'Can change centros por horarios',11,'change_centrosporhorarios'),(33,'Can delete centros por horarios',11,'delete_centrosporhorarios'),(34,'Can add telefonos',12,'add_telefonos'),(35,'Can change telefonos',12,'change_telefonos'),(36,'Can delete telefonos',12,'delete_telefonos');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$eD1hJ4cMeeHN$RIfjFdnxcPfB5AabGyBH1COc1awB97YgkT/HcCxgJoo=','2016-06-03 19:10:07.423224',1,'leopoldo','','','',1,1,'2016-06-03 01:14:29.525107');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centros`
--

DROP TABLE IF EXISTS `centros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  `direccion` longtext NOT NULL,
  `descripcion` longtext,
  `latitud` longtext NOT NULL,
  `longitud` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `fax` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centros`
--

LOCK TABLES `centros` WRITE;
/*!40000 ALTER TABLE `centros` DISABLE KEYS */;
INSERT INTO `centros` VALUES (3,'HOSPITAL ISRAEL RANUAREZ BALZA','Calle Santa Isabel, Sector Bq, San Juan De Los Morros, Estado Guárico ','falta modificar','9.90690833333','-67.3563266667','hirbguarico@hotmail.com','0246-431.24.21'),(4,'Policlínica San Juan','Calle Araure, Los Laureles, San Juan de los Morros, estado Guárico','falta modificar','10','-67','No posee','No posee'),(5,'UEM Santa Rosalía','Calle Guaiquearía, La Tropical, San Juan de los Morros','falta modificar','9.91777166667','-67.3619316667','No posee','No posee'),(6,'Instituto Venezolano de Los Seguros Sociales (Ivss)','Calle Mariño, entre Av. Bolívar y Av. Sendrea, Edif. MC, Nivel PB, Casco Central, San Juan de los Morros','falta modificar','10','-67','No posee','No posee'),(7,'Sede Principal de Clínica Urológica Quirúrgica Betania CA','Urb/Rómulo Gallegos  Av. 1, Nº. 23, Sector 1, San Juan de los Morros','falta modificar','10','-67','No posee','No posee'),(8,'Sede Principal de Clínica Cedeño','Av. Bolívar, N°. 35, Centro, San Juan de los Morros','falta modificar','10','-67','No posee','No posee'),(9,'Clínica Médica Salud Natural Arc CA','Av. Bolívar, C. C. Galerías, Ofic. 23, Centro, San Juan de los Morros','falta modificar','10','-67','No posee','No posee'),(10,'Sociedad Anticancerosa de Venezuela','Calle El Roble, Nº. 17, Clínica de Prevención de Cáncer, Centro, San Juan de los Morros','falta modificar','10','-67','No posee','No posee'),(11,'ESTABLECIMIENTOS DE ATENCION URBANOS I PEDRO ZARAZA ','C/ SEPTIEMBRE C/C CECILIO ACOSTA B/PEDRO ZARAZA Medicina general','falta modificar','10','-67','No posee','No posee'),(12,'ESTABLECIMIENTOS DE ATENCION URBANOS I DESTACAMENTO 28','AV. FUERZAS AEREAS Medicina general','falta modificar','10','-67','No posee','No posee'),(13,'ESTABLECIMIENTOS DE ATENCION URBANOS I LAS PALMAS','CARRETERA NACIONAL, VÍA SAN SEBASTIÁN','falta modificar','10','-67','No posee','No posee'),(14,'ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MAJAGUAS ','CALLEJÓN LOS COMPADRES. BARRIÓ LAS MAJAGUAS','falta modificar','10','-67','No posee','No posee'),(15,'ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA','BARRIO LA MORERA','falta modificar','10','-67','No posee','No posee'),(16,'ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA','C/ LAS MERCEDES B. LAS MERCEDES ','falta modificar','10','-67','No posee','No posee'),(17,'ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ','FINAL CALLE ZAMORA. BARRIÓ PUERTA NEGRA ','falta modificar','10','-67','No posee','No posee'),(18,'ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ','URB. ROMULO GALLEGOS, SECTOR 3, CALLE 3.','falta modificar','10','-67','No posee','No posee'),(19,'ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO','BARRIO LA VICTORIA','falta modificar','10','-67','No posee','No posee'),(20,'ESTABLECIMIENTOS DE ATENCION URBANOS I EL GUAFAL ','RURAL II   URB. EL GUAFAL ','falta modificar','10','-67','No posee','No posee'),(21,'ESTABLECIMIENTOS DE ATENCION URBANOS I FLORES','CASERÍO FLORES CALLE PRINCIPAL','falta modificar','10','-67','No posee','No posee'),(22,'ESTABLECIMIENTOS DE ATENCION URBANOS I LA LLANADA','CASERIO LA LLANADA','falta modificar','10','-67','No posee','No posee'),(23,'ESTABLECIMIENTOS DE ATENCION URBANOS I EL CASTRERO','CASERIO EL CASTRERO','falta modificar','10','-67','No posee','No posee'),(24,'ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MINAS','CASERIO LAS MINAS','falta modificar','10','-67','No posee','No posee'),(25,'ESTABLECIMIENTOS DE ATENCION URBANOS I LOS BAGRES','CASERIO LOS BAGRES','falta modificar','10','-67','No posee','No posee'),(26,'ESTABLECIMIENTOS DE ATENCION URBANOS I LAS ARENILLAS','CASERIO LAS ARENILLAS','falta modificar','10','-67','No posee','No posee'),(27,'ESTABLECIMIENTOS DE ATENCION URBANOS I CHACAO','CASERIO CHACAO','falta modificar','10','-67','No posee','No posee'),(28,'ESTABLECIMIENTOS DE ATENCION URBANOS I LAS CUMBRES','CASERIO LAS CUMBRES','falta modificar','10','-67','No posee','No posee'),(29,'Centro de Diagnóstico Integral “TULIO PINEDA”','Av. José Félix Ribas, San Juan de Los Morros','falta modificar','9.90355166667','-67.3641133333','No posee','No posee'),(30,'Centro Diagnóstico Integral Ernesto “Che-Guevara”','Urb. Bella Vista, san juan de los morros','falta modificar','10','-67','No posee','No posee');
/*!40000 ALTER TABLE `centros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centros_por_horario`
--

DROP TABLE IF EXISTS `centros_por_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centros_por_horario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  `centro_id` int(11) NOT NULL,
  `horario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `centros_por_horario_centro_id_29b215af_fk_centros_id` (`centro_id`),
  KEY `centros_por_horario_932b6051` (`horario_id`),
  CONSTRAINT `centros_por_horario_centro_id_29b215af_fk_centros_id` FOREIGN KEY (`centro_id`) REFERENCES `centros` (`id`),
  CONSTRAINT `centros_por_horario_horario_id_8ba02787_fk_horarios_id` FOREIGN KEY (`horario_id`) REFERENCES `horarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centros_por_horario`
--

LOCK TABLES `centros_por_horario` WRITE;
/*!40000 ALTER TABLE `centros_por_horario` DISABLE KEYS */;
INSERT INTO `centros_por_horario` VALUES (3,'Horario de HOSPITAL ISRAEL RANUAREZ BALZA',3,4),(4,'Horario de HOSPITAL ISRAEL RANUAREZ BALZA',3,5),(5,'Horario de Policlínica San Juan',4,6),(6,'Horario de Policlínica San Juan',4,5),(7,'Horario de Policlínica San Juan',4,7),(8,'Horario de UEM Santa Rosalía',5,6),(9,'Horario de UEM Santa Rosalía',5,5),(10,'Horario de UEM Santa Rosalía',5,7),(11,'Horario de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,6),(12,'Horario de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,5),(13,'Horario de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,7),(14,'Horario de Sede Principal de Clínica Urológica Quirúrgica Betania CA',7,6),(15,'Horario de Sede Principal de Clínica Urológica Quirúrgica Betania CA',7,5),(16,'Horario de Sede Principal de Clínica Urológica Quirúrgica Betania CA',7,7),(17,'Horario de Sede Principal de Clínica Cedeño',8,6),(18,'Horario de Sede Principal de Clínica Cedeño',8,5),(19,'Horario de Sede Principal de Clínica Cedeño',8,7),(20,'Horario de Clínica Médica Salud Natural Arc CA',9,6),(21,'Horario de Clínica Médica Salud Natural Arc CA',9,5),(22,'Horario de Clínica Médica Salud Natural Arc CA',9,7),(23,'Horario de Sociedad Anticancerosa de Venezuela',10,6),(24,'Horario de Sociedad Anticancerosa de Venezuela',10,5),(25,'Horario de Sociedad Anticancerosa de Venezuela',10,7),(26,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I PEDRO ZARAZA ',11,8),(27,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I PEDRO ZARAZA ',11,7),(28,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I DESTACAMENTO 28',12,8),(29,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I DESTACAMENTO 28',12,7),(30,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS PALMAS',13,8),(31,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS PALMAS',13,7),(32,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MAJAGUAS ',14,8),(33,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MAJAGUAS ',14,7),(34,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,8),(35,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,7),(36,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,8),(37,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,7),(38,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17,9),(39,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18,9),(40,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19,9),(41,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I EL GUAFAL ',20,9),(42,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I FLORES',21,9),(43,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LA LLANADA',22,10),(44,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LA LLANADA',22,11),(45,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I EL CASTRERO',23,10),(46,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I EL CASTRERO',23,11),(47,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MINAS',24,10),(48,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MINAS',24,11),(49,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LOS BAGRES',25,10),(50,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LOS BAGRES',25,11),(51,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS ARENILLAS',26,10),(52,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS ARENILLAS',26,11),(53,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I CHACAO',27,10),(54,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I CHACAO',27,11),(55,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS CUMBRES',28,10),(56,'Horario de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS CUMBRES',28,11),(57,'Horario de Centro de Diagnóstico Integral “TULIO PINEDA”',29,9),(58,'Horario de Centro Diagnóstico Integral Ernesto “Che-Guevara”',30,9);
/*!40000 ALTER TABLE `centros_por_horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centros_por_servicios`
--

DROP TABLE IF EXISTS `centros_por_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centros_por_servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  `centro_id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `centros_por_servicios_centro_id_8ce248cd_fk_centros_id` (`centro_id`),
  KEY `centros_por_servicios_4bb699dc` (`servicio_id`),
  CONSTRAINT `centros_por_servicios_centro_id_8ce248cd_fk_centros_id` FOREIGN KEY (`centro_id`) REFERENCES `centros` (`id`),
  CONSTRAINT `centros_por_servicios_servicio_id_e65d32c2_fk_servicios_id` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centros_por_servicios`
--

LOCK TABLES `centros_por_servicios` WRITE;
/*!40000 ALTER TABLE `centros_por_servicios` DISABLE KEYS */;
INSERT INTO `centros_por_servicios` VALUES (47,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,45,1),(48,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,46,1),(49,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,47,1),(50,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,48,1),(51,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,49,1),(52,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,50,1),(53,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,51,1),(54,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,52,1),(55,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,53,1),(56,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,54,1),(57,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,55,1),(58,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,56,1),(59,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,57,1),(60,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,58,1),(61,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,59,1),(62,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,60,1),(63,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,61,1),(64,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,62,1),(65,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,63,1),(66,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,64,1),(67,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,65,1),(68,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,66,1),(69,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,67,1),(70,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,68,1),(71,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,69,1),(72,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,70,1),(73,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,71,1),(74,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,72,1),(75,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,73,1),(76,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,74,1),(77,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,75,1),(78,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,76,1),(79,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,77,1),(80,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,78,1),(81,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,79,1),(82,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,80,1),(83,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,81,1),(84,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,82,1),(85,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,83,1),(86,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,84,1),(87,'Servicio de HOSPITAL ISRAEL RANUAREZ BALZA',3,85,1),(88,'Servicio de Policlínica San Juan',4,75,1),(89,'Servicio de Policlínica San Juan',4,86,1),(90,'Servicio de Policlínica San Juan',4,87,1),(91,'Servicio de Policlínica San Juan',4,88,1),(92,'Servicio de Policlínica San Juan',4,89,1),(93,'Servicio de Policlínica San Juan',4,90,1),(94,'Servicio de Policlínica San Juan',4,91,1),(95,'Servicio de Policlínica San Juan',4,92,1),(96,'Servicio de Policlínica San Juan',4,93,1),(97,'Servicio de Policlínica San Juan',4,49,1),(98,'Servicio de Policlínica San Juan',4,55,1),(99,'Servicio de Policlínica San Juan',4,94,1),(100,'Servicio de UEM Santa Rosalía',5,95,1),(101,'Servicio de UEM Santa Rosalía',5,86,1),(102,'Servicio de UEM Santa Rosalía',5,87,1),(103,'Servicio de UEM Santa Rosalía',5,96,1),(104,'Servicio de UEM Santa Rosalía',5,97,1),(105,'Servicio de UEM Santa Rosalía',5,98,1),(106,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,99,1),(107,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,100,1),(108,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,101,1),(109,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,102,1),(110,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,103,1),(111,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,86,1),(112,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,104,1),(113,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,105,1),(114,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,106,1),(115,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,107,1),(116,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,108,1),(117,'Servicio de Instituto Venezolano de Los Seguros Sociales (Ivss)',6,45,1),(118,'Servicio de Sede Principal de Clínica Urológica Quirúrgica Betania CA',7,109,1),(119,'Servicio de Sede Principal de Clínica Urológica Quirúrgica Betania CA',7,110,1),(120,'Servicio de Sede Principal de Clínica Urológica Quirúrgica Betania CA',7,105,1),(121,'Servicio de Sede Principal de Clínica Urológica Quirúrgica Betania CA',7,111,1),(122,'Servicio de Sede Principal de Clínica Cedeño',8,75,1),(123,'Servicio de Sede Principal de Clínica Cedeño',8,76,1),(124,'Servicio de Sede Principal de Clínica Cedeño',8,100,1),(125,'Servicio de Sede Principal de Clínica Cedeño',8,105,1),(126,'Servicio de Sede Principal de Clínica Cedeño',8,112,1),(127,'Servicio de Sede Principal de Clínica Cedeño',8,113,1),(128,'Servicio de Sede Principal de Clínica Cedeño',8,114,1),(129,'Servicio de Sede Principal de Clínica Cedeño',8,86,1),(130,'Servicio de Sede Principal de Clínica Cedeño',8,111,1),(131,'Servicio de Clínica Médica Salud Natural Arc CA',9,115,1),(132,'Servicio de Clínica Médica Salud Natural Arc CA',9,116,1),(133,'Servicio de Clínica Médica Salud Natural Arc CA',9,117,1),(134,'Servicio de Clínica Médica Salud Natural Arc CA',9,118,1),(135,'Servicio de Clínica Médica Salud Natural Arc CA',9,119,1),(136,'Servicio de Clínica Médica Salud Natural Arc CA',9,120,1),(137,'Servicio de Clínica Médica Salud Natural Arc CA',9,121,1),(138,'Servicio de Clínica Médica Salud Natural Arc CA',9,122,1),(139,'Servicio de Clínica Médica Salud Natural Arc CA',9,123,1),(140,'Servicio de Clínica Médica Salud Natural Arc CA',9,124,1),(141,'Servicio de Clínica Médica Salud Natural Arc CA',9,111,1),(142,'Servicio de Clínica Médica Salud Natural Arc CA',9,125,1),(143,'Servicio de Clínica Médica Salud Natural Arc CA',9,126,1),(144,'Servicio de Clínica Médica Salud Natural Arc CA',9,127,1),(145,'Servicio de Clínica Médica Salud Natural Arc CA',9,128,1),(146,'Servicio de Clínica Médica Salud Natural Arc CA',9,129,1),(147,'Servicio de Clínica Médica Salud Natural Arc CA',9,130,1),(148,'Servicio de Clínica Médica Salud Natural Arc CA',9,131,1),(149,'Servicio de Sociedad Anticancerosa de Venezuela',10,132,1),(150,'Servicio de Sociedad Anticancerosa de Venezuela',10,133,1),(151,'Servicio de Sociedad Anticancerosa de Venezuela',10,134,1),(152,'Servicio de Sociedad Anticancerosa de Venezuela',10,135,1),(153,'Servicio de Sociedad Anticancerosa de Venezuela',10,136,1),(154,'Servicio de Sociedad Anticancerosa de Venezuela',10,137,1),(155,'Servicio de Sociedad Anticancerosa de Venezuela',10,138,1),(156,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PEDRO ZARAZA ',11,139,1),(157,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PEDRO ZARAZA ',11,140,1),(158,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I DESTACAMENTO 28',12,139,1),(159,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I DESTACAMENTO 28',12,140,1),(160,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS PALMAS',13,139,1),(161,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS PALMAS',13,140,1),(162,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MAJAGUAS ',14,139,1),(163,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MAJAGUAS ',14,140,1),(164,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MAJAGUAS ',14,141,1),(165,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,141,1),(166,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,139,1),(167,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,140,1),(168,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,142,1),(169,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,55,1),(170,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,143,1),(171,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,49,1),(172,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15,93,1),(173,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,141,1),(174,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,139,1),(175,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,140,1),(176,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,142,1),(177,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,55,1),(178,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,143,1),(179,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,49,1),(180,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16,93,1),(181,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17,141,1),(182,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17,139,1),(183,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17,140,1),(184,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17,142,1),(185,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17,55,1),(186,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17,143,1),(187,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17,49,1),(188,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17,93,1),(189,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18,141,1),(190,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18,139,1),(191,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18,140,1),(192,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18,142,1),(193,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18,55,1),(194,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18,143,1),(195,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18,49,1),(196,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18,93,1),(197,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19,141,1),(198,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19,139,1),(199,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19,140,1),(200,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19,142,1),(201,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19,55,1),(202,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19,143,1),(203,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19,49,1),(204,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19,93,1),(205,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL GUAFAL ',20,139,1),(206,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL GUAFAL ',20,140,1),(207,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL GUAFAL ',20,141,1),(208,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I FLORES',21,139,1),(209,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I FLORES',21,140,1),(210,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I FLORES',21,141,1),(211,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA LLANADA',22,139,1),(212,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LA LLANADA',22,141,1),(213,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL CASTRERO',23,139,1),(214,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I EL CASTRERO',23,141,1),(215,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MINAS',24,139,1),(216,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MINAS',24,141,1),(217,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LOS BAGRES',25,139,1),(218,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LOS BAGRES',25,141,1),(219,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS ARENILLAS',26,139,1),(220,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS ARENILLAS',26,141,1),(221,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I CHACAO',27,139,1),(222,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I CHACAO',27,141,1),(223,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS CUMBRES',28,139,1),(224,'Servicio de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS CUMBRES',28,141,1),(225,'Servicio de Centro de Diagnóstico Integral “TULIO PINEDA”',29,144,1),(226,'Servicio de Centro de Diagnóstico Integral “TULIO PINEDA”',29,51,1),(227,'Servicio de Centro de Diagnóstico Integral “TULIO PINEDA”',29,145,1),(228,'Servicio de Centro de Diagnóstico Integral “TULIO PINEDA”',29,86,1),(229,'Servicio de Centro de Diagnóstico Integral “TULIO PINEDA”',29,143,0),(230,'Servicio de Centro de Diagnóstico Integral “TULIO PINEDA”',29,75,0),(231,'Servicio de Centro Diagnóstico Integral Ernesto “Che-Guevara”',30,144,1),(232,'Servicio de Centro Diagnóstico Integral Ernesto “Che-Guevara”',30,51,1),(233,'Servicio de Centro Diagnóstico Integral Ernesto “Che-Guevara”',30,145,1),(234,'Servicio de Centro Diagnóstico Integral Ernesto “Che-Guevara”',30,86,1),(235,'Servicio de Centro Diagnóstico Integral Ernesto “Che-Guevara”',30,143,1),(236,'Servicio de Centro Diagnóstico Integral Ernesto “Che-Guevara”',30,75,1);
/*!40000 ALTER TABLE `centros_por_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-06-03 19:12:15.236597','1','HOSPITAL ISRAEL RANUAREZ BALZA (9.906908333333332, -67.35632666666667)',1,'Añadido.',7,1),(2,'2016-06-03 19:12:47.823815','1','0246-431.24.21 (HOSPITAL ISRAEL RANUAREZ BALZA (9.906908333333332, -67.35632666666667))',1,'Añadido.',12,1),(3,'2016-06-03 19:13:16.649317','2','0246-431.10.03 (HOSPITAL ISRAEL RANUAREZ BALZA (9.906908333333332, -67.35632666666667))',1,'Añadido.',12,1),(4,'2016-06-03 19:14:22.590570','1','Consulta',1,'Añadido.',10,1),(5,'2016-06-03 19:14:29.890110','1','Consulta (HOSPITAL ISRAEL RANUAREZ BALZA (9.906908333333332, -67.35632666666667))',1,'Añadido.',11,1),(6,'2016-06-03 19:14:40.315689','1','Consulta (HOSPITAL ISRAEL RANUAREZ BALZA (9.906908333333332, -67.35632666666667))',2,'No ha cambiado ningún campo.',11,1),(7,'2016-06-03 19:15:18.777688','2','Emergencia',1,'Añadido.',10,1),(8,'2016-06-03 19:15:18.816996','3','Emergencia',1,'Añadido.',10,1),(9,'2016-06-03 19:15:47.190641','2','Emergencia (HOSPITAL ISRAEL RANUAREZ BALZA (9.906908333333332, -67.35632666666667))',1,'Añadido.',11,1),(10,'2016-06-03 19:16:18.384334','1','Medicina Interna',1,'Añadido.',8,1),(11,'2016-06-03 19:16:18.383360','2','Medicina Interna',1,'Añadido.',8,1),(12,'2016-06-03 19:16:36.946158','1','Medicina Interna (HOSPITAL ISRAEL RANUAREZ BALZA (9.906908333333332, -67.35632666666667))',1,'Añadido.',9,1),(13,'2016-06-03 19:16:58.118683','3','Cardiología',1,'Añadido.',8,1),(14,'2016-06-03 19:17:05.547292','2','Cardiología (HOSPITAL ISRAEL RANUAREZ BALZA (9.906908333333332, -67.35632666666667))',1,'Añadido.',9,1),(15,'2016-06-04 11:47:56.261772','2','Medicina Interna',3,'',8,1),(16,'2016-06-04 11:48:03.659600','3','Cardiología',3,'',8,1),(17,'2016-06-04 11:48:03.701320','1','Medicina Interna',3,'',8,1),(18,'2016-06-04 11:48:15.006084','1','HOSPITAL ISRAEL RANUAREZ BALZA (9.906908333333332, -67.35632666666667)',3,'',7,1),(19,'2016-06-04 12:34:49.646401','46','Nutrición y Dietética (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(20,'2016-06-04 12:34:49.694180','45','Laboratorio. (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(21,'2016-06-04 12:34:49.728122','44','Citología. (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(22,'2016-06-04 12:34:49.836903','43','Biopsias. (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(23,'2016-06-04 12:34:49.870146','42','Autopsias forense. (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(24,'2016-06-04 12:34:49.903575','41','Autopsias no forense. (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(25,'2016-06-04 12:34:49.945448','40','Anatomía Patológica. (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(26,'2016-06-04 12:34:49.979243','39','Radiología. (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(27,'2016-06-04 12:34:50.012912','38','Emergencia  (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(28,'2016-06-04 12:34:50.046063','37','Obstétrico (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(29,'2016-06-04 12:34:50.080214','36','Traumatología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(30,'2016-06-04 12:34:50.112480','35','Cirugía (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(31,'2016-06-04 12:34:50.145897','34','Hospitalización  (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(32,'2016-06-04 12:34:50.179334','33','Emergencia  (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(33,'2016-06-04 12:34:50.212764','32','Electrofisiología Auditiva (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(34,'2016-06-04 12:34:50.246167','31','Unidad de Audiología de Adultos (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(35,'2016-06-04 12:34:50.279671','30','Foniatría (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(36,'2016-06-04 12:34:50.321919','29','Oftalmología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(37,'2016-06-04 12:34:50.355276','28','ORL (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(38,'2016-06-04 12:34:50.388718','27','Infectología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(39,'2016-06-04 12:34:50.422096','26','Cirugía Plástica (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(40,'2016-06-04 12:34:50.455087','25','Diálisis Peritoneal (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(41,'2016-06-04 12:34:50.488513','24','Hemodiálisis (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(42,'2016-06-04 12:34:50.522008','23','Dermatología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(43,'2016-06-04 12:34:50.555423','22','Unidad Oncológica (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(44,'2016-06-04 12:34:50.588834','21','Urología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(45,'2016-06-04 12:34:50.622319','20','Hematología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(46,'2016-06-04 12:34:50.655721','19','Neonatología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(47,'2016-06-04 12:34:50.689124','18','Perinatología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(48,'2016-06-04 12:34:50.722537','17','Neurocirugía (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(49,'2016-06-04 12:34:50.755990','16','Nefrología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(50,'2016-06-04 12:34:50.822659','15','Oncología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(51,'2016-06-04 12:34:50.956482','14','Cirugía Pediátrica (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(52,'2016-06-04 12:34:50.989877','13','Obstetricia (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(53,'2016-06-04 12:34:51.022888','12','Cirugía de Mano (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(54,'2016-06-04 12:34:51.056323','11','Neurología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(55,'2016-06-04 12:34:51.089742','10','Gastroenterología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(56,'2016-06-04 12:34:51.123211','9','Oftalmología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(57,'2016-06-04 12:34:51.156719','8','Pediatría Médica (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(58,'2016-06-04 12:34:51.206815','7','Ginecología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(59,'2016-06-04 12:34:51.240246','6','Traumatología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(60,'2016-06-04 12:34:51.274083','5','Cirugía General (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(61,'2016-06-04 12:34:51.307561','4','Cardiología (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(62,'2016-06-04 12:34:51.340959','3','Medicina Interna (HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667))',3,'',9,1),(63,'2016-06-04 12:35:03.037625','2','HOSPITAL ISRAEL RANUAREZ BALZA (9.90690833333, -67.3563266667)',3,'',7,1),(64,'2016-06-04 12:35:17.517741','3','Emergencia',3,'',10,1),(65,'2016-06-04 12:35:17.566687','2','Emergencia',3,'',10,1),(66,'2016-06-04 12:35:17.600042','1','Consulta',3,'',10,1),(67,'2016-06-04 12:35:34.212325','44','Nutrición y Dietética',3,'',8,1),(68,'2016-06-04 12:35:34.244508','43','Laboratorio.',3,'',8,1),(69,'2016-06-04 12:35:34.277890','42','Citología.',3,'',8,1),(70,'2016-06-04 12:35:34.311418','41','Biopsias.',3,'',8,1),(71,'2016-06-04 12:35:34.344828','40','Autopsias forense.',3,'',8,1),(72,'2016-06-04 12:35:34.378265','39','Autopsias no forense.',3,'',8,1),(73,'2016-06-04 12:35:34.453843','38','Anatomía Patológica.',3,'',8,1),(74,'2016-06-04 12:35:34.495237','37','Radiología.',3,'',8,1),(75,'2016-06-04 12:35:34.537031','36','Obstétrico',3,'',8,1),(76,'2016-06-04 12:35:34.570396','35','Cirugía',3,'',8,1),(77,'2016-06-04 12:35:34.603813','34','Hospitalización ',3,'',8,1),(78,'2016-06-04 12:35:34.637255','33','Emergencia ',3,'',8,1),(79,'2016-06-04 12:35:34.679042','32','Electrofisiología Auditiva',3,'',8,1),(80,'2016-06-04 12:35:34.712430','31','Unidad de Audiología de Adultos',3,'',8,1),(81,'2016-06-04 12:35:34.745893','30','Foniatría',3,'',8,1),(82,'2016-06-04 12:35:34.781118','29','ORL',3,'',8,1),(83,'2016-06-04 12:35:34.813195','28','Infectología',3,'',8,1),(84,'2016-06-04 12:35:34.847247','27','Cirugía Plástica',3,'',8,1),(85,'2016-06-04 12:35:34.880047','26','Diálisis Peritoneal',3,'',8,1),(86,'2016-06-04 12:35:34.913010','25','Hemodiálisis',3,'',8,1),(87,'2016-06-04 12:35:34.946436','24','Dermatología',3,'',8,1),(88,'2016-06-04 12:35:34.988193','23','Unidad Oncológica',3,'',8,1),(89,'2016-06-04 12:35:35.021606','22','Urología',3,'',8,1),(90,'2016-06-04 12:35:35.055060','21','Hematología',3,'',8,1),(91,'2016-06-04 12:35:35.098108','20','Neonatología',3,'',8,1),(92,'2016-06-04 12:35:35.131563','19','Perinatología',3,'',8,1),(93,'2016-06-04 12:35:35.164951','18','Neurocirugía',3,'',8,1),(94,'2016-06-04 12:35:35.206749','17','Nefrología',3,'',8,1),(95,'2016-06-04 12:35:35.240173','16','Oncología',3,'',8,1),(96,'2016-06-04 12:35:35.273588','15','Cirugía Pediátrica',3,'',8,1),(97,'2016-06-04 12:35:35.307034','14','Obstetricia',3,'',8,1),(98,'2016-06-04 12:35:35.340445','13','Cirugía de Mano',3,'',8,1),(99,'2016-06-04 12:35:35.373894','12','Neurología',3,'',8,1),(100,'2016-06-04 12:35:35.407330','11','Gastroenterología',3,'',8,1),(101,'2016-06-04 12:35:35.440725','10','Oftalmología',3,'',8,1),(102,'2016-06-04 12:35:35.474133','9','Pediatría Médica',3,'',8,1),(103,'2016-06-04 12:35:35.515949','8','Ginecología',3,'',8,1),(104,'2016-06-04 12:35:35.549418','7','Traumatología',3,'',8,1),(105,'2016-06-04 12:35:35.582860','6','Cirugía General',3,'',8,1),(106,'2016-06-04 12:35:35.616243','5','Cardiología',3,'',8,1),(107,'2016-06-04 12:35:35.657992','4','Medicina Interna',3,'',8,1),(108,'2016-06-04 13:37:00.659534','230','Hospitalización  (Centro de Diagnóstico Integral “TULIO PINEDA” (9.90355166667, -67.3641133333))',2,'Modificado/a estado.',9,1),(109,'2016-06-04 13:42:20.674538','229','Laboratorios  (Centro de Diagnóstico Integral “TULIO PINEDA” (9.90355166667, -67.3641133333))',2,'Modificado/a estado.',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'hospitales','centros'),(11,'hospitales','centrosporhorarios'),(9,'hospitales','centrosporservicios'),(10,'hospitales','horarios'),(8,'hospitales','servicios'),(12,'hospitales','telefonos'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-06-03 01:13:17.485222'),(2,'auth','0001_initial','2016-06-03 01:13:25.604067'),(3,'admin','0001_initial','2016-06-03 01:13:27.279938'),(4,'admin','0002_logentry_remove_auto_add','2016-06-03 01:13:27.456345'),(5,'contenttypes','0002_remove_content_type_name','2016-06-03 01:13:28.623490'),(6,'auth','0002_alter_permission_name_max_length','2016-06-03 01:13:29.327459'),(7,'auth','0003_alter_user_email_max_length','2016-06-03 01:13:30.047837'),(8,'auth','0004_alter_user_username_opts','2016-06-03 01:13:30.162549'),(9,'auth','0005_alter_user_last_login_null','2016-06-03 01:13:30.727072'),(10,'auth','0006_require_contenttypes_0002','2016-06-03 01:13:30.768340'),(11,'auth','0007_alter_validators_add_error_messages','2016-06-03 01:13:30.842949'),(12,'hospitales','0001_initial','2016-06-03 01:13:32.225275'),(13,'hospitales','0002_auto_20160409_1213','2016-06-03 01:13:33.482915'),(14,'hospitales','0003_auto_20160416_1812','2016-06-03 01:13:38.061201'),(15,'hospitales','0004_auto_20160416_1946','2016-06-03 01:13:43.600087'),(16,'hospitales','0005_auto_20160421_2118','2016-06-03 01:13:52.813472'),(17,'hospitales','0006_auto_20160603_0112','2016-06-03 01:13:54.526461'),(18,'sessions','0001_initial','2016-06-03 01:13:55.123067'),(19,'hospitales','0007_auto_20160604_0705','2016-06-04 11:35:56.573658'),(20,'hospitales','0008_auto_20160604_0717','2016-06-04 11:48:30.170862');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4qjxiqp6nth0eo7iq0aetc8qvljfnm5w','Yjk1OGU2ODAzZWU2NzAxYjI5YWQ2MDU4YTM5OWRhMmI4OGU3ZTA2NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3M2U4ZjI4Yzk5ZWZhMzdmZmMzOTVmZjU1NTM4YmJmNDJlYmEzMWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-17 01:23:28.422644'),('fcrmnnu0b5yhkdxqvk0fdlwbr9tvm1cr','Yjk1OGU2ODAzZWU2NzAxYjI5YWQ2MDU4YTM5OWRhMmI4OGU3ZTA2NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3M2U4ZjI4Yzk5ZWZhMzdmZmMzOTVmZjU1NTM4YmJmNDJlYmEzMWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-06-17 19:10:07.556977');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `hora_de_entrada` time(6) NOT NULL,
  `hora_de_salida` time(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (4,'Consulta','07:00:00.000000','13:00:00.000000'),(5,'Emergencia','07:00:00.000000','07:00:00.000000'),(6,'Consulta Mañana','08:00:00.000000','12:00:00.000000'),(7,'Consulta Tarde','13:00:00.000000','17:00:00.000000'),(8,'Consulta Mañana','07:00:00.000000','11:00:00.000000'),(9,'Consulta','07:00:00.000000','07:00:00.000000'),(10,'Consulta Mañana','07:00:00.000000','12:00:00.000000'),(11,'Consulta Tarde','13:00:00.000000','16:00:00.000000');
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `servicios_nombre_265f10f5_uniq` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (116,'Acné'),(107,'Ambulatorios'),(79,'Anatomía Patológica.'),(115,'Artritis'),(81,'Autopsias forense.'),(80,'Autopsias no forense.'),(95,'Biomedicina Celular'),(82,'Biopsias.'),(118,'Caída del Cabello'),(139,'Camas de observación'),(46,'Cardiología'),(106,'Centros de Salud'),(76,'Cirugía'),(54,'Cirugía de Mano'),(47,'Cirugía General'),(56,'Cirugía Pediátrica'),(68,'Cirugía Plástica'),(83,'Citología.'),(111,'Clínicas'),(112,'Clínico'),(117,'Colon Irritable'),(103,'Consultas Médicas'),(138,'Consultorios Médicos'),(134,'Cuello Uterino'),(65,'Dermatología'),(92,'Dermatólogo'),(67,'Diálisis Peritoneal'),(145,'ecografías'),(137,'Educación y Exámenes de Pesquisa'),(73,'Electrofisiología Auditiva'),(74,'Emergencia '),(119,'Estreñimiento'),(87,'Estudios médicos'),(110,'Exámenes Clínicos'),(104,'Exámenes de Sangre'),(71,'Foniatría'),(132,'Fundaciones'),(126,'Gastritis'),(52,'Gastroenterología'),(94,'Gastroenterología. '),(49,'Ginecología'),(62,'Hematología'),(66,'Hemodiálisis'),(122,'Hipertensión'),(102,'Hospitales'),(75,'Hospitalización '),(123,'Impotencia'),(69,'Infectología'),(120,'Insomnio'),(105,'Laboratorio'),(98,'Laboratorio clínico'),(84,'Laboratorio.'),(143,'Laboratorios '),(100,'Maternidad'),(136,'Mediante la Facilitación de Información'),(141,'Medicina general'),(144,'Medicina integral'),(45,'Medicina Interna'),(99,'Médico'),(109,'Médicos Urólogos'),(58,'Nefrología'),(61,'Neonatología'),(97,'Neumología'),(59,'Neurocirugía'),(53,'Neurología'),(90,'Neurólogo'),(85,'Nutrición y Dietética'),(55,'Obstetricia'),(77,'Obstétrico'),(88,'Odontología'),(140,'Odontológico'),(51,'Oftalmología'),(142,'Oftalmológico'),(91,'Oftalmólogo'),(57,'Oncología'),(70,'ORL'),(89,'Otorrinolaringólogo'),(93,'Pediatría'),(50,'Pediatría Médica'),(60,'Perinatología'),(133,'Programa de Prevención y Detección Precoz de Cáncer de Mama'),(135,'Próstata y Piel'),(130,'Prostatitis'),(78,'Radiología.'),(86,'Rayos x'),(101,'Rehabilitación'),(108,'Seguros'),(125,'Sobrepeso'),(124,'Stress'),(129,'Terapia de Rejuvenecimiento'),(128,'Terapia del Dolor'),(131,'Tiendas Naturistas'),(114,'Tomografía'),(96,'Tomografías'),(121,'Trastornos Circulares'),(48,'Traumatología'),(127,'Úlceras Varicosas'),(72,'Unidad de Audiología de Adultos'),(113,'Unidad de Cuidados Intensivos Adultos y Neonatal'),(64,'Unidad Oncológica'),(63,'Urología');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefonos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telefono` varchar(20) NOT NULL,
  `descripcion` longtext NOT NULL,
  `centro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `telefonos_8a738e00` (`centro_id`),
  CONSTRAINT `telefonos_centro_id_af036ed1_fk_hospitales_id` FOREIGN KEY (`centro_id`) REFERENCES `centros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (4,'0246-431.24.21/431.1','Telefono de HOSPITAL ISRAEL RANUAREZ BALZA',3),(5,'(0246)431.8601','Telefono de Policlínica San Juan',4),(6,'(0246)431.3806','Telefono de UEM Santa Rosalía',5),(7,'(0246)431.4337/1761','Telefono de Instituto Venezolano de Los Seguros Sociales (Ivss)',6),(8,'(0246)431.0731/5898','Telefono de Sede Principal de Clínica Urológica Quirúrgica Betania CA',7),(9,'(0246)431.5373/2869','Telefono de Sede Principal de Clínica Cedeño',8),(10,'(0246)415.9436','Telefono de Clínica Médica Salud Natural Arc CA',9),(11,'(0246)341.4489/0537','Telefono de Sociedad Anticancerosa de Venezuela',10),(12,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I PEDRO ZARAZA ',11),(13,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I DESTACAMENTO 28',12),(14,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS PALMAS',13),(15,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MAJAGUAS ',14),(16,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I LA MORERA',15),(17,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I LA ENFERMERIA',16),(18,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I PUERTA NEGRA ',17),(19,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I RÓMULO GALLEGOS ',18),(20,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I EL JOBO',19),(21,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I EL GUAFAL ',20),(22,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I FLORES',21),(23,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I LA LLANADA',22),(24,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I EL CASTRERO',23),(25,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS MINAS',24),(26,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I LOS BAGRES',25),(27,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS ARENILLAS',26),(28,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I CHACAO',27),(29,'No posee','Telefono de ESTABLECIMIENTOS DE ATENCION URBANOS I LAS CUMBRES',28),(30,'No posee','Telefono de Centro de Diagnóstico Integral “TULIO PINEDA”',29),(31,'No posee','Telefono de Centro Diagnóstico Integral Ernesto “Che-Guevara”',30);
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-04  9:22:21
