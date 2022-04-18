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
-- Table structure for table `Campaign`
--

DROP TABLE IF EXISTS `Campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Campaign` (
  `Campaign_ID` char(12) NOT NULL,
  `Campaign_Name` text,
  `Candidate_fname` varchar(100) NOT NULL,
  `Candidate_Lname` varchar(100) NOT NULL,
  `Position` text,
  `Election_date` date DEFAULT NULL,
  `Election_type` enum('PRIMARY','GENERAL','RUN-OFF','SPECIAL') DEFAULT NULL,
  `Candidate_Contact_ID` char(10) DEFAULT NULL,
  PRIMARY KEY (`Campaign_ID`),
  KEY `Candidate_Contact_ID` (`Candidate_Contact_ID`),
  CONSTRAINT `campaign_ibfk_1` FOREIGN KEY (`Candidate_Contact_ID`) REFERENCES `Contact` (`Contact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaign`
--

LOCK TABLES `Campaign` WRITE;
/*!40000 ALTER TABLE `Campaign` DISABLE KEYS */;
INSERT INTO `Campaign` VALUES ('CAM039567237','Zelma for OH9','Zelma','Brown','Congressional Representative','2022-06-07','PRIMARY','C000000045'),('CAM111222333','Meredith for district 14','Meredith ','Shea','Congressional Representative','2020-11-03','GENERAL','C000000031'),('CAM123456789','Rosemary Becker For Ohio Senate','Rosemary','Becker','Senator','2022-05-03','PRIMARY','C000000014'),('CAM123673999','Kyle for OH','Kyle','Warren','Governor','2022-11-08','GENERAL','C000000019'),('CAM232456789','Philmon\'s district 11 return to normalcy','Valerie','Philmon','Congressional Representative','2022-05-03','PRIMARY','C000000001'),('CAM676000981','Von for OH Senate','Von','Crossland','Senator','2022-05-03','PRIMARY','C000000026'),('CAM980438745','King for OH11','Hilary','King','Congressional Representative','2022-06-07','PRIMARY','C000000049'),('CAM981703234','Meredith for district 14','Meredith','Shea','Congressional Representative','2022-05-03','PRIMARY','C000000031'),('CAM987654321','Von for OH Senate','Von','Crossland','Senator','2018-11-06','GENERAL','C000000026'),('CAM999888000','Zelma for OH9','Zelma','Brown','Congressional Representative','2020-11-03','GENERAL','C000000045');
/*!40000 ALTER TABLE `Campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact`
--

DROP TABLE IF EXISTS `Contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contact` (
  `Contact_ID` char(10) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Phone_Home` char(12) DEFAULT NULL,
  `Phone_Cell` char(12) DEFAULT NULL,
  `Party` char(1) DEFAULT NULL,
  `Email` varchar(400) DEFAULT NULL,
  `Voter_ID` char(12) DEFAULT NULL,
  PRIMARY KEY (`Contact_ID`),
  KEY `Voter_ID` (`Voter_ID`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`Voter_ID`) REFERENCES `Voter` (`SOS_VOTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact`
--

LOCK TABLES `Contact` WRITE;
/*!40000 ALTER TABLE `Contact` DISABLE KEYS */;
INSERT INTO `Contact` VALUES ('C000000001','Valerie','Philmon','121-991-0353','110-274-8470','R','Philmon1@gmail.com','OH0014550550'),('C000000002','Raemarie','Rini','800-100-2000','914-533-1232','R','Riniare695@gmail.com','OH0015258147'),('C000000003','Judy','Culley','800-100-2001','914-209-7834','R','culleyj23@gmail.com','OH0014709664'),('C000000004','Denise','Trapp','800-100-2003','914-290-7002','R','trappdenise238@gmail.com','OH0014752061'),('C000000005','Dereck','Jeter','800-100-2004','232-323-2454','R','djeter@outlook.com',NULL),('C000000006','Camila','Cabello','800-100-2005','143-123-4566','R','camilahavana1@gmail.com',NULL),('C000000007','Shawn','Mendes','800-100-2006','431-579-1234','R','shawnmendes34@gmail.com',NULL),('C000000008','Jennifer','Lopez','800-100-2007','531-213-1004','R','Lopezjenny1@gmail.com',NULL),('C000000009','Danielle','Kasaris','800-100-2008','123-456-2226','R','daniellek2@gmail.com','OH0023184126'),('C000000010','Brian','Swab','800-543-2008','531-213-0005','R','brianswab94@gmail.com','OH0014869295'),('C000000011','Cameron','Marcus','802-100-2008','891-215-1118','R','marcuscam12@gmail.com','OH0022423168'),('C000000012','Keith','Good','800-800-2008','501-217-1204','R','keith645good@gmail.com','OH0023309278'),('C000000013','Bessie','Escondo','800-600-2008','521-454-2023','R','escondobessie6@gmail.com','OH0014684137'),('C000000014','Rosemary','Becker','800-400-2008','425-254-2024','R','rosemarbeck48@gmail.com','OH0014710188'),('C000000015','Owen','Davenport','800-200-2008','531-267-2029','R','davenportowen40@gmail.com','OH0023097258'),('C000000016','Gene','Tournoux','152-316-9146','984-413-8174','D','Thgenie@yahoo.com','OH0014474089'),('C000000017','Stephanie','Leonard','800-100-3008','908-516-5799','D','LeonardSte@gmail.com','OH0014545431'),('C000000018','Damyanti','Asher','800-100-3002','436-237-1687','D','adamyan@outlook.com','OH0015328282'),('C000000019','Kyle','Warren','800-100-3007','914-223-8000','D','Kylewarrenoh33@gmail.com','OH0023338064'),('C000000020','Kylie','Jenner','800-100-3009','555-323-5532','I','kyliej11@outlook.com',NULL),('C000000021','Meghan','Markle','800-100-3000','412-432-5345','I','mmarkle@msn.com',NULL),('C000000022','Meryl','Streep','800-100-3001','123-473-0932','D','Meryl23@outlook.com',NULL),('C000000023','Khloe','Kardashian','800-100-3002','125-903-9238','D','kkbeauty21@gmail.com',NULL),('C000000024','Archie','Moore','800-100-3003','193-987-0001','D','moorearchie1@gmail.com','OH0015340768'),('C000000025','Dylan','Cook','800-100-3005','637-323-0002','D','cook938dylan@outlook.com','OH0024069097'),('C000000026','Von','Crossland','800-100-3006','190-999-0003','D','crosslandvon44@outlook.com','OH0014447784'),('C000000027','Aliecia','Garth','800-100-3007','909-213-1006','D','garth264ali@gmail.com','OH0022095084'),('C000000028','Elizabeth','Windsor','512-300-2000','412-432-5345','D','queene@msn.com',NULL),('C000000029','Harry','Sussex','512-300-2001','343-002-7821','D','hryroyal@gmail.com',NULL),('C000000030','Denzel','Washington','512-300-2002','123-456-7766','D','denzelwashington@gmail.com',NULL),('C000000031','Meredith','Shea','512-300-2003','343-214-1009','D','shemere39@gmail.com','OH0022146743'),('C000000032','Cara','Blevins','512-300-2004','441-216-1119','','blevinscara88@gmail.com','OH0024567504'),('C000000033','Todd','Coy','512-300-2014','292-218-2020','D','coytodd@gmail.com','OH0022012884'),('C000000034','Cassandra','Lewis','512-300-2015','531-333-2021','D','lwiscasa938@gmail.com','OH0024434901'),('C000000035','Kacey','Dodge','512-300-2016','533-909-2022','D','kaceydodge3@gmail.com','OH0023161959'),('C000000036','Marian','Toney','512-300-2007','531-255-2093','D','toney53@gmail.com','OH0022591504'),('C000000037','Sherria','Parker','512-300-2067','531-800-3045','D','sherriapark10@gmail.com','OH0019825791'),('C000000038','Halsey','Franngipane','212-900-6000','412-400-9099','D','halseyashely23@msn.com',NULL),('C000000039','Amala','Dlamini','212-900-6001','343-999-2142','D','dojacat1@gmail.com',NULL),('C000000040','Arianna','Grande','212-900-6002','324-555-5555','D','rembeauty23@gmail.com',NULL),('C000000041','Elise','Adams','212-900-6003','400-400-9098','D','adamse2594@msn.com','OH0020191102'),('C000000042','Mark','Spencer','212-900-6005','898-245-2142','D','spencermark43@gmail.com','OH0014817135'),('C000000043','Emily','Egan','212-900-6004','888-555-5555','D','eegan@gmail.com','OH0019969581'),('C000000044','Anne','Payne','212-900-6006','343-222-6666','D','payne24@gmail.com','OH0014500308'),('C000000045','Zelma','Brown','212-900-6007','324-444-5555','D','zbrown@gmail.com','OH0014568708'),('C000000046','Ed','Sheeran','212-900-5000','412-112-0212','D','halseyashely23@msn.com',NULL),('C000000047','Dua','Lipa','212-900-5001','343-222-2222','D','dojacat1@gmail.com',NULL),('C000000048','Stefani','Germanotta','212-900-5002','324-444-4444','D','rembeauty23@gmail.com',NULL),('C000000049','Hilary','King','212-900-5003','412-234-0031','D','hilaryking3@msn.com','OH0015625524'),('C000000050','Sharon','Hughes','212-900-5004','343-222-0002','D','shughes87@gmail.com','OH0018720374'),('C000000051','Bradley','Herzog','212-900-5005','324-444-0001','D','herzogbrad2@gmail.com','OH0022196790'),('C000000052','Jerron','Collins','212-900-5015','412-234-3434','D','jerron374@msn.com','OH0014681363');
/*!40000 ALTER TABLE `Contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact_SocialMedia`
--

DROP TABLE IF EXISTS `Contact_SocialMedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contact_SocialMedia` (
  `Contact_ID` char(10) NOT NULL,
  `Social_Media` varchar(200) NOT NULL,
  PRIMARY KEY (`Contact_ID`,`Social_Media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact_SocialMedia`
--

LOCK TABLES `Contact_SocialMedia` WRITE;
/*!40000 ALTER TABLE `Contact_SocialMedia` DISABLE KEYS */;
INSERT INTO `Contact_SocialMedia` VALUES ('C000000001','Facebook: facebook.com/valeriephilmon2'),('C000000002','Instagram: rosierini'),('C000000003','Facebook: facebook.com/judyculley98'),('C000000010','Instagram: thebrianswab'),('C000000010','Twitter: @thebrianswab'),('C000000017','Instagram: stephle0nard'),('C000000017','Twitter: @stephle0nard'),('C000000020','Instagram: kyliejenner'),('C000000020','Twitter: kyliejenner'),('C000000023','Instagram: khloekardashian'),('C000000023','Twitter: khloekardashian'),('C000000027','Instagram: aligarth23'),('C000000028','Instagram: elizabeththequeen'),('C000000035','Twitter: @kaceydogers'),('C000000040','Instagram: ariannagrande'),('C000000040','Twitter: @ariannagrande'),('C000000047','Instagram: singerdua'),('C000000047','Twitter:: @duapeeps');
/*!40000 ALTER TABLE `Contact_SocialMedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact_Tags`
--

DROP TABLE IF EXISTS `Contact_Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contact_Tags` (
  `Contact_ID` char(10) NOT NULL,
  `Tag` varchar(200) NOT NULL,
  PRIMARY KEY (`Contact_ID`,`Tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact_Tags`
--

LOCK TABLES `Contact_Tags` WRITE;
/*!40000 ALTER TABLE `Contact_Tags` DISABLE KEYS */;
INSERT INTO `Contact_Tags` VALUES ('C000000001','Campaign Candidate'),('C000000002','Volunteer-Event'),('C000000002','Volunteer-PhoneBank'),('C000000003','Donor'),('C000000004','Donor'),('C000000005','Donor'),('C000000005','Volunteer-PhoneBank'),('C000000006','Volunteer-Event'),('C000000006','Volunteer-PhoneBank'),('C000000007','Volunteer-Event'),('C000000008','Donor'),('C000000009','Volunteer-Event'),('C000000010','Volunteer-PhoneBank'),('C000000011','Donor'),('C000000012','Volunteer-Event'),('C000000012','Volunteer-PhoneBank'),('C000000013','Donor'),('C000000013','Volunteer-Event'),('C000000013','Volunteer-PhoneBank'),('C000000014','Campaign Candidate'),('C000000015','Donor'),('C000000016','Volunteer-PhoneBank'),('C000000017','Donor'),('C000000018','Volunteer-Event'),('C000000018','Volunteer-PhoneBank'),('C000000019','Campaign Candidate'),('C000000020','Volunteer-Event'),('C000000020','Volunteer-PhoneBank'),('C000000021','Volunteer-PhoneBank'),('C000000022','Volunteer-Event'),('C000000022','Volunteer-PhoneBank'),('C000000023','Donor'),('C000000024','Donor'),('C000000025','Volunteer-PhoneBank'),('C000000026','Campaign Candidate'),('C000000027','Donor'),('C000000028','Volunteer-PhoneBank'),('C000000029','Donor'),('C000000030','Donor'),('C000000031','Campaign Candidate'),('C000000032','Volunteer-PhoneBank'),('C000000033','Donor'),('C000000034','Donor'),('C000000035','Volunteer-Event'),('C000000035','Volunteer-PhoneBank'),('C000000036','Donor'),('C000000037','Volunteer-Event'),('C000000038','Donor'),('C000000038','Volunteer-Event'),('C000000038','Volunteer-PhoneBank'),('C000000039','Donor'),('C000000040','Donor'),('C000000040','Volunteer-PhoneBank'),('C000000041','Donor'),('C000000042','Volunteer-PhoneBank'),('C000000043','Volunteer-Event'),('C000000044','Volunteer-Event'),('C000000045','Campaign Candidate'),('C000000046','Volunteer-Event'),('C000000046','Volunteer-PhoneBank'),('C000000047','Donor'),('C000000048','Volunteer-Event'),('C000000048','Volunteer-PhoneBank'),('C000000049','Campaign Candidate'),('C000000050','Donor'),('C000000051','Volunteer-PhoneBank'),('C000000052','Donor');
/*!40000 ALTER TABLE `Contact_Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContactLog`
--

DROP TABLE IF EXISTS `ContactLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ContactLog` (
  `ContactLog_ID` char(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Method` enum('PHONE-CALL','IN-PERSON VISIT','EMAIL','TEXT MESSAGE','OTHER') DEFAULT NULL,
  `Status` enum('ANSWERED','BAD INFORMATION','LEFT INFORMATION','MEANINGFUL INTERACTION','NOT INTERESTED','NO ANSWER','SEND INFORMATION','OTHER') DEFAULT NULL,
  `Contact_ID` char(10) DEFAULT NULL,
  PRIMARY KEY (`ContactLog_ID`),
  KEY `Contact_ID` (`Contact_ID`),
  CONSTRAINT `contactlog_ibfk_1` FOREIGN KEY (`Contact_ID`) REFERENCES `Contact` (`Contact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContactLog`
--

LOCK TABLES `ContactLog` WRITE;
/*!40000 ALTER TABLE `ContactLog` DISABLE KEYS */;
INSERT INTO `ContactLog` VALUES ('CL123456000','2021-05-29','10:21:00','EMAIL','SEND INFORMATION','C000000017'),('CL123456111','2021-06-01','10:21:00','EMAIL','ANSWERED','C000000017'),('CL123456710','2021-03-29','13:31:00','PHONE-CALL','ANSWERED','C000000010'),('CL123456711','2021-03-29','13:41:00','EMAIL','ANSWERED','C000000011'),('CL123456712','2021-03-29','13:51:00','TEXT MESSAGE','ANSWERED','C000000012'),('CL123456713','2021-03-29','10:11:00','PHONE-CALL','MEANINGFUL INTERACTION','C000000013'),('CL123456714','2021-03-29','10:40:00','EMAIL','MEANINGFUL INTERACTION','C000000014'),('CL123456715','2021-03-29','10:50:00','TEXT MESSAGE','MEANINGFUL INTERACTION','C000000015'),('CL123456716','2021-05-22','10:01:00','PHONE-CALL','SEND INFORMATION','C000000016'),('CL123456717','2021-05-22','10:21:00','EMAIL','SEND INFORMATION','C000000017'),('CL123456718','2021-05-22','10:31:00','TEXT MESSAGE','SEND INFORMATION','C000000018'),('CL123456719','2021-05-22','10:41:00','PHONE-CALL','ANSWERED','C000000019'),('CL123456720','2021-05-22','10:51:00','EMAIL','ANSWERED','C000000020'),('CL123456721','2021-05-22','11:11:00','TEXT MESSAGE','ANSWERED','C000000021'),('CL123456722','2021-05-22','11:21:00','PHONE-CALL','MEANINGFUL INTERACTION','C000000022'),('CL123456723','2021-05-22','11:21:00','EMAIL','MEANINGFUL INTERACTION','C000000023'),('CL123456724','2021-05-22','11:23:00','TEXT MESSAGE','MEANINGFUL INTERACTION','C000000024'),('CL123456725','2021-05-22','11:34:00','PHONE-CALL','SEND INFORMATION','C000000025'),('CL123456726','2021-05-25','11:49:00','EMAIL','SEND INFORMATION','C000000026'),('CL123456727','2021-05-25','13:11:00','TEXT MESSAGE','SEND INFORMATION','C000000027'),('CL123456728','2021-05-25','13:20:00','PHONE-CALL','ANSWERED','C000000028'),('CL123456729','2021-05-25','13:30:00','EMAIL','ANSWERED','C000000029'),('CL123456730','2021-05-25','13:45:00','TEXT MESSAGE','ANSWERED','C000000030'),('CL123456731','2021-05-25','14:50:00','PHONE-CALL','MEANINGFUL INTERACTION','C000000031'),('CL123456732','2021-05-25','15:20:00','EMAIL','MEANINGFUL INTERACTION','C000000032'),('CL123456733','2021-05-25','15:33:00','TEXT MESSAGE','MEANINGFUL INTERACTION','C000000033'),('CL123456734','2021-05-25','15:41:00','PHONE-CALL','SEND INFORMATION','C000000034'),('CL123456735','2021-05-21','15:55:00','EMAIL','SEND INFORMATION','C000000035'),('CL123456736','2021-05-21','09:10:00','TEXT MESSAGE','SEND INFORMATION','C000000036'),('CL123456737','2021-05-21','09:20:00','PHONE-CALL','MEANINGFUL INTERACTION','C000000037'),('CL123456738','2021-05-21','09:30:00','EMAIL','MEANINGFUL INTERACTION','C000000038'),('CL123456739','2021-05-21','09:40:00','TEXT MESSAGE','MEANINGFUL INTERACTION','C000000039'),('CL123456740','2021-04-27','09:50:00','PHONE-CALL','SEND INFORMATION','C000000040'),('CL123456741','2021-04-27','10:01:00','EMAIL','SEND INFORMATION','C000000041'),('CL123456742','2021-04-27','10:21:00','TEXT MESSAGE','SEND INFORMATION','C000000042'),('CL123456743','2021-04-27','10:31:00','PHONE-CALL','ANSWERED','C000000043'),('CL123456744','2021-04-27','10:41:00','EMAIL','ANSWERED','C000000044'),('CL123456745','2021-04-27','10:51:00','TEXT MESSAGE','ANSWERED','C000000045'),('CL123456746','2021-04-27','12:01:00','PHONE-CALL','MEANINGFUL INTERACTION','C000000046'),('CL123456747','2021-04-27','12:21:00','EMAIL','MEANINGFUL INTERACTION','C000000047'),('CL123456748','2021-05-14','12:31:00','TEXT MESSAGE','MEANINGFUL INTERACTION','C000000048'),('CL123456749','2021-05-14','12:41:00','PHONE-CALL','SEND INFORMATION','C000000049'),('CL123456750','2021-05-14','12:51:00','EMAIL','SEND INFORMATION','C000000050'),('CL123456751','2021-05-14','13:01:00','TEXT MESSAGE','SEND INFORMATION','C000000051'),('CL123456752','2021-05-14','13:11:00','PHONE-CALL','ANSWERED','C000000052'),('CL123456781','2021-05-02','11:01:00','PHONE-CALL','ANSWERED','C000000001'),('CL123456782','2021-05-02','11:30:00','EMAIL','ANSWERED','C000000002'),('CL123456783','2021-05-02','11:40:00','TEXT MESSAGE','ANSWERED','C000000003'),('CL123456784','2021-05-02','11:50:00','PHONE-CALL','MEANINGFUL INTERACTION','C000000004'),('CL123456785','2021-04-12','12:01:00','EMAIL','MEANINGFUL INTERACTION','C000000005'),('CL123456786','2021-04-12','12:20:00','TEXT MESSAGE','MEANINGFUL INTERACTION','C000000006'),('CL123456787','2021-04-12','12:40:00','PHONE-CALL','SEND INFORMATION','C000000007'),('CL123456788','2021-03-29','13:01:00','EMAIL','SEND INFORMATION','C000000008'),('CL123456789','2021-03-29','13:21:00','TEXT MESSAGE','SEND INFORMATION','C000000009'),('CL555456710','2021-03-15','14:31:00','EMAIL','ANSWERED','C000000010'),('CL666456710','2021-03-24','15:31:00','EMAIL','ANSWERED','C000000010'),('CL777456710','2021-02-12','11:31:00','EMAIL','ANSWERED','C000000011'),('CL888456711','2021-03-20','12:41:00','EMAIL','ANSWERED','C000000020'),('CL999456711','2021-03-21','12:41:00','EMAIL','MEANINGFUL INTERACTION','C000000020');
/*!40000 ALTER TABLE `ContactLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donation`
--

DROP TABLE IF EXISTS `Donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Donation` (
  `Donation_ID` char(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `Amount` decimal(13,2) DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Intended_Campaign` text,
  `Event_Name` text,
  `Contact_ID` char(10) DEFAULT NULL,
  PRIMARY KEY (`Donation_ID`),
  KEY `Contact_ID` (`Contact_ID`),
  CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`Contact_ID`) REFERENCES `Contact` (`Contact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donation`
--

LOCK TABLES `Donation` WRITE;
/*!40000 ALTER TABLE `Donation` DISABLE KEYS */;
INSERT INTO `Donation` VALUES ('D000000001','2021-06-24',1000.00,'14:10:00','Rosemary Becker For Ohio Senate','Rosemary\'s Campaign Kick Of Event','C000000003'),('D000000002','2021-06-24',50.00,'15:30:22','Rosemary Becker For Ohio Senate','Rosemary\'s Campaign Kick Of Event','C000000004'),('D000000003','2021-04-23',20.00,'12:11:00','Rosemary Becker For Ohio Senate','Republican Leadership Brunch Ohio','C000000003'),('D000000004','2021-04-23',20.00,'12:10:00','Rosemary Becker For Ohio Senate','Republican Leadership Brunch Ohio','C000000004'),('D000000005','2021-06-24',1000.00,'14:20:00','Rosemary Becker For Ohio Senate','Rosemary\'s Campaign Kick Of Event','C000000005'),('D000000006','2021-06-24',50.00,'16:40:12','Rosemary Becker For Ohio Senate','Rosemary\'s Campaign Kick Of Event','C000000008'),('D000000007','2021-04-23',20.00,'12:45:00','Rosemary Becker For Ohio Senate','Republican Leadership Brunch Ohio','C000000005'),('D000000008','2021-04-23',20.00,'12:30:00','Rosemary Becker For Ohio Senate','Republican Leadership Brunch Ohio','C000000008'),('D000000009','2021-08-15',1000.00,'13:02:00','Philmon\'s district 11 return to normalcy','Meet the Candidates Ohio','C000000011'),('D000000010','2021-08-15',500.00,'14:20:00','Philmon\'s district 11 return to normalcy','Meet the Candidates Ohio','C000000015'),('D000000011','2021-08-15',100.00,'15:25:00','Philmon\'s district 11 return to normalcy','Meet the Candidates Ohio','C000000013'),('D000000012','2021-10-16',1050.00,'11:24:00','Philmon\'s district 11 return to normalcy',NULL,'C000000015'),('D000000013','2021-09-16',2050.00,'10:22:43','Philmon\'s district 11 return to normalcy',NULL,'C000000011'),('D000000014','2021-05-16',5000.00,'12:30:00','Kyle for OH','Democratic Leadership Brunch Ohio','C000000017'),('D000000015','2021-06-16',5000.00,'11:34:00','Kyle for OH',NULL,'C000000017'),('D000000016','2021-07-13',2000.00,'11:11:00','Kyle for OH',NULL,'C000000017'),('D000000017','2021-08-27',500.00,'13:20:00','Kyle for OH',NULL,'C000000017'),('D000000018','2021-06-18',600.00,'13:10:00','Von for OH Senate','Fair Fight Event Ohio','C000000023'),('D000000019','2021-06-19',1500.00,'13:24:00','Von for OH Senate',NULL,'C000000024'),('D000000020','2021-06-18',300.00,'14:23:00','Von for OH Senate','Fair Fight Event Ohio','C000000024'),('D000000021','2021-06-20',2500.00,'14:20:00','Von for OH Senate',NULL,'C000000023'),('D000000022','2021-08-29',600.00,'15:30:00','Von for OH Senate',NULL,'C000000027'),('D000000023','2021-10-25',500.00,'15:05:00','Von for OH Senate',NULL,'C000000027'),('D000000024','2021-09-17',1000.00,'13:12:00','Zelma for OH9',NULL,'C000000041'),('D000000025','2021-07-15',90.00,'13:14:00','Zelma for OH9','Zelma\'s Campaign Kick Of Event','C000000038'),('D000000026','2021-07-15',250.00,'15:40:00','Zelma for OH9','Zelma\'s Campaign Kick Of Event','C000000039'),('D000000027','2021-07-15',300.00,'15:50:00','Zelma for OH9','Zelma\'s Campaign Kick Of Event','C000000041'),('D000000028','2021-07-15',25.00,'16:23:00','Zelma for OH9','Zelma\'s Campaign Kick Of Event','C000000040'),('D000000029','2021-08-16',2500.00,'16:30:00','Zelma for OH9',NULL,'C000000039'),('D000000030','2021-09-14',500.00,'13:10:00','Meredith for district 14','Meredith for district 14 Fundraiser','C000000029'),('D000000031','2021-09-14',20000.00,'13:20:00','Meredith for district 14','Meredith for district 14 Fundraiser','C000000033'),('D000000032','2021-09-14',500.00,'14:40:00','Meredith for district 14','Meredith for district 14 Fundraiser','C000000030'),('D000000033','2021-09-14',600.00,'15:20:00','Meredith for district 14','Meredith for district 14 Fundraiser','C000000034'),('D000000034','2021-09-14',5000.00,'17:11:00','Meredith for district 14','Meredith for district 14 Fundraiser','C000000036'),('D000000035','2021-09-15',5000.00,'15:30:00','Meredith for district 14',NULL,'C000000029'),('D000000036','2021-06-25',1000.00,'14:55:00','King for OH11','Democratic Conference Ohio','C000000047'),('D000000037','2021-06-25',500.00,'14:29:00','King for OH11','Democratic Conference Ohio','C000000052'),('D000000038','2021-06-25',300.00,'15:20:00','King for OH11','Democratic Conference Ohio','C000000050'),('D000000039','2021-07-26',20000.00,'15:45:00','King for OH11',NULL,'C000000047'),('D000000040','2021-07-26',50000.00,'15:50:00','King for OH11',NULL,'C000000052'),('D000000041','2021-09-15',3000.00,'15:50:00','Meredith for district 14',NULL,'C000000033');
/*!40000 ALTER TABLE `Donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Event` (
  `Event_ID` char(10) NOT NULL,
  `Event_name` text NOT NULL,
  `Location_addr` text,
  `Location_city` text,
  `Location_state` char(2) DEFAULT NULL,
  `Location_zip` char(5) DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  `Start_time` time DEFAULT NULL,
  `End_time` time DEFAULT NULL,
  `Campaign_ID` char(12) DEFAULT NULL,
  PRIMARY KEY (`Event_ID`),
  KEY `Campaign_ID` (`Campaign_ID`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`Campaign_ID`) REFERENCES `Campaign` (`Campaign_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
INSERT INTO `Event` VALUES ('E003984232','Republican Rally for Ohio','6372 OH-75','Mt Gilead','OH','43338','2021-04-23','2021-04-23','18:00:00','20:00:00','CAM232456789'),('E100100100','Meredith for district 14 Fundraiser','944 Lee Rd','Cleveland Heights','OH','44118','2021-09-14','2021-09-14','13:00:00','18:00:00','CAM981703234'),('E123090837','Democratic Campaign Rally for Ohio','33 Lena Dr','Aurora','OH','44202','2021-11-01','2021-11-01','15:00:00','18:00:00','CAM123673999'),('E123222938','Meet the Candidates Ohio','21 Waldo-Fulton-Chesterville Rd','Waldo','OH','43356','2021-08-15','2021-08-15','13:00:00','18:00:00','CAM232456789'),('E200988002','Progressive National Convention Cleveland','11111 East Blvd','Cleveland','OH','44106','2021-08-09','2021-08-09','13:00:00','17:00:00','CAM981703234'),('E200988582','Democratic National Convention Ohio','80 High St','Akron','OH','44308','2021-09-18','2021-09-18','13:00:00','17:00:00','CAM676000981'),('E222333738','Zelma\'s Campaign Kick Of Event','3822 5th Ave','2431 Peaceful Rd','OH','44115','2021-07-15','2021-07-15','13:00:00','18:00:00','CAM039567237'),('E222333888','Rosemary\'s Campaign Kick Of Event','33 Horner St','Cuyahoga Falls','OH','44221','2021-06-24','2021-06-24','13:00:00','18:00:00','CAM123456789'),('E240021211','Democratic Rally for Ohio district 11','899 Erieside Ave','Cleveland','OH','44114','2021-10-29','2021-10-29','15:00:00','18:00:00','CAM980438745'),('E345678900','Fair Fight Event Ohio','2394 East Blvd','Cleveland','OH','44106','2021-06-18','2021-06-18','13:00:00','18:00:00','CAM676000981'),('E345678911','Progressive National Convention Ohio','112 Sunny Glen Lane','Cleveland','OH','44115','2021-02-04','2021-02-04','13:00:00','17:00:00','CAM039567237'),('E564675786','Democratic Conference Ohio','3743 E 9th St','Cleveland','OH','44114','2021-06-25','2021-06-25','13:00:00','18:00:00','CAM980438745'),('E889234556','Republican Leadership Brunch Ohio','3554 E 118th St','Cleveland','OH','44105','2021-10-20','2021-10-20','11:00:00','14:00:00','CAM123456789'),('E982746002','Democratic Leadership Brunch Ohio','4485 E 75th St','Cleveland','OH','44105','2021-05-16','2021-05-16','11:00:00','14:00:00','CAM123673999');
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ParticipatesIn`
--

DROP TABLE IF EXISTS `ParticipatesIn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ParticipatesIn` (
  `Contact_ID` char(10) NOT NULL,
  `Event_ID` char(10) NOT NULL,
  `Start_Time` time DEFAULT NULL,
  `End_Time` time DEFAULT NULL,
  PRIMARY KEY (`Contact_ID`,`Event_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `participatesin_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `Event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ParticipatesIn`
--

LOCK TABLES `ParticipatesIn` WRITE;
/*!40000 ALTER TABLE `ParticipatesIn` DISABLE KEYS */;
INSERT INTO `ParticipatesIn` VALUES ('C000000002','E222333888','13:00:00','18:00:00'),('C000000002','E889234556','11:00:00','14:00:00'),('C000000006','E222333888','13:00:00','18:00:00'),('C000000006','E889234556','11:00:00','14:00:00'),('C000000007','E889234556','11:00:00','14:00:00'),('C000000009','E889234556','11:00:00','14:00:00'),('C000000012','E003984232','18:00:00','20:00:00'),('C000000013','E123222938','13:00:00','18:00:00'),('C000000018','E982746002','11:00:00','14:00:00'),('C000000020','E982746002','11:00:00','14:00:00'),('C000000022','E200988582','13:00:00','17:00:00'),('C000000022','E345678900','13:00:00','18:00:00'),('C000000035','E100100100','13:00:00','18:00:00'),('C000000035','E200988002','13:00:00','17:00:00'),('C000000037','E100100100','13:00:00','18:00:00'),('C000000037','E200988002','13:00:00','17:00:00'),('C000000038','E222333738','13:00:00','18:00:00'),('C000000038','E345678911','13:00:00','17:00:00'),('C000000043','E222333738','13:00:00','18:00:00'),('C000000043','E345678911','13:00:00','17:00:00'),('C000000044','E222333738','13:00:00','18:00:00'),('C000000044','E345678911','13:00:00','17:00:00'),('C000000046','E564675786','13:00:00','18:00:00'),('C000000048','E240021211','15:00:00','18:00:00');
/*!40000 ALTER TABLE `ParticipatesIn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhoneBank`
--

DROP TABLE IF EXISTS `PhoneBank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PhoneBank` (
  `Phonebank_ID` char(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Reason` enum('ASK FOR DONATION','VOTER ENCOURAGEMENT','POLL','OTHER') DEFAULT NULL,
  `Message` text,
  `Campaign_Name` text,
  PRIMARY KEY (`Phonebank_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhoneBank`
--

LOCK TABLES `PhoneBank` WRITE;
/*!40000 ALTER TABLE `PhoneBank` DISABLE KEYS */;
INSERT INTO `PhoneBank` VALUES ('PB000000001','2021-06-29','ASK FOR DONATION','Would you like to donate for the campaign?','Rosemary Becker For Ohio Senate'),('PB000000002','2021-07-10','VOTER ENCOURAGEMENT','Please vote in the upcoming election.','Rosemary Becker For Ohio Senate'),('PB000000003','2021-10-22','POLL','Are you a registered voter? If no, why not?','Rosemary Becker For Ohio Senate'),('PB000000004','2021-08-05','ASK FOR DONATION','Would you like to donate for the campaign?','Philmon\'s district 11 return to normalcy'),('PB000000005','2021-09-12','VOTER ENCOURAGEMENT','Please vote in the upcoming election.','Philmon\'s district 11 return to normalcy'),('PB000000006','2021-10-20','VOTER ENCOURAGEMENT','Please vote in the upcoming election.','Philmon\'s district 11 return to normalcy'),('PB000000007','2021-06-29','POLL','Are you a registered voter? If no, why not?','Kyle for OH'),('PB000000008','2021-07-10','VOTER ENCOURAGEMENT','Please vote in the upcoming election.','Kyle for OH'),('PB000000009','2021-07-22','POLL','Are you a registered voter? If no, why not?','Kyle for OH'),('PB000000010','2021-06-15','POLL','Are you a registered voter? If no, why not?','Von for OH Senate'),('PB000000011','2021-07-10','VOTER ENCOURAGEMENT','Please vote in the upcoming election.','Von for OH Senate'),('PB000000012','2021-10-22','POLL','Are you a registered voter? If no, why not?','Von for OH Senate'),('PB000000013','2021-06-15','ASK FOR DONATION','Would you like to donate for the campaign?','Meredith for district 14'),('PB000000014','2021-08-16','VOTER ENCOURAGEMENT','Please vote in the upcoming election.','Meredith for district 14'),('PB000000015','2021-09-27','POLL','Are you a registered voter? If no, why not?','Meredith for district 14'),('PB000000016','2021-06-01','ASK FOR DONATION','Would you like to donate for the campaign?','Zelma for OH9'),('PB000000017','2021-08-10','VOTER ENCOURAGEMENT','Please vote in the upcoming election.','Zelma for OH9'),('PB000000018','2021-11-22','POLL','Are you a registered voter? If no, why not?','Zelma for OH9'),('PB000000019','2021-08-18','ASK FOR DONATION','Would you like to donate for the campaign?','King for OH11'),('PB000000020','2021-09-16','VOTER ENCOURAGEMENT','Please vote in the upcoming election.','King for OH11'),('PB000000021','2021-11-02','VOTER ENCOURAGEMENT','Please vote in the upcoming election.','King for OH11');
/*!40000 ALTER TABLE `PhoneBank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhoneRecord`
--

DROP TABLE IF EXISTS `PhoneRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PhoneRecord` (
  `PhoneRecord_ID` char(11) NOT NULL,
  `Volunteer_ID` char(10) NOT NULL,
  `Voter_ID` char(12) NOT NULL,
  `Duration` time DEFAULT NULL,
  `Phonebank_ID` char(11) DEFAULT NULL,
  `Voter_PhoneNumber` char(12) DEFAULT NULL,
  PRIMARY KEY (`PhoneRecord_ID`),
  UNIQUE KEY `PhoneRecord_ID` (`PhoneRecord_ID`,`Volunteer_ID`),
  KEY `Voter_ID` (`Voter_ID`),
  KEY `Phonebank_ID` (`Phonebank_ID`),
  KEY `Volunteer_ID` (`Volunteer_ID`),
  CONSTRAINT `phonerecord_ibfk_1` FOREIGN KEY (`Voter_ID`) REFERENCES `Voter` (`SOS_VOTERID`),
  CONSTRAINT `phonerecord_ibfk_2` FOREIGN KEY (`Phonebank_ID`) REFERENCES `PhoneBank` (`Phonebank_ID`),
  CONSTRAINT `phonerecord_ibfk_3` FOREIGN KEY (`Volunteer_ID`) REFERENCES `Contact` (`Contact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhoneRecord`
--

LOCK TABLES `PhoneRecord` WRITE;
/*!40000 ALTER TABLE `PhoneRecord` DISABLE KEYS */;
INSERT INTO `PhoneRecord` VALUES ('PR000000001','C000000002','OH0024466705','00:01:59','PB000000001','216-123-4567'),('PR000000002','C000000002','OH0020346358','00:10:50','PB000000001','216-123-4560'),('PR000000003','C000000002','OH0025655990','00:02:03','PB000000001','216-124-4561'),('PR000000004','C000000002','OH0025339428','00:03:00','PB000000001','216-001-0001'),('PR000000006','C000000005','OH0015274068','00:10:50','PB000000002','216-192-0002'),('PR000000007','C000000005','OH0015298552','00:02:03','PB000000002','216-003-0003'),('PR000000008','C000000005','OH0025822261','00:03:00','PB000000002','216-004-0005'),('PR000000009','C000000005','OH0026098104','00:05:10','PB000000002','216-111-2222'),('PR000000010','C000000006','OH0020346358','00:01:59','PB000000003','216-222-1111'),('PR000000011','C000000006','OH0014949982','00:10:50','PB000000003','216-156-2000'),('PR000000012','C000000006','OH0024952208','00:02:03','PB000000003','216-141-2001'),('PR000000013','C000000006','OH0014593061','00:03:00','PB000000003','216-103-2003'),('PR000000014','C000000006','OH0025292456','00:05:10','PB000000003','216-198-2004'),('PR000000015','C000000010','OH0025292456','00:01:59','PB000000004','216-155-2005'),('PR000000016','C000000010','OH0025655990','00:10:50','PB000000004','216-106-2006'),('PR000000017','C000000010','OH0024466705','00:02:03','PB000000004','216-187-2007'),('PR000000018','C000000010','OH0022869147','00:03:00','PB000000004','216-109-3000'),('PR000000019','C000000010','OH0014949982','00:05:10','PB000000004','216-999-9888'),('PR000000020','C000000012','OH0015048210','00:01:59','PB000000005','216-950-5000'),('PR000000021','C000000012','OH0020346358','00:10:50','PB000000005','216-901-5005'),('PR000000022','C000000012','OH0015034099','00:02:03','PB000000005','216-943-5010'),('PR000000023','C000000012','OH0025655990','00:03:00','PB000000005','216-923-5011'),('PR000000024','C000000012','OH0015241761','00:05:10','PB000000005','216-216-2160'),('PR000000025','C000000013','OH0015257299','00:01:59','PB000000006','216-789-4000'),('PR000000026','C000000013','OH0015635452','00:10:50','PB000000006','216-701-9030'),('PR000000027','C000000013','OH0014702409','00:02:03','PB000000006','216-700-4001'),('PR000000028','C000000013','OH0014786664','00:03:00','PB000000006','216-722-4002'),('PR000000029','C000000013','OH0014927771','00:05:10','PB000000006','216-744-4003'),('PR000000030','C000000016','OH0015015234','00:01:59','PB000000007','216-766-5494'),('PR000000031','C000000016','OH0015168271','00:10:50','PB000000007','216-762-4005'),('PR000000032','C000000016','OH0020928672','00:02:03','PB000000007','216-773-4019'),('PR000000033','C000000016','OH0025272690','00:03:00','PB000000007','216-714-4020'),('PR000000034','C000000016','OH0014949982','00:05:10','PB000000007','216-333-2222'),('PR000000035','C000000018','OH0025462801','00:01:59','PB000000008','216-820-5010'),('PR000000036','C000000018','OH0025483978','00:10:50','PB000000008','216-900-9090'),('PR000000037','C000000018','OH0023642114','00:02:03','PB000000008','216-733-4045'),('PR000000038','C000000018','OH0025608486','00:03:00','PB000000008','216-766-4046'),('PR000000039','C000000018','OH0025622009','00:05:10','PB000000008','216-756-4051'),('PR000000040','C000000019','OH0025669400','00:01:59','PB000000009','216-710-4067'),('PR000000041','C000000019','OH0015106220','00:10:50','PB000000009','216-712-5078'),('PR000000042','C000000019','OH0022784806','00:02:03','PB000000009','216-799-5079'),('PR000000043','C000000019','OH0025798601','00:03:00','PB000000009','216-712-6023'),('PR000000044','C000000019','OH0015168271','00:05:10','PB000000009','216-713-6030'),('PR000000045','C000000021','OH0014458588','00:01:59','PB000000010','330-123-4455'),('PR000000046','C000000021','OH0015337955','00:10:50','PB000000010','330-123-1000'),('PR000000047','C000000021','OH0015315517','00:02:03','PB000000010','330-123-9876'),('PR000000048','C000000021','OH0025898557','00:03:00','PB000000010','330-321-4567'),('PR000000049','C000000021','OH0025926208','00:05:10','PB000000010','216-714-6031'),('PR000000050','C000000022','OH0023415795','00:01:59','PB000000011','216-715-6048'),('PR000000051','C000000022','OH0026276557','00:10:50','PB000000011','216-811-9000'),('PR000000052','C000000022','OH0015324384','00:02:03','PB000000011','216-812-9099'),('PR000000053','C000000022','OH0014469344','00:03:00','PB000000011','216-812-9100'),('PR000000054','C000000022','OH0014499899','00:05:10','PB000000011','216-813-9112'),('PR000000055','C000000025','OH0014974618','00:01:59','PB000000012','216-813-9121'),('PR000000056','C000000025','OH0015570693','00:10:50','PB000000012','216-951-2020'),('PR000000057','C000000025','OH0014630244','00:02:03','PB000000012','216-925-2021'),('PR000000058','C000000025','OH0014970819','00:03:00','PB000000012','216-977-2023'),('PR000000059','C000000025','OH0021087426','00:05:10','PB000000012','216-590-6700'),('PR000000060','C000000028','OH0015015234','00:01:59','PB000000013','216-563-6701'),('PR000000061','C000000028','OH0020340563','00:10:50','PB000000013','216-560-6702'),('PR000000062','C000000028','OH0019311872','00:02:03','PB000000013','216-511-6700'),('PR000000063','C000000028','OH0015271754','00:03:00','PB000000013','216-582-6700'),('PR000000064','C000000028','OH0015238036','00:05:10','PB000000013','216-597-6700'),('PR000000065','C000000032','OH0015015234','00:01:59','PB000000014','216-560-6777'),('PR000000066','C000000032','OH0022102262','00:10:50','PB000000014','216-530-6799'),('PR000000067','C000000032','OH0015330228','00:02:03','PB000000014','216-555-6788'),('PR000000068','C000000032','OH0015227496','00:03:00','PB000000014','330-000-9999'),('PR000000069','C000000032','OH0018799738','00:05:10','PB000000014','330-001-9991'),('PR000000070','C000000035','OH0014481041','00:01:59','PB000000015','330-022-9911'),('PR000000071','C000000035','OH0015570693','00:10:50','PB000000015','330-044-9912'),('PR000000072','C000000035','OH0024296488','00:02:03','PB000000015','330-055-9920'),('PR000000073','C000000035','OH0014486162','00:03:00','PB000000015','330-777-3333'),('PR000000074','C000000035','OH0022102262','00:05:10','PB000000015','330-505-3333'),('PR000000075','C000000046','OH0014503080','00:01:59','PB000000019','330-507-3334'),('PR000000076','C000000046','OH0023765447','00:10:50','PB000000019','216-200-3000'),('PR000000077','C000000046','OH0023765856','00:02:03','PB000000019','216-211-3111'),('PR000000078','C000000046','OH0014952919','00:03:00','PB000000019','216-222-3322'),('PR000000079','C000000046','OH0022663117','00:05:10','PB000000019','216-215-3445'),('PR000000080','C000000048','OH0014685191','00:01:59','PB000000020','216-220-9847'),('PR000000081','C000000048','OH0014720466','00:10:50','PB000000020','216-255-5094'),('PR000000082','C000000048','OH0015045164','00:02:03','PB000000020','216-091-2039'),('PR000000083','C000000048','OH0015178003','00:03:00','PB000000020','216-209-2938'),('PR000000084','C000000048','OH0015321878','00:05:10','PB000000020','216-245-3928'),('PR000000085','C000000051','OH0015936012','00:01:59','PB000000021','216-400-4444'),('PR000000086','C000000051','OH0026118524','00:10:50','PB000000021','216-433-2232'),('PR000000087','C000000051','OH0026252797','00:02:03','PB000000021','216-411-2393'),('PR000000088','C000000051','OH0026265856','00:03:00','PB000000021','216-459-5496'),('PR000000089','C000000051','OH0026274991','00:05:10','PB000000021','216-478-3239'),('PR000000090','C000000040','OH0023415795','00:01:59','PB000000016','216-056-6543'),('PR000000091','C000000040','OH0026276557','00:10:50','PB000000016','216-032-5995'),('PR000000092','C000000040','OH0015324384','00:02:03','PB000000016','216-066-6559'),('PR000000093','C000000040','OH0014469344','00:03:00','PB000000016','216-077-2003'),('PR000000094','C000000040','OH0014499899','00:05:10','PB000000016','216-043-4930'),('PR000000095','C000000042','OH0014974618','00:01:59','PB000000017','216-089-8376'),('PR000000096','C000000042','OH0015570693','00:10:50','PB000000017','216-080-9274'),('PR000000097','C000000042','OH0014630244','00:02:03','PB000000017','216-022-8493'),('PR000000098','C000000042','OH0014970819','00:03:00','PB000000017','216-055-4894'),('PR000000099','C000000042','OH0021087426','00:05:10','PB000000017','216-049-4893'),('PR000000100','C000000038','OH0015015234','00:01:59','PB000000018','216-067-3456'),('PR000000101','C000000038','OH0020340563','00:10:50','PB000000018','216-011-2928'),('PR000000102','C000000038','OH0019311872','00:02:03','PB000000018','216-038-8383'),('PR000000103','C000000038','OH0015271754','00:03:00','PB000000018','216-072-9390'),('PR000000104','C000000038','OH0015238036','00:05:10','PB000000018','216-060-0948'),('PR000000111','C000000002','OH0020818701','00:05:10','PB000000001','216-025-4673'),('PR000000114','C000000005','OH0025655990','00:01:59','PB000000002','216-292-2928');
/*!40000 ALTER TABLE `PhoneRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignsUp`
--

DROP TABLE IF EXISTS `SignsUp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SignsUp` (
  `Campaign_ID` char(12) NOT NULL,
  `Contact_ID` char(10) NOT NULL,
  PRIMARY KEY (`Campaign_ID`,`Contact_ID`),
  KEY `Contact_ID` (`Contact_ID`),
  CONSTRAINT `signsup_ibfk_1` FOREIGN KEY (`Contact_ID`) REFERENCES `Contact` (`Contact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignsUp`
--

LOCK TABLES `SignsUp` WRITE;
/*!40000 ALTER TABLE `SignsUp` DISABLE KEYS */;
INSERT INTO `SignsUp` VALUES ('CAM123456789','C000000001'),('CAM123456789','C000000002'),('CAM123456789','C000000003'),('CAM123456789','C000000004'),('CAM123456789','C000000005'),('CAM123456789','C000000006'),('CAM123456789','C000000007'),('CAM123456789','C000000008'),('CAM123456789','C000000009'),('CAM232456789','C000000010'),('CAM232456789','C000000011'),('CAM232456789','C000000012'),('CAM232456789','C000000013'),('CAM232456789','C000000014'),('CAM232456789','C000000015'),('CAM123673999','C000000016'),('CAM123673999','C000000017'),('CAM123673999','C000000018'),('CAM123673999','C000000019'),('CAM123673999','C000000020'),('CAM676000981','C000000021'),('CAM676000981','C000000022'),('CAM676000981','C000000023'),('CAM676000981','C000000024'),('CAM676000981','C000000025'),('CAM676000981','C000000026'),('CAM676000981','C000000027'),('CAM981703234','C000000028'),('CAM981703234','C000000029'),('CAM981703234','C000000030'),('CAM981703234','C000000031'),('CAM981703234','C000000032'),('CAM981703234','C000000033'),('CAM981703234','C000000034'),('CAM981703234','C000000035'),('CAM981703234','C000000036'),('CAM981703234','C000000037'),('CAM039567237','C000000038'),('CAM039567237','C000000039'),('CAM039567237','C000000040'),('CAM039567237','C000000041'),('CAM039567237','C000000042'),('CAM039567237','C000000043'),('CAM039567237','C000000044'),('CAM039567237','C000000045'),('CAM980438745','C000000046'),('CAM980438745','C000000047'),('CAM980438745','C000000048'),('CAM980438745','C000000049'),('CAM980438745','C000000050'),('CAM980438745','C000000051'),('CAM980438745','C000000052');
/*!40000 ALTER TABLE `SignsUp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VolunteersFor`
--

DROP TABLE IF EXISTS `VolunteersFor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VolunteersFor` (
  `Contact_ID` char(10) NOT NULL,
  `Phonebank_ID` char(11) NOT NULL,
  `Start_Time` time DEFAULT NULL,
  `End_Time` time DEFAULT NULL,
  PRIMARY KEY (`Contact_ID`,`Phonebank_ID`),
  KEY `Phonebank_ID` (`Phonebank_ID`),
  CONSTRAINT `volunteersfor_ibfk_1` FOREIGN KEY (`Phonebank_ID`) REFERENCES `PhoneBank` (`Phonebank_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VolunteersFor`
--

LOCK TABLES `VolunteersFor` WRITE;
/*!40000 ALTER TABLE `VolunteersFor` DISABLE KEYS */;
INSERT INTO `VolunteersFor` VALUES ('C000000002','PB000000001','13:00:00','15:00:00'),('C000000005','PB000000002','12:00:00','15:00:00'),('C000000006','PB000000003','09:00:00','12:00:00'),('C000000010','PB000000004','10:00:00','12:00:00'),('C000000012','PB000000005','13:00:00','15:00:00'),('C000000013','PB000000006','13:00:00','15:00:00'),('C000000016','PB000000007','13:00:00','15:00:00'),('C000000018','PB000000008','13:00:00','15:00:00'),('C000000020','PB000000009','09:00:00','12:00:00'),('C000000021','PB000000010','11:00:00','13:00:00'),('C000000022','PB000000011','10:00:00','12:00:00'),('C000000025','PB000000012','13:00:00','15:00:00'),('C000000028','PB000000013','14:00:00','15:00:00'),('C000000032','PB000000014','12:00:00','15:00:00'),('C000000035','PB000000015','12:00:00','15:00:00'),('C000000038','PB000000016','10:00:00','12:00:00'),('C000000040','PB000000017','09:00:00','12:00:00'),('C000000042','PB000000018','10:00:00','12:00:00'),('C000000046','PB000000019','11:00:00','13:00:00'),('C000000048','PB000000020','12:00:00','14:00:00'),('C000000051','PB000000021','12:00:00','14:00:00');
/*!40000 ALTER TABLE `VolunteersFor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Voter`
--

DROP TABLE IF EXISTS `Voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Voter` (
  `SOS_VOTERID` char(12) NOT NULL,
  `COUNTY_NUMBER` int NOT NULL,
  `COUNTY_ID` int NOT NULL,
  `LAST_NAME` varchar(100) NOT NULL,
  `FIRST_NAME` varchar(100) NOT NULL,
  `MIDDLE_NAME` text,
  `SUFFIX` text,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `REGISTRATION_DATE` date DEFAULT NULL,
  `VOTER_STATUS` enum('ACTIVE','CONFIRMATION') DEFAULT NULL,
  `PARTY_AFFILIATION` text,
  `RESIDENTIAL_ADDRESS1` text,
  `RESIDENTIAL_SECONDARY_ADDR` text,
  `RESIDENTIAL_CITY` text,
  `RESIDENTIAL_STATE` char(2) DEFAULT NULL,
  `RESIDENTIAL_ZIP` char(5) DEFAULT NULL,
  `RESIDENTIAL_ZIP_PLUS4` char(4) DEFAULT NULL,
  `RESIDENTIAL_COUNTRY` text,
  `RESIDENTIAL_POSTALCODE` text,
  `MAILING_ADDRESS1` text,
  `MAILING_SECONDARY_ADDRESS` text,
  `MAILING_CITY` text,
  `MAILING_STATE` char(2) DEFAULT NULL,
  `MAILING_ZIP` char(5) DEFAULT NULL,
  `MAILING_ZIP_PLUS4` char(4) DEFAULT NULL,
  `MAILING_COUNTRY` text,
  `MAILING_POSTAL_CODE` text,
  `CAREER_CENTER` text,
  `CITY` text,
  `CITY_SCHOOL_DISTRICT` text,
  `COUNTY_COURT_DISTRICT` text,
  `CONGRESSIONAL_DISTRICT` int DEFAULT NULL,
  `COURT_OF_APPEALS` int DEFAULT NULL,
  `EDU_SERVICE_CENTER_DISTRICT` text,
  `EXEMPTED_VILL_SCHOOL_DISTRICT` text,
  `LIBRARY` text,
  `LOCAL_SCHOOL_DISTRICT` text,
  `MUNICIPAL_COURT_DISTRICT` text,
  `PRECINCT_NAME` text,
  `PRECINCT_CODE` text,
  `STATE_BOARD_OF_EDUCATION` int DEFAULT NULL,
  `STATE_REPRESENTATIVE_DISTRICT` int DEFAULT NULL,
  `STATE_SENATE_DISTRICT` int DEFAULT NULL,
  `TOWNSHIP` text,
  `VILLAGE` text,
  `WARD` text,
  `PRIMARY_03_07_2000` char(1) DEFAULT NULL,
  `GENERAL_11_07_2000` char(1) DEFAULT NULL,
  `SPECIAL_05_08_2001` char(1) DEFAULT NULL,
  `GENERAL_11_06_2001` char(1) DEFAULT NULL,
  `PRIMARY_05_07_2002` char(1) DEFAULT NULL,
  `GENERAL_11_05_2002` char(1) DEFAULT NULL,
  `SPECIAL_05_06_2003` char(1) DEFAULT NULL,
  `GENERAL_11_04_2003` char(1) DEFAULT NULL,
  `PRIMARY_03_02_2004` char(1) DEFAULT NULL,
  `GENERAL_11_02_2004` char(1) DEFAULT NULL,
  `SPECIAL_02_08_2005` char(1) DEFAULT NULL,
  `PRIMARY_05_03_2005` char(1) DEFAULT NULL,
  `PRIMARY_09_13_2005` char(1) DEFAULT NULL,
  `GENERAL_11_08_2005` char(1) DEFAULT NULL,
  `SPECIAL_02_07_2006` char(1) DEFAULT NULL,
  `PRIMARY_05_02_2006` char(1) DEFAULT NULL,
  `GENERAL_11_07_2006` char(1) DEFAULT NULL,
  `PRIMARY_05_08_2007` char(1) DEFAULT NULL,
  `PRIMARY_09_11_2007` char(1) DEFAULT NULL,
  `GENERAL_11_06_2007` char(1) DEFAULT NULL,
  `PRIMARY_11_06_2007` char(1) DEFAULT NULL,
  `GENERAL_12_11_2007` char(1) DEFAULT NULL,
  `PRIMARY_03_04_2008` char(1) DEFAULT NULL,
  `PRIMARY_10_14_2008` char(1) DEFAULT NULL,
  `GENERAL_11_04_2008` char(1) DEFAULT NULL,
  `GENERAL_11_18_2008` char(1) DEFAULT NULL,
  `PRIMARY_05_05_2009` char(1) DEFAULT NULL,
  `PRIMARY_09_08_2009` char(1) DEFAULT NULL,
  `PRIMARY_09_15_2009` char(1) DEFAULT NULL,
  `PRIMARY_09_29_2009` char(1) DEFAULT NULL,
  `GENERAL_11_03_2009` char(1) DEFAULT NULL,
  `PRIMARY_05_04_2010` char(1) DEFAULT NULL,
  `PRIMARY_07_13_2010` char(1) DEFAULT NULL,
  `PRIMARY_09_07_2010` char(1) DEFAULT NULL,
  `GENERAL_11_02_2010` char(1) DEFAULT NULL,
  `PRIMARY_05_03_2011` char(1) DEFAULT NULL,
  `PRIMARY_09_13_2011` char(1) DEFAULT NULL,
  `GENERAL_11_08_2011` char(1) DEFAULT NULL,
  `PRIMARY_03_06_2012` char(1) DEFAULT NULL,
  `GENERAL_11_06_2012` char(1) DEFAULT NULL,
  `PRIMARY_05_07_2013` char(1) DEFAULT NULL,
  `PRIMARY_09_10_2013` char(1) DEFAULT NULL,
  `PRIMARY_10_01_2013` char(1) DEFAULT NULL,
  `GENERAL_11_05_2013` char(1) DEFAULT NULL,
  `PRIMARY_05_06_2014` char(1) DEFAULT NULL,
  `GENERAL_11_04_2014` char(1) DEFAULT NULL,
  `PRIMARY_05_05_2015` char(1) DEFAULT NULL,
  `PRIMARY_09_15_2015` char(1) DEFAULT NULL,
  `GENERAL_11_03_2015` char(1) DEFAULT NULL,
  `PRIMARY_03_15_2016` char(1) DEFAULT NULL,
  `GENERAL_06_07_2016` char(1) DEFAULT NULL,
  `PRIMARY_09_13_2016` char(1) DEFAULT NULL,
  `GENERAL_11_08_2016` char(1) DEFAULT NULL,
  `PRIMARY_05_02_2017` char(1) DEFAULT NULL,
  `PRIMARY_09_12_2017` char(1) DEFAULT NULL,
  `GENERAL_11_07_2017` char(1) DEFAULT NULL,
  `PRIMARY_05_08_2018` char(1) DEFAULT NULL,
  `GENERAL_08_07_2018` char(1) DEFAULT NULL,
  `GENERAL_11_06_2018` char(1) DEFAULT NULL,
  `PRIMARY_05_07_2019` char(1) DEFAULT NULL,
  `PRIMARY_09_10_2019` char(1) DEFAULT NULL,
  `GENERAL_11_05_2019` char(1) DEFAULT NULL,
  `PRIMARY_03_17_2020` char(1) DEFAULT NULL,
  `GENERAL_11_03_2020` char(1) DEFAULT NULL,
  `PRIMARY_05_04_2021` char(1) DEFAULT NULL,
  `PRIMARY_08_03_2021` char(1) DEFAULT NULL,
  `PRIMARY_09_14_2021` char(1) DEFAULT NULL,
  PRIMARY KEY (`SOS_VOTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Voter`
--

LOCK TABLES `Voter` WRITE;
/*!40000 ALTER TABLE `Voter` DISABLE KEYS */;

#Import Voter Data from: Cuyahoga County
#Website: https://www6.ohiosos.gov/ords/f?p=VOTERFTP:HOME
#File was to large to upload through SQL to Github

/*!40000 ALTER TABLE `Voter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proj'
--

--
-- Dumping routines for database 'proj'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-05 17:41:15
