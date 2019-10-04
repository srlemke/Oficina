CREATE DATABASE Oficina;
USE Oficina;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `Client_id` int(11) NOT NULL AUTO_INCREMENT,
  `Client_Name` varchar(40) DEFAULT NULL,
  `Client_Address` varchar(50) DEFAULT NULL,
  `Client_City` varchar(30) DEFAULT NULL,
  `Client_ID_Number` varchar(15) DEFAULT NULL,
  `Client_Phone` varchar(40) DEFAULT NULL,
  `Client_updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Client_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientCar`
--

DROP TABLE IF EXISTS `ClientCar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientCar` (
  `ClientCar_id` int(11) NOT NULL AUTO_INCREMENT,
  `ClientCar_Client_id` int(11) DEFAULT NULL,
  `ClientCar_Model` varchar(50) DEFAULT NULL,
  `ClientCar_Description` varchar(300) DEFAULT NULL,
  `ClientCar_BuiltYear` int(11) DEFAULT NULL,
  `ClientCar_Plate` varchar(10) DEFAULT NULL,
  `ClientCar_Color` varchar(26) DEFAULT NULL,
  `ClientCar_updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ClientCar_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ClientCar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientCar`
--

LOCK TABLES `ClientCar` WRITE;
/*!40000 ALTER TABLE `ClientCar` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClientCar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartGroup`
--

DROP TABLE IF EXISTS `PartGroup`;
CREATE TABLE `PartGroup` (
  `PartGroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `PartGroup_Name` varchar(50) DEFAULT NULL,
  `PartGroup_Description` varchar(300) DEFAULT NULL,
  `PartGroup_updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PartGroup_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PartGroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PartGroup`
--

LOCK TABLES `ClientCar` WRITE;
/*!40000 ALTER TABLE `ClientCar` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClientCar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HourCost`
--

DROP TABLE IF EXISTS `HourCost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HourCost` (
  `HourCost_id` int(11) NOT NULL AUTO_INCREMENT,
  `HourCost` double NOT NULL DEFAULT '0',
  `Hour_Cost_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`HourCost_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HourCost`
--

LOCK TABLES `HourCost` WRITE;
/*!40000 ALTER TABLE `HourCost` DISABLE KEYS */;
INSERT INTO `HourCost` VALUES (1,0,'2017-03-20 12:15:47');
/*!40000 ALTER TABLE `HourCost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Part`
--

DROP TABLE IF EXISTS `Part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Part` (
  `Part_id` int(11) NOT NULL AUTO_INCREMENT,
  `Part_Name` varchar(50) DEFAULT NULL,
  `Part_Group` varchar(50) DEFAULT NULL,
  `Part_Brand` varchar(50) DEFAULT NULL,
  `Part_Description` varchar(250) DEFAULT NULL,
  `Part_Cost` double(19,2) DEFAULT NULL,
  `Part_Sell_Value_With_Interest_Rate` double(19,2) DEFAULT NULL,
  `Part_Quantity` int(11) DEFAULT NULL,
  `Part_Interrest_Rate` double(19,2) DEFAULT NULL,
  `Part_updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Part_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Part`
--

DROP TABLE IF EXISTS `Service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Service` (
  `Service_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Service_Client_id` bigint(20) DEFAULT NULL,
  `Service_Client_Carid` bigint(20) DEFAULT NULL,
  `Service_Short_Description` varchar(70) DEFAULT NULL,
  `Service_Finished` tinyint(1) NOT NULL DEFAULT '0',
  `Service_Description` varchar(1000) DEFAULT NULL,
  `Service_Parts_Cost` double(19,2) DEFAULT NULL,
  `Service_Hours_Duration` double(19,2) DEFAULT NULL,
  `Service_Hour_Cost` double(19,2) DEFAULT NULL,
  `Service_Paid` tinyint(1) NOT NULL DEFAULT '0',
  `Service_updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Service_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Service`
--

LOCK TABLES `Part` WRITE;
/*!40000 ALTER TABLE `Part` DISABLE KEYS */;
/*!40000 ALTER TABLE `Part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServicePartsUsed`
--

DROP TABLE IF EXISTS `ServicePartsUsed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServicePartsUsed` (
  `ServicePartsUsed_id` int(11) NOT NULL AUTO_INCREMENT,
  `Used_On_What_Service_id` int(11) DEFAULT NULL,
  `Used_Part_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ServicePartsUsed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServicePartsUsed`
--

LOCK TABLES `ServicePartsUsed` WRITE;
/*!40000 ALTER TABLE `ServicePartsUsed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ServicePartsUsed` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2017-03-20  9:18:48
