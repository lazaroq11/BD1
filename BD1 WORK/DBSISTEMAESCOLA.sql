-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaescola
-- ------------------------------------------------------
-- Server version	5.7.8-rc-log

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
-- Table structure for table `aluno_matriculado`
--

DROP TABLE IF EXISTS `aluno_matriculado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_matriculado` (
  `id_aluno` int(11) NOT NULL,
  `cpf_responsavel` int(11) NOT NULL,
  `numero_matricula` int(11) NOT NULL,
  `numero_login` int(11) NOT NULL,
  `id_endereco` int(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `nome_aluno` varchar(80) NOT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `numero_matricula_aluno_matriculadoFK_idx` (`numero_matricula`),
  KEY `cpf_responsavel_aluno_matriculadoFK_idx` (`cpf_responsavel`),
  KEY `numero_login_aluno_matriculadoFK_idx` (`numero_login`),
  KEY `id_endereco_aluno_matriculadoFK_idx` (`id_endereco`),
  CONSTRAINT `cpf_responsavel_aluno_matriculadoFK` FOREIGN KEY (`cpf_responsavel`) REFERENCES `responsavel` (`cpf_responsavel`) ON UPDATE CASCADE,
  CONSTRAINT `id_endereco_aluno_matriculadoFK` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`) ON UPDATE CASCADE,
  CONSTRAINT `numero_login_aluno_matriculadoFK` FOREIGN KEY (`numero_login`) REFERENCES `login` (`numero_login`) ON UPDATE CASCADE,
  CONSTRAINT `numero_matricula_aluno_matriculadoFK` FOREIGN KEY (`numero_matricula`) REFERENCES `matricula` (`numero_matricula`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_matriculado`
--

LOCK TABLES `aluno_matriculado` WRITE;
/*!40000 ALTER TABLE `aluno_matriculado` DISABLE KEYS */;
INSERT INTO `aluno_matriculado` VALUES (10001,394357354,10001,10001,10012,'2004-04-04','joao pereira'),(10002,394357354,10002,10002,10013,'2004-04-04','jorge pereira'),(10003,394357354,10003,10003,10014,'2004-04-04','jose pereira'),(10004,394357354,10004,10004,10015,'2004-04-04','victor pereira'),(10005,399423422,10005,10005,10016,'2004-04-04','rogerio pereira'),(10006,399423422,10006,10006,10017,'2004-04-04','luan pereira'),(10007,399423422,10007,10007,10018,'2004-04-04','leticia pereira'),(10008,399424766,10008,10008,10019,'2004-04-04','laelson pereira'),(10009,399424766,10009,10009,10020,'2004-04-04','manuela pereira'),(10010,399424766,10010,10010,10021,'2004-04-04','moises pereira'),(10011,399424766,10011,10011,10022,'2004-04-04','clarck pereira'),(10012,399452356,10012,10012,10023,'2004-04-04','monica pereira'),(10013,399452356,10013,10013,10024,'2004-04-04','ingridy pereira'),(10014,399452356,10014,10014,10025,'2004-04-04','ian pereira'),(10015,399452356,10015,10015,10026,'2004-04-04','cleber pereira'),(10016,399452366,10016,10016,10027,'2004-04-04','alan pereira'),(10017,399452366,10017,10017,10028,'2004-04-04','bianca pereira'),(10018,399452366,10018,10018,10029,'2004-04-04','vanessa pereira'),(10019,399452368,10019,10019,10030,'2004-04-04','luisa pereira'),(10020,399452368,10020,10020,10031,'2004-04-04','alberto pereira'),(10021,399452368,10021,10021,10032,'2004-04-04','tarcio pereira'),(10022,399452368,10022,10022,10033,'2004-04-04','clarck pereira'),(10023,399452368,10023,10023,10034,'2004-04-04','israel pereira'),(10024,399453476,10024,10024,10035,'2004-04-04','alanzin pereira'),(10025,399453476,10025,10025,10036,'2004-04-04','duck pereira'),(10026,399453476,10026,10026,10037,'2004-04-04','trocs pereira'),(10027,399453476,10027,10027,10038,'2004-04-04','ana pereira'),(10028,399453476,10028,10028,10039,'2004-04-04','rebert pereira'),(10029,399457476,10029,10029,10040,'2004-04-04','vini pereira'),(10030,399457476,10030,10030,10041,'2004-04-04','tavis pereira'),(10031,399457476,10031,10031,10042,'2004-04-04','mel pereira'),(10032,399457476,10032,10032,10043,'2004-04-04','assis pereira'),(10033,399457476,10033,10033,10044,'0000-00-00','clarck pereira'),(10034,399457476,10034,10034,10045,'2004-04-04','junior pereira'),(10035,399457476,10035,10035,10046,'2004-04-04','cris pereira'),(10036,399457536,10036,10036,10047,'2004-04-04','tamy pereira'),(10037,399457536,10037,10038,10048,'2004-04-04','aguiar pereira'),(10038,399457536,10038,10039,10049,'2004-04-04','clarck pereira'),(10039,399457536,10039,10040,10050,'2004-04-04','clarck pereira'),(10040,399457536,10040,10041,10051,'2004-04-04','clarck pereira'),(10041,399457536,10041,10042,10052,'2004-04-04','clarck pereira'),(10042,399457876,10042,10043,10053,'2004-04-04','clarck pereira'),(10043,399457876,10043,10044,10054,'2004-04-04','clarck pereira'),(10044,399457876,10044,10045,10055,'2004-04-04','clarck pereira'),(10045,399457876,10045,10046,10056,'2004-04-04','clarck pereira'),(10046,399457876,10046,10047,10057,'2004-04-04','clarck pereira'),(10047,399473786,10047,10048,10058,'2004-04-04','clarck pereira'),(10048,399473786,10048,10049,10059,'2004-04-04','clarck pereira'),(10049,399473786,10049,10050,10060,'2004-04-04','clarck pereira'),(10050,399473786,10050,10051,10061,'2004-04-04','clarck pereira'),(10051,399473786,10051,10052,10062,'2004-04-04','clarck pereira'),(10052,399473786,10052,10053,10063,'2004-04-04','clarck pereira'),(10053,399473786,10053,10054,10065,'2004-04-04','clarck pereira'),(10054,399487711,10054,10055,10066,'2004-04-04','clarck pereira'),(10055,399487711,10055,10056,10067,'2004-04-04','clarck pereira'),(10056,399487711,10056,10057,10068,'2004-04-04','clarck pereira'),(10057,399487711,10057,10058,10069,'2004-04-04','clarck pereira'),(10058,399487711,10058,10059,10070,'2004-04-04','clarck pereira'),(10059,399487711,10059,10060,10071,'2004-04-04','clarck pereira'),(10060,399487711,10060,10061,10072,'2004-04-04','clarck pereira'),(10061,399487711,10061,10062,10073,'2004-04-04','tarcio pereira'),(10062,399487711,10062,10063,10074,'2004-04-04','tarcio pereira'),(10063,399487711,10063,10064,10075,'2004-04-04','tarcio pereira'),(10064,399487711,10064,10065,10076,'2004-04-04','clarck pereira'),(10065,399487711,10065,10066,10077,'2004-04-04','tarcio pereira'),(10066,399487711,10066,10067,10078,'2004-04-04','tarcio pereira'),(10067,399487711,10067,10068,10079,'2004-04-04','tarcio pereira'),(10068,399453476,10068,10069,10080,'2004-04-04','clarck pereira'),(10069,399453476,10069,10070,10081,'2004-04-04','tarcio pereira'),(10070,399453476,10070,10071,10082,'2004-04-04','clarck pereira'),(10071,399453476,10071,10072,10083,'2004-04-04','tarcio pereira'),(10072,399453476,10072,10073,10084,'2004-04-04','tarcio pereira'),(10073,399453476,10073,10074,10085,'2004-04-04','tarcio pereira'),(10074,399453476,10074,10075,10086,'2004-04-04','luisa pereira'),(10075,399453476,10075,10076,10087,'2004-04-04','clarck pereira'),(10076,399453476,10076,10077,10088,'2004-04-04','luisa pereira'),(10077,399423422,10077,10078,10089,'2004-04-04','luisa pereira'),(10078,399423422,10078,10079,10090,'2004-04-04','clarck pereira'),(10079,399423422,10079,10080,10091,'2004-04-04','luisa pereira'),(10080,399423422,10080,10081,10092,'2004-04-04','luisa pereira'),(10081,399423422,10081,10082,10093,'2004-04-04','luisa pereira'),(10082,399423422,10082,10083,10094,'2004-04-04','luisa pereira'),(10083,399423422,10083,10084,10095,'2004-04-04','clarck pereira'),(10084,399423422,10084,10085,10096,'2004-04-04','luisa pereira'),(10085,399423422,10085,10086,10097,'2004-04-04','clarck pereira'),(10086,399423422,10086,10087,10098,'2004-04-04','luisa pereira'),(10087,399423422,10087,10088,10099,'2004-04-04','luisa pereira'),(10088,399423422,10088,10089,10100,'2004-04-04','luisa pereira'),(10089,399423422,10089,10090,10101,'2004-04-04','teila pereira'),(10090,399423422,10090,10037,10102,'2004-04-04','asan pereira');
/*!40000 ALTER TABLE `aluno_matriculado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_nao_matriculado`
--

DROP TABLE IF EXISTS `aluno_nao_matriculado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_nao_matriculado` (
  `id_aluno` int(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf_responsavel` int(11) NOT NULL,
  `id_endereco` int(11) NOT NULL,
  `nome_aluno` varchar(80) NOT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `cpf_responsavel_aluno_nao_matriculadoFK_idx` (`cpf_responsavel`),
  KEY `id_endereco_aluno_nao_matriculadoFK_idx` (`id_endereco`),
  CONSTRAINT `cpf_responsavel_aluno_nao_matriculadoFK` FOREIGN KEY (`cpf_responsavel`) REFERENCES `responsavel` (`cpf_responsavel`) ON UPDATE CASCADE,
  CONSTRAINT `id_endereco_aluno_nao_matriculadoFK` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_nao_matriculado`
--

LOCK TABLES `aluno_nao_matriculado` WRITE;
/*!40000 ALTER TABLE `aluno_nao_matriculado` DISABLE KEYS */;
INSERT INTO `aluno_nao_matriculado` VALUES (10001,'2004-04-04',399473786,10103,'Joasan Pereira'),(10002,'2004-04-04',399473786,10104,'Tail Pereira'),(10003,'2004-04-04',399452356,10105,'Ney Pereira'),(10004,'2004-04-04',399452356,10106,'Bert Pereira'),(10005,'2004-04-04',399473786,10107,'Roh Pereira'),(10006,'2004-04-04',399452356,10108,'Bart Pereira'),(10007,'2004-04-04',399473786,10109,'Derik Pereira'),(10008,'2004-04-04',399452356,10110,'Stan Pereira'),(10009,'2004-04-04',399473786,10111,'Simone Pereira'),(10010,'2004-04-04',399452356,10112,'Sheila Pereira'),(10011,'2004-04-04',399452356,10113,'Vivian Pereira'),(10012,'2004-04-04',399452356,10114,'Michel Pereira');
/*!40000 ALTER TABLE `aluno_nao_matriculado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `id_bairro` int(11) NOT NULL,
  `nome_bairro` varchar(45) NOT NULL,
  `codigo_cidade` int(11) NOT NULL,
  PRIMARY KEY (`id_bairro`),
  KEY `codigoCidadeFK_idx` (`codigo_cidade`),
  CONSTRAINT `codigo_cidade_bairroFK` FOREIGN KEY (`codigo_cidade`) REFERENCES `cidade` (`codigo_cidade`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (10001,'Barris',10001),(10002,'Barreiras',10001),(10009,'Ferradas',10002),(10012,'Mangabinha',10002),(10013,'Agemiro',10003),(10014,'Coreia',10003),(10015,'Capuxu',10004),(10016,'Chesf',10004),(10017,'Tali',10005),(10018,'Negal',10006),(10019,'Beco',10007),(10020,'Salete',10008),(10021,'Esquina',10009),(10022,'Virada',10010);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `codigo_cidade` int(11) NOT NULL,
  `nome_cidade` varchar(45) NOT NULL,
  `codigo_estado` int(11) NOT NULL,
  PRIMARY KEY (`codigo_cidade`),
  KEY `codigoEstadoFK_idx` (`codigo_estado`),
  CONSTRAINT `codigo_estado_cidadeFK` FOREIGN KEY (`codigo_estado`) REFERENCES `estado` (`codigo_estado`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (10001,'Salvador',29),(10002,'Itabuna',29),(10003,'Juazeiro',29),(10004,'Paulo Afonso',29),(10005,'Candeias',29),(10006,'Jacobina',29),(10007,'Serrinha',29),(10008,'Irecê',29),(10009,'Ipirá',29),(10010,'Santo Amaro',29);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracao`
--

DROP TABLE IF EXISTS `configuracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracao` (
  `data_inicio_pre_matricula` date NOT NULL,
  `data_final_pre_matricula` date NOT NULL,
  `data_inicio_matricula` date NOT NULL,
  `data_final_matricula` date NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_periodo_letivo` int(11) NOT NULL,
  `id_configuracao` int(11) NOT NULL,
  PRIMARY KEY (`id_configuracao`),
  KEY `id_periodo_letivo_cofigFK_idx` (`id_periodo_letivo`),
  KEY `id_estado_configFK_idx` (`id_estado`),
  CONSTRAINT `id_estado_configFK` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`codigo_estado`) ON UPDATE CASCADE,
  CONSTRAINT `id_periodo_letivo_cofigFK` FOREIGN KEY (`id_periodo_letivo`) REFERENCES `periodo_letivo` (`id_periodo_letivo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracao`
--

LOCK TABLES `configuracao` WRITE;
/*!40000 ALTER TABLE `configuracao` DISABLE KEYS */;
INSERT INTO `configuracao` VALUES ('2019-01-01','2019-01-24','2019-01-25','2019-02-25',29,10002019,10001),('2013-01-01','2013-01-24','2013-01-25','2013-02-25',29,10002013,10002),('2015-01-01','2015-01-24','2015-01-25','2015-02-25',29,10002015,10003),('2014-01-01','2014-01-24','2014-01-25','2014-02-25',29,10002014,10004),('2010-01-01','2010-01-24','2010-01-25','2010-02-25',29,10002010,10005),('2016-01-01','2016-01-24','2016-01-25','2016-02-25',29,10002016,10006),('2018-01-01','2018-01-24','2018-01-25','2018-02-25',29,10002018,10007),('2017-01-01','2017-01-24','2017-01-25','2017-02-25',29,10002017,10008),('2012-01-01','2012-01-24','2012-01-25','2012-02-25',29,10002012,10009),('2011-01-01','2011-01-24','2011-01-25','2011-02-25',29,10002011,10010);
/*!40000 ALTER TABLE `configuracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `cep` int(11) NOT NULL,
  `id_bairro` int(11) NOT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `id_bairroFK_idx` (`id_bairro`),
  CONSTRAINT `id_bairro_enderecoFK` FOREIGN KEY (`id_bairro`) REFERENCES `bairro` (`id_bairro`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (0,0,0,10009),(10001,54,41211454,10001),(10002,41,41211455,10002),(10003,12,412114524,10002),(10004,21,41211464,10012),(10005,1,41211423,10013),(10006,2,41211412,10014),(10007,32,41211444,10015),(10008,45,41211476,10016),(10009,54,41211423,10017),(10010,78,41211452,10002),(10011,6,41211471,10019),(10012,45,41211476,10020),(10013,31,41211477,10021),(10014,5,41212386,10022),(10015,11,41211426,10014),(10016,21,41211666,10012),(10017,54,41211676,10021),(10018,41,41212226,10002),(10019,14,41213556,10013),(10020,11,41217226,10009),(10021,1,41212336,10009),(10022,11,41213336,10020),(10023,11,41213336,10002),(10024,11,41213336,10005),(10025,11,41213336,10007),(10026,11,41213336,10021),(10027,11,41213336,10021),(10028,11,41213336,10014),(10029,11,41213336,10014),(10030,11,41213336,10014),(10031,11,41213336,10014),(10032,11,41213336,10016),(10033,11,41213336,10001),(10034,11,41213336,10016),(10035,11,41213336,10012),(10036,11,41213336,10001),(10037,11,41213336,10016),(10038,11,41213336,10012),(10039,1111,41213336,10016),(10040,11,41213336,10019),(10041,45,41213336,10016),(10042,45,41213336,10016),(10043,45,41213336,10014),(10044,45,41213336,10016),(10045,45,41213336,10016),(10046,45,41213336,10016),(10047,45,41213336,10013),(10048,45,41213336,10014),(10049,45,41213336,10020),(10050,45,41213336,10001),(10051,45,41213336,10014),(10052,32,41213336,10020),(10053,32,41213336,10001),(10054,32,41213336,10020),(10055,32,41213336,10020),(10056,32,41213336,10016),(10057,32,41213336,10020),(10058,32,41213336,10016),(10059,32,41213336,10014),(10060,32,41213336,10013),(10061,32,41213336,10014),(10062,32,41213336,10013),(10063,32,41213336,10014),(10064,32,41213336,10013),(10065,32,41213336,10013),(10066,32,41213336,10016),(10067,32,41213336,10013),(10068,32,41213336,10013),(10069,32,41213336,10016),(10070,32,41213336,10001),(10071,32,41213336,10001),(10072,32,41213336,10013),(10073,48,41213336,10014),(10074,48,41213336,10013),(10075,48,41213336,10014),(10076,48,41213336,10014),(10077,48,41213336,10013),(10078,48,41213336,10016),(10079,84,41213336,10012),(10080,84,41213336,10012),(10081,84,41213336,10012),(10082,84,41213336,10016),(10083,84,41213336,10013),(10084,84,41213336,10013),(10085,84,41213336,10013),(10086,84,41213336,10013),(10087,84,41213336,10013),(10088,84,41213336,10016),(10089,84,41213336,10012),(10090,84,41213336,10012),(10091,6,41211471,10009),(10092,6,41211471,10009),(10093,6,41211471,10001),(10094,6,41211471,10009),(10095,54,41211471,10009),(10096,6,41211471,10009),(10097,45,41211471,10001),(10098,456,41211471,10009),(10099,45,41211471,10009),(10100,45,41211471,10009),(10101,5,41211471,10001),(10102,45,41211471,10001),(10103,5,41213336,10014),(10104,5,41213336,10021),(10105,5,41213336,10021),(10106,5,41213336,10014),(10107,5,41213336,10014),(10108,5,41213336,10002),(10109,5,41213336,10021),(10110,5,41213336,10002),(10111,5,41213336,10002),(10112,5,41213336,10021),(10113,5,41213336,10012),(10114,5,41213336,10005);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escola`
--

DROP TABLE IF EXISTS `escola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escola` (
  `id_escola` int(11) NOT NULL,
  `site` varchar(80) DEFAULT NULL,
  `nome_escola` varchar(80) NOT NULL,
  `id_endereco` int(11) NOT NULL,
  `id_telefone` int(11) NOT NULL,
  `id_configuracao` int(11) NOT NULL,
  PRIMARY KEY (`id_escola`),
  KEY `id_telefoneFK_idx` (`id_telefone`),
  KEY `id_enderecoFK_idx` (`id_endereco`),
  KEY `id_configuracao_escolaFK_idx` (`id_configuracao`),
  CONSTRAINT `id_configuracao_escolaFK` FOREIGN KEY (`id_configuracao`) REFERENCES `configuracao` (`id_configuracao`) ON UPDATE CASCADE,
  CONSTRAINT `id_endereco_escolaFK` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`) ON UPDATE CASCADE,
  CONSTRAINT `id_telefone_escolaFK` FOREIGN KEY (`id_telefone`) REFERENCES `telefone` (`id_telefone`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escola`
--

LOCK TABLES `escola` WRITE;
/*!40000 ALTER TABLE `escola` DISABLE KEYS */;
INSERT INTO `escola` VALUES (10001,'www.semsite.com.br','Sao Bento',10001,10012,10001),(10002,'www.semsite.com.br','Sao Roque',10002,10013,10001),(10003,'www.semsite.com.br','Sao Jose',10003,10014,10001),(10004,'www.semsite.com.br','Sao Lazaro',10004,10015,10001),(10005,'www.semsite.com.br','Sao Rafael',10005,10016,10001),(10006,'www.semsite.com.br','Sao Bons',10006,10017,10001),(10007,'www.semsite.com.br','Sao Ruins',10007,10018,10001),(10008,'www.semsite.com.br','Sao Victor',10008,10019,10001),(10010,'www.semsite.com.br','Sao Ronaldo',10010,10020,10001),(10011,'www.semsite.com.br','Sao Noobs',10011,10021,10001);
/*!40000 ALTER TABLE `escola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `codigo_estado` int(3) NOT NULL,
  `uf_estado` varchar(5) NOT NULL,
  `nome_estado` varchar(40) NOT NULL,
  PRIMARY KEY (`codigo_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (29,'BA','Bahia');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_espera`
--

DROP TABLE IF EXISTS `lista_espera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_espera` (
  `id_lista_espera` int(11) NOT NULL,
  `id_aluno_espera` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  PRIMARY KEY (`id_lista_espera`),
  KEY `id_aluno_esperaFK_idx` (`id_aluno_espera`),
  KEY `id_escola_esperaFK_idx` (`id_escola`),
  KEY `id_serie_esperaFK_idx` (`id_serie`),
  CONSTRAINT `id_aluno_esperaFK` FOREIGN KEY (`id_aluno_espera`) REFERENCES `aluno_nao_matriculado` (`id_aluno`) ON UPDATE CASCADE,
  CONSTRAINT `id_escola_esperaFK` FOREIGN KEY (`id_escola`) REFERENCES `escola` (`id_escola`) ON UPDATE CASCADE,
  CONSTRAINT `id_serie_esperaFK` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_espera`
--

LOCK TABLES `lista_espera` WRITE;
/*!40000 ALTER TABLE `lista_espera` DISABLE KEYS */;
INSERT INTO `lista_espera` VALUES (10001,10001,10003,10009),(10002,10002,10006,10018),(10003,10003,10009,10025),(10004,10004,10009,10025),(10005,10005,10009,10025),(10006,10006,10003,10009);
/*!40000 ALTER TABLE `lista_espera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `numero_login` int(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  PRIMARY KEY (`numero_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (10001,'123456','jspereira'),(10002,'123456','jgpereira'),(10003,'123456','jppereira'),(10004,'123456','vgpereira'),(10005,'123456','rgpereira'),(10006,'123456','lgpereira'),(10007,'123456','lrpereira'),(10008,'123456','llpereira'),(10009,'123456','mgpereira'),(10010,'123456','mcpereira'),(10011,'123456','srpereira'),(10012,'123456','mgpereira'),(10013,'123456','icpereira'),(10014,'123456','ilpereira'),(10015,'123456','cbpereira'),(10016,'123456','abpereira'),(10017,'123456','bspereira'),(10018,'123456','vpereira'),(10019,'123456','lpereira'),(10020,'123456','apereira'),(10021,'123456','tpereira'),(10022,'123456','asdpereira'),(10023,'123456','taspereira'),(10024,'123456','tasdpereira'),(10025,'123456','tasdpereira'),(10026,'123456','tperaseira'),(10027,'123456','astpereira'),(10028,'123456','tpereiraas'),(10029,'123456','tpereirasfa'),(10030,'123456','rgpereira'),(10031,'123456','rgpereira'),(10032,'123456','jppereira'),(10033,'123456','rgpereira'),(10034,'123456','rgpereira'),(10035,'123456','jppereira'),(10036,'123456','tpereira'),(10037,'123456','jppereira'),(10038,'123456','rgpereira'),(10039,'123456','rgpereira'),(10040,'123456','vgpereira'),(10041,'123456','bspereira'),(10042,'123456','vgpereira'),(10043,'123456','bspereira'),(10044,'123456','bspereira'),(10045,'123456','jppereira'),(10046,'123456','jppereira'),(10047,'123456','jppereira'),(10048,'123456','jppereira'),(10049,'123456','jppereira'),(10050,'123456','jppereira'),(10051,'123456','vgpereira'),(10052,'123456','jppereira'),(10053,'123456','jppereira'),(10054,'123456','jppereira'),(10055,'123456','vgpereira'),(10056,'123456','jppereira'),(10057,'123456','vgpereira'),(10058,'123456','vgpereira'),(10059,'123456','vgpereira'),(10060,'123456','vgpereira'),(10061,'123456','jppereira'),(10062,'123456','vgpereira'),(10063,'123456','vgpereira'),(10064,'123456','vgpereira'),(10065,'123456','vgpereira'),(10066,'123456','vgpereira'),(10067,'123456','vgpereira'),(10068,'123456','lpereira'),(10069,'123456','lpereira'),(10070,'123456','lpereira'),(10071,'123456','jppereira'),(10072,'123456','lpereira'),(10073,'123456','jppereira'),(10074,'123456','lpereira'),(10075,'123456','lpereira'),(10076,'123456','jppereira'),(10077,'123456','jppereira'),(10078,'123456','jppereira'),(10079,'123456','lpereira'),(10080,'123456','lpereira'),(10081,'123456','jppereira'),(10082,'123456','lpereira'),(10083,'123456','jppereira'),(10084,'123456','jppereira'),(10085,'123456','lpereira'),(10086,'123456','jppereira'),(10087,'123456','jppereira'),(10088,'123456','lpereira'),(10089,'123456','jppereira'),(10090,'123456','lpereira');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `numero_matricula` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  PRIMARY KEY (`numero_matricula`),
  KEY `id_serie_matriculaFK_idx` (`id_serie`),
  CONSTRAINT `id_serie_matriculaFK` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (10001,10001),(10002,10001),(10003,10001),(10004,10002),(10005,10002),(10006,10002),(10007,10003),(10008,10003),(10009,10003),(10010,10004),(10011,10004),(10012,10004),(10013,10005),(10014,10005),(10015,10005),(10016,10006),(10017,10006),(10018,10006),(10019,10007),(10020,10007),(10021,10007),(10022,10008),(10023,10008),(10024,10008),(10025,10009),(10026,10009),(10027,10009),(10028,10010),(10029,10010),(10030,10010),(10031,10011),(10032,10011),(10033,10011),(10034,10012),(10035,10012),(10036,10012),(10037,10013),(10038,10013),(10039,10013),(10040,10014),(10041,10014),(10042,10014),(10043,10015),(10044,10015),(10045,10015),(10046,10016),(10047,10016),(10048,10016),(10049,10017),(10050,10017),(10051,10017),(10052,10018),(10053,10018),(10054,10018),(10055,10019),(10056,10019),(10057,10019),(10058,10020),(10059,10020),(10060,10020),(10061,10021),(10062,10021),(10063,10021),(10064,10022),(10065,10022),(10066,10022),(10067,10023),(10068,10023),(10069,10023),(10070,10024),(10071,10024),(10072,10024),(10073,10025),(10074,10025),(10075,10025),(10076,10026),(10077,10026),(10078,10026),(10079,10027),(10080,10027),(10081,10027),(10082,10028),(10083,10028),(10084,10028),(10085,10029),(10086,10029),(10087,10029),(10088,10030),(10089,10030),(10090,10030);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo_letivo`
--

DROP TABLE IF EXISTS `periodo_letivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periodo_letivo` (
  `id_periodo_letivo` int(11) NOT NULL,
  `descricao_periodo` varchar(10) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  PRIMARY KEY (`id_periodo_letivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo_letivo`
--

LOCK TABLES `periodo_letivo` WRITE;
/*!40000 ALTER TABLE `periodo_letivo` DISABLE KEYS */;
INSERT INTO `periodo_letivo` VALUES (10002010,'2010','2010-01-10','2010-11-15'),(10002011,'2011','2011-01-10','2011-11-15'),(10002012,'2012','2012-01-10','2012-11-15'),(10002013,'2013','2013-01-10','2013-11-15'),(10002014,'2014','2014-01-10','2014-11-15'),(10002015,'2015','2015-01-10','2015-11-15'),(10002016,'2016','2016-01-10','2016-11-15'),(10002017,'2017','2017-01-10','2017-11-15'),(10002018,'2018','2018-01-10','2018-11-15'),(10002019,'2019','2019-01-10','2019-11-15'),(10002020,'2020','2020-01-10','2020-11-15');
/*!40000 ALTER TABLE `periodo_letivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsavel` (
  `cpf_responsavel` int(11) NOT NULL,
  `nome_responsavel` varchar(80) NOT NULL,
  `email_responsavel` varchar(80) NOT NULL,
  `id_telefone` int(11) NOT NULL,
  PRIMARY KEY (`cpf_responsavel`),
  KEY `id_telefoneFK_idx` (`id_telefone`),
  CONSTRAINT `id_telefone_resposavelFK` FOREIGN KEY (`id_telefone`) REFERENCES `telefone` (`id_telefone`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsavel`
--

LOCK TABLES `responsavel` WRITE;
/*!40000 ALTER TABLE `responsavel` DISABLE KEYS */;
INSERT INTO `responsavel` VALUES (394357354,'Noelia Amelia','asdagasa@gmail.com',10002),(399423422,'Pereira Santos','asdasdasdsa@gmail.com',10010),(399424766,'Max Weber','asdaashsdsa@gmail.com',10008),(399452356,'Alfenir Souza','asdasssa@gmail.com',10001),(399452366,'Cleber Comunis','asdasdasdsa@gmail.com',10012),(399452368,'Taxis Boton','asdasdasdsa@gmail.com',10005),(399453476,'Daver Denver','asdaasdasdsa@gmail.com',10004),(399457476,'Power Joao','asdahsasdsa@gmail.com',10007),(399457536,'Jolmir Santos','asddsddsa@gmail.com',10003),(399457876,'Comunis Oliver','asdaashsdsa@gmail.com',10009),(399473786,'Silver Master','asdgaasdsa@gmail.com',10006),(399487711,'Silva Aufanos','asdasdasdsa@gmail.com',10011);
/*!40000 ALTER TABLE `responsavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serie` (
  `id_serie` int(11) NOT NULL,
  `descricao_serie` varchar(15) NOT NULL,
  `numero_vagas` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `id_periodo_letivo` int(11) NOT NULL,
  PRIMARY KEY (`id_serie`),
  KEY `id_escola_serieFK_idx` (`id_escola`),
  KEY `id_periodo_letivo_serieFK_idx` (`id_periodo_letivo`),
  CONSTRAINT `id_escola_serieFK` FOREIGN KEY (`id_escola`) REFERENCES `escola` (`id_escola`) ON UPDATE CASCADE,
  CONSTRAINT `id_periodo_letivo_serieFK` FOREIGN KEY (`id_periodo_letivo`) REFERENCES `periodo_letivo` (`id_periodo_letivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` VALUES (10001,'1°A',30,10001,10002019),(10002,'2°A',25,10001,10002019),(10003,'3°A',30,10001,10002019),(10004,'1°A',40,10002,10002019),(10005,'2°A',25,10002,10002019),(10006,'3°A',20,10002,10002019),(10007,'1°A',30,10003,10002019),(10008,'2°A',20,10003,10002019),(10009,'3°A',30,10003,10002019),(10010,'1°A',20,10004,10002019),(10011,'2°A',35,10004,10002019),(10012,'3°A',20,10004,10002019),(10013,'1°A',30,10005,10002019),(10014,'2°A',30,10005,10002019),(10015,'3°A',30,10005,10002019),(10016,'1°A',30,10006,10002019),(10017,'2°A',30,10006,10002019),(10018,'3°A',30,10006,10002019),(10019,'1°A',30,10007,10002019),(10020,'2°A',30,10007,10002019),(10021,'3°A',30,10007,10002019),(10022,'1°A',15,10008,10002019),(10023,'2°A',30,10008,10002019),(10024,'3°A',25,10008,10002019),(10025,'1°A',40,10009,10002019),(10026,'2°A',30,10009,10002019),(10027,'3°A',30,10009,10002019),(10028,'1°A',28,10010,10002019),(10029,'2°A',25,10010,10002019),(10030,'3°A',30,10010,10002019);
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitacao_matricula`
--

DROP TABLE IF EXISTS `solicitacao_matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitacao_matricula` (
  `id_solicitacao` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `tipo_solicitacao` char(1) NOT NULL,
  PRIMARY KEY (`id_solicitacao`),
  KEY `id_aluno_solicitacao_matriculaFK_idx` (`id_aluno`),
  KEY `id_escola_solicitacao_matriculaFK_idx` (`id_escola`),
  KEY `id_serie_solicitacao_matriculaFK_idx` (`id_serie`),
  CONSTRAINT `id_aluno_solicitacao_matriculaFK` FOREIGN KEY (`id_aluno`) REFERENCES `aluno_nao_matriculado` (`id_aluno`) ON UPDATE CASCADE,
  CONSTRAINT `id_escola_solicitacao_matriculaFK` FOREIGN KEY (`id_escola`) REFERENCES `escola` (`id_escola`) ON UPDATE CASCADE,
  CONSTRAINT `id_serie_solicitacao_matriculaFK` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacao_matricula`
--

LOCK TABLES `solicitacao_matricula` WRITE;
/*!40000 ALTER TABLE `solicitacao_matricula` DISABLE KEYS */;
INSERT INTO `solicitacao_matricula` VALUES (10002,10007,10004,10012,'T'),(10003,10008,10007,10019,'T'),(10004,10009,10007,10019,'T'),(10005,10010,10004,10010,'R'),(10006,10011,10010,10030,'R'),(10007,10012,10004,10011,'R');
/*!40000 ALTER TABLE `solicitacao_matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `id_telefone` int(11) NOT NULL,
  `numero_tel` int(11) NOT NULL,
  PRIMARY KEY (`id_telefone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (10001,981936851),(10002,981926841),(10003,981926861),(10004,981926871),(10005,981926251),(10006,981926551),(10007,981926861),(10008,981126871),(10009,981926821),(10010,981926651),(10011,981926571),(10012,981826531),(10013,981827231),(10014,981822531),(10015,981823741),(10016,981822341),(10017,981828721),(10018,981873723),(10019,981873233),(10020,981873863),(10021,981873234),(10022,981873234),(10023,981873234),(10024,981873234),(10025,981873234),(10026,981873234),(10027,981873234),(10028,981873234),(10029,981873234),(10030,981873234),(10031,981873234),(10032,981873234),(10033,981873234),(10034,981873234),(10035,981873234),(10036,981873234),(10037,981873234),(10038,981873234),(10039,981873234),(10040,981873234);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sistemaescola'
--

--
-- Dumping routines for database 'sistemaescola'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-11  6:16:47
