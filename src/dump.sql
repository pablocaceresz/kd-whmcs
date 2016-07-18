-- MySQL dump 10.13  Distrib 5.7.11, for Linux (x86_64)
--
-- Host: localhost    Database: whmcs
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `mod_invoicedata`
--

DROP TABLE IF EXISTS `mod_invoicedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_invoicedata` (
  `invoiceid` int(10) NOT NULL,
  `clientsdetails` text COLLATE utf8_unicode_ci NOT NULL,
  `customfields` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_invoicedata`
--

LOCK TABLES `mod_invoicedata` WRITE;
/*!40000 ALTER TABLE `mod_invoicedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_invoicedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaccounts`
--

DROP TABLE IF EXISTS `tblaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaccounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `currency` int(10) NOT NULL,
  `gateway` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `amountin` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fees` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amountout` decimal(10,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `transid` text COLLATE utf8_unicode_ci NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `refundid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `userid` (`userid`),
  KEY `date` (`date`),
  KEY `transid` (`transid`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaccounts`
--

LOCK TABLES `tblaccounts` WRITE;
/*!40000 ALTER TABLE `tblaccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblactivitylog`
--

DROP TABLE IF EXISTS `tblactivitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblactivitylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(10) NOT NULL,
  `ipaddr` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblactivitylog`
--

LOCK TABLES `tblactivitylog` WRITE;
/*!40000 ALTER TABLE `tblactivitylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblactivitylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladdonmodules`
--

DROP TABLE IF EXISTS `tbladdonmodules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladdonmodules` (
  `module` text COLLATE utf8_unicode_ci NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladdonmodules`
--

LOCK TABLES `tbladdonmodules` WRITE;
/*!40000 ALTER TABLE `tbladdonmodules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladdonmodules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladdons`
--

DROP TABLE IF EXISTS `tbladdons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladdons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `packages` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `billingcycle` text COLLATE utf8_unicode_ci NOT NULL,
  `tax` text COLLATE utf8_unicode_ci NOT NULL,
  `showorder` text COLLATE utf8_unicode_ci NOT NULL,
  `downloads` text COLLATE utf8_unicode_ci NOT NULL,
  `autoactivate` text COLLATE utf8_unicode_ci NOT NULL,
  `suspendproduct` text COLLATE utf8_unicode_ci NOT NULL,
  `welcomeemail` int(10) NOT NULL,
  `weight` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladdons`
--

LOCK TABLES `tbladdons` WRITE;
/*!40000 ALTER TABLE `tbladdons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladdons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladminlog`
--

DROP TABLE IF EXISTS `tbladminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladminlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `adminusername` text COLLATE utf8_unicode_ci NOT NULL,
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logouttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddress` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionid` text COLLATE utf8_unicode_ci NOT NULL,
  `lastvisit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `logouttime` (`logouttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladminlog`
--

LOCK TABLES `tbladminlog` WRITE;
/*!40000 ALTER TABLE `tbladminlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladminlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladminperms`
--

DROP TABLE IF EXISTS `tbladminperms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladminperms` (
  `roleid` int(1) NOT NULL,
  `permid` int(1) NOT NULL,
  KEY `roleid_permid` (`roleid`,`permid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladminperms`
--

LOCK TABLES `tbladminperms` WRITE;
/*!40000 ALTER TABLE `tbladminperms` DISABLE KEYS */;
INSERT INTO `tbladminperms` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,86),(1,87),(1,88),(1,89),(1,90),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,98),(1,99),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(1,119),(1,120),(1,122),(1,123),(1,124),(1,125),(1,125),(1,126),(1,126),(1,127),(1,128),(1,129),(1,131),(1,132),(1,133),(1,134),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,37),(2,38),(2,39),(2,40),(2,41),(2,42),(2,43),(2,44),(2,45),(2,46),(2,47),(2,48),(2,49),(2,50),(2,51),(2,52),(2,71),(2,73),(2,85),(2,98),(2,99),(2,101),(2,104),(2,105),(2,110),(2,120),(2,123),(2,124),(2,125),(2,125),(2,126),(2,126),(2,128),(2,129),(3,38),(3,39),(3,40),(3,41),(3,42),(3,43),(3,44),(3,50),(3,105),(3,125),(3,125),(3,126),(3,128);
/*!40000 ALTER TABLE `tbladminperms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladminroles`
--

DROP TABLE IF EXISTS `tbladminroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladminroles` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `widgets` text COLLATE utf8_unicode_ci NOT NULL,
  `systememails` int(1) NOT NULL,
  `accountemails` int(1) NOT NULL,
  `supportemails` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladminroles`
--

LOCK TABLES `tbladminroles` WRITE;
/*!40000 ALTER TABLE `tbladminroles` DISABLE KEYS */;
INSERT INTO `tbladminroles` VALUES (1,'Full Administrator','activity_log,getting_started,income_forecast,income_overview,my_notes,network_status,open_invoices,orders_overview,paypal_addon,admin_activity,client_activity,system_overview,todo_list,whmcs_news,supporttickets_overview,calendar',1,1,1),(2,'Sales Operator','activity_log,getting_started,income_forecast,income_overview,my_notes,network_status,open_invoices,orders_overview,paypal_addon,client_activity,todo_list,whmcs_news,supporttickets_overview,calendar',0,1,1),(3,'Support Operator','activity_log,getting_started,my_notes,todo_list,whmcs_news,supporttickets_overview,calendar',0,0,1);
/*!40000 ALTER TABLE `tbladminroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladmins`
--

DROP TABLE IF EXISTS `tbladmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladmins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `roleid` int(1) NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `passwordhash` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `authmodule` text COLLATE utf8_unicode_ci NOT NULL,
  `authdata` text COLLATE utf8_unicode_ci NOT NULL,
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `signature` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `template` text COLLATE utf8_unicode_ci NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  `disabled` int(1) NOT NULL,
  `loginattempts` int(1) NOT NULL,
  `supportdepts` text COLLATE utf8_unicode_ci NOT NULL,
  `ticketnotifications` text COLLATE utf8_unicode_ci NOT NULL,
  `homewidgets` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`(32))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmins`
--

LOCK TABLES `tbladmins` WRITE;
/*!40000 ALTER TABLE `tbladmins` DISABLE KEYS */;
INSERT INTO `tbladmins` VALUES (1,'35f07b18-5359-4a49-ac7b-e363ddcf4c2c',1,'admin','$2y$10$PRoAMH6U501dURgNO53pRuQuTHdq8eLu1Bam3ibnqKzy2ycwzkSPu','$2y$10$nwLPfQ5keowbYh9PCueQMe88OF8YrADwky3YjVCbiCtaY4GtHgrA.','','','admin','admin','admin@admin.com','','Welcome to WHMCS!  Please ensure you have setup the cron job to automate tasks','blend','',0,0,',','','getting_started:true,orders_overview:true,supporttickets_overview:true,my_notes:true,client_activity:true,open_invoices:true,activity_log:true|income_overview:true,system_overview:true,whmcs_news:true,sysinfo:true,admin_activity:true,todo_list:true,network_status:true,income_forecast:true|');
/*!40000 ALTER TABLE `tbladmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladminsecurityquestions`
--

DROP TABLE IF EXISTS `tbladminsecurityquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladminsecurityquestions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladminsecurityquestions`
--

LOCK TABLES `tbladminsecurityquestions` WRITE;
/*!40000 ALTER TABLE `tbladminsecurityquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladminsecurityquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliates`
--

DROP TABLE IF EXISTS `tblaffiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `clientid` int(10) NOT NULL,
  `visitors` int(1) NOT NULL,
  `paytype` text COLLATE utf8_unicode_ci NOT NULL,
  `payamount` decimal(10,2) NOT NULL,
  `onetime` int(1) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `withdrawn` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `affiliateid` (`id`),
  KEY `clientid` (`clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliates`
--

LOCK TABLES `tblaffiliates` WRITE;
/*!40000 ALTER TABLE `tblaffiliates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliatesaccounts`
--

DROP TABLE IF EXISTS `tblaffiliatesaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliatesaccounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affiliateid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `lastpaid` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `affiliateid` (`affiliateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliatesaccounts`
--

LOCK TABLES `tblaffiliatesaccounts` WRITE;
/*!40000 ALTER TABLE `tblaffiliatesaccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliatesaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliateshistory`
--

DROP TABLE IF EXISTS `tblaffiliateshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliateshistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affiliateid` int(10) NOT NULL,
  `date` date NOT NULL,
  `affaccid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `affiliateid` (`affiliateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliateshistory`
--

LOCK TABLES `tblaffiliateshistory` WRITE;
/*!40000 ALTER TABLE `tblaffiliateshistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliateshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliatespending`
--

DROP TABLE IF EXISTS `tblaffiliatespending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliatespending` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affaccid` int(10) NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `clearingdate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clearingdate` (`clearingdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliatespending`
--

LOCK TABLES `tblaffiliatespending` WRITE;
/*!40000 ALTER TABLE `tblaffiliatespending` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliatespending` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblaffiliateswithdrawals`
--

DROP TABLE IF EXISTS `tblaffiliateswithdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaffiliateswithdrawals` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `affiliateid` int(10) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `affiliateid` (`affiliateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaffiliateswithdrawals`
--

LOCK TABLES `tblaffiliateswithdrawals` WRITE;
/*!40000 ALTER TABLE `tblaffiliateswithdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaffiliateswithdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblannouncements`
--

DROP TABLE IF EXISTS `tblannouncements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblannouncements` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `announcement` text COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `parentid` int(10) NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblannouncements`
--

LOCK TABLES `tblannouncements` WRITE;
/*!40000 ALTER TABLE `tblannouncements` DISABLE KEYS */;
INSERT INTO `tblannouncements` VALUES (1,'2016-07-15 07:37:27','Thank you for choosing WHMCS!','<p>Welcome to <a title=\"WHMCS\" href=\"http://whmcs.com\" target=\"_blank\">WHMCS</a>! You have made a great choice and we want to help you get up and running as quickly as possible.</p>\n<p>This is a sample announcement. Announcements are a great way to keep your customers informed about news and special offers. You can edit or delete this announcement by logging into the admin area and navigating to <em>Support &gt; Announcements</em>.</p>\n<p>If at any point you get stuck, our support team is available 24x7 to assist you. Simply visit <a title=\"www.whmcs.com/support\" href=\"http://www.whmcs.com/support\" target=\"_blank\">www.whmcs.com/support</a> to request assistance.</p>',1,0,'','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tblannouncements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblapplinks`
--

DROP TABLE IF EXISTS `tblapplinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapplinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapplinks`
--

LOCK TABLES `tblapplinks` WRITE;
/*!40000 ALTER TABLE `tblapplinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblapplinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblapplinks_links`
--

DROP TABLE IF EXISTS `tblapplinks_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapplinks_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `applink_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_label` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapplinks_links`
--

LOCK TABLES `tblapplinks_links` WRITE;
/*!40000 ALTER TABLE `tblapplinks_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblapplinks_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblapplinks_log`
--

DROP TABLE IF EXISTS `tblapplinks_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapplinks_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `applink_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapplinks_log`
--

LOCK TABLES `tblapplinks_log` WRITE;
/*!40000 ALTER TABLE `tblapplinks_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblapplinks_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbannedemails`
--

DROP TABLE IF EXISTS `tblbannedemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbannedemails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domain` text COLLATE utf8_unicode_ci NOT NULL,
  `count` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbannedemails`
--

LOCK TABLES `tblbannedemails` WRITE;
/*!40000 ALTER TABLE `tblbannedemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbannedemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbannedips`
--

DROP TABLE IF EXISTS `tblbannedips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbannedips` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbannedips`
--

LOCK TABLES `tblbannedips` WRITE;
/*!40000 ALTER TABLE `tblbannedips` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbannedips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbillableitems`
--

DROP TABLE IF EXISTS `tblbillableitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbillableitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hours` decimal(5,1) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `recur` int(5) NOT NULL DEFAULT '0',
  `recurcycle` text COLLATE utf8_unicode_ci NOT NULL,
  `recurfor` int(5) NOT NULL DEFAULT '0',
  `invoiceaction` int(1) NOT NULL,
  `duedate` date NOT NULL,
  `invoicecount` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbillableitems`
--

LOCK TABLES `tblbillableitems` WRITE;
/*!40000 ALTER TABLE `tblbillableitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbillableitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbrowserlinks`
--

DROP TABLE IF EXISTS `tblbrowserlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbrowserlinks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbrowserlinks`
--

LOCK TABLES `tblbrowserlinks` WRITE;
/*!40000 ALTER TABLE `tblbrowserlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbrowserlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbundles`
--

DROP TABLE IF EXISTS `tblbundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbundles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `validfrom` date NOT NULL,
  `validuntil` date NOT NULL,
  `uses` int(4) NOT NULL,
  `maxuses` int(4) NOT NULL,
  `itemdata` text COLLATE utf8_unicode_ci NOT NULL,
  `allowpromo` int(1) NOT NULL,
  `showgroup` int(1) NOT NULL,
  `gid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `displayprice` decimal(10,2) NOT NULL,
  `sortorder` int(3) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbundles`
--

LOCK TABLES `tblbundles` WRITE;
/*!40000 ALTER TABLE `tblbundles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcalendar`
--

DROP TABLE IF EXISTS `tblcalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcalendar` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `start` int(10) NOT NULL,
  `end` int(10) NOT NULL,
  `allday` int(1) NOT NULL,
  `adminid` int(10) NOT NULL,
  `recurid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcalendar`
--

LOCK TABLES `tblcalendar` WRITE;
/*!40000 ALTER TABLE `tblcalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcancelrequests`
--

DROP TABLE IF EXISTS `tblcancelrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcancelrequests` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `relid` int(10) NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `serviceid` (`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcancelrequests`
--

LOCK TABLES `tblcancelrequests` WRITE;
/*!40000 ALTER TABLE `tblcancelrequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcancelrequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclientgroups`
--

DROP TABLE IF EXISTS `tblclientgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `groupcolour` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discountpercent` decimal(10,2) unsigned DEFAULT '0.00',
  `susptermexempt` text COLLATE utf8_unicode_ci,
  `separateinvoices` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclientgroups`
--

LOCK TABLES `tblclientgroups` WRITE;
/*!40000 ALTER TABLE `tblclientgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclientgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclients`
--

DROP TABLE IF EXISTS `tblclients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclients` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `companyname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci NOT NULL,
  `address2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `state` text COLLATE utf8_unicode_ci NOT NULL,
  `postcode` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `authmodule` text COLLATE utf8_unicode_ci NOT NULL,
  `authdata` text COLLATE utf8_unicode_ci NOT NULL,
  `currency` int(10) NOT NULL,
  `defaultgateway` text COLLATE utf8_unicode_ci NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `taxexempt` tinyint(1) NOT NULL,
  `latefeeoveride` tinyint(1) NOT NULL,
  `overideduenotices` tinyint(1) NOT NULL,
  `separateinvoices` tinyint(1) NOT NULL,
  `disableautocc` tinyint(1) NOT NULL,
  `datecreated` date NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `billingcid` int(10) NOT NULL,
  `securityqid` int(10) NOT NULL,
  `securityqans` text COLLATE utf8_unicode_ci NOT NULL,
  `groupid` int(10) NOT NULL,
  `cardtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cardlastfour` text COLLATE utf8_unicode_ci NOT NULL,
  `cardnum` blob NOT NULL,
  `startdate` blob NOT NULL,
  `expdate` blob NOT NULL,
  `issuenumber` blob NOT NULL,
  `bankname` text COLLATE utf8_unicode_ci NOT NULL,
  `banktype` text COLLATE utf8_unicode_ci NOT NULL,
  `bankcode` blob NOT NULL,
  `bankacct` blob NOT NULL,
  `gatewayid` text COLLATE utf8_unicode_ci NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `host` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive','Closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  `pwresetkey` text COLLATE utf8_unicode_ci NOT NULL,
  `emailoptout` int(1) NOT NULL,
  `overrideautoclose` int(1) NOT NULL,
  `allow_sso` tinyint(1) NOT NULL DEFAULT '1',
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pwresetexpiry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `firstname_lastname` (`firstname`(32),`lastname`(32)),
  KEY `email` (`email`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclients`
--

LOCK TABLES `tblclients` WRITE;
/*!40000 ALTER TABLE `tblclients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclientsfiles`
--

DROP TABLE IF EXISTS `tblclientsfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientsfiles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `adminonly` int(1) NOT NULL,
  `dateadded` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclientsfiles`
--

LOCK TABLES `tblclientsfiles` WRITE;
/*!40000 ALTER TABLE `tblclientsfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclientsfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblconfiguration`
--

DROP TABLE IF EXISTS `tblconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblconfiguration` (
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `setting` (`setting`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblconfiguration`
--

LOCK TABLES `tblconfiguration` WRITE;
/*!40000 ALTER TABLE `tblconfiguration` DISABLE KEYS */;
INSERT INTO `tblconfiguration` VALUES ('Language','English','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CompanyName','Company Name','0000-00-00 00:00:00','0000-00-00 00:00:00'),('Email','changeme@changeme.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),('Domain','http://www.yourdomain.com/','0000-00-00 00:00:00','0000-00-00 00:00:00'),('LogoURL','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SystemURL','http:///','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SystemSSLURL','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoSuspension','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoSuspensionDays','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CreateInvoiceDaysBefore','14','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AffiliateEnabled','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AffiliateEarningPercent','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AffiliateBonusDeposit','0.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AffiliatePayout','25.00','0000-00-00 00:00:00','2016-07-15 08:37:25'),('AffiliateLinks','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ActivityLimit','10000','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DateFormat','DD/MM/YYYY','0000-00-00 00:00:00','0000-00-00 00:00:00'),('PreSalesQuestions','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('Template','six','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AllowRegister','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AllowTransfer','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AllowOwnDomain','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('EnableTOSAccept','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TermsOfService','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AllowLanguageChange','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CutUtf8Mb4','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AllowCustomerChangeInvoiceGateway','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DefaultNameserver1','ns1.yourdomain.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DefaultNameserver2','ns2.yourdomain.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SendInvoiceReminderDays','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SendReminder','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('NumRecordstoDisplay','50','0000-00-00 00:00:00','0000-00-00 00:00:00'),('BCCMessages','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('MailType','mail','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SMTPHost','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SMTPUsername','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SMTPPassword','0vXjNSJm7TBBfcyezffDAubrxBI=','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SMTPPort','25','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ShowCancellationButton','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('UpdateStatsAuto','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('InvoicePayTo','Address goes here...','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SendAffiliateReportMonthly','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('InvalidLoginBanLength','15','0000-00-00 00:00:00','0000-00-00 00:00:00'),('Signature','Signature goes here...','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DomainOnlyOrderEnabled','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TicketBannedAddresses','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SendEmailNotificationonUserDetailsChange','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TicketAllowedFileTypes','.jpg,.gif,.jpeg,.png','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CloseInactiveTickets','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('InvoiceLateFeeAmount','10.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoTermination','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoTerminationDays','30','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminFirstName','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminLastName','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminCompanyName','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminAddress1','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminAddress2','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminCity','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminStateProvince','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminCountry','US','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminPostalCode','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminPhone','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminFax','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminEmailAddress','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RegistrarAdminUseClientDetails','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('Charset','utf-8','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoUnsuspend','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RunScriptonCheckOut','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('License','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('OrderFormTemplate','standard_cart','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AllowDomainsTwice','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AddLateFeeDays','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TaxEnabled','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DefaultCountry','US','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoRedirectoInvoice','gateway','0000-00-00 00:00:00','0000-00-00 00:00:00'),('EnablePDFInvoices','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CaptchaSetting','offloggedin','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SupportTicketOrder','ASC','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SendFirstOverdueInvoiceReminder','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TaxType','Exclusive','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DomainDNSManagement','5.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DomainEmailForwarding','5.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),('InvoiceIncrement','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ContinuousInvoiceGeneration','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoCancellationRequests','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SystemEmailsFromName','WHMCompleteSolution','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SystemEmailsFromEmail','noreply@yourdomain.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AllowClientRegister','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('BulkCheckTLDs','.com,.net','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CreditOnDowngrade','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AcceptedCardTypes','Visa,MasterCard,Discover,American Express,JCB,EnRoute,Diners Club','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TaxDomains','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TaxLateFee','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AdminForceSSL','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ProductMonthlyPricingBreakdown','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('LateFeeType','Percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SendSecondOverdueInvoiceReminder','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SendThirdOverdueInvoiceReminder','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DomainIDProtection','5.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DomainRenewalNotices','30,7,-3,0,0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SequentialInvoiceNumbering','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SequentialInvoiceNumberFormat','{NUMBER}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SequentialInvoiceNumberValue','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DefaultNameserver3','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DefaultNameserver4','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AffiliatesDelayCommission','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SupportModule','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AddFundsEnabled','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AddFundsMinimum','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AddFundsMaximum','100','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AddFundsMaximumBalance','300','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CCProcessDaysBefore','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CCAttemptOnlyOnce','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CCDaySendExpiryNotices','25','0000-00-00 00:00:00','0000-00-00 00:00:00'),('BulkDomainSearchEnabled','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoRenewDomainsonPayment','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DomainAutoRenewDefault','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CCRetryEveryWeekFor','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SupportTicketKBSuggestions','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DailyEmailBackup','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('FTPBackupHostname','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('FTPBackupUsername','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('FTPBackupPassword','AS2O744Sg13/kY5k/2SmFyNuIvo=','0000-00-00 00:00:00','0000-00-00 00:00:00'),('FTPBackupDestination','/','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TaxL2Compound','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SEOFriendlyUrls','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ShowCCIssueStart','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ClientDropdownFormat','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TicketRatingEnabled','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('NetworkIssuesRequireLogin','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ShowNotesFieldonCheckout','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RequireLoginforClientTickets','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('EmailCSS','.ExternalClass,.ExternalClass div,.ExternalClass font,.ExternalClass p,.ExternalClass span,.ExternalClass td,h1,img{line-height:100%}h1,h2{display:block;font-family:Helvetica;font-style:normal;font-weight:700}#outlook a{padding:0}.ExternalClass,.ReadMsgBody{width:100%}a,blockquote,body,li,p,table,td{-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%}table,td{mso-table-lspace:0;mso-table-rspace:0}img{-ms-interpolation-mode:bicubic;border:0;height:auto;outline:0;text-decoration:none}table{border-collapse:collapse!important}#bodyCell,#bodyTable,body{height:100%!important;margin:0;padding:0;width:100%!important}#bodyCell{padding:20px;}#templateContainer{width:600px;border:1px solid #ddd;background-color:#fff}#bodyTable,body{background-color:#FAFAFA}h1{color:#202020!important;font-size:26px;letter-spacing:normal;text-align:left;margin:0 0 10px}h2{color:#404040!important;font-size:20px;line-height:100%;letter-spacing:normal;text-align:left;margin:0 0 10px}h3,h4{display:block;font-style:italic;font-weight:400;letter-spacing:normal;text-align:left;margin:0 0 10px;font-family:Helvetica;line-height:100%}h3{color:#606060!important;font-size:16px}h4{color:grey!important;font-size:14px}.headerContent{background-color:#f8f8f8;border-bottom:1px solid #ddd;color:#505050;font-family:Helvetica;font-size:20px;font-weight:700;line-height:100%;text-align:left;vertical-align:middle;padding:0}.bodyContent,.footerContent{font-family:Helvetica;line-height:150%;text-align:left;}.footerContent{text-align:center}.bodyContent pre{padding:15px;background-color:#444;color:#f8f8f8;border:0}.bodyContent pre code{white-space:pre;word-break:normal;word-wrap:normal}.bodyContent table{margin:10px 0;background-color:#fff;border:1px solid #ddd}.bodyContent table th{padding:4px 10px;background-color:#f8f8f8;border:1px solid #ddd;font-weight:700;text-align:center}.bodyContent table td{padding:3px 8px;border:1px solid #ddd}.table-responsive{border:0}.bodyContent a{word-break:break-all}.headerContent a .yshortcuts,.headerContent a:link,.headerContent a:visited{color:#1f5d8c;font-weight:400;text-decoration:underline}#headerImage{height:auto;max-width:600px;padding:20px}#templateBody{background-color:#fff}.bodyContent{color:#505050;font-size:14px;padding:20px}.bodyContent a .yshortcuts,.bodyContent a:link,.bodyContent a:visited{color:#1f5d8c;font-weight:400;text-decoration:underline}.bodyContent a:hover{text-decoration:none}.bodyContent img{display:inline;height:auto;max-width:560px}.footerContent{color:grey;font-size:12px;padding:20px}.footerContent a .yshortcuts,.footerContent a span,.footerContent a:link,.footerContent a:visited{color:#606060;font-weight:400;text-decoration:underline}@media only screen and (max-width:640px){h1,h2,h3,h4{line-height:100%!important}#templateContainer{max-width:600px!important;width:100%!important}#templateContainer,body{width:100%!important}a,blockquote,body,li,p,table,td{-webkit-text-size-adjust:none!important}body{min-width:100%!important}#bodyCell{padding:10px!important}h1{font-size:24px!important}h2{font-size:20px!important}h3{font-size:18px!important}h4{font-size:16px!important}#templatePreheader{display:none!important}.headerContent{font-size:20px!important;line-height:125%!important}.footerContent{font-size:14px!important;line-height:115%!important}.footerContent a{display:block!important}.hide-mobile{display:none;}}','0000-00-00 00:00:00','2016-07-15 08:37:27'),('CurrencyAutoUpdateExchangeRates','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CurrencyAutoUpdateProductPrices','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('RequiredPWStrength','50','0000-00-00 00:00:00','0000-00-00 00:00:00'),('MaintenanceMode','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('MaintenanceModeMessage','We are currently performing maintenance and will be back shortly.','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SkipFraudForExisting','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('SMTPSSL','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ContactFormDept','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ContactFormTo','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TicketEscalationLastRun','2009-01-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00'),('APIAllowedIPs','a:1:{i:0;a:2:{s:2:\"ip\";s:0:\"\";s:4:\"note\";s:0:\"\";}}','0000-00-00 00:00:00','0000-00-00 00:00:00'),('NOMD5','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DisableSessionIPCheck','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DisableSupportTicketReplyEmailsLogging','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('OverageBillingMethod','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CCNeverStore','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CCAllowCustomerDelete','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CreateDomainInvoiceDaysBefore','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('NoInvoiceEmailOnOrder','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TaxInclusiveDeduct','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('LateFeeMinimum','0.00','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoProvisionExistingOnly','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('EnableDomainRenewalOrders','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('EnableMassPay','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('NoAutoApplyCredit','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CreateInvoiceDaysBeforeMonthly','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CreateInvoiceDaysBeforeQuarterly','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CreateInvoiceDaysBeforeSemiAnnually','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CreateInvoiceDaysBeforeAnnually','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CreateInvoiceDaysBeforeBiennially','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CreateInvoiceDaysBeforeTriennially','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ClientsProfileUneditableFields','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ClientDisplayFormat','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CCDoNotRemoveOnExpiry','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('GenerateRandomUsername','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AddFundsRequireOrder','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('GroupSimilarLineItems','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('ProrataClientsAnniversaryDate','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TCPDFFont','helvetica','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CancelInvoiceOnCancellation','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AttachmentThumbnails','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('EmailGlobalHeader','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n    <head>\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset={$charset}\" />\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\">\n        <style type=\"text/css\">\n            [EmailCSS]\n        </style>\n    </head>\n    <body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\n        <center>\n            <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" id=\"bodyTable\">\n                <tr>\n                    <td align=\"center\" valign=\"top\" id=\"bodyCell\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"templateContainer\">\n                            <tr>\n                                <td align=\"center\" valign=\"top\">\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"templateHeader\">\n                                        <tr>\n                                            <td valign=\"top\" class=\"headerContent\">\n                                                <a href=\"{$company_domain}\">\n                                                    <img src=\"{$company_logo_url}\" style=\"max-width:600px;padding:20px\" id=\"headerImage\" alt=\"{$company_name}\" />\n                                            </td>\n                                        </tr>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td align=\"center\" valign=\"top\">\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"templateBody\">\n                                        <tr>\n                                            <td valign=\"top\" class=\"bodyContent\">','0000-00-00 00:00:00','2016-07-15 08:37:27'),('EmailGlobalFooter','</td>\n                                        </tr>\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td align=\"center\" valign=\"top\">\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"templateFooter\">\n                                        <tr>\n                                            <td valign=\"top\" class=\"footerContent\">\n                                                &nbsp;<a href=\"{$company_domain}\">visit our website</a>\n                                                <span class=\"hide-mobile\"> | </span>\n                                                <a href=\"{$whmcs_url}\">log in to your account</a>\n                                                <span class=\"hide-mobile\"> | </span>\n                                                <a href=\"{$whmcs_url}submitticket.php\">get support</a>&nbsp;<br />\n                                                Copyright &copy; {$company_name}, All rights reserved.\n                                            </td>\n                                        </tr>\n                                    </table>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </center>\n    </body>\n</html>','0000-00-00 00:00:00','2016-07-15 08:37:27'),('DomainSyncEnabled','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DomainSyncNextDueDate','','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DomainSyncNextDueDateDays','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('TicketMask','%n%n%n%n%n%n','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AutoClientStatusChange','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),('AllowClientsEmailOptOut','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),('BannedSubdomainPrefixes','mail,mx,gapps,gmail,webmail,cpanel,whm,ftp,clients,billing,members,login,accounts,access','0000-00-00 00:00:00','0000-00-00 00:00:00'),('FreeDomainAutoRenewRequiresProduct','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('DomainToDoListEntries','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('Version','6.3.1-release.1','0000-00-00 00:00:00','2016-07-15 08:37:27'),('OrderDaysGrace','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),('OrderFormSidebarToggle','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),('CutUtf8Mb4','on','0000-00-00 00:00:00','0000-00-00 00:00:00'),('MDEFromTime','2016-07-15 08:37:27','2016-07-15 08:37:27','2016-07-15 08:37:27'),('ModuleHooks','','2016-07-15 08:37:27','2016-07-15 08:37:27'),('AddonModulesHooks','','2016-07-15 08:37:27','2016-07-15 08:37:27'),('InstanceID','OperQuSGJiJR','2016-07-15 08:41:32','2016-07-15 08:41:32'),('token_namespaces','a:3:{s:13:\"WHMCS.default\";b:1;s:19:\"WHMCS.admin.default\";b:1;s:19:\"WHMCS.domainchecker\";b:0;}','2016-07-15 08:41:32','2016-07-15 08:41:32');
/*!40000 ALTER TABLE `tblconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontacts`
--

DROP TABLE IF EXISTS `tblcontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontacts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `companyname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci NOT NULL,
  `address2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `state` text COLLATE utf8_unicode_ci NOT NULL,
  `postcode` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` text COLLATE utf8_unicode_ci NOT NULL,
  `subaccount` int(1) NOT NULL DEFAULT '0',
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci NOT NULL,
  `domainemails` int(1) NOT NULL,
  `generalemails` int(1) NOT NULL,
  `invoiceemails` int(1) NOT NULL,
  `productemails` int(1) NOT NULL,
  `supportemails` int(1) NOT NULL,
  `affiliateemails` int(1) NOT NULL,
  `pwresetkey` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pwresetexpiry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid_firstname_lastname` (`userid`,`firstname`(32),`lastname`(32)),
  KEY `email` (`email`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontacts`
--

LOCK TABLES `tblcontacts` WRITE;
/*!40000 ALTER TABLE `tblcontacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcredit`
--

DROP TABLE IF EXISTS `tblcredit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcredit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `clientid` int(10) NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `relid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcredit`
--

LOCK TABLES `tblcredit` WRITE;
/*!40000 ALTER TABLE `tblcredit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcredit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcurrencies`
--

DROP TABLE IF EXISTS `tblcurrencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcurrencies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `prefix` text COLLATE utf8_unicode_ci NOT NULL,
  `suffix` text COLLATE utf8_unicode_ci NOT NULL,
  `format` int(1) NOT NULL,
  `rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `default` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcurrencies`
--

LOCK TABLES `tblcurrencies` WRITE;
/*!40000 ALTER TABLE `tblcurrencies` DISABLE KEYS */;
INSERT INTO `tblcurrencies` VALUES (1,'USD','$',' USD',1,1.00000,1);
/*!40000 ALTER TABLE `tblcurrencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomfields`
--

DROP TABLE IF EXISTS `tblcustomfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomfields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `relid` int(10) NOT NULL DEFAULT '0',
  `fieldname` text COLLATE utf8_unicode_ci NOT NULL,
  `fieldtype` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `fieldoptions` text COLLATE utf8_unicode_ci NOT NULL,
  `regexpr` text COLLATE utf8_unicode_ci NOT NULL,
  `adminonly` text COLLATE utf8_unicode_ci NOT NULL,
  `required` text COLLATE utf8_unicode_ci NOT NULL,
  `showorder` text COLLATE utf8_unicode_ci NOT NULL,
  `showinvoice` text COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `serviceid` (`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomfields`
--

LOCK TABLES `tblcustomfields` WRITE;
/*!40000 ALTER TABLE `tblcustomfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomfieldsvalues`
--

DROP TABLE IF EXISTS `tblcustomfieldsvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomfieldsvalues` (
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `fieldid_relid` (`fieldid`,`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomfieldsvalues`
--

LOCK TABLES `tblcustomfieldsvalues` WRITE;
/*!40000 ALTER TABLE `tblcustomfieldsvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomfieldsvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomainpricing`
--

DROP TABLE IF EXISTS `tbldomainpricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomainpricing` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `extension` text COLLATE utf8_unicode_ci NOT NULL,
  `dnsmanagement` text COLLATE utf8_unicode_ci NOT NULL,
  `emailforwarding` text COLLATE utf8_unicode_ci NOT NULL,
  `idprotection` text COLLATE utf8_unicode_ci NOT NULL,
  `eppcode` text COLLATE utf8_unicode_ci NOT NULL,
  `autoreg` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `extension_registrationperiod` (`extension`(32)),
  KEY `order` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomainpricing`
--

LOCK TABLES `tbldomainpricing` WRITE;
/*!40000 ALTER TABLE `tbldomainpricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomainpricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomainreminders`
--

DROP TABLE IF EXISTS `tbldomainreminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomainreminders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domain_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `recipients` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `days_before_expiry` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomainreminders`
--

LOCK TABLES `tbldomainreminders` WRITE;
/*!40000 ALTER TABLE `tbldomainreminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomainreminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomains`
--

DROP TABLE IF EXISTS `tbldomains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomains` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `orderid` int(1) NOT NULL,
  `type` enum('Register','Transfer') COLLATE utf8_unicode_ci NOT NULL,
  `registrationdate` date NOT NULL,
  `domain` text COLLATE utf8_unicode_ci NOT NULL,
  `firstpaymentamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `recurringamount` decimal(10,2) NOT NULL,
  `registrar` text COLLATE utf8_unicode_ci NOT NULL,
  `registrationperiod` int(1) NOT NULL DEFAULT '1',
  `expirydate` date DEFAULT NULL,
  `subscriptionid` text COLLATE utf8_unicode_ci NOT NULL,
  `promoid` int(10) NOT NULL,
  `status` enum('Pending','Pending Transfer','Active','Expired','Cancelled','Fraud') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `nextduedate` date NOT NULL DEFAULT '0000-00-00',
  `nextinvoicedate` date NOT NULL,
  `additionalnotes` text COLLATE utf8_unicode_ci NOT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `dnsmanagement` tinyint(1) NOT NULL,
  `emailforwarding` tinyint(1) NOT NULL,
  `idprotection` tinyint(1) NOT NULL,
  `donotrenew` tinyint(1) NOT NULL,
  `reminders` text COLLATE utf8_unicode_ci NOT NULL,
  `synced` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `orderid` (`orderid`),
  KEY `domain` (`domain`(64)),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomains`
--

LOCK TABLES `tbldomains` WRITE;
/*!40000 ALTER TABLE `tbldomains` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldomainsadditionalfields`
--

DROP TABLE IF EXISTS `tbldomainsadditionalfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldomainsadditionalfields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `domainid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `domainid` (`domainid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldomainsadditionalfields`
--

LOCK TABLES `tbldomainsadditionalfields` WRITE;
/*!40000 ALTER TABLE `tbldomainsadditionalfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldomainsadditionalfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldownloadcats`
--

DROP TABLE IF EXISTS `tbldownloadcats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldownloadcats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldownloadcats`
--

LOCK TABLES `tbldownloadcats` WRITE;
/*!40000 ALTER TABLE `tbldownloadcats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldownloadcats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldownloads`
--

DROP TABLE IF EXISTS `tbldownloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldownloads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` int(10) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `downloads` int(10) NOT NULL DEFAULT '0',
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `clientsonly` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `productdownload` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `title` (`title`(32)),
  KEY `downloads` (`downloads`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldownloads`
--

LOCK TABLES `tbldownloads` WRITE;
/*!40000 ALTER TABLE `tbldownloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldownloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldynamic_translations`
--

DROP TABLE IF EXISTS `tbldynamic_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldynamic_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `related_type` enum('configurable_option.{id}.name','configurable_option_option.{id}.name','custom_field.{id}.description','custom_field.{id}.name','download.{id}.description','download.{id}.title','product.{id}.description','product.{id}.name','product_addon.{id}.description','product_addon.{id}.name','product_bundle.{id}.description','product_bundle.{id}.name','product_group.{id}.headline','product_group.{id}.name','product_group.{id}.tagline','product_group_features.{id}.feature','ticket_department.{id}.description','ticket_department.{id}.name') COLLATE utf8_unicode_ci NOT NULL,
  `related_id` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `translation` text COLLATE utf8_unicode_ci NOT NULL,
  `input_type` enum('text','textarea') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tbldynamic_translations_id` (`related_id`),
  KEY `tbldynamic_translations_type` (`related_type`),
  KEY `tbldynamic_translations_id_type` (`related_id`,`related_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldynamic_translations`
--

LOCK TABLES `tbldynamic_translations` WRITE;
/*!40000 ALTER TABLE `tbldynamic_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldynamic_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemailmarketer`
--

DROP TABLE IF EXISTS `tblemailmarketer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailmarketer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `disable` int(1) NOT NULL,
  `marketing` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemailmarketer`
--

LOCK TABLES `tblemailmarketer` WRITE;
/*!40000 ALTER TABLE `tblemailmarketer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblemailmarketer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemails`
--

DROP TABLE IF EXISTS `tblemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `to` text COLLATE utf8_unicode_ci,
  `cc` text COLLATE utf8_unicode_ci,
  `bcc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemails`
--

LOCK TABLES `tblemails` WRITE;
/*!40000 ALTER TABLE `tblemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemailtemplates`
--

DROP TABLE IF EXISTS `tblemailtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailtemplates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8_unicode_ci NOT NULL,
  `fromname` text COLLATE utf8_unicode_ci NOT NULL,
  `fromemail` text COLLATE utf8_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `custom` tinyint(1) NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  `copyto` text COLLATE utf8_unicode_ci NOT NULL,
  `plaintext` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `type` (`type`(32)),
  KEY `name` (`name`(64))
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemailtemplates`
--

LOCK TABLES `tblemailtemplates` WRITE;
/*!40000 ALTER TABLE `tblemailtemplates` DISABLE KEYS */;
INSERT INTO `tblemailtemplates` VALUES (1,'product','Hosting Account Welcome Email','New Account Information','<p>Dear {$client_name},</p><p align=\"center\"><strong>PLEASE READ THIS EMAIL IN FULL AND PRINT IT FOR YOUR RECORDS</strong></p><p>Thank you for your order from us! Your hosting account has now been setup and this email contains all the information you will need in order to begin using your account.</p><p>If you have requested a domain name during sign up, please keep in mind that your domain name will not be visible on the internet instantly. This process is called propagation and can take up to 48 hours. Until your domain has propagated, your website and email will not function, we have provided a temporary url which you may use to view your website and upload files in the meantime.</p><p><strong>New Account Information</strong></p><p>Hosting Package: {$service_product_name}<br />Domain: {$service_domain}<br />First Payment Amount: {$service_first_payment_amount}<br />Recurring Amount: {$service_recurring_amount}<br />Billing Cycle: {$service_billing_cycle}<br />Next Due Date: {$service_next_due_date}</p><p><strong>Login Details</strong></p><p>Username: {$service_username}<br />Password: {$service_password}</p><p>Control Panel URL: <a href=\"http://{$service_server_ip}:2082/\">http://{$service_server_ip}:2082/</a><br />Once your domain has propogated, you may also use <a href=\"http://www.{$service_domain}:2082/\">http://www.{$service_domain}:2082/</a></p><p><strong>Server Information</strong></p><p>Server Name: {$service_server_name}<br />Server IP: {$service_server_ip}</p><p>If you are using an existing domain with your new hosting account, you will need to update the nameservers to point to the nameservers listed below.</p><p>Nameserver 1: {$service_ns1} ({$service_ns1_ip})<br />Nameserver 2: {$service_ns2} ({$service_ns2_ip}){if $service_ns3}<br />Nameserver 3: {$service_ns3} ({$service_ns3_ip}){/if}{if $service_ns4}<br />Nameserver 4: {$service_ns4} ({$service_ns4_ip}){/if}</p><p><strong>Uploading Your Website</strong></p><p>Temporarily you may use one of the addresses given below to manage your web site:</p><p>Temporary FTP Hostname: {$service_server_ip}<br />Temporary Webpage URL: <a href=\"http://{$service_server_ip}/~{$service_username}/\">http://{$service_server_ip}/~{$service_username}/</a></p><p>And once your domain has propagated you may use the details below:</p><p>FTP Hostname: {$service_domain}<br />Webpage URL: <a href=\"http://www.{$service_domain}\">http://www.{$service_domain}</a></p><p><strong>Email Settings</strong></p><p>For email accounts that you setup, you should use the following connection details in your email program:</p><p>POP3 Host Address: mail.{$service_domain}<br />SMTP Host Address: mail.{$service_domain}<br />Username: The email address you are checking email for<br />Password: As specified in your control panel</p><p>Thank you for choosing us.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'domain','Domain Registration Confirmation','Domain Registration Confirmation','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis message is to confirm that your domain purchase has been successful. The details of the domain purchase are below: \r\n</p>\r\n<p>\r\nRegistration Date: {$domain_reg_date}<br />\r\nDomain: {$domain_name}<br />\r\nRegistration Period: {$domain_reg_period}<br />\r\nAmount: {$domain_first_payment_amount}<br />\r\nNext Due Date: {$domain_next_due_date} \r\n</p>\r\n<p>\r\nYou may login to your client area at {$whmcs_url} to manage your new domain. \r\n</p>\r\n<p>\r\n{$signature} \r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'product','Reseller Account Welcome Email','Reseller Account Information','<p align=\"center\">\r\n<strong>PLEASE PRINT THIS MESSAGE FOR YOUR RECORDS - PLEASE READ THIS EMAIL IN FULL.</strong>\r\n</p>\r\n<p>\r\nIf you have requested a domain name during sign up then this will not be visible on the internet for between 24 and 72 hours. This process is called Propagation. Until your domain has Propagated your website and email will not function, we have provided a temporary url which you may use to view your website and upload files in the meantime.\r\n</p>\r\n<p>\r\nDear {$client_name},\r\n</p>\r\n<p>\r\nThe reseller hosting account for {$service_domain} has been set up. The username and password below are for both cPanel to manage the website at {$service_domain} and WebHostManager to manage your Reseller Account.\r\n</p>\r\n<p>\r\n<strong>New Account Info</strong>\r\n</p>\r\n<p>\r\nDomain: {$service_domain}<br />\r\nUsername: {$service_username}<br />\r\nPassword: {$service_password}<br />\r\nHosting Package: {$service_product_name}\r\n</p>\r\n<p>\r\nControl Panel: <a href=\"http://{$service_server_ip}:2082/\">http://{$service_server_ip}:2082/</a><br />\r\nWeb Host Manager: <a href=\"http://{$service_server_ip}:2086/\">http://{$service_server_ip}:2086/</a>\r\n</p>\r\n<p>\r\n-------------------------------------------------------------------------------------------- <br />\r\n<strong>Web Host Manager Quick Start</strong> <br />\r\n-------------------------------------------------------------------------------------------- <br />\r\n<br />\r\nTo access your Web Host Manager, use the following address:<br />\r\n<br />\r\n<a href=\"http://{$service_server_ip}:2086/\">http://{$service_server_ip}:2086/</a><br />\r\n<br />\r\nThe <strong>http://</strong> must be in the address line to connect to port :2086 <br />\r\nPlease use the username/password given above. <br />\r\n<br />\r\n<strong><em>To Create a New Account <br />\r\n</em></strong><br />\r\nThe first thing you need to do is scroll down on the left and click on &#39Add Package&#39 so that you can create your own hosting packages. You cannot install a domain onto your account without first creating packages.<br />\r\n<br />\r\n1. Click on &#39Create a New Account&#39 from the left hand side menu <br />\r\n2. Put the domain in the &#39Domain&#39 box (no www or http or spaces ? just domainname.com). After putting in the domain, hit TAB and it will automatically create a username. Also, enter a password for the account.<br />\r\n3. Your package selection should be one that you created earlier <br />\r\n4. Then press the create button <br />\r\n<br />\r\nThis will give you a confirmation page (you should print this for your records)\r\n</p>\r\n<p>\r\nPlease do not click on anything that you are not sure what it does. Please do not try to alter the WHM Theme from the selection box - fatal errors may occur. \r\n</p>\r\n<p>\r\n-------------------------------------------------------------------------------------------- \r\n</p>\r\n<p>\r\nTemporarily you may use one of the addresses given below manage your web site\r\n</p>\r\n<p>\r\nTemporary FTP Hostname: {$service_server_ip}<br />\r\nTemporary Webpage URL: <a href=\"http://{$service_server_ip}/~{$service_username}/\">http://{$service_server_ip}/~{$service_username}/</a><br />\r\nTemporary Control Panel: <a href=\"http://{$service_server_ip}/cpanel\">http://{$service_server_ip}/cpanel</a>\r\n</p>\r\n<p>\r\nOnce your domain has Propagated\r\n</p>\r\n<p>\r\nFTP Hostname: www.{$service_domain}<br />\r\nWebpage URL: <a href=\"http://www.{$service_domain}\">http://www.{$service_domain}</a><br />\r\nControl Panel: <a href=\"http://www.{$service_domain}/cpanel\">http://www.{$service_domain}/cpanel</a><br />\r\nWeb Host Manager: <a href=\"http://www.{$service_domain}/whm\">http://www.{$service_domain}/whm</a>\r\n</p>\r\n<p>\r\n<strong>Mail settings</strong>\r\n</p>\r\n<p>\r\nCatch all email with your default email account\r\n</p>\r\n<p>\r\nPOP3 Host Address : mail.{$service_domain}<br />\r\nSMTP Host Address: mail.{$service_domain}<br />\r\nUsername: {$service_username}<br />\r\nPassword: {$service_password}\r\n</p>\r\n<p>\r\nAdditional mail accounts that you add\r\n</p>\r\n<p>\r\nPOP3 Host Address : mail.{$service_domain}<br />\r\nSMTP Host Address: mail.{$service_domain}<br />\r\nUsername : The FULL email address that you are picking up from (e.g. info@yourdomain.com). <br />\r\nIf your email client cannot accept a @ symbol, then you may replace this with a backslash .<br />\r\nPassword : As specified in your control panel \r\n</p>\r\n<p>\r\nThank you for choosing us.\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'support','Support Ticket Opened','New Support Ticket Opened','<p>\r\n{$client_name},\r\n</p>\r\n<p>\r\nThank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email. The details of your ticket are shown below.\r\n</p>\r\n<p>\r\nSubject: {$ticket_subject}<br />\r\nPriority: {$ticket_priority}<br />\r\nStatus: {$ticket_status}\r\n</p>\r\n<p>\r\nYou can view the ticket at any time at {$ticket_link}\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'support','Support Ticket Reply','Support Ticket Response','<p>\r\n{$ticket_message}\r\n</p>\r\n<p>\r\n----------------------------------------------<br />\r\nTicket ID: #{$ticket_id}<br />\r\nSubject: {$ticket_subject}<br />\r\nStatus: {$ticket_status}<br />\r\nTicket URL: {$ticket_link}<br />\r\n----------------------------------------------\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'general','Client Signup Email','Welcome','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThank you for signing up with us. Your new account has been setup and you can now login to our client area using the details below. \r\n</p>\r\n<p>\r\nEmail Address: {$client_email}<br />\r\nPassword: {$client_password} \r\n</p>\r\n<p>\r\nTo login, visit {$whmcs_url} \r\n</p>\r\n<p>\r\n{$signature} \r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'product','Service Suspension Notification','Service Suspension Notification','<p>Dear {$client_name},</p><p>This is a notification that your service has now been suspended.  The details of this suspension are below:</p><p>Product/Service: {$service_product_name}<br />{if $service_domain}Domain: {$service_domain}<br />{/if}Amount: {$service_recurring_amount}<br />Due Date: {$service_next_due_date}<br />Suspension Reason: <strong>{$service_suspension_reason}</strong></p><p>Please contact us as soon as possible to get your service reactivated.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'invoice','Invoice Payment Confirmation','Invoice Payment Confirmation','<p>Dear {$client_name},</p>\r\n<p>This is a payment receipt for Invoice {$invoice_num} sent on {$invoice_date_created}</p>\r\n<p>{$invoice_html_contents}</p>\r\n<p>Amount: {$invoice_last_payment_amount}<br />Transaction #: {$invoice_last_payment_transid}<br />Total Paid: {$invoice_amount_paid}<br />Remaining Balance: {$invoice_balance}<br />Status: {$invoice_status}</p>\r\n<p>You may review your invoice history at any time by logging in to your client area.</p>\r\n<p>Note: This email will serve as an official receipt for this payment.</p>\r\n<p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'invoice','Invoice Created','Customer Invoice','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is a notice that an invoice has been generated on {$invoice_date_created}. \r\n</p>\r\n<p>\r\nYour payment method is: {$invoice_payment_method} \r\n</p>\r\n<p>\r\nInvoice #{$invoice_num}<br />\r\nAmount Due: {$invoice_total}<br />\r\nDue Date: {$invoice_date_due} \r\n</p>\r\n<p>\r\n<strong>Invoice Items</strong> \r\n</p>\r\n<p>\r\n{$invoice_html_contents} <br />\r\n------------------------------------------------------ \r\n</p>\r\n<p>\r\nYou can login to your client area to view and pay the invoice at {$invoice_link} \r\n</p>\r\n<p>\r\n{$signature} \r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'invoice','Invoice Payment Reminder','Invoice Payment Reminder','<p>\r\nDear {$client_name},\r\n</p>\r\n<p>\r\nThis is a billing reminder that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is due on {$invoice_date_due}.\r\n</p>\r\n<p>\r\nYour payment method is: {$invoice_payment_method}\r\n</p>\r\n<p>\r\nInvoice: {$invoice_num}<br />\r\nBalance Due: {$invoice_balance}<br />\r\nDue Date: {$invoice_date_due}\r\n</p>\r\n<p>\r\nYou can login to your client area to view and pay the invoice at {$invoice_link}\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'general','Order Confirmation','Order Confirmation','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nWe have received your order and will be processing it shortly. The details of the order are below: \r\n</p>\r\n<p>\r\nOrder Number: <b>{$order_number}</b></p>\r\n<p>\r\n{$order_details} \r\n</p>\r\n<p>\r\nYou will receive an email from us shortly once your account has been setup. Please quote your order reference number if you wish to contact us about this order. \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'product','Dedicated/VPS Server Welcome Email','New Dedicated Server Information','<p>\r\nDear {$client_name},<br />\r\n<br />\r\n<strong>PLEASE PRINT THIS MESSAGE FOR YOUR RECORDS - PLEASE READ THIS EMAIL IN FULL.</strong>\r\n</p>\r\n<p>\r\nWe are pleased to tell you that the server you ordered has now been set up and is operational.\r\n</p>\r\n<p>\r\n<strong>Server Details<br />\r\n</strong>=============================\r\n</p>\r\n<p>\r\n{$service_product_name}\r\n</p>\r\n<p>\r\nMain IP: {$service_dedicated_ip}<br />\r\nRoot pass: {$service_password}\r\n</p>\r\n<p>\r\nIP address allocation: <br />\r\n{$service_assigned_ips}\r\n</p>\r\n<p>\r\nServerName: {$service_domain}\r\n</p>\r\n<p>\r\n<strong>WHM Access<br />\r\n</strong>=============================<br />\r\n<a href=\"http://xxxxx:2086/\">http://xxxxx:2086</a><br />\r\nUsername: root<br />\r\nPassword: {$service_password}\r\n</p>\r\n<p>\r\n<strong>Custom DNS Server Addresses</strong><br />\r\n=============================<br />\r\nThe custom DNS addresses you should set for your domain to use are: <br />\r\nPrimary DNS: {$service_ns1}<br />\r\nSecondary DNS: {$service_ns2}\r\n</p>\r\n<p>\r\nYou will have to login to your registrar and find the area where you can specify both of your custom name server addresses.\r\n</p>\r\n<p>\r\nAfter adding these custom nameservers to your domain registrar control panel, it will take 24 to 48 hours for your domain to delegate authority to your DNS server. Once this has taken effect, your DNS server has control over the DNS records for the domains which use your custom name server addresses. \r\n</p>\r\n<p>\r\n<strong>SSH Access Information<br />\r\n</strong>=============================<br />\r\nMain IP Address: xxxxxxxx<br />\r\nServer Name: {$service_domain}<br />\r\nRoot Password: xxxxxxxx\r\n</p>\r\n<p>\r\nYou can access your server using a free simple SSH client program called Putty located at:<br />\r\n<a href=\"http://www.securitytools.net/mirrors/putty/\">http://www.securitytools.net/mirrors/putty/</a>\r\n</p>\r\n<p>\r\n<strong>Support</strong><br />\r\n=============================<br />\r\nFor any support needs, please open a ticket at {$whmcs_url}\r\n</p>\r\n<p>\r\nPlease include any necessary information to provide you with faster service, such as root password, domain names, and a description of the problem / or assistance needed. This will speed up the support time by allowing our administrators to immediately begin diagnosing the problem.\r\n</p>\r\n<p>\r\nThe manual for cPanel can be found here: <a href=\"http://www.cpanel.net/docs/cp/\">http://www.cpanel.net/docs/cp/</a> <br />\r\nFor documentation on using WHM please see the following link: <a href=\"http://www.cpanel.net/docs/whm/index.html\">http://www.cpanel.net/docs/whm/index.html</a>\r\n</p>\r\n<p>\r\n=============================\r\n</p>\r\n<p>\r\nIf you need to move accounts to the server use: Transfers Copy an account from another server with account password\r\n</p>\r\n<p>\r\n<a href=\"http://xxxxxxx:2086/scripts2/norootcopy\">http://xxxxxxx:2086/scripts2/norootcopy</a>\r\n</p>\r\n<p>\r\nNote the other server must use cpanel to move it.\r\n</p>\r\n<p>\r\n=============================\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'product','Other Product/Service Welcome Email','New Product Information','<p>\r\nDear {$client_name},\r\n</p>\r\n<p>\r\nYour order for {$service_product_name} has now been activated. Please keep this message for your records.\r\n</p>\r\n<p>\r\nProduct/Service: {$service_product_name}<br />\r\nPayment Method: {$service_payment_method}<br />\r\nAmount: {$service_recurring_amount}<br />\r\nBilling Cycle: {$service_billing_cycle}<br />\r\nNext Due Date: {$service_next_due_date}\r\n</p>\r\n<p>\r\nThank you for choosing us.\r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'invoice','Credit Card Payment Confirmation','Credit Card Payment Confirmation','<p>Dear {$client_name},</p>\r\n<p>This is a payment receipt for Invoice {$invoice_num} sent on {$invoice_date_created}</p>\r\n<p>{$invoice_html_contents}</p>\r\n<p>Amount: {$invoice_last_payment_amount}<br />Transaction #: {$invoice_last_payment_transid}<br />Total Paid: {$invoice_amount_paid}<br />Remaining Balance: {$invoice_balance}<br />Status: {$invoice_status}</p>\r\n<p>You may review your invoice history at any time by logging in to your client area.</p>\r\n<p>Note: This email will serve as an official receipt for this payment.</p>\r\n<p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'invoice','Credit Card Payment Failed','Credit Card Payment Failed','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is a notice that a recent credit card payment we attempted on the card we have registered for you failed. \r\n</p>\r\n<p>\r\nInvoice Date: {$invoice_date_created}<br />\r\nInvoice No: {$invoice_num}<br />\r\nAmount: {$invoice_total}<br />\r\nStatus: {$invoice_status} \r\n</p>\r\n<p>\r\nYou now need to login to your client area to pay the invoice manually. During the payment process you will be given the opportunity to change the card on record with us.<br />\r\n{$invoice_link} \r\n</p>\r\n<p>\r\nNote: This email will serve as an official receipt for this payment. \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'invoice','Credit Card Invoice Created','Customer Invoice','<p> Dear {$client_name}, </p> <p> This is a notice that an invoice has been generated on {$invoice_date_created}. </p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice #{$invoice_num}<br /> Amount Due: {$invoice_total}<br /> Due Date: {$invoice_date_due} </p> <p> <strong>Invoice Items</strong> </p> <p> {$invoice_html_contents} <br /> ------------------------------------------------------ </p> <p> Payment will be taken automatically on {$invoice_date_due} from your credit card on record with us. To update or change the credit card details we hold for your account please login at {$invoice_link} and click Pay Now then following the instructions on screen. </p> <p> {$signature} </p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'affiliate','Affiliate Monthly Referrals Report','Affiliate Monthly Referrals Report','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is your monthly affiliate referrals report. You can view your referral statistics at any time by logging in to the client area. \r\n</p>\r\n<p>\r\nTotal Visitors Referred: {$affiliate_total_visits}<br />\r\nCurrent Earnings: {$affiliate_balance}<br />\r\nAmount Withdrawn: {$affiliate_withdrawn} \r\n</p>\r\n<p>\r\n<strong>Your New Signups this Month</strong> \r\n</p>\r\n<p>\r\n{$affiliate_referrals_table} \r\n</p>\r\n<p>\r\nRemember, you can refer new customers using your unique affiliate link: {$affiliate_referral_url} \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'support','Support Ticket Opened by Admin','{$ticket_subject}','{$ticket_message}','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'invoice','First Invoice Overdue Notice','First Invoice Overdue Notice','<p> Dear {$client_name}, </p> <p> This is a billing notice that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is now overdue. </p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice: {$invoice_num}<br /> Balance Due: {$invoice_balance}<br /> Due Date: {$invoice_date_due} </p> <p> You can login to your client area to view and pay the invoice at {$invoice_link} </p> <p> {$signature} </p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'product','SHOUTcast Welcome Email','SHOUTcast New Account Information','<p align=\"center\">\r\n<strong>PLEASE READ THIS EMAIL IN FULL AND PRINT IT FOR YOUR RECORDS</strong> \r\n</p>\r\n<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThank you for your order from us! Your shoutcast account has now been setup and this email contains all the information you will need in order to begin using your account. \r\n</p>\r\n<p>\r\n<strong>New Account Information</strong> \r\n</p>\r\n<p>\r\nDomain: {$service_domain}<br />\r\nUsername: {$service_username}<br />\r\nPassword: {$service_password} \r\n</p>\r\n<p>\r\n<strong>Server Information</strong> \r\n</p>\r\n<p>\r\nServer Name: {$service_server_name}<br />\r\nServer IP: {$service_server_ip}<br />\r\nNameserver 1: {$service_ns1}<br />\r\nNameserver 1 IP: {$service_ns1_ip}<br />\r\nNameserver 2: {$service_ns2} <br />\r\nNameserver 2 IP: {$service_ns2_ip} \r\n</p>\r\n<p>\r\nThank you for choosing us. \r\n</p>\r\n<p>\r\n{$signature}\r\n</p>\r\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'invoice','Second Invoice Overdue Notice','Second Invoice Overdue Notice','<p> Dear {$client_name}, </p> <p> This is the second billing notice that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is now overdue. </p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice: {$invoice_num}<br /> Balance Due: {$invoice_balance}<br /> Due Date: {$invoice_date_due} </p> <p> You can login to your client area to view and pay the invoice at {$invoice_link} </p> <p> {$signature} </p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'invoice','Third Invoice Overdue Notice','Third Invoice Overdue Notice','<p> Dear {$client_name}, </p> <p> This is the third and final billing notice that your invoice no. {$invoice_num} which was generated on {$invoice_date_created} is now overdue. Failure to make payment will result in account suspension.</p> <p> Your payment method is: {$invoice_payment_method} </p> <p> Invoice: {$invoice_num}<br /> Balance Due: {$invoice_balance}<br /> Due Date: {$invoice_date_due} </p> <p> You can login to your client area to view and pay the invoice at {$invoice_link} </p> <p> {$signature} </p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'domain','Domain Transfer Initiated','Domain Transfer Initiated','<p>Dear {$client_name}, </p><p>Thank you for your domain transfer order. Your order has been received and we have now initiated the transfer process. The details of the domain purchase are below: </p><p>Domain: {$domain_name}<br />Registration Length: {$domain_reg_period}<br />Transfer Price: {$domain_first_payment_amount}<br />Renewal Price: {$domain_recurring_amount}<br />Next Due Date: {$domain_next_due_date} </p><p>You may login to your client area at {$whmcs_url} to manage your domain. </p><p>{$signature} </p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'domain','Domain Renewal Confirmation','Domain Renewal Confirmation','<p>Dear {$client_name}, </p><p>Thank you for your domain renewal order. Your domain renewal request for the domain listed below has now been completed.</p><p>Domain: {$domain_name}<br />Renewal Length: {$domain_reg_period}<br />Renewal Price: {$domain_recurring_amount}<br />Next Due Date: {$domain_next_due_date} </p><p>You may login to your client area at {$whmcs_url} to manage your domain. </p><p>{$signature} </p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'domain','Upcoming Domain Renewal Notice','Upcoming Domain Renewal Notice','<p>Dear {$client_name},</p>\n<p>{if $days_until_expiry}The domain(s) listed below are due to expire within the next {$days_until_expiry} days.{else}The domain(s) listed below are going to expire in {$domain_days_until_expiry} days. Renew now before it\'s too late...{/if}</p>\n<p>{if $expiring_domains}{foreach from=$expiring_domains item=domain}{$domain.name} - {$domain.nextduedate} <strong>({$domain.days} Days)</strong><br />{/foreach}{elseif $domains}{foreach from=$domains item=domain}{$domain.name} - {$domain.nextduedate}<br />{/foreach}{else}{$domain_name} - {$domain_next_due_date} <strong>({$domain_days_until_nextdue} Days)</strong>{/if}</p>\n<p>To ensure the domain does not expire, you should renew it now. You can do this from the domains management section of our client area here: {$whmcs_link}</p>\n<p>Should you allow the domain to expire, you will be able to renew it for up to 30 days after the renewal date. During this time, the domain will not be accessible so any web site or email services associated with it will stop working.</p>\n<p>{$signature}</p>\n','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'support','Clients Only Bounce Message','Support Ticket Not Opened','<p>{$client_name},</p><p>Your email to our support system could not be accepted because it was not recognized as coming from an email address belonging to one of our customers.  If you need assistance, please email from the address you registered with us that you use to login to our client area.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'general','Credit Card Expiring Soon','Credit Card Expiring Soon','<p>Dear {$client_name}, </p><p>This is a notice to inform you that your {$client_cc_type} credit card ending with {$client_cc_number} will be expiring next month on {$client_cc_expiry}. Please login to update your credit card information as soon as possible and prevent any interuptions in service at {$whmcs_url}<br /><br />If you have any questions regarding your account, please open a support ticket from the client area.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'support','Support Ticket Auto Close Notification','Support Ticket Resolved','<p>{$client_name},</p><p>This is a notification to let you know that we are changing the status of your ticket #{$ticket_id} to Closed as we have not received a response from you in over {$ticket_auto_close_time} hours.</p><p>Subject: {$ticket_subject}<br>Department: {$ticket_department}<br>Priority: {$ticket_priority}<br>Status: {$ticket_status}</p><p>If you have any further questions then please just reply to re-open the ticket.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'invoice','Credit Card Payment Due','Credit Card Payment Due','<p>Dear {$client_name},</p><p>This is a notice to remind you that you have an invoice due on {$invoice_date_due}. We tried to bill you automatically but were unable to because we don\'t have your credit card details on file.</p><p>Invoice Date: {$invoice_date_created}<br>Invoice #{$invoice_num}<br>Amount Due: {$invoice_total}<br>Due Date: {$invoice_date_due}</p><p>Please login to our client area at the link below to submit your card details or make payment using a different method.</p><p>{$invoice_link}</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'product','Cancellation Request Confirmation','Cancellation Request Confirmation','<p>Dear {$client_name},</p><p>This email is to confirm that we have received your cancellation request for the service listed below.</p><p>Product/Service: {$service_product_name}<br />Domain: {$service_domain}</p><p>{if $service_cancellation_type==\"Immediate\"}The service will be terminated within the next 24 hours.{else}The service will be cancelled at the end of your current billing period on {$service_next_due_date}.{/if}</p><p>Thank you for using {$company_name} and we hope to see you again in the future.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'general','Quote Delivery with PDF','Quote #{$quote_number} - {$quote_subject}','<p>Dear {$client_name},</p><p>Here is the quote you requested for {$quote_subject}. The quote is valid until {$quote_valid_until}. You may {if $client_id}view the quote at any time at {$quote_link} and {/if}simply reply to this email with any further questions or requirement.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'general','Password Reset Validation','Your login details for {$company_name}','<p>Dear {$client_name},</p><p>Recently a request was submitted to reset your password for our client area. If you did not request this, please ignore this email. It will expire and become useless in 2 hours time.</p><p>To reset your password, please visit the url below:<br /><a href=\"{$pw_reset_url}\">{$pw_reset_url}</a></p><p>When you visit the link above, you will have the opportunity to choose a new password.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'general','Automated Password Reset','Your new password for {$company_name}','<p>Dear {$client_name},</p><p>As you requested, your password for our client area has now been reset.  Your new login details are as follows:</p><p>{$whmcs_link}<br />Email: {$client_email}<br />Password: {$client_password}</p><p>To change your password to something more memorable, after logging in go to My Details > Change Password.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'admin','Automatic Setup Failed','WHMCS Automatic Setup Failed','<p>An order has received its first payment but the automatic provisioning has failed and requires you to manually check & resolve.</p>\r\n<p>Client ID: {$client_id}<br />{if $service_id}Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}{else}Domain ID: {$domain_id}<br />Registration Type: {$domain_type}<br />Domain: {$domain_name}{/if}<br />Error: {$error_msg}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'admin','Automatic Setup Successful','WHMCS Automatic Setup Successful','<p>An order has received its first payment and the product/service has been automatically provisioned successfully.</p>\r\n<p>Client ID: {$client_id}<br />{if $service_id}Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}{else}Domain ID: {$domain_id}<br />Registration Type: {$domain_type}<br />Domain: {$domain_name}{/if}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'admin','Domain Renewal Failed','WHMCS Automatic Domain Renewal Failed','<p>An invoice for the renewal of a domain has been paid but the renewal request submitted to the registrar failed.</p>\r\n<p>Client ID: {$client_id}<br />Domain ID: {$domain_id}<br />Domain Name: {$domain_name}<br />Error: {$error_msg}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'admin','Domain Renewal Successful','WHMCS Automatic Domain Renewal Successful','<p>An invoice for the renewal of a domain has been paid and the renewal request was submitted to the registrar successfully.</p>\r\n<p>Client ID: {$client_id}<br />Domain ID: {$domain_id}<br />Domain Name: {$domain_name}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'admin','New Order Notification','WHMCS New Order Notification','<p><strong>Order Information</strong></p>\r\n<p>Order ID: {$order_id}<br />\r\nOrder Number: {$order_number}<br />\r\nDate/Time: {$order_date}<br />\r\nInvoice Number: {$invoice_id}<br />\r\nPayment Method: {$order_payment_method}</p>\r\n<p><strong>Customer Information</strong></p>\r\n<p>Customer ID: {$client_id}<br />\r\nName: {$client_first_name} {$client_last_name}<br />\r\nEmail: {$client_email}<br />\r\nCompany: {$client_company_name}<br />\r\nAddress 1: {$client_address1}<br />\r\nAddress 2: {$client_address2}<br />\r\nCity: {$client_city}<br />\r\nState: {$client_state}<br />\r\nPostcode: {$client_postcode}<br />\r\nCountry: {$client_country}<br />\r\nPhone Number: {$client_phonenumber}</p>\r\n<p><strong>Order Items</strong></p>\r\n<p>{$order_items}</p>\r\n{if $order_notes}<p><strong>Order Notes</strong></p>\r\n<p>{$order_notes}</p>{/if}\r\n<p><strong>ISP Information</strong></p>\r\n<p>IP: {$client_ip}<br />\r\nHost: {$client_hostname}</p><p><a href=\"{$whmcs_admin_url}orders.php?action=view&id={$order_id}\">{$whmcs_admin_url}orders.php?action=view&id={$order_id}</a></p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'admin','Service Unsuspension Failed','WHMCS Service Unsuspension Failed','<p>This product/service has received its next payment but the automatic reactivation has failed.</p>\r\n<p>Client ID: {$client_id}<br />Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}<br />Error: {$error_msg}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'admin','Service Unsuspension Successful','WHMCS Service Unsuspension Successful','<p>This product/service has received its next payment and has been reactivated successfully.</p>\r\n<p>Client ID: {$client_id}<br />Service ID: {$service_id}<br />Product/Service: {$service_product}<br />Domain: {$service_domain}</p>\r\n<p>{$whmcs_admin_link}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'admin','Escalation Rule Notification','[Ticket ID: {$tickettid}] Escalation Rule Notification','<p>The escalation rule {$rule_name} has just been applied to this ticket.</p><p>Client: {$client_name}{if $client_id} #{$client_id}{/if} <br />Department: {$ticket_department} <br />Subject: {$ticket_subject} <br />Priority: {$ticket_priority}</p><p>---<br />{$ticket_message}<br />---</p><p>You can respond to this ticket by simply replying to this email or through the admin area at the url below.</p><p><a href=\"{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\">{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}</a></p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'invoice','Invoice Refund Confirmation','Invoice Refund Confirmation','<p>Dear {$client_name},</p>\r\n<p>This is confirmation that a {if $invoice_status eq \"Refunded\"}full{else}partial{/if} refund has been processed for Invoice #{$invoice_num}</p>\r\n<p>The refund has been {if $invoice_refund_type eq \"credit\"}credited to your account balance with us{else}returned via the payment method you originally paid with{/if}.</p>\r\n<p>{$invoice_html_contents}</p>\r\n<p>Amount Refunded: {$invoice_last_payment_amount}{if $invoice_last_payment_transid}<br />Transaction #: {$invoice_last_payment_transid}{/if}</p>\r\n<p>You may review your invoice history at any time by logging in to your client area.</p>\r\n<p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'admin','New Cancellation Request','New Cancellation Request','<p>A new cancellation request has been submitted.</p><p>Client ID: {$client_id}<br>Client Name: {$clientname}<br>Service ID: {$service_id}<br>Product Name: {$product_name}<br>Cancellation Type: {$service_cancellation_type}<br>Cancellation Reason: {$service_cancellation_reason}</p><p>{$whmcs_admin_link}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'domain','Domain Transfer Failed','Domain Transfer Failed: {$domain_name}','<p>Dear {$client_name},</p><p>Recently you placed a domain transfer order with us but unfortunately it has failed. The reason for the failure if available is shown below so once this has been resolved, please contact us to re-attempt the transfer.</p><p>Domain: {$domain_name}<br>Failure Reason: {$domain_transfer_failure_reason}</p><p>If you have any questions, please open a support ticket from our client area @ {$whmcs_link}</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'general','Quote Accepted','Quote #{$quote_number} Accepted - {$quote_subject}','<p>\r\nDear {$client_name}, \r\n</p>\r\n<p>\r\nThis is a confirmation that quote generated on {$quote_date_created} has been accepted by you and invoice # {$invoice_num} is generated.\r\n<p>\r\n{$signature} \r\n</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'general','Quote Accepted Notification','Quote #{$quote_number} Accepted - {$quote_subject}','<p>A quote has been accepted by the following customer.</p><p><strong>Customer Information</strong></p>\r\n<p>Customer ID: {$client_id}<br />\r\nName: {$clientname}<br />\r\nEmail: {$client_email}<br />\r\nCompany: {$client_company_name}<br />\r\nAddress 1: {$client_address1}<br />\r\nAddress 2: {$client_address2}<br />\r\nCity: {$client_city}<br />\r\nState: {$client_state}<br />\r\nPostcode: {$client_postcode}<br />\r\nCountry: {$client_country}<br />\r\nPhone Number: {$client_phonenumber}</p>\r\n<p><strong>Quote Information</strong></p>\r\n<p>Quote #: {$quote_number}<br />\r\nQuote Subject: {$quote_subject}</p><p><a href=\"{$whmcs_admin_url}quotes.php?action=manage&id={$quote_number}\">{$whmcs_admin_url}quotes.php?action=manage&id={$quote_number}</a></p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'general','Password Reset Confirmation','Your password has been reset for {$company_name}','<p>Dear {$client_name},</p><p>As you requested, your password for our client area has now been reset. </p><p>If it was not at your request, then please contact support immediately.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'support','Support Ticket Feedback Request','Your Feedback is Requested for Ticket #{$ticket_id}','<p>This support request has been marked as completed.</p><p>We would really appreciate it if you would just take a moment to let us know about the quality of your experience.</p><p><a href=\"{$ticket_url}&feedback=1\">{$ticket_url}&feedback=1</a></p><p>Your feedback is very important to us.</p><p>Thank you for your business.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'support','Replies Only Bounce Message','Online Submission Required','<p>{$client_name},</p><p>Your email to our support system could not be accepted because we require you to submit all tickets via our online client support portal. You can do this at the URL below.</p><p><a href=\"{$whmcs_url}/submitticket.php\">{$whmcs_url}/submitticket.php</a></p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'general','Unsubscribe Confirmation','Unsubscribe Confirmation','Dear {$client_name},<br /><br />We have now removed your email address from our mailing list.<br /><br />If this was a mistake or you change your mind, you can re-subscribe at any time from the My Details section of our client area.<br /><br /><a href=\"{$whmcs_url}/clientarea.php?action=details\">{$whmcs_url}/clientarea.php?action=details</a><br /><br />{$signature}','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'support','Closed Ticket Bounce Message','Closed Ticket Bounce Message','&lt;p&gt;{$client_name},&lt;/p&gt;\n&lt;p&gt;Your email to our ticket system could not be accepted because the ticket being responded to has already been closed.&lt;/p&gt;\n&lt;p&gt;{if $client_id}If you wish to reopen this ticket, you can do so from our client area:\n{$ticket_link}{else}To open a new ticket, please visit:&lt;/p&gt;\n&lt;p&gt;&lt;a href=\"{$whmcs_url}/submitticket.php\"&gt;{$whmcs_url}/submitticket.php&lt;/a&gt;{/if}&lt;/p&gt;\n&lt;p&gt;This is an automated response from our support system.&lt;/p&gt;\n&lt;p&gt;{$signature}&lt;/p&gt;','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'domain','Expired Domain Notice','Expired Domain Notice','&lt;p&gt;Dear {$client_name},&lt;/p&gt;\n&lt;p&gt;The domain name listed below expired {$domain_days_after_expiry} days ago.&lt;/p&gt;\n&lt;p&gt;{$domain_name}&lt;/p&gt;\n&lt;p&gt;To ensure that the domain isn&#39;t registered by someone else, you should renew it now. To renew the domain, please visit the following page and follow the steps shown: &lt;a title=&quot;{$whmcs_url}/cart.php?gid=renewals&quot; href=&quot;{$whmcs_url}/cart.php?gid=renewals&quot;&gt;{$whmcs_url}/cart.php?gid=renewals&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;Due to the domain expiring, the domain will not be accessible so any web site or email services associated with it will stop working. You may be able to renew it for up to 30 days after the renewal date.&lt;/p&gt;\n&lt;p&gt;{$signature}&lt;/p&gt;','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'product','Service Unsuspension Notification','Service Unsuspension Notification','&lt;p&gt;Dear {$client_name},&lt;/p&gt;\n&lt;p&gt;This is a notification that your service has now been unsuspended. The details of this unsuspension are below:&lt;/p&gt;\n&lt;p&gt;Product/Service: {$service_product_name}&lt;br /&gt;{if $service_domain}Domain: {$service_domain}&lt;br /&gt;{/if}Amount: {$service_recurring_amount}&lt;br /&gt;Due Date: {$service_next_due_date}&lt;/p&gt;\n&lt;p&gt;{$signature}&lt;/p&gt;','','','',0,0,'','',0,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(63,'admin','Manual Upgrade Required','Manual Upgrade Required','<p>An upgrade order has received its payment, but does not support automatic upgrades and requires manually processing.</p>\n<p>Client ID: {$client_id}<br />Service ID: {$service_id}<br />Order ID: {$order_id}</p>\n<p>{if $upgrade_type eq \'package\'}New Package ID: {$new_package_id}<br />Existing Billing Cycle: {$billing_cycle}<br />New Billing Cycle: {$new_billing_cycle}{else}Configurable Option: {$config_id}<br />Option Type: {$option_type}<br />Current Value: {$current_value}<br />New Value: {$new_value}{/if}</p>\n<p><a href=\"{$whmcs_admin_url}orders.php?action=view&id={$order_id}\">\n{$whmcs_admin_url}orders.php?action=view&id={$order_id}</a></p>','','','',0,0,'','',0,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(64,'general','Client Email Address Verification','Confirm Your Registration','<p>Dear {$client_name},</p><p>Thank you for creating a {$companyname} account.</p><p>Please visit the link below and sign into your account to verify your email address and complete your registration.</p><p>{$client_email_verification_link}</p><p>You are receiving this email because you recently created an account or changed your email address. If you did not do this, please contact us.</p><p>{$signature}</p>','','','',0,0,'','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'admin','Support Ticket Change Notification','[Ticket ID: {$ticket_tid}] {$ticket_subject}','{if $newTicket}\n    <p>Ticket #<a href=\"{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\"><strong>{$ticket_tid}</strong></a> has been opened by <strong>{$changer}</strong>.</p>\n    <p>\n        Client: {$client_name}{if $client_id} #{$client_id}{/if}<br />\n        Department: {$ticket_department}<br />\n        Subject: {$ticket_subject}<br />\n        Priority: {$ticket_priority}\n    </p>\n    <div class=\"quoted-content\">\n        {$newTicket}\n    </div>\n{else}\n    <p>Ticket #<a href=\"{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\"><strong>{$ticket_tid}</strong></a> {if $newReply || $newNote}has had a new {if $newReply}reply{else}note{/if} posted by{else}has been updated by{/if} <strong>{$changer}</strong>.</p>\n\n    {if $changes}\n        <table class=\"keyvalue-table\" style=\"border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt;\">\n            <tbody>\n                {foreach $changes as $change}\n                    <tr>\n                        <td>{$change@key}:</td>\n                        <td>\n                            <span style=\"background-color:#ffe7e7;text-decoration:line-through;\">{$change.old}</span>\n                            &nbsp;\n                            <span style=\"background-color:#ddfade;\">{$change.new}</span>\n                        </td>\n                    </tr>\n                {/foreach}\n            </tbody>\n        </table>\n    {/if}\n\n    {if $newReply}\n        <div class=\"quoted-content\">\n            {$newReply}\n        </div>\n    {/if}\n\n    {if $newNote}\n        <div class=\"quoted-content\">\n            {$newNote}\n        </div>\n    {/if}\n\n    {if $newAttachments}{$newAttachments}{/if}\n{/if}\n<p>\n    You can respond to this ticket by simply replying to this email or through the admin area at the url below.\n</p>\n<p>\n    <a href=\"{$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\">\n        {$whmcs_admin_url}supporttickets.php?action=viewticket&id={$ticket_id}\n    </a>\n</p>','','','',0,0,'','',0,'2016-07-15 08:37:27','2016-07-15 08:37:27');
/*!40000 ALTER TABLE `tblemailtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfraud`
--

DROP TABLE IF EXISTS `tblfraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfraud` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fraud` text COLLATE utf8_unicode_ci NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fraud` (`fraud`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfraud`
--

LOCK TABLES `tblfraud` WRITE;
/*!40000 ALTER TABLE `tblfraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgatewaylog`
--

DROP TABLE IF EXISTS `tblgatewaylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgatewaylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gateway` text COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `result` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgatewaylog`
--

LOCK TABLES `tblgatewaylog` WRITE;
/*!40000 ALTER TABLE `tblgatewaylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgatewaylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhosting`
--

DROP TABLE IF EXISTS `tblhosting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhosting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `orderid` int(10) NOT NULL,
  `packageid` int(10) NOT NULL,
  `server` int(10) NOT NULL,
  `regdate` date NOT NULL,
  `domain` text COLLATE utf8_unicode_ci NOT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `firstpaymentamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `billingcycle` text COLLATE utf8_unicode_ci NOT NULL,
  `nextduedate` date DEFAULT NULL,
  `nextinvoicedate` date NOT NULL,
  `termination_date` date NOT NULL DEFAULT '0000-00-00',
  `domainstatus` enum('Pending','Active','Suspended','Terminated','Cancelled','Fraud') COLLATE utf8_unicode_ci NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `subscriptionid` text COLLATE utf8_unicode_ci NOT NULL,
  `promoid` int(10) NOT NULL,
  `suspendreason` text COLLATE utf8_unicode_ci NOT NULL,
  `overideautosuspend` tinyint(1) NOT NULL,
  `overidesuspenduntil` date NOT NULL,
  `dedicatedip` text COLLATE utf8_unicode_ci NOT NULL,
  `assignedips` text COLLATE utf8_unicode_ci NOT NULL,
  `ns1` text COLLATE utf8_unicode_ci NOT NULL,
  `ns2` text COLLATE utf8_unicode_ci NOT NULL,
  `diskusage` int(10) NOT NULL DEFAULT '0',
  `disklimit` int(10) NOT NULL DEFAULT '0',
  `bwusage` int(10) NOT NULL DEFAULT '0',
  `bwlimit` int(10) NOT NULL DEFAULT '0',
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `serviceid` (`id`),
  KEY `userid` (`userid`),
  KEY `orderid` (`orderid`),
  KEY `productid` (`packageid`),
  KEY `serverid` (`server`),
  KEY `domain` (`domain`(64)),
  KEY `domainstatus` (`domainstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhosting`
--

LOCK TABLES `tblhosting` WRITE;
/*!40000 ALTER TABLE `tblhosting` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhosting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhostingaddons`
--

DROP TABLE IF EXISTS `tblhostingaddons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhostingaddons` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL,
  `hostingid` int(10) NOT NULL,
  `addonid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `setupfee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `recurring` decimal(10,2) NOT NULL DEFAULT '0.00',
  `billingcycle` text COLLATE utf8_unicode_ci NOT NULL,
  `tax` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Pending','Active','Suspended','Terminated','Cancelled','Fraud') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `regdate` date NOT NULL DEFAULT '0000-00-00',
  `nextduedate` date DEFAULT NULL,
  `nextinvoicedate` date NOT NULL,
  `termination_date` date NOT NULL DEFAULT '0000-00-00',
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `serviceid` (`hostingid`),
  KEY `name` (`name`(32)),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhostingaddons`
--

LOCK TABLES `tblhostingaddons` WRITE;
/*!40000 ALTER TABLE `tblhostingaddons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhostingaddons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhostingconfigoptions`
--

DROP TABLE IF EXISTS `tblhostingconfigoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhostingconfigoptions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `relid` int(10) NOT NULL,
  `configid` int(10) NOT NULL,
  `optionid` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid_configid` (`relid`,`configid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhostingconfigoptions`
--

LOCK TABLES `tblhostingconfigoptions` WRITE;
/*!40000 ALTER TABLE `tblhostingconfigoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhostingconfigoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinvoiceitems`
--

DROP TABLE IF EXISTS `tblinvoiceitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoiceitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `relid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxed` int(1) NOT NULL,
  `duedate` date DEFAULT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `userid` (`userid`,`type`,`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoiceitems`
--

LOCK TABLES `tblinvoiceitems` WRITE;
/*!40000 ALTER TABLE `tblinvoiceitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinvoiceitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinvoices`
--

DROP TABLE IF EXISTS `tblinvoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `invoicenum` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subtotal` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`(3))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoices`
--

LOCK TABLES `tblinvoices` WRITE;
/*!40000 ALTER TABLE `tblinvoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinvoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebase`
--

DROP TABLE IF EXISTS `tblknowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebase` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `article` text COLLATE utf8_unicode_ci NOT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  `useful` int(10) NOT NULL DEFAULT '0',
  `votes` int(10) NOT NULL DEFAULT '0',
  `private` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(3) NOT NULL,
  `parentid` int(10) NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebase`
--

LOCK TABLES `tblknowledgebase` WRITE;
/*!40000 ALTER TABLE `tblknowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebasecats`
--

DROP TABLE IF EXISTS `tblknowledgebasecats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebasecats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` text COLLATE utf8_unicode_ci NOT NULL,
  `catid` int(10) NOT NULL,
  `language` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `name` (`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebasecats`
--

LOCK TABLES `tblknowledgebasecats` WRITE;
/*!40000 ALTER TABLE `tblknowledgebasecats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebasecats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebaselinks`
--

DROP TABLE IF EXISTS `tblknowledgebaselinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebaselinks` (
  `categoryid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebaselinks`
--

LOCK TABLES `tblknowledgebaselinks` WRITE;
/*!40000 ALTER TABLE `tblknowledgebaselinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebaselinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebasetags`
--

DROP TABLE IF EXISTS `tblknowledgebasetags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebasetags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `tag` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebasetags`
--

LOCK TABLES `tblknowledgebasetags` WRITE;
/*!40000 ALTER TABLE `tblknowledgebasetags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebasetags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllinks`
--

DROP TABLE IF EXISTS `tbllinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllinks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `clicks` int(10) NOT NULL,
  `conversions` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllinks`
--

LOCK TABLES `tbllinks` WRITE;
/*!40000 ALTER TABLE `tbllinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmodulelog`
--

DROP TABLE IF EXISTS `tblmodulelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmodulelog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `module` text COLLATE utf8_unicode_ci NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  `request` text COLLATE utf8_unicode_ci NOT NULL,
  `response` text COLLATE utf8_unicode_ci NOT NULL,
  `arrdata` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmodulelog`
--

LOCK TABLES `tblmodulelog` WRITE;
/*!40000 ALTER TABLE `tblmodulelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmodulelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnetworkissues`
--

DROP TABLE IF EXISTS `tblnetworkissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnetworkissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('Server','System','Other') COLLATE utf8_unicode_ci NOT NULL,
  `affecting` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server` int(10) unsigned DEFAULT NULL,
  `priority` enum('Critical','Low','Medium','High') COLLATE utf8_unicode_ci NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `status` enum('Reported','Investigating','In Progress','Outage','Scheduled','Resolved') COLLATE utf8_unicode_ci NOT NULL,
  `lastupdate` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnetworkissues`
--

LOCK TABLES `tblnetworkissues` WRITE;
/*!40000 ALTER TABLE `tblnetworkissues` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnetworkissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnotes`
--

DROP TABLE IF EXISTS `tblnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `adminid` int(10) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `sticky` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotes`
--

LOCK TABLES `tblnotes` WRITE;
/*!40000 ALTER TABLE `tblnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_access_token_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_access_token_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_access_token_scopes` (
  `access_token_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tbloauthserver_access_token_scopes_scope_id_index` (`access_token_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_access_token_scopes`
--

LOCK TABLES `tbloauthserver_access_token_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_access_token_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_access_token_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_access_tokens`
--

DROP TABLE IF EXISTS `tbloauthserver_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_access_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_token` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_access_tokens_access_token_unique` (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_access_tokens`
--

LOCK TABLES `tbloauthserver_access_tokens` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_auth_codes`
--

DROP TABLE IF EXISTS `tbloauthserver_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_auth_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorization_code` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_token` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_auth_codes_authorization_code_unique` (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_auth_codes`
--

LOCK TABLES `tbloauthserver_auth_codes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_authcode_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_authcode_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_authcode_scopes` (
  `authorization_code_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tbloauthserver_authcode_scopes_scope_id_index` (`authorization_code_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_authcode_scopes`
--

LOCK TABLES `tbloauthserver_authcode_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_authcode_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_authcode_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_client_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_client_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_client_scopes` (
  `client_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tbloauthserver_client_scopes_scope_id_index` (`client_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_client_scopes`
--

LOCK TABLES `tbloauthserver_client_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_client_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_client_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_clients`
--

DROP TABLE IF EXISTS `tbloauthserver_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grant_types` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `service_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `logo_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rsa_key_pair_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_clients_identifier_unique` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_clients`
--

LOCK TABLES `tbloauthserver_clients` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scope` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbloauthserver_scopes_scope_unique` (`scope`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_scopes`
--

LOCK TABLES `tbloauthserver_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_scopes` DISABLE KEYS */;
INSERT INTO `tbloauthserver_scopes` VALUES (1,'clientarea:sso','Single Sign-on for Client Area',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'clientarea:profile','Account Profile',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'clientarea:billing_info','Manage Billing Information',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'clientarea:emails','Email History',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'clientarea:announcements','Announcements',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'clientarea:downloads','Downloads',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'clientarea:knowledgebase','Knowledgebase',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'clientarea:network_status','Network Status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'clientarea:services','Products/Services',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'clientarea:product_details','Product Info/Details (requires associated serviceId)',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'clientarea:domains','Domains',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'clientarea:domain_details','Domain Info/Details (requires associated domainId)',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'clientarea:invoices','Invoices',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'clientarea:tickets','Support Tickets',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'clientarea:submit_ticket','Submit New Ticket',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'clientarea:shopping_cart','Shopping Cart Default Product Group',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'clientarea:shopping_cart_addons','Shopping Cart Product Addons',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'clientarea:shopping_cart_domain_register','Shopping Cart Register New Domain',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'clientarea:shopping_cart_domain_transfer','Shopping Cart Transfer Existing Domain',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'openid','Scope required for OpenID Connect ID tokens',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'email','Scope used for Email Claim',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'profile','Scope used for Profile Claim',0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tbloauthserver_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_user_authz`
--

DROP TABLE IF EXISTS `tbloauthserver_user_authz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_user_authz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_user_authz`
--

LOCK TABLES `tbloauthserver_user_authz` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_user_authz` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_user_authz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloauthserver_user_authz_scopes`
--

DROP TABLE IF EXISTS `tbloauthserver_user_authz_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloauthserver_user_authz_scopes` (
  `user_authz_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scope_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tbloauthserver_user_authz_scopes_scope_id_index` (`user_authz_id`,`scope_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloauthserver_user_authz_scopes`
--

LOCK TABLES `tbloauthserver_user_authz_scopes` WRITE;
/*!40000 ALTER TABLE `tbloauthserver_user_authz_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloauthserver_user_authz_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ordernum` bigint(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `contactid` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `nameservers` text COLLATE utf8_unicode_ci NOT NULL,
  `transfersecret` text COLLATE utf8_unicode_ci NOT NULL,
  `renewals` text COLLATE utf8_unicode_ci NOT NULL,
  `promocode` text COLLATE utf8_unicode_ci NOT NULL,
  `promotype` text COLLATE utf8_unicode_ci NOT NULL,
  `promovalue` text COLLATE utf8_unicode_ci NOT NULL,
  `orderdata` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paymentmethod` text COLLATE utf8_unicode_ci NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `ipaddress` text COLLATE utf8_unicode_ci NOT NULL,
  `fraudmodule` text COLLATE utf8_unicode_ci NOT NULL,
  `fraudoutput` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ordernum` (`ordernum`),
  KEY `userid` (`userid`),
  KEY `contactid` (`contactid`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorders`
--

LOCK TABLES `tblorders` WRITE;
/*!40000 ALTER TABLE `tblorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorderstatuses`
--

DROP TABLE IF EXISTS `tblorderstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorderstatuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `color` text COLLATE utf8_unicode_ci NOT NULL,
  `showpending` int(1) NOT NULL,
  `showactive` int(1) NOT NULL,
  `showcancelled` int(1) NOT NULL,
  `sortorder` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorderstatuses`
--

LOCK TABLES `tblorderstatuses` WRITE;
/*!40000 ALTER TABLE `tblorderstatuses` DISABLE KEYS */;
INSERT INTO `tblorderstatuses` VALUES (1,'Pending','#cc0000',1,0,0,10),(2,'Active','#779500',0,1,0,20),(3,'Cancelled','#888888',0,0,1,30),(4,'Fraud','#000000',0,0,0,40);
/*!40000 ALTER TABLE `tblorderstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpaymentgateways`
--

DROP TABLE IF EXISTS `tblpaymentgateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpaymentgateways` (
  `gateway` text COLLATE utf8_unicode_ci NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(1) NOT NULL,
  KEY `gateway_setting` (`gateway`(32),`setting`(32)),
  KEY `setting_value` (`setting`(32),`value`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpaymentgateways`
--

LOCK TABLES `tblpaymentgateways` WRITE;
/*!40000 ALTER TABLE `tblpaymentgateways` DISABLE KEYS */;
INSERT INTO `tblpaymentgateways` VALUES ('paypal','forcesubscriptions','',0),('paypal','forceonetime','',0);
/*!40000 ALTER TABLE `tblpaymentgateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpricing`
--

DROP TABLE IF EXISTS `tblpricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpricing` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('product','addon','configoptions','domainregister','domaintransfer','domainrenew','domainaddons') COLLATE utf8_unicode_ci NOT NULL,
  `currency` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `msetupfee` decimal(10,2) NOT NULL,
  `qsetupfee` decimal(10,2) NOT NULL,
  `ssetupfee` decimal(10,2) NOT NULL,
  `asetupfee` decimal(10,2) NOT NULL,
  `bsetupfee` decimal(10,2) NOT NULL,
  `tsetupfee` decimal(10,2) NOT NULL,
  `monthly` decimal(10,2) NOT NULL,
  `quarterly` decimal(10,2) NOT NULL,
  `semiannually` decimal(10,2) NOT NULL,
  `annually` decimal(10,2) NOT NULL,
  `biennially` decimal(10,2) NOT NULL,
  `triennially` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpricing`
--

LOCK TABLES `tblpricing` WRITE;
/*!40000 ALTER TABLE `tblpricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct_downloads`
--

DROP TABLE IF EXISTS `tblproduct_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduct_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `download_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblproduct_downloads_product_id_index` (`product_id`),
  KEY `tblproduct_downloads_download_id_index` (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct_downloads`
--

LOCK TABLES `tblproduct_downloads` WRITE;
/*!40000 ALTER TABLE `tblproduct_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproduct_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct_group_features`
--

DROP TABLE IF EXISTS `tblproduct_group_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduct_group_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_group_id` int(10) NOT NULL,
  `feature` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblproduct_group_features_product_group_id_index` (`product_group_id`),
  KEY `tblproduct_group_features_id_product_group_id_index` (`id`,`product_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct_group_features`
--

LOCK TABLES `tblproduct_group_features` WRITE;
/*!40000 ALTER TABLE `tblproduct_group_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproduct_group_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct_upgrade_products`
--

DROP TABLE IF EXISTS `tblproduct_upgrade_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduct_upgrade_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `upgrade_product_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tblproduct_upgrade_products_product_id_index` (`product_id`),
  KEY `tblproduct_upgrade_products_upgrade_product_id_index` (`upgrade_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct_upgrade_products`
--

LOCK TABLES `tblproduct_upgrade_products` WRITE;
/*!40000 ALTER TABLE `tblproduct_upgrade_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproduct_upgrade_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductconfiggroups`
--

DROP TABLE IF EXISTS `tblproductconfiggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductconfiggroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductconfiggroups`
--

LOCK TABLES `tblproductconfiggroups` WRITE;
/*!40000 ALTER TABLE `tblproductconfiggroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductconfiggroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductconfiglinks`
--

DROP TABLE IF EXISTS `tblproductconfiglinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductconfiglinks` (
  `gid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductconfiglinks`
--

LOCK TABLES `tblproductconfiglinks` WRITE;
/*!40000 ALTER TABLE `tblproductconfiglinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductconfiglinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductconfigoptions`
--

DROP TABLE IF EXISTS `tblproductconfigoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductconfigoptions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL DEFAULT '0',
  `optionname` text COLLATE utf8_unicode_ci NOT NULL,
  `optiontype` text COLLATE utf8_unicode_ci NOT NULL,
  `qtyminimum` int(10) NOT NULL,
  `qtymaximum` int(10) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductconfigoptions`
--

LOCK TABLES `tblproductconfigoptions` WRITE;
/*!40000 ALTER TABLE `tblproductconfigoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductconfigoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductconfigoptionssub`
--

DROP TABLE IF EXISTS `tblproductconfigoptionssub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductconfigoptionssub` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `configid` int(10) NOT NULL,
  `optionname` text COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configid` (`configid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductconfigoptionssub`
--

LOCK TABLES `tblproductconfigoptionssub` WRITE;
/*!40000 ALTER TABLE `tblproductconfigoptionssub` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductconfigoptionssub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductgroups`
--

DROP TABLE IF EXISTS `tblproductgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductgroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `headline` text COLLATE utf8_unicode_ci,
  `tagline` text COLLATE utf8_unicode_ci,
  `orderfrmtpl` text COLLATE utf8_unicode_ci NOT NULL,
  `disabledgateways` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `order` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `order` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductgroups`
--

LOCK TABLES `tblproductgroups` WRITE;
/*!40000 ALTER TABLE `tblproductgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproductgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproducts`
--

DROP TABLE IF EXISTS `tblproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproducts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `gid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `showdomainoptions` tinyint(1) NOT NULL,
  `welcomeemail` int(10) NOT NULL DEFAULT '0',
  `stockcontrol` tinyint(1) NOT NULL,
  `qty` int(10) NOT NULL DEFAULT '0',
  `proratabilling` tinyint(1) NOT NULL,
  `proratadate` int(2) NOT NULL,
  `proratachargenextmonth` int(2) NOT NULL,
  `paytype` text COLLATE utf8_unicode_ci NOT NULL,
  `allowqty` int(1) NOT NULL,
  `subdomain` text COLLATE utf8_unicode_ci NOT NULL,
  `autosetup` text COLLATE utf8_unicode_ci NOT NULL,
  `servertype` text COLLATE utf8_unicode_ci NOT NULL,
  `servergroup` int(10) NOT NULL,
  `configoption1` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption2` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption3` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption4` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption5` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption6` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption7` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption8` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption9` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption10` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption11` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption12` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption13` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption14` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption15` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption16` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption17` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption18` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption19` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption20` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption21` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption22` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption23` text COLLATE utf8_unicode_ci NOT NULL,
  `configoption24` text COLLATE utf8_unicode_ci NOT NULL,
  `freedomain` text COLLATE utf8_unicode_ci NOT NULL,
  `freedomainpaymentterms` text COLLATE utf8_unicode_ci NOT NULL,
  `freedomaintlds` text COLLATE utf8_unicode_ci NOT NULL,
  `recurringcycles` int(2) NOT NULL,
  `autoterminatedays` int(4) NOT NULL,
  `autoterminateemail` int(10) NOT NULL DEFAULT '0',
  `configoptionsupgrade` tinyint(1) NOT NULL,
  `billingcycleupgrade` text COLLATE utf8_unicode_ci NOT NULL,
  `upgradeemail` int(10) NOT NULL DEFAULT '0',
  `overagesenabled` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `overagesdisklimit` int(10) NOT NULL,
  `overagesbwlimit` int(10) NOT NULL,
  `overagesdiskprice` decimal(6,4) NOT NULL,
  `overagesbwprice` decimal(6,4) NOT NULL,
  `tax` tinyint(1) NOT NULL,
  `affiliateonetime` tinyint(1) NOT NULL,
  `affiliatepaytype` text COLLATE utf8_unicode_ci NOT NULL,
  `affiliatepayamount` decimal(10,2) NOT NULL,
  `order` int(10) NOT NULL DEFAULT '0',
  `retired` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `name` (`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproducts`
--

LOCK TABLES `tblproducts` WRITE;
/*!40000 ALTER TABLE `tblproducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpromotions`
--

DROP TABLE IF EXISTS `tblpromotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpromotions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `recurring` int(1) DEFAULT NULL,
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cycles` text COLLATE utf8_unicode_ci NOT NULL,
  `appliesto` text COLLATE utf8_unicode_ci NOT NULL,
  `requires` text COLLATE utf8_unicode_ci NOT NULL,
  `requiresexisting` int(1) NOT NULL,
  `startdate` date NOT NULL,
  `expirationdate` date DEFAULT NULL,
  `maxuses` int(10) NOT NULL DEFAULT '0',
  `uses` int(10) NOT NULL DEFAULT '0',
  `lifetimepromo` int(1) NOT NULL,
  `applyonce` int(1) NOT NULL,
  `newsignups` int(1) NOT NULL,
  `existingclient` int(11) NOT NULL,
  `onceperclient` int(11) NOT NULL,
  `recurfor` int(3) NOT NULL,
  `upgrades` int(1) NOT NULL,
  `upgradeconfig` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpromotions`
--

LOCK TABLES `tblpromotions` WRITE;
/*!40000 ALTER TABLE `tblpromotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblquoteitems`
--

DROP TABLE IF EXISTS `tblquoteitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblquoteitems` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `quoteid` int(10) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` text COLLATE utf8_unicode_ci NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxable` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblquoteitems`
--

LOCK TABLES `tblquoteitems` WRITE;
/*!40000 ALTER TABLE `tblquoteitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblquoteitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblquotes`
--

DROP TABLE IF EXISTS `tblquotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblquotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') COLLATE utf8_unicode_ci NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `companyname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci NOT NULL,
  `address2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `state` text COLLATE utf8_unicode_ci NOT NULL,
  `postcode` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` text COLLATE utf8_unicode_ci NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `proposal` text COLLATE utf8_unicode_ci NOT NULL,
  `customernotes` text COLLATE utf8_unicode_ci NOT NULL,
  `adminnotes` text COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblquotes`
--

LOCK TABLES `tblquotes` WRITE;
/*!40000 ALTER TABLE `tblquotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblquotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblregistrars`
--

DROP TABLE IF EXISTS `tblregistrars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblregistrars` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `registrar` text COLLATE utf8_unicode_ci NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registrar_setting` (`registrar`(32),`setting`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblregistrars`
--

LOCK TABLES `tblregistrars` WRITE;
/*!40000 ALTER TABLE `tblregistrars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblregistrars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrsakeypairs`
--

DROP TABLE IF EXISTS `tblrsakeypairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrsakeypairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(96) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `private_key` text COLLATE utf8_unicode_ci NOT NULL,
  `public_key` text COLLATE utf8_unicode_ci NOT NULL,
  `algorithm` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'RS256',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrsakeypairs`
--

LOCK TABLES `tblrsakeypairs` WRITE;
/*!40000 ALTER TABLE `tblrsakeypairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrsakeypairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservergroups`
--

DROP TABLE IF EXISTS `tblservergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservergroups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `filltype` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservergroups`
--

LOCK TABLES `tblservergroups` WRITE;
/*!40000 ALTER TABLE `tblservergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservergroupsrel`
--

DROP TABLE IF EXISTS `tblservergroupsrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservergroupsrel` (
  `groupid` int(10) NOT NULL,
  `serverid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservergroupsrel`
--

LOCK TABLES `tblservergroupsrel` WRITE;
/*!40000 ALTER TABLE `tblservergroupsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservergroupsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservers`
--

DROP TABLE IF EXISTS `tblservers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `ipaddress` text COLLATE utf8_unicode_ci NOT NULL,
  `assignedips` text COLLATE utf8_unicode_ci NOT NULL,
  `hostname` text COLLATE utf8_unicode_ci NOT NULL,
  `monthlycost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `noc` text COLLATE utf8_unicode_ci NOT NULL,
  `statusaddress` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver1` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver1ip` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver2` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver2ip` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver3` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver3ip` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver4` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver4ip` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver5` text COLLATE utf8_unicode_ci NOT NULL,
  `nameserver5ip` text COLLATE utf8_unicode_ci NOT NULL,
  `maxaccounts` int(10) NOT NULL DEFAULT '0',
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `accesshash` text COLLATE utf8_unicode_ci NOT NULL,
  `secure` text COLLATE utf8_unicode_ci NOT NULL,
  `port` int(8) DEFAULT NULL,
  `active` int(1) NOT NULL,
  `disabled` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservers`
--

LOCK TABLES `tblservers` WRITE;
/*!40000 ALTER TABLE `tblservers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblserversssoperms`
--

DROP TABLE IF EXISTS `tblserversssoperms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblserversssoperms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `server_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblserversssoperms`
--

LOCK TABLES `tblserversssoperms` WRITE;
/*!40000 ALTER TABLE `tblserversssoperms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblserversssoperms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsslorders`
--

DROP TABLE IF EXISTS `tblsslorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsslorders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `serviceid` int(10) NOT NULL,
  `remoteid` text COLLATE utf8_unicode_ci NOT NULL,
  `module` text COLLATE utf8_unicode_ci NOT NULL,
  `certtype` text COLLATE utf8_unicode_ci NOT NULL,
  `configdata` text COLLATE utf8_unicode_ci NOT NULL,
  `completiondate` datetime NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsslorders`
--

LOCK TABLES `tblsslorders` WRITE;
/*!40000 ALTER TABLE `tblsslorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsslorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltax`
--

DROP TABLE IF EXISTS `tbltax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `level` int(1) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `state` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_country` (`state`(32),`country`(2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltax`
--

LOCK TABLES `tbltax` WRITE;
/*!40000 ALTER TABLE `tbltax` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticket_watchers`
--

DROP TABLE IF EXISTS `tblticket_watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticket_watchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_ticket_unique` (`ticket_id`,`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticket_watchers`
--

LOCK TABLES `tblticket_watchers` WRITE;
/*!40000 ALTER TABLE `tblticket_watchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticket_watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketbreaklines`
--

DROP TABLE IF EXISTS `tblticketbreaklines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketbreaklines` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `breakline` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketbreaklines`
--

LOCK TABLES `tblticketbreaklines` WRITE;
/*!40000 ALTER TABLE `tblticketbreaklines` DISABLE KEYS */;
INSERT INTO `tblticketbreaklines` VALUES (1,'> -----Original Message-----'),(2,'----- Original Message -----'),(3,'-----Original Message-----'),(4,'<!-- Break Line -->'),(5,'====== Please reply above this line ======'),(6,'_____');
/*!40000 ALTER TABLE `tblticketbreaklines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketdepartments`
--

DROP TABLE IF EXISTS `tblticketdepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketdepartments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `clientsonly` text COLLATE utf8_unicode_ci NOT NULL,
  `piperepliesonly` text COLLATE utf8_unicode_ci NOT NULL,
  `noautoresponder` text COLLATE utf8_unicode_ci NOT NULL,
  `hidden` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(1) NOT NULL,
  `host` text COLLATE utf8_unicode_ci NOT NULL,
  `port` text COLLATE utf8_unicode_ci NOT NULL,
  `login` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketdepartments`
--

LOCK TABLES `tblticketdepartments` WRITE;
/*!40000 ALTER TABLE `tblticketdepartments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketdepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketescalations`
--

DROP TABLE IF EXISTS `tblticketescalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketescalations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `departments` text COLLATE utf8_unicode_ci NOT NULL,
  `statuses` text COLLATE utf8_unicode_ci NOT NULL,
  `priorities` text COLLATE utf8_unicode_ci NOT NULL,
  `timeelapsed` int(5) NOT NULL,
  `newdepartment` text COLLATE utf8_unicode_ci NOT NULL,
  `newpriority` text COLLATE utf8_unicode_ci NOT NULL,
  `newstatus` text COLLATE utf8_unicode_ci NOT NULL,
  `flagto` text COLLATE utf8_unicode_ci NOT NULL,
  `notify` text COLLATE utf8_unicode_ci NOT NULL,
  `addreply` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketescalations`
--

LOCK TABLES `tblticketescalations` WRITE;
/*!40000 ALTER TABLE `tblticketescalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketescalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketfeedback`
--

DROP TABLE IF EXISTS `tblticketfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketfeedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticketid` int(10) NOT NULL,
  `adminid` int(10) NOT NULL,
  `rating` int(2) NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketfeedback`
--

LOCK TABLES `tblticketfeedback` WRITE;
/*!40000 ALTER TABLE `tblticketfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketlog`
--

DROP TABLE IF EXISTS `tblticketlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `tid` int(10) NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketlog`
--

LOCK TABLES `tblticketlog` WRITE;
/*!40000 ALTER TABLE `tblticketlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketmaillog`
--

DROP TABLE IF EXISTS `tblticketmaillog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketmaillog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `to` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketmaillog`
--

LOCK TABLES `tblticketmaillog` WRITE;
/*!40000 ALTER TABLE `tblticketmaillog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketmaillog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketnotes`
--

DROP TABLE IF EXISTS `tblticketnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketnotes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticketid` int(10) NOT NULL,
  `admin` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8_unicode_ci NOT NULL,
  `editor` enum('plain','markdown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  PRIMARY KEY (`id`),
  KEY `ticketid_date` (`ticketid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketnotes`
--

LOCK TABLES `tblticketnotes` WRITE;
/*!40000 ALTER TABLE `tblticketnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketpredefinedcats`
--

DROP TABLE IF EXISTS `tblticketpredefinedcats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketpredefinedcats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid_name` (`parentid`,`name`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketpredefinedcats`
--

LOCK TABLES `tblticketpredefinedcats` WRITE;
/*!40000 ALTER TABLE `tblticketpredefinedcats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketpredefinedcats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketpredefinedreplies`
--

DROP TABLE IF EXISTS `tblticketpredefinedreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketpredefinedreplies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `reply` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketpredefinedreplies`
--

LOCK TABLES `tblticketpredefinedreplies` WRITE;
/*!40000 ALTER TABLE `tblticketpredefinedreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketpredefinedreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketreplies`
--

DROP TABLE IF EXISTS `tblticketreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketreplies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `contactid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `admin` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(5) NOT NULL,
  `editor` enum('plain','markdown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  PRIMARY KEY (`id`),
  KEY `tid_date` (`tid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketreplies`
--

LOCK TABLES `tblticketreplies` WRITE;
/*!40000 ALTER TABLE `tblticketreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltickets`
--

DROP TABLE IF EXISTS `tbltickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltickets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tid` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `did` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `contactid` int(10) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `cc` text COLLATE utf8_unicode_ci NOT NULL,
  `c` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `urgency` text COLLATE utf8_unicode_ci NOT NULL,
  `admin` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `lastreply` datetime NOT NULL,
  `flag` int(1) NOT NULL,
  `clientunread` int(1) NOT NULL,
  `adminunread` text COLLATE utf8_unicode_ci NOT NULL,
  `replyingadmin` int(1) NOT NULL,
  `replyingtime` datetime NOT NULL,
  `service` text COLLATE utf8_unicode_ci NOT NULL,
  `merged_ticket_id` int(11) NOT NULL DEFAULT '0',
  `editor` enum('plain','markdown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  PRIMARY KEY (`id`),
  KEY `tid_c` (`tid`,`c`(64)),
  KEY `userid` (`userid`),
  KEY `date` (`date`),
  KEY `did` (`did`),
  KEY `merged_ticket_id` (`merged_ticket_id`,`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltickets`
--

LOCK TABLES `tbltickets` WRITE;
/*!40000 ALTER TABLE `tbltickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketspamfilters`
--

DROP TABLE IF EXISTS `tblticketspamfilters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketspamfilters` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('sender','subject','phrase') COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketspamfilters`
--

LOCK TABLES `tblticketspamfilters` WRITE;
/*!40000 ALTER TABLE `tblticketspamfilters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketspamfilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketstatuses`
--

DROP TABLE IF EXISTS `tblticketstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketstatuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `color` text COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(2) NOT NULL,
  `showactive` int(1) NOT NULL,
  `showawaiting` int(1) NOT NULL,
  `autoclose` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketstatuses`
--

LOCK TABLES `tblticketstatuses` WRITE;
/*!40000 ALTER TABLE `tblticketstatuses` DISABLE KEYS */;
INSERT INTO `tblticketstatuses` VALUES (1,'Open','#779500',1,1,1,0),(2,'Answered','#000000',2,1,0,1),(3,'Customer-Reply','#ff6600',3,1,1,1),(4,'Closed','#888888',10,0,0,0),(5,'On Hold','#224488',5,1,0,0),(6,'In Progress','#cc0000',6,1,0,0);
/*!40000 ALTER TABLE `tblticketstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltickettags`
--

DROP TABLE IF EXISTS `tbltickettags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltickettags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticketid` int(10) NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltickettags`
--

LOCK TABLES `tbltickettags` WRITE;
/*!40000 ALTER TABLE `tbltickettags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltickettags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltld_categories`
--

DROP TABLE IF EXISTS `tbltld_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltld_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltld_categories`
--

LOCK TABLES `tbltld_categories` WRITE;
/*!40000 ALTER TABLE `tbltld_categories` DISABLE KEYS */;
INSERT INTO `tbltld_categories` VALUES (1,'gTLD',1,1,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(2,'Specialty',1,3,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(3,'Sponsored',1,4,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(4,'ccTLD',1,2,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(5,'Services',0,NULL,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(6,'Geographic',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(7,'Geography',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(8,'Education',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(9,'Popular',1,0,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(10,'Money and Finance',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(11,'Featured',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(12,'Community',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(13,'Identity and Lifestyle',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(14,'Arts and Entertainment',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(15,'Business',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(16,'Adult',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(17,'Novelty',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(18,'Real Estate',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(19,'Technology',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(20,'Other',1,7,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(21,'Shopping',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(22,'Interest',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(23,'Food and Drink',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(24,'Sports',0,NULL,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(25,'Leisure and Recreation',0,NULL,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(26,'WatchList',1,6,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(27,'IDN',1,5,'2016-07-15 08:37:23','2016-07-15 08:37:23');
/*!40000 ALTER TABLE `tbltld_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltld_category_pivot`
--

DROP TABLE IF EXISTS `tbltld_category_pivot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltld_category_pivot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tld_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tbltld_category_pivot_tld_id_index` (`tld_id`),
  KEY `tbltld_category_pivot_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1937 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltld_category_pivot`
--

LOCK TABLES `tbltld_category_pivot` WRITE;
/*!40000 ALTER TABLE `tbltld_category_pivot` DISABLE KEYS */;
INSERT INTO `tbltld_category_pivot` VALUES (1,1,1,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(2,1,2,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(3,1,3,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(4,2,4,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(5,3,5,'2016-07-15 08:37:07','2016-07-15 08:37:07'),(6,4,6,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(7,5,4,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(8,5,7,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(9,6,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(10,6,2,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(11,6,3,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(12,7,8,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(13,7,9,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(14,7,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(15,8,10,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(16,8,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(17,9,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(18,9,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(19,9,10,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(20,9,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(21,10,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(22,10,2,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(23,10,3,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(24,11,12,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(25,12,13,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(26,13,14,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(27,13,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(28,13,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(29,13,13,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(30,14,12,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(31,15,15,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(32,16,16,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(33,17,4,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(34,18,6,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(35,19,4,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(36,20,15,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(37,20,9,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(38,20,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(39,21,4,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(40,22,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(41,22,13,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(42,23,6,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(43,24,4,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(44,24,7,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(45,24,2,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(46,25,6,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(47,26,15,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(48,27,17,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(49,28,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(50,28,18,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(51,28,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(52,29,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(53,29,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(54,29,19,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(55,30,6,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(56,31,4,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(57,31,20,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(58,32,13,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(59,33,9,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(60,33,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(61,33,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(62,34,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(63,34,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(64,35,17,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(65,36,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(66,36,13,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(67,37,14,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(68,37,12,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(69,37,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(70,38,4,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(71,38,9,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(72,38,7,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(73,38,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(74,39,15,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(75,39,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(76,39,9,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(77,39,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(78,40,4,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(79,40,7,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(80,41,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(81,41,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(82,42,4,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(83,43,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(84,43,21,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(85,44,12,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(86,45,14,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(87,46,14,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(88,46,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(89,46,21,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(90,47,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(91,47,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(92,47,21,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(93,48,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(94,48,21,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(95,49,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(96,49,2,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(97,49,3,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(98,50,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(99,50,13,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(100,51,14,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(101,51,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(102,51,22,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(103,52,12,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(104,52,10,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(105,52,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(106,53,10,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(107,53,5,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(108,54,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(109,54,23,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(110,54,9,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(111,54,6,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(112,54,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(113,55,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(114,55,2,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(115,55,3,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(116,56,12,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(117,56,6,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(118,57,9,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(119,57,1,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(120,57,21,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(121,58,11,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(122,58,22,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(123,58,24,'2016-07-15 08:37:08','2016-07-15 08:37:08'),(124,59,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(125,59,22,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(126,59,24,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(127,60,15,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(128,61,6,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(129,62,12,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(130,63,4,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(131,64,4,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(132,64,7,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(133,65,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(134,65,13,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(135,66,23,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(136,67,17,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(137,68,12,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(138,68,6,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(139,69,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(140,69,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(141,69,17,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(142,70,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(143,70,25,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(144,71,13,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(145,72,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(146,72,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(147,72,25,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(148,72,21,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(149,73,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(150,73,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(151,73,21,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(152,74,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(153,74,25,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(154,75,13,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(155,76,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(156,76,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(157,77,4,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(158,78,13,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(159,78,17,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(160,79,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(161,79,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(162,79,21,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(163,80,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(164,80,22,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(165,80,19,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(166,81,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(167,81,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(168,81,17,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(169,82,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(170,82,21,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(171,83,10,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(172,84,17,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(173,85,14,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(174,85,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(175,85,22,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(176,86,15,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(177,87,6,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(178,88,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(179,88,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(180,88,21,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(181,89,17,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(182,90,4,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(183,90,7,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(184,91,14,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(185,91,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(186,91,6,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(187,91,22,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(188,92,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(189,92,10,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(190,92,5,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(191,93,13,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(192,94,6,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(193,95,6,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(194,96,12,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(195,97,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(196,97,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(197,97,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(198,97,21,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(199,98,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(200,98,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(201,98,18,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(202,98,5,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(203,99,15,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(204,99,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(205,100,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(206,100,21,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(207,101,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(208,101,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(209,101,13,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(210,102,14,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(211,103,4,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(212,103,7,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(213,104,12,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(214,104,6,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(215,105,4,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(216,105,7,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(217,106,9,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(218,106,1,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(219,106,5,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(220,107,11,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(221,107,23,'2016-07-15 08:37:09','2016-07-15 08:37:09'),(222,108,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(223,108,22,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(224,109,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(225,109,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(226,109,22,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(227,110,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(228,110,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(229,110,22,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(230,110,25,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(231,111,6,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(232,112,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(233,112,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(234,112,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(235,112,10,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(236,113,22,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(237,114,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(238,114,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(239,114,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(240,114,22,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(241,115,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(242,115,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(243,115,22,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(244,116,15,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(245,116,5,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(246,117,15,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(247,117,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(248,117,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(249,117,5,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(250,118,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(251,118,21,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(252,119,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(253,119,18,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(254,120,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(255,120,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(256,120,10,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(257,121,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(258,121,25,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(259,122,6,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(260,123,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(261,123,23,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(262,123,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(263,123,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(264,123,5,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(265,124,12,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(266,125,4,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(267,125,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(268,125,2,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(269,126,15,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(270,126,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(271,126,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(272,127,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(273,127,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(274,127,13,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(275,128,10,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(276,129,4,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(277,129,7,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(278,130,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(279,130,22,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(280,131,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(281,131,19,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(282,132,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(283,132,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(284,132,21,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(285,133,6,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(286,134,17,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(287,135,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(288,135,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(289,135,22,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(290,136,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(291,136,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(292,136,13,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(293,137,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(294,137,6,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(295,138,23,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(296,138,5,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(297,139,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(298,139,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(299,139,5,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(300,140,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(301,140,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(302,140,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(303,140,5,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(304,141,19,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(305,142,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(306,142,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(307,142,5,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(308,143,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(309,143,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(310,143,21,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(311,144,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(312,144,19,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(313,145,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(314,145,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(315,145,13,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(316,146,4,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(317,146,7,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(318,146,2,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(319,147,4,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(320,147,7,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(321,148,4,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(322,148,7,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(323,149,4,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(324,149,7,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(325,149,2,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(326,150,15,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(327,150,9,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(328,150,1,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(329,151,4,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(330,152,4,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(331,152,7,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(332,153,4,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(333,153,7,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(334,154,11,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(335,154,24,'2016-07-15 08:37:10','2016-07-15 08:37:10'),(336,155,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(337,155,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(338,155,19,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(339,156,23,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(340,156,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(341,156,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(342,157,8,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(343,157,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(344,158,6,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(345,159,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(346,159,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(347,160,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(348,161,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(349,161,7,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(350,162,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(351,162,20,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(352,163,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(353,163,20,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(354,164,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(355,164,20,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(356,165,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(357,165,7,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(358,166,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(359,166,20,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(360,167,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(361,167,7,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(362,168,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(363,169,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(364,170,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(365,170,7,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(366,170,20,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(367,171,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(368,171,20,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(369,172,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(370,172,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(371,172,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(372,172,13,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(373,173,15,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(374,173,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(375,173,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(376,174,21,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(377,175,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(378,175,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(379,175,21,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(380,175,19,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(381,176,19,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(382,177,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(383,177,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(384,177,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(385,177,18,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(386,178,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(387,178,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(388,178,5,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(389,179,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(390,179,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(391,179,5,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(392,180,13,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(393,181,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(394,181,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(395,181,5,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(396,182,23,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(397,182,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(398,182,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(399,182,22,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(400,183,13,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(401,184,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(402,184,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(403,184,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(404,184,17,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(405,185,15,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(406,185,12,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(407,185,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(408,186,12,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(409,187,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(410,187,6,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(411,187,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(412,188,21,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(413,189,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(414,189,21,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(415,190,8,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(416,191,12,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(417,191,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(418,191,10,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(419,191,5,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(420,192,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(421,192,2,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(422,192,3,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(423,193,4,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(424,194,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(425,194,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(426,194,10,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(427,195,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(428,195,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(429,195,10,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(430,196,10,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(431,196,5,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(432,197,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(433,197,22,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(434,197,24,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(435,198,25,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(436,199,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(437,199,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(438,199,25,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(439,200,6,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(440,201,17,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(441,202,13,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(442,203,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(443,203,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(444,203,25,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(445,204,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(446,204,19,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(447,205,13,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(448,206,11,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(449,206,9,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(450,206,1,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(451,206,13,'2016-07-15 08:37:11','2016-07-15 08:37:11'),(452,207,17,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(453,208,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(454,209,4,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(455,209,7,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(456,210,4,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(457,210,20,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(458,211,21,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(459,212,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(460,212,21,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(461,213,8,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(462,213,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(463,214,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(464,214,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(465,215,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(466,215,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(467,215,13,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(468,216,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(469,216,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(470,216,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(471,217,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(472,217,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(473,218,6,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(474,219,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(475,219,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(476,220,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(477,220,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(478,220,21,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(479,221,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(480,221,13,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(481,222,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(482,222,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(483,222,19,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(484,223,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(485,223,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(486,223,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(487,224,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(488,224,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(489,224,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(490,225,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(491,225,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(492,225,21,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(493,226,22,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(494,227,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(495,227,19,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(496,228,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(497,228,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(498,229,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(499,229,22,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(500,230,6,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(501,231,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(502,231,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(503,231,19,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(504,232,19,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(505,233,6,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(506,234,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(507,234,19,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(508,235,6,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(509,236,6,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(510,237,19,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(511,238,6,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(512,239,23,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(513,239,22,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(514,240,12,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(515,240,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(516,240,22,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(517,241,15,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(518,241,21,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(519,242,12,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(520,243,8,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(521,243,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(522,243,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(523,244,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(524,244,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(525,244,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(526,244,19,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(527,245,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(528,245,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(529,245,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(530,246,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(531,246,2,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(532,246,3,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(533,247,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(534,247,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(535,248,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(536,248,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(537,248,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(538,248,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(539,249,15,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(540,249,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(541,249,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(542,250,19,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(543,251,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(544,251,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(545,251,21,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(546,252,4,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(547,252,7,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(548,253,5,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(549,254,17,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(550,255,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(551,255,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(552,255,10,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(553,256,4,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(554,256,7,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(555,257,4,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(556,257,7,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(557,258,12,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(558,258,6,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(559,259,14,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(560,259,11,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(561,259,9,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(562,259,1,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(563,259,25,'2016-07-15 08:37:12','2016-07-15 08:37:12'),(564,260,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(565,260,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(566,260,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(567,260,10,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(568,260,21,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(569,261,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(570,261,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(571,261,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(572,261,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(573,262,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(574,262,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(575,262,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(576,263,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(577,263,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(578,263,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(579,264,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(580,264,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(581,264,17,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(582,265,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(583,266,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(584,266,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(585,267,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(586,267,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(587,267,24,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(588,268,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(589,268,24,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(590,269,15,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(591,269,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(592,269,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(593,269,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(594,269,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(595,270,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(596,270,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(597,270,21,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(598,271,17,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(599,272,14,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(600,272,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(601,273,17,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(602,274,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(603,274,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(604,274,10,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(605,274,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(606,275,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(607,275,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(608,275,10,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(609,275,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(610,276,10,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(611,276,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(612,277,4,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(613,278,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(614,278,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(615,278,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(616,278,25,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(617,279,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(618,279,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(619,279,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(620,279,25,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(621,280,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(622,280,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(623,281,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(624,281,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(625,281,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(626,281,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(627,282,4,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(628,283,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(629,283,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(630,283,25,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(631,283,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(632,284,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(633,284,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(634,284,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(635,285,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(636,285,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(637,286,25,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(638,286,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(639,287,4,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(640,287,7,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(641,287,2,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(642,288,17,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(643,289,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(644,289,23,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(645,289,22,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(646,290,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(647,290,22,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(648,290,24,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(649,291,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(650,291,18,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(651,291,21,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(652,292,15,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(653,292,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(654,292,22,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(655,293,15,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(656,293,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(657,293,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(658,294,4,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(659,294,7,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(660,295,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(661,295,17,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(662,295,21,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(663,296,6,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(664,297,17,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(665,298,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(666,298,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(667,298,10,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(668,299,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(669,299,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(670,299,21,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(671,300,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(672,300,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(673,300,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(674,300,22,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(675,300,24,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(676,301,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(677,301,17,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(678,302,12,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(679,302,6,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(680,303,14,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(681,303,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(682,303,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(683,304,25,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(684,305,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(685,305,25,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(686,306,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(687,306,22,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(688,307,12,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(689,307,11,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(690,307,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(691,308,4,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(692,309,4,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(693,310,4,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(694,311,12,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(695,312,4,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(696,313,6,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(697,313,13,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(698,314,9,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(699,314,1,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(700,314,22,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(701,314,5,'2016-07-15 08:37:13','2016-07-15 08:37:13'),(702,315,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(703,315,21,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(704,316,15,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(705,316,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(706,316,22,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(707,317,15,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(708,317,22,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(709,318,9,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(710,318,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(711,318,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(712,319,17,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(713,320,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(714,320,6,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(715,321,15,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(716,321,12,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(717,321,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(718,322,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(719,322,10,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(720,323,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(721,323,22,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(722,323,24,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(723,324,17,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(724,325,13,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(725,326,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(726,326,7,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(727,327,9,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(728,327,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(729,327,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(730,327,19,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(731,328,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(732,328,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(733,328,17,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(734,329,12,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(735,330,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(736,330,22,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(737,331,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(738,331,9,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(739,331,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(740,331,17,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(741,332,23,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(742,332,21,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(743,333,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(744,333,13,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(745,333,22,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(746,334,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(747,334,7,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(748,335,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(749,336,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(750,336,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(751,336,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(752,337,9,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(753,337,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(754,337,22,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(755,337,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(756,338,9,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(757,338,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(758,338,21,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(759,339,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(760,340,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(761,341,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(762,342,13,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(763,343,12,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(764,343,13,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(765,344,12,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(766,344,6,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(767,345,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(768,345,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(769,345,18,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(770,346,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(771,347,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(772,348,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(773,348,13,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(774,348,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(775,349,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(776,349,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(777,350,13,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(778,351,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(779,351,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(780,352,6,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(781,353,17,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(782,354,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(783,355,14,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(784,356,13,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(785,357,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(786,358,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(787,359,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(788,360,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(789,361,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(790,361,22,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(791,361,24,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(792,362,9,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(793,362,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(794,362,21,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(795,363,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(796,363,9,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(797,363,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(798,363,25,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(799,364,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(800,364,18,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(801,365,18,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(802,366,9,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(803,366,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(804,366,25,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(805,367,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(806,367,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(807,368,19,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(808,369,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(809,369,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(810,369,19,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(811,370,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(812,370,17,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(813,371,12,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(814,371,11,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(815,371,25,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(816,371,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(817,372,25,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(818,372,5,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(819,373,9,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(820,373,1,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(821,373,18,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(822,374,17,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(823,375,4,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(824,375,7,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(825,376,13,'2016-07-15 08:37:14','2016-07-15 08:37:14'),(826,377,19,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(827,378,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(828,378,20,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(829,378,2,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(830,379,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(831,380,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(832,381,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(833,381,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(834,381,18,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(835,382,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(836,382,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(837,382,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(838,382,18,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(839,383,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(840,383,7,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(841,384,15,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(842,384,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(843,384,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(844,385,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(845,386,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(846,387,15,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(847,387,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(848,387,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(849,387,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(850,388,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(851,388,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(852,389,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(853,390,17,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(854,391,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(855,391,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(856,391,22,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(857,392,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(858,392,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(859,392,5,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(860,393,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(861,393,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(862,393,5,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(863,394,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(864,394,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(865,394,5,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(866,395,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(867,395,6,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(868,395,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(869,396,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(870,396,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(871,396,10,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(872,396,5,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(873,397,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(874,397,7,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(875,398,10,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(876,399,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(877,400,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(878,400,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(879,401,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(880,402,6,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(881,403,6,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(882,404,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(883,404,7,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(884,405,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(885,406,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(886,406,21,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(887,407,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(888,407,3,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(889,408,6,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(890,409,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(891,409,7,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(892,410,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(893,410,20,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(894,411,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(895,412,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(896,412,22,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(897,413,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(898,413,2,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(899,413,3,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(900,414,17,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(901,415,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(902,416,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(903,416,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(904,416,21,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(905,417,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(906,418,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(907,418,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(908,419,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(909,420,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(910,420,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(911,420,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(912,420,17,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(913,421,23,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(914,421,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(915,421,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(916,422,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(917,422,6,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(918,422,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(919,422,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(920,423,6,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(921,424,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(922,425,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(923,426,6,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(924,427,4,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(925,427,7,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(926,427,2,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(927,428,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(928,429,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(929,429,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(930,429,18,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(931,430,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(932,431,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(933,432,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(934,432,5,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(935,433,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(936,433,2,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(937,433,3,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(938,434,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(939,434,5,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(940,435,12,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(941,435,13,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(942,436,11,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(943,436,9,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(944,436,1,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(945,436,18,'2016-07-15 08:37:15','2016-07-15 08:37:15'),(946,437,12,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(947,438,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(948,438,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(949,439,13,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(950,440,4,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(951,440,7,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(952,441,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(953,441,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(954,441,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(955,442,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(956,443,13,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(957,444,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(958,444,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(959,444,21,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(960,445,15,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(961,445,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(962,445,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(963,446,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(964,446,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(965,446,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(966,447,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(967,447,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(968,447,22,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(969,447,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(970,448,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(971,448,13,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(972,449,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(973,449,13,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(974,450,15,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(975,450,12,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(976,450,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(977,451,15,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(978,451,12,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(979,452,4,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(980,453,10,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(981,453,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(982,454,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(983,454,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(984,454,10,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(985,454,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(986,455,17,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(987,456,6,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(988,456,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(989,457,25,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(990,458,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(991,458,13,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(992,459,15,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(993,459,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(994,460,4,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(995,461,21,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(996,462,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(997,462,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(998,462,21,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(999,463,12,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1000,463,6,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1001,464,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1002,464,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1003,464,19,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1004,465,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1005,465,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1006,465,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1007,465,18,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1008,466,15,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1009,466,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1010,466,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1011,466,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1012,467,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1013,467,19,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1014,468,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1015,468,21,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1016,469,15,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1017,469,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1018,469,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1019,469,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1020,469,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1021,470,21,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1022,471,4,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1023,472,8,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1024,472,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1025,472,13,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1026,473,4,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1027,473,7,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1028,473,2,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1029,474,4,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1030,474,7,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1031,475,12,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1032,475,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1033,476,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1034,476,2,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1035,476,3,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1036,477,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1037,477,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1038,477,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1039,477,19,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1040,478,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1041,478,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1042,479,22,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1043,479,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1044,480,6,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1045,481,17,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1046,482,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1047,482,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1048,483,17,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1049,484,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1050,484,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1051,484,21,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1052,485,12,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1053,486,6,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1054,487,12,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1055,487,18,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1056,487,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1057,488,12,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1058,489,4,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1059,490,4,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1060,491,9,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1061,491,1,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1062,491,2,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1063,491,3,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1064,492,11,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1065,492,5,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1066,492,19,'2016-07-15 08:37:16','2016-07-15 08:37:16'),(1067,493,19,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1068,494,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1069,494,1,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1070,494,22,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1071,494,21,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1072,495,17,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1073,496,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1074,496,13,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1075,497,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1076,497,10,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1077,497,5,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1078,498,13,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1079,499,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1080,499,10,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1081,499,5,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1082,500,6,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1083,501,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1084,501,22,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1085,501,24,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1086,502,21,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1087,503,19,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1088,504,14,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1089,504,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1090,504,22,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1091,504,21,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1092,505,19,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1093,506,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1094,506,7,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1095,507,19,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1096,508,14,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1097,508,12,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1098,508,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1099,508,22,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1100,508,21,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1101,509,10,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1102,510,10,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1103,510,5,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1104,511,9,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1105,511,6,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1106,511,1,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1107,512,9,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1108,512,1,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1109,512,2,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1110,512,3,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1111,513,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1112,513,13,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1113,514,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1114,515,22,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1115,515,24,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1116,516,9,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1117,516,1,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1118,517,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1119,518,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1120,518,7,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1121,519,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1122,519,7,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1123,520,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1124,520,20,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1125,521,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1126,522,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1127,522,7,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1128,523,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1129,523,7,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1130,524,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1131,525,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1132,526,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1133,526,19,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1134,527,17,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1135,528,14,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1136,528,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1137,528,5,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1138,529,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1139,530,15,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1140,530,12,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1141,531,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1142,531,9,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1143,531,1,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1144,531,25,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1145,531,17,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1146,532,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1147,532,7,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1148,533,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1149,534,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1150,535,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1151,535,20,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1152,536,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1153,536,20,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1154,537,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1155,537,7,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1156,538,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1157,538,7,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1158,539,26,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1159,540,11,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1160,540,17,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1161,541,13,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1162,542,6,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1163,543,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1164,544,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1165,545,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1166,545,7,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1167,546,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1168,547,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1169,548,6,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1170,548,1,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1171,549,6,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1172,550,4,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1173,551,17,'2016-07-15 08:37:17','2016-07-15 08:37:17'),(1174,552,15,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1175,552,12,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1176,553,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1177,553,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1178,554,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1179,554,19,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1180,555,17,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1181,556,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1182,556,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1183,557,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1184,558,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1185,558,7,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1186,559,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1187,559,7,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1188,560,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1189,560,7,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1190,561,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1191,562,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1192,562,7,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1193,563,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1194,563,7,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1195,564,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1196,565,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1197,566,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1198,566,7,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1199,567,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1200,567,7,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1201,568,13,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1202,568,22,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1203,569,13,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1204,570,12,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1205,570,6,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1206,571,12,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1207,572,12,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1208,572,6,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1209,573,12,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1210,573,13,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1211,574,15,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1212,574,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1213,574,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1214,574,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1215,575,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1216,575,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1217,575,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1218,575,21,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1219,576,25,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1220,577,6,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1221,578,10,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1222,579,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1223,579,7,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1224,580,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1225,581,6,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1226,581,13,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1227,582,22,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1228,583,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1229,583,22,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1230,584,12,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1231,584,5,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1232,585,8,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1233,585,13,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1234,586,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1235,586,19,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1236,587,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1237,587,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1238,587,22,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1239,587,5,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1240,588,14,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1241,588,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1242,588,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1243,588,22,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1244,588,5,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1245,589,14,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1246,589,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1247,589,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1248,590,5,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1249,591,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1250,591,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1251,591,22,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1252,591,5,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1253,592,14,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1254,592,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1255,592,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1256,592,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1257,593,17,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1258,594,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1259,594,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1260,594,17,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1261,595,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1262,595,23,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1263,596,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1264,596,7,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1265,597,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1266,597,6,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1267,597,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1268,598,25,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1269,599,4,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1270,600,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1271,600,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1272,600,21,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1273,601,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1274,601,17,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1275,602,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1276,602,25,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1277,603,16,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1278,604,15,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1279,605,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1280,605,2,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1281,605,3,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1282,606,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1283,606,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1284,606,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1285,606,5,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1286,607,8,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1287,608,21,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1288,609,11,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1289,609,9,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1290,609,1,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1291,609,18,'2016-07-15 08:37:18','2016-07-15 08:37:18'),(1292,610,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1293,610,18,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1294,611,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1295,611,23,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1296,611,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1297,611,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1298,611,25,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1299,612,15,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1300,612,4,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1301,612,2,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1302,613,4,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1303,614,4,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1304,614,7,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1305,615,4,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1306,616,21,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1307,617,12,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1308,617,6,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1309,618,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1310,618,22,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1311,618,24,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1312,619,14,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1313,619,12,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1314,619,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1315,620,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1316,620,18,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1317,621,18,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1318,621,5,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1319,622,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1320,622,18,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1321,623,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1322,623,2,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1323,623,3,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1324,624,23,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1325,624,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1326,624,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1327,625,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1328,625,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1329,625,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1330,625,17,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1331,626,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1332,626,5,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1333,627,25,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1334,628,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1335,628,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1336,628,25,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1337,629,12,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1338,629,10,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1339,630,13,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1340,631,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1341,631,18,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1342,632,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1343,632,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1344,632,5,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1345,633,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1346,633,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1347,633,5,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1348,634,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1349,634,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1350,634,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1351,634,22,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1352,635,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1353,635,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1354,635,13,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1355,636,23,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1356,636,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1357,636,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1358,636,5,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1359,637,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1360,637,23,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1361,638,22,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1362,639,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1363,639,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1364,639,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1365,639,22,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1366,640,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1367,640,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1368,640,10,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1369,641,6,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1370,642,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1371,642,17,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1372,643,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1373,643,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1374,643,17,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1375,644,9,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1376,644,1,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1377,644,22,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1378,644,24,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1379,645,6,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1380,646,17,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1381,647,4,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1382,647,20,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1383,648,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1384,648,22,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1385,648,24,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1386,649,6,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1387,650,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1388,650,22,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1389,650,24,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1390,651,6,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1391,652,4,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1392,652,20,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1393,653,6,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1394,654,5,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1395,655,5,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1396,656,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1397,656,21,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1398,657,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1399,657,5,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1400,658,15,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1401,658,11,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1402,659,5,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1403,660,21,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1404,661,4,'2016-07-15 08:37:19','2016-07-15 08:37:19'),(1405,662,4,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1406,663,8,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1407,664,8,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1408,664,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1409,665,8,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1410,665,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1411,665,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1412,666,8,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1413,666,22,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1414,667,12,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1415,667,6,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1416,667,13,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1417,668,4,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1418,669,4,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1419,669,20,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1420,670,4,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1421,670,20,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1422,671,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1423,671,19,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1424,672,5,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1425,673,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1426,673,5,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1427,674,19,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1428,675,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1429,675,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1430,675,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1431,675,5,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1432,676,16,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1433,677,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1434,677,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1435,677,22,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1436,677,5,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1437,678,4,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1438,678,7,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1439,679,4,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1440,679,7,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1441,680,4,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1442,681,12,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1443,681,13,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1444,682,8,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1445,682,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1446,682,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1447,683,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1448,683,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1449,683,21,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1450,684,12,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1451,684,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1452,684,21,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1453,685,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1454,685,21,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1455,686,21,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1456,687,14,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1457,687,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1458,688,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1459,688,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1460,688,21,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1461,689,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1462,689,19,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1463,690,4,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1464,691,12,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1465,691,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1466,691,22,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1467,691,24,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1468,692,13,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1469,693,4,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1470,694,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1471,694,22,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1472,694,24,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1473,695,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1474,695,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1475,695,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1476,695,25,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1477,696,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1478,696,19,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1479,697,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1480,697,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1481,697,22,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1482,698,15,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1483,698,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1484,698,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1485,699,13,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1486,699,22,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1487,700,12,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1488,700,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1489,700,25,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1490,701,22,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1491,702,12,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1492,702,22,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1493,702,24,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1494,703,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1495,703,22,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1496,703,24,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1497,704,17,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1498,705,25,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1499,706,15,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1500,707,12,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1501,708,6,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1502,709,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1503,709,5,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1504,710,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1505,710,21,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1506,711,13,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1507,712,15,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1508,712,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1509,712,18,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1510,713,8,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1511,714,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1512,714,13,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1513,715,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1514,715,17,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1515,716,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1516,716,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1517,716,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1518,716,21,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1519,717,11,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1520,717,9,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1521,717,1,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1522,717,21,'2016-07-15 08:37:20','2016-07-15 08:37:20'),(1523,718,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1524,718,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1525,718,5,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1526,719,25,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1527,720,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1528,720,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1529,720,5,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1530,721,12,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1531,721,6,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1532,722,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1533,723,6,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1534,724,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1535,724,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1536,724,19,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1537,725,6,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1538,726,12,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1539,726,6,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1540,727,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1541,727,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1542,727,22,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1543,727,5,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1544,728,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1545,728,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1546,728,10,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1547,729,12,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1548,729,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1549,729,5,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1550,730,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1551,730,7,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1552,731,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1553,731,22,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1554,731,24,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1555,732,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1556,732,19,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1557,733,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1558,733,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1559,733,19,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1560,734,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1561,734,2,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1562,734,3,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1563,735,12,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1564,735,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1565,735,22,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1566,735,24,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1567,736,12,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1568,736,6,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1569,737,14,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1570,737,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1571,737,22,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1572,738,14,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1573,738,22,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1574,739,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1575,739,21,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1576,740,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1577,740,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1578,740,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1579,740,21,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1580,741,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1581,741,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1582,741,5,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1583,742,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1584,742,21,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1585,743,12,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1586,743,6,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1587,744,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1588,745,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1589,746,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1590,746,7,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1591,746,2,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1592,747,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1593,747,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1594,747,17,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1595,748,6,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1596,748,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1597,749,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1598,749,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1599,749,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1600,749,21,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1601,750,13,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1602,751,25,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1603,752,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1604,752,25,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1605,752,5,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1606,753,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1607,753,6,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1608,753,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1609,754,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1610,754,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1611,754,21,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1612,755,15,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1613,755,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1614,755,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1615,756,15,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1616,756,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1617,757,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1618,757,1,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1619,757,5,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1620,758,5,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1621,759,5,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1622,760,11,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1623,760,19,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1624,761,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1625,761,7,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1626,761,2,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1627,762,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1628,762,7,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1629,763,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1630,764,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1631,764,9,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1632,764,6,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1633,765,4,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1634,765,20,'2016-07-15 08:37:21','2016-07-15 08:37:21'),(1635,766,4,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1636,766,20,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1637,767,8,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1638,767,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1639,767,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1640,768,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1641,768,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1642,768,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1643,769,4,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1644,769,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1645,769,7,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1646,770,4,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1647,770,20,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1648,771,4,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1649,771,20,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1650,772,4,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1651,772,7,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1652,773,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1653,773,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1654,773,25,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1655,774,25,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1656,775,4,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1657,776,6,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1658,776,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1659,776,25,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1660,777,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1661,777,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1662,777,21,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1663,778,12,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1664,778,5,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1665,779,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1666,779,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1667,779,5,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1668,780,4,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1669,780,7,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1670,781,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1671,781,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1672,781,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1673,781,19,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1674,782,14,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1675,782,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1676,783,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1677,783,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1678,783,18,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1679,784,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1680,784,5,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1681,785,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1682,785,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1683,786,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1684,786,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1685,786,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1686,786,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1687,787,6,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1688,788,23,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1689,788,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1690,788,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1691,789,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1692,789,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1693,790,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1694,790,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1695,791,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1696,792,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1697,792,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1698,792,25,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1699,793,6,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1700,794,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1701,795,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1702,795,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1703,795,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1704,795,21,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1705,796,21,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1706,797,22,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1707,797,5,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1708,798,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1709,798,19,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1710,799,4,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1711,800,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1712,800,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1713,800,19,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1714,801,12,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1715,802,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1716,802,19,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1717,803,5,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1718,804,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1719,804,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1720,805,19,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1721,806,13,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1722,807,12,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1723,807,6,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1724,808,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1725,808,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1726,808,22,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1727,809,17,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1728,810,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1729,810,23,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1730,811,17,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1731,812,5,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1732,813,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1733,813,9,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1734,813,1,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1735,813,5,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1736,814,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1737,814,6,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1738,815,11,'2016-07-15 08:37:22','2016-07-15 08:37:22'),(1739,815,17,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1740,816,4,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1741,816,2,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1742,817,11,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1743,817,1,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1744,817,17,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1745,818,15,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1746,819,4,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1747,820,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1748,821,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1749,822,6,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1750,822,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1751,823,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1752,824,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1753,825,9,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1754,825,1,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1755,825,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1756,825,19,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1757,826,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1758,827,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1759,828,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1760,828,22,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1761,829,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1762,829,19,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1763,830,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1764,831,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1765,832,15,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1766,832,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1767,833,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1768,833,19,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1769,834,9,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1770,834,1,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1771,834,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1772,834,19,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1773,835,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1774,835,17,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1775,836,6,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1776,836,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1777,837,6,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1778,837,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1779,838,12,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1780,838,13,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1781,838,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1782,839,9,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1783,839,1,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1784,839,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1785,839,19,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1786,840,9,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1787,840,1,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1788,840,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1789,840,19,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1790,841,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1791,842,13,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1792,842,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1793,842,21,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1794,843,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1795,843,19,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1796,844,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1797,845,9,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1798,845,1,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1799,845,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1800,846,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1801,847,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1802,848,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1803,849,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1804,850,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1805,851,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1806,852,11,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1807,852,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1808,852,21,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1809,853,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1810,853,21,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1811,854,13,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1812,854,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1813,855,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1814,856,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1815,857,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1816,857,5,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1817,858,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1818,858,10,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1819,859,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1820,860,6,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1821,860,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1822,861,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1823,862,9,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1824,862,1,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1825,862,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1826,862,19,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1827,863,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1828,864,14,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1829,864,11,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1830,864,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1831,865,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1832,866,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1833,866,21,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1834,867,27,'2016-07-15 08:37:23','2016-07-15 08:37:23'),(1835,868,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1836,869,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1837,870,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1838,870,21,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1839,871,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1840,872,23,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1841,872,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1842,873,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1843,873,19,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1844,874,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1845,875,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1846,876,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1847,877,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1848,878,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1849,879,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1850,879,19,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1851,880,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1852,881,15,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1853,881,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1854,881,19,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1855,882,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1856,882,5,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1857,882,21,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1858,883,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1859,884,6,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1860,884,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1861,885,12,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1862,885,13,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1863,885,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1864,886,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1865,887,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1866,888,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1867,889,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1868,890,9,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1869,890,1,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1870,890,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1871,890,17,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1872,891,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1873,892,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1874,893,9,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1875,893,1,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1876,893,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1877,894,13,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1878,894,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1879,895,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1880,895,5,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1881,896,12,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1882,896,13,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1883,896,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1884,897,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1885,897,21,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1886,898,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1887,899,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1888,900,9,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1889,900,1,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1890,900,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1891,900,17,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1892,901,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1893,902,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1894,903,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1895,904,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1896,904,19,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1897,905,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1898,906,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1899,907,12,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1900,907,13,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1901,907,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1902,908,11,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1903,908,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1904,908,25,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1905,909,15,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1906,909,11,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1907,909,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1908,910,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1909,911,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1910,912,12,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1911,912,6,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1912,912,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1913,913,12,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1914,913,27,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1915,914,1,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1916,914,2,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1917,914,3,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1918,915,9,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1919,915,1,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1920,915,17,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1921,916,4,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1922,917,25,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1923,918,4,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1924,919,11,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1925,919,22,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1926,919,24,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1927,920,6,'2016-07-15 08:37:24','2016-07-15 08:37:24'),(1928,921,17,'2016-07-15 08:37:25','2016-07-15 08:37:25'),(1929,922,4,'2016-07-15 08:37:25','2016-07-15 08:37:25'),(1930,922,20,'2016-07-15 08:37:25','2016-07-15 08:37:25'),(1931,923,19,'2016-07-15 08:37:25','2016-07-15 08:37:25'),(1932,924,9,'2016-07-15 08:37:25','2016-07-15 08:37:25'),(1933,924,1,'2016-07-15 08:37:25','2016-07-15 08:37:25'),(1934,924,17,'2016-07-15 08:37:25','2016-07-15 08:37:25'),(1935,925,6,'2016-07-15 08:37:25','2016-07-15 08:37:25'),(1936,926,13,'2016-07-15 08:37:25','2016-07-15 08:37:25');
/*!40000 ALTER TABLE `tbltld_category_pivot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltlds`
--

DROP TABLE IF EXISTS `tbltlds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltlds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tld` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltlds`
--

LOCK TABLES `tbltlds` WRITE;
/*!40000 ALTER TABLE `tbltlds` DISABLE KEYS */;
INSERT INTO `tbltlds` VALUES (1,'aaa.pro','2016-07-15 08:37:07','2016-07-15 08:37:07'),(2,'ab.ca','2016-07-15 08:37:07','2016-07-15 08:37:07'),(3,'abogado','2016-07-15 08:37:07','2016-07-15 08:37:07'),(4,'abudhabi','2016-07-15 08:37:08','2016-07-15 08:37:08'),(5,'ac','2016-07-15 08:37:08','2016-07-15 08:37:08'),(6,'aca.pro','2016-07-15 08:37:08','2016-07-15 08:37:08'),(7,'academy','2016-07-15 08:37:08','2016-07-15 08:37:08'),(8,'accountant','2016-07-15 08:37:08','2016-07-15 08:37:08'),(9,'accountants','2016-07-15 08:37:08','2016-07-15 08:37:08'),(10,'acct.pro','2016-07-15 08:37:08','2016-07-15 08:37:08'),(11,'aco','2016-07-15 08:37:08','2016-07-15 08:37:08'),(12,'active','2016-07-15 08:37:08','2016-07-15 08:37:08'),(13,'actor','2016-07-15 08:37:08','2016-07-15 08:37:08'),(14,'adac','2016-07-15 08:37:08','2016-07-15 08:37:08'),(15,'ads','2016-07-15 08:37:08','2016-07-15 08:37:08'),(16,'adult','2016-07-15 08:37:08','2016-07-15 08:37:08'),(17,'ae.org','2016-07-15 08:37:08','2016-07-15 08:37:08'),(18,'africa','2016-07-15 08:37:08','2016-07-15 08:37:08'),(19,'ag','2016-07-15 08:37:08','2016-07-15 08:37:08'),(20,'agency','2016-07-15 08:37:08','2016-07-15 08:37:08'),(21,'ah.cn','2016-07-15 08:37:08','2016-07-15 08:37:08'),(22,'airforce','2016-07-15 08:37:08','2016-07-15 08:37:08'),(23,'alsace','2016-07-15 08:37:08','2016-07-15 08:37:08'),(24,'am','2016-07-15 08:37:08','2016-07-15 08:37:08'),(25,'amsterdam','2016-07-15 08:37:08','2016-07-15 08:37:08'),(26,'analytics','2016-07-15 08:37:08','2016-07-15 08:37:08'),(27,'and','2016-07-15 08:37:08','2016-07-15 08:37:08'),(28,'apartments','2016-07-15 08:37:08','2016-07-15 08:37:08'),(29,'app','2016-07-15 08:37:08','2016-07-15 08:37:08'),(30,'aquitaine','2016-07-15 08:37:08','2016-07-15 08:37:08'),(31,'ar.com','2016-07-15 08:37:08','2016-07-15 08:37:08'),(32,'arab','2016-07-15 08:37:08','2016-07-15 08:37:08'),(33,'archi','2016-07-15 08:37:08','2016-07-15 08:37:08'),(34,'architect','2016-07-15 08:37:08','2016-07-15 08:37:08'),(35,'are','2016-07-15 08:37:08','2016-07-15 08:37:08'),(36,'army','2016-07-15 08:37:08','2016-07-15 08:37:08'),(37,'art','2016-07-15 08:37:08','2016-07-15 08:37:08'),(38,'asia','2016-07-15 08:37:08','2016-07-15 08:37:08'),(39,'associates','2016-07-15 08:37:08','2016-07-15 08:37:08'),(40,'at','2016-07-15 08:37:08','2016-07-15 08:37:08'),(41,'attorney','2016-07-15 08:37:08','2016-07-15 08:37:08'),(42,'au','2016-07-15 08:37:08','2016-07-15 08:37:08'),(43,'auction','2016-07-15 08:37:08','2016-07-15 08:37:08'),(44,'audi','2016-07-15 08:37:08','2016-07-15 08:37:08'),(45,'audible','2016-07-15 08:37:08','2016-07-15 08:37:08'),(46,'audio','2016-07-15 08:37:08','2016-07-15 08:37:08'),(47,'auto','2016-07-15 08:37:08','2016-07-15 08:37:08'),(48,'autos','2016-07-15 08:37:08','2016-07-15 08:37:08'),(49,'avocat.pro','2016-07-15 08:37:08','2016-07-15 08:37:08'),(50,'baby','2016-07-15 08:37:08','2016-07-15 08:37:08'),(51,'band','2016-07-15 08:37:08','2016-07-15 08:37:08'),(52,'bank','2016-07-15 08:37:08','2016-07-15 08:37:08'),(53,'banque','2016-07-15 08:37:08','2016-07-15 08:37:08'),(54,'bar','2016-07-15 08:37:08','2016-07-15 08:37:08'),(55,'bar.pro','2016-07-15 08:37:08','2016-07-15 08:37:08'),(56,'barcelona','2016-07-15 08:37:08','2016-07-15 08:37:08'),(57,'bargains','2016-07-15 08:37:08','2016-07-15 08:37:08'),(58,'baseball','2016-07-15 08:37:08','2016-07-15 08:37:08'),(59,'basketball','2016-07-15 08:37:09','2016-07-15 08:37:09'),(60,'bauhaus','2016-07-15 08:37:09','2016-07-15 08:37:09'),(61,'bayern','2016-07-15 08:37:09','2016-07-15 08:37:09'),(62,'bbb','2016-07-15 08:37:09','2016-07-15 08:37:09'),(63,'bc.ca','2016-07-15 08:37:09','2016-07-15 08:37:09'),(64,'be','2016-07-15 08:37:09','2016-07-15 08:37:09'),(65,'beauty','2016-07-15 08:37:09','2016-07-15 08:37:09'),(66,'beer','2016-07-15 08:37:09','2016-07-15 08:37:09'),(67,'beknown','2016-07-15 08:37:09','2016-07-15 08:37:09'),(68,'berlin','2016-07-15 08:37:09','2016-07-15 08:37:09'),(69,'best','2016-07-15 08:37:09','2016-07-15 08:37:09'),(70,'bet','2016-07-15 08:37:09','2016-07-15 08:37:09'),(71,'bible','2016-07-15 08:37:09','2016-07-15 08:37:09'),(72,'bid','2016-07-15 08:37:09','2016-07-15 08:37:09'),(73,'bike','2016-07-15 08:37:09','2016-07-15 08:37:09'),(74,'bingo','2016-07-15 08:37:09','2016-07-15 08:37:09'),(75,'bio','2016-07-15 08:37:09','2016-07-15 08:37:09'),(76,'biz','2016-07-15 08:37:09','2016-07-15 08:37:09'),(77,'bj.cn','2016-07-15 08:37:09','2016-07-15 08:37:09'),(78,'black','2016-07-15 08:37:09','2016-07-15 08:37:09'),(79,'blackfriday','2016-07-15 08:37:09','2016-07-15 08:37:09'),(80,'blog','2016-07-15 08:37:09','2016-07-15 08:37:09'),(81,'blue','2016-07-15 08:37:09','2016-07-15 08:37:09'),(82,'boats','2016-07-15 08:37:09','2016-07-15 08:37:09'),(83,'bond','2016-07-15 08:37:09','2016-07-15 08:37:09'),(84,'boo','2016-07-15 08:37:09','2016-07-15 08:37:09'),(85,'book','2016-07-15 08:37:09','2016-07-15 08:37:09'),(86,'booking','2016-07-15 08:37:09','2016-07-15 08:37:09'),(87,'boston','2016-07-15 08:37:09','2016-07-15 08:37:09'),(88,'boutique','2016-07-15 08:37:09','2016-07-15 08:37:09'),(89,'box','2016-07-15 08:37:09','2016-07-15 08:37:09'),(90,'br.com','2016-07-15 08:37:09','2016-07-15 08:37:09'),(91,'broadway','2016-07-15 08:37:09','2016-07-15 08:37:09'),(92,'broker','2016-07-15 08:37:09','2016-07-15 08:37:09'),(93,'brother','2016-07-15 08:37:09','2016-07-15 08:37:09'),(94,'brussels','2016-07-15 08:37:09','2016-07-15 08:37:09'),(95,'budapest','2016-07-15 08:37:09','2016-07-15 08:37:09'),(96,'bugatti','2016-07-15 08:37:09','2016-07-15 08:37:09'),(97,'build','2016-07-15 08:37:09','2016-07-15 08:37:09'),(98,'builders','2016-07-15 08:37:09','2016-07-15 08:37:09'),(99,'business','2016-07-15 08:37:09','2016-07-15 08:37:09'),(100,'buy','2016-07-15 08:37:09','2016-07-15 08:37:09'),(101,'buzz','2016-07-15 08:37:09','2016-07-15 08:37:09'),(102,'bway','2016-07-15 08:37:09','2016-07-15 08:37:09'),(103,'bz','2016-07-15 08:37:09','2016-07-15 08:37:09'),(104,'bzh','2016-07-15 08:37:09','2016-07-15 08:37:09'),(105,'ca','2016-07-15 08:37:09','2016-07-15 08:37:09'),(106,'cab','2016-07-15 08:37:09','2016-07-15 08:37:09'),(107,'cafe','2016-07-15 08:37:09','2016-07-15 08:37:09'),(108,'cam','2016-07-15 08:37:09','2016-07-15 08:37:09'),(109,'camera','2016-07-15 08:37:10','2016-07-15 08:37:10'),(110,'camp','2016-07-15 08:37:10','2016-07-15 08:37:10'),(111,'capetown','2016-07-15 08:37:10','2016-07-15 08:37:10'),(112,'capital','2016-07-15 08:37:10','2016-07-15 08:37:10'),(113,'car','2016-07-15 08:37:10','2016-07-15 08:37:10'),(114,'cards','2016-07-15 08:37:10','2016-07-15 08:37:10'),(115,'care','2016-07-15 08:37:10','2016-07-15 08:37:10'),(116,'career','2016-07-15 08:37:10','2016-07-15 08:37:10'),(117,'careers','2016-07-15 08:37:10','2016-07-15 08:37:10'),(118,'cars','2016-07-15 08:37:10','2016-07-15 08:37:10'),(119,'casa','2016-07-15 08:37:10','2016-07-15 08:37:10'),(120,'cash','2016-07-15 08:37:10','2016-07-15 08:37:10'),(121,'casino','2016-07-15 08:37:10','2016-07-15 08:37:10'),(122,'catalonia','2016-07-15 08:37:10','2016-07-15 08:37:10'),(123,'catering','2016-07-15 08:37:10','2016-07-15 08:37:10'),(124,'catholic','2016-07-15 08:37:10','2016-07-15 08:37:10'),(125,'cc','2016-07-15 08:37:10','2016-07-15 08:37:10'),(126,'center','2016-07-15 08:37:10','2016-07-15 08:37:10'),(127,'ceo','2016-07-15 08:37:10','2016-07-15 08:37:10'),(128,'cfd','2016-07-15 08:37:10','2016-07-15 08:37:10'),(129,'ch','2016-07-15 08:37:10','2016-07-15 08:37:10'),(130,'charity','2016-07-15 08:37:10','2016-07-15 08:37:10'),(131,'chat','2016-07-15 08:37:10','2016-07-15 08:37:10'),(132,'cheap','2016-07-15 08:37:10','2016-07-15 08:37:10'),(133,'chesapeake','2016-07-15 08:37:10','2016-07-15 08:37:10'),(134,'chk','2016-07-15 08:37:10','2016-07-15 08:37:10'),(135,'christmas','2016-07-15 08:37:10','2016-07-15 08:37:10'),(136,'church','2016-07-15 08:37:10','2016-07-15 08:37:10'),(137,'city','2016-07-15 08:37:10','2016-07-15 08:37:10'),(138,'cityeats','2016-07-15 08:37:10','2016-07-15 08:37:10'),(139,'claims','2016-07-15 08:37:10','2016-07-15 08:37:10'),(140,'cleaning','2016-07-15 08:37:10','2016-07-15 08:37:10'),(141,'click','2016-07-15 08:37:10','2016-07-15 08:37:10'),(142,'clinic','2016-07-15 08:37:10','2016-07-15 08:37:10'),(143,'clothing','2016-07-15 08:37:10','2016-07-15 08:37:10'),(144,'cloud','2016-07-15 08:37:10','2016-07-15 08:37:10'),(145,'club','2016-07-15 08:37:10','2016-07-15 08:37:10'),(146,'cm','2016-07-15 08:37:10','2016-07-15 08:37:10'),(147,'cn','2016-07-15 08:37:10','2016-07-15 08:37:10'),(148,'cn.com','2016-07-15 08:37:10','2016-07-15 08:37:10'),(149,'co','2016-07-15 08:37:10','2016-07-15 08:37:10'),(150,'co.com','2016-07-15 08:37:10','2016-07-15 08:37:10'),(151,'co.in','2016-07-15 08:37:10','2016-07-15 08:37:10'),(152,'co.nz','2016-07-15 08:37:10','2016-07-15 08:37:10'),(153,'co.uk','2016-07-15 08:37:10','2016-07-15 08:37:10'),(154,'coach','2016-07-15 08:37:10','2016-07-15 08:37:10'),(155,'codes','2016-07-15 08:37:10','2016-07-15 08:37:10'),(156,'coffee','2016-07-15 08:37:11','2016-07-15 08:37:11'),(157,'college','2016-07-15 08:37:11','2016-07-15 08:37:11'),(158,'cologne','2016-07-15 08:37:11','2016-07-15 08:37:11'),(159,'com','2016-07-15 08:37:11','2016-07-15 08:37:11'),(160,'com.ag','2016-07-15 08:37:11','2016-07-15 08:37:11'),(161,'com.au','2016-07-15 08:37:11','2016-07-15 08:37:11'),(162,'com.cn','2016-07-15 08:37:11','2016-07-15 08:37:11'),(163,'com.co','2016-07-15 08:37:11','2016-07-15 08:37:11'),(164,'com.de','2016-07-15 08:37:11','2016-07-15 08:37:11'),(165,'com.es','2016-07-15 08:37:11','2016-07-15 08:37:11'),(166,'com.mx','2016-07-15 08:37:11','2016-07-15 08:37:11'),(167,'com.pe','2016-07-15 08:37:11','2016-07-15 08:37:11'),(168,'com.pl','2016-07-15 08:37:11','2016-07-15 08:37:11'),(169,'com.sc','2016-07-15 08:37:11','2016-07-15 08:37:11'),(170,'com.sg','2016-07-15 08:37:11','2016-07-15 08:37:11'),(171,'com.tw','2016-07-15 08:37:11','2016-07-15 08:37:11'),(172,'community','2016-07-15 08:37:11','2016-07-15 08:37:11'),(173,'company','2016-07-15 08:37:11','2016-07-15 08:37:11'),(174,'compare','2016-07-15 08:37:11','2016-07-15 08:37:11'),(175,'computer','2016-07-15 08:37:11','2016-07-15 08:37:11'),(176,'comsec','2016-07-15 08:37:11','2016-07-15 08:37:11'),(177,'condos','2016-07-15 08:37:11','2016-07-15 08:37:11'),(178,'construction','2016-07-15 08:37:11','2016-07-15 08:37:11'),(179,'consulting','2016-07-15 08:37:11','2016-07-15 08:37:11'),(180,'contact','2016-07-15 08:37:11','2016-07-15 08:37:11'),(181,'contractors','2016-07-15 08:37:11','2016-07-15 08:37:11'),(182,'cooking','2016-07-15 08:37:11','2016-07-15 08:37:11'),(183,'cookingchannel','2016-07-15 08:37:11','2016-07-15 08:37:11'),(184,'cool','2016-07-15 08:37:11','2016-07-15 08:37:11'),(185,'corp','2016-07-15 08:37:11','2016-07-15 08:37:11'),(186,'corsica','2016-07-15 08:37:11','2016-07-15 08:37:11'),(187,'country','2016-07-15 08:37:11','2016-07-15 08:37:11'),(188,'coupon','2016-07-15 08:37:11','2016-07-15 08:37:11'),(189,'coupons','2016-07-15 08:37:11','2016-07-15 08:37:11'),(190,'courses','2016-07-15 08:37:11','2016-07-15 08:37:11'),(191,'cpa','2016-07-15 08:37:11','2016-07-15 08:37:11'),(192,'cpa.pro','2016-07-15 08:37:11','2016-07-15 08:37:11'),(193,'cq.cn','2016-07-15 08:37:11','2016-07-15 08:37:11'),(194,'credit','2016-07-15 08:37:11','2016-07-15 08:37:11'),(195,'creditcard','2016-07-15 08:37:11','2016-07-15 08:37:11'),(196,'creditunion','2016-07-15 08:37:11','2016-07-15 08:37:11'),(197,'cricket','2016-07-15 08:37:11','2016-07-15 08:37:11'),(198,'cruise','2016-07-15 08:37:11','2016-07-15 08:37:11'),(199,'cruises','2016-07-15 08:37:11','2016-07-15 08:37:11'),(200,'cymru','2016-07-15 08:37:11','2016-07-15 08:37:11'),(201,'cyou','2016-07-15 08:37:11','2016-07-15 08:37:11'),(202,'dad','2016-07-15 08:37:11','2016-07-15 08:37:11'),(203,'dance','2016-07-15 08:37:11','2016-07-15 08:37:11'),(204,'data','2016-07-15 08:37:11','2016-07-15 08:37:11'),(205,'date','2016-07-15 08:37:11','2016-07-15 08:37:11'),(206,'dating','2016-07-15 08:37:11','2016-07-15 08:37:11'),(207,'day','2016-07-15 08:37:12','2016-07-15 08:37:12'),(208,'dds','2016-07-15 08:37:12','2016-07-15 08:37:12'),(209,'de','2016-07-15 08:37:12','2016-07-15 08:37:12'),(210,'de.com','2016-07-15 08:37:12','2016-07-15 08:37:12'),(211,'deal','2016-07-15 08:37:12','2016-07-15 08:37:12'),(212,'deals','2016-07-15 08:37:12','2016-07-15 08:37:12'),(213,'degree','2016-07-15 08:37:12','2016-07-15 08:37:12'),(214,'delivery','2016-07-15 08:37:12','2016-07-15 08:37:12'),(215,'democrat','2016-07-15 08:37:12','2016-07-15 08:37:12'),(216,'dental','2016-07-15 08:37:12','2016-07-15 08:37:12'),(217,'dentist','2016-07-15 08:37:12','2016-07-15 08:37:12'),(218,'desi','2016-07-15 08:37:12','2016-07-15 08:37:12'),(219,'design','2016-07-15 08:37:12','2016-07-15 08:37:12'),(220,'diamonds','2016-07-15 08:37:12','2016-07-15 08:37:12'),(221,'diet','2016-07-15 08:37:12','2016-07-15 08:37:12'),(222,'digital','2016-07-15 08:37:12','2016-07-15 08:37:12'),(223,'direct','2016-07-15 08:37:12','2016-07-15 08:37:12'),(224,'directory','2016-07-15 08:37:12','2016-07-15 08:37:12'),(225,'discount','2016-07-15 08:37:12','2016-07-15 08:37:12'),(226,'diy','2016-07-15 08:37:12','2016-07-15 08:37:12'),(227,'docs','2016-07-15 08:37:12','2016-07-15 08:37:12'),(228,'doctor','2016-07-15 08:37:12','2016-07-15 08:37:12'),(229,'dog','2016-07-15 08:37:12','2016-07-15 08:37:12'),(230,'doha','2016-07-15 08:37:12','2016-07-15 08:37:12'),(231,'domains','2016-07-15 08:37:12','2016-07-15 08:37:12'),(232,'dot','2016-07-15 08:37:12','2016-07-15 08:37:12'),(233,'dotafrica','2016-07-15 08:37:12','2016-07-15 08:37:12'),(234,'download','2016-07-15 08:37:12','2016-07-15 08:37:12'),(235,'dubai','2016-07-15 08:37:12','2016-07-15 08:37:12'),(236,'durban','2016-07-15 08:37:12','2016-07-15 08:37:12'),(237,'dvr','2016-07-15 08:37:12','2016-07-15 08:37:12'),(238,'earth','2016-07-15 08:37:12','2016-07-15 08:37:12'),(239,'eat','2016-07-15 08:37:12','2016-07-15 08:37:12'),(240,'eco','2016-07-15 08:37:12','2016-07-15 08:37:12'),(241,'ecom','2016-07-15 08:37:12','2016-07-15 08:37:12'),(242,'edeka','2016-07-15 08:37:12','2016-07-15 08:37:12'),(243,'education','2016-07-15 08:37:12','2016-07-15 08:37:12'),(244,'email','2016-07-15 08:37:12','2016-07-15 08:37:12'),(245,'energy','2016-07-15 08:37:12','2016-07-15 08:37:12'),(246,'eng.pro','2016-07-15 08:37:12','2016-07-15 08:37:12'),(247,'engineer','2016-07-15 08:37:12','2016-07-15 08:37:12'),(248,'engineering','2016-07-15 08:37:12','2016-07-15 08:37:12'),(249,'enterprises','2016-07-15 08:37:12','2016-07-15 08:37:12'),(250,'epost','2016-07-15 08:37:12','2016-07-15 08:37:12'),(251,'equipment','2016-07-15 08:37:12','2016-07-15 08:37:12'),(252,'es','2016-07-15 08:37:12','2016-07-15 08:37:12'),(253,'esq','2016-07-15 08:37:12','2016-07-15 08:37:12'),(254,'est','2016-07-15 08:37:12','2016-07-15 08:37:12'),(255,'estate','2016-07-15 08:37:12','2016-07-15 08:37:12'),(256,'eu','2016-07-15 08:37:12','2016-07-15 08:37:12'),(257,'eu.com','2016-07-15 08:37:12','2016-07-15 08:37:12'),(258,'eus','2016-07-15 08:37:12','2016-07-15 08:37:12'),(259,'events','2016-07-15 08:37:12','2016-07-15 08:37:12'),(260,'exchange','2016-07-15 08:37:13','2016-07-15 08:37:13'),(261,'expert','2016-07-15 08:37:13','2016-07-15 08:37:13'),(262,'exposed','2016-07-15 08:37:13','2016-07-15 08:37:13'),(263,'express','2016-07-15 08:37:13','2016-07-15 08:37:13'),(264,'fail','2016-07-15 08:37:13','2016-07-15 08:37:13'),(265,'faith','2016-07-15 08:37:13','2016-07-15 08:37:13'),(266,'family','2016-07-15 08:37:13','2016-07-15 08:37:13'),(267,'fan','2016-07-15 08:37:13','2016-07-15 08:37:13'),(268,'fans','2016-07-15 08:37:13','2016-07-15 08:37:13'),(269,'farm','2016-07-15 08:37:13','2016-07-15 08:37:13'),(270,'fashion','2016-07-15 08:37:13','2016-07-15 08:37:13'),(271,'feedback','2016-07-15 08:37:13','2016-07-15 08:37:13'),(272,'film','2016-07-15 08:37:13','2016-07-15 08:37:13'),(273,'final','2016-07-15 08:37:13','2016-07-15 08:37:13'),(274,'finance','2016-07-15 08:37:13','2016-07-15 08:37:13'),(275,'financial','2016-07-15 08:37:13','2016-07-15 08:37:13'),(276,'financialaid','2016-07-15 08:37:13','2016-07-15 08:37:13'),(277,'firm.in','2016-07-15 08:37:13','2016-07-15 08:37:13'),(278,'fish','2016-07-15 08:37:13','2016-07-15 08:37:13'),(279,'fishing','2016-07-15 08:37:13','2016-07-15 08:37:13'),(280,'fit','2016-07-15 08:37:13','2016-07-15 08:37:13'),(281,'fitness','2016-07-15 08:37:13','2016-07-15 08:37:13'),(282,'fj.cn','2016-07-15 08:37:13','2016-07-15 08:37:13'),(283,'flights','2016-07-15 08:37:13','2016-07-15 08:37:13'),(284,'florist','2016-07-15 08:37:13','2016-07-15 08:37:13'),(285,'flowers','2016-07-15 08:37:13','2016-07-15 08:37:13'),(286,'fly','2016-07-15 08:37:13','2016-07-15 08:37:13'),(287,'fm','2016-07-15 08:37:13','2016-07-15 08:37:13'),(288,'foo','2016-07-15 08:37:13','2016-07-15 08:37:13'),(289,'food','2016-07-15 08:37:13','2016-07-15 08:37:13'),(290,'football','2016-07-15 08:37:13','2016-07-15 08:37:13'),(291,'forsale','2016-07-15 08:37:13','2016-07-15 08:37:13'),(292,'forum','2016-07-15 08:37:13','2016-07-15 08:37:13'),(293,'foundation','2016-07-15 08:37:13','2016-07-15 08:37:13'),(294,'fr','2016-07-15 08:37:13','2016-07-15 08:37:13'),(295,'free','2016-07-15 08:37:13','2016-07-15 08:37:13'),(296,'frl','2016-07-15 08:37:13','2016-07-15 08:37:13'),(297,'fun','2016-07-15 08:37:13','2016-07-15 08:37:13'),(298,'fund','2016-07-15 08:37:13','2016-07-15 08:37:13'),(299,'furniture','2016-07-15 08:37:13','2016-07-15 08:37:13'),(300,'futbol','2016-07-15 08:37:13','2016-07-15 08:37:13'),(301,'fyi','2016-07-15 08:37:13','2016-07-15 08:37:13'),(302,'gal','2016-07-15 08:37:13','2016-07-15 08:37:13'),(303,'gallery','2016-07-15 08:37:13','2016-07-15 08:37:13'),(304,'game','2016-07-15 08:37:13','2016-07-15 08:37:13'),(305,'games','2016-07-15 08:37:13','2016-07-15 08:37:13'),(306,'garden','2016-07-15 08:37:13','2016-07-15 08:37:13'),(307,'gay','2016-07-15 08:37:13','2016-07-15 08:37:13'),(308,'gb.com','2016-07-15 08:37:13','2016-07-15 08:37:13'),(309,'gb.net','2016-07-15 08:37:13','2016-07-15 08:37:13'),(310,'gd.cn','2016-07-15 08:37:13','2016-07-15 08:37:13'),(311,'gea','2016-07-15 08:37:13','2016-07-15 08:37:13'),(312,'gen.in','2016-07-15 08:37:13','2016-07-15 08:37:13'),(313,'gent','2016-07-15 08:37:13','2016-07-15 08:37:13'),(314,'gift','2016-07-15 08:37:13','2016-07-15 08:37:13'),(315,'gifts','2016-07-15 08:37:13','2016-07-15 08:37:13'),(316,'gives','2016-07-15 08:37:14','2016-07-15 08:37:14'),(317,'giving','2016-07-15 08:37:14','2016-07-15 08:37:14'),(318,'glass','2016-07-15 08:37:14','2016-07-15 08:37:14'),(319,'glean','2016-07-15 08:37:14','2016-07-15 08:37:14'),(320,'global','2016-07-15 08:37:14','2016-07-15 08:37:14'),(321,'gmbh','2016-07-15 08:37:14','2016-07-15 08:37:14'),(322,'gold','2016-07-15 08:37:14','2016-07-15 08:37:14'),(323,'golf','2016-07-15 08:37:14','2016-07-15 08:37:14'),(324,'goo','2016-07-15 08:37:14','2016-07-15 08:37:14'),(325,'gop','2016-07-15 08:37:14','2016-07-15 08:37:14'),(326,'gr.com','2016-07-15 08:37:14','2016-07-15 08:37:14'),(327,'graphics','2016-07-15 08:37:14','2016-07-15 08:37:14'),(328,'gratis','2016-07-15 08:37:14','2016-07-15 08:37:14'),(329,'gree','2016-07-15 08:37:14','2016-07-15 08:37:14'),(330,'green','2016-07-15 08:37:14','2016-07-15 08:37:14'),(331,'gripe','2016-07-15 08:37:14','2016-07-15 08:37:14'),(332,'grocery','2016-07-15 08:37:14','2016-07-15 08:37:14'),(333,'group','2016-07-15 08:37:14','2016-07-15 08:37:14'),(334,'gs','2016-07-15 08:37:14','2016-07-15 08:37:14'),(335,'gs.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(336,'guide','2016-07-15 08:37:14','2016-07-15 08:37:14'),(337,'guitars','2016-07-15 08:37:14','2016-07-15 08:37:14'),(338,'guru','2016-07-15 08:37:14','2016-07-15 08:37:14'),(339,'gx.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(340,'gz.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(341,'ha.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(342,'hair','2016-07-15 08:37:14','2016-07-15 08:37:14'),(343,'halal','2016-07-15 08:37:14','2016-07-15 08:37:14'),(344,'hamburg','2016-07-15 08:37:14','2016-07-15 08:37:14'),(345,'haus','2016-07-15 08:37:14','2016-07-15 08:37:14'),(346,'hb.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(347,'he.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(348,'health','2016-07-15 08:37:14','2016-07-15 08:37:14'),(349,'healthcare','2016-07-15 08:37:14','2016-07-15 08:37:14'),(350,'heart','2016-07-15 08:37:14','2016-07-15 08:37:14'),(351,'help','2016-07-15 08:37:14','2016-07-15 08:37:14'),(352,'helsinki','2016-07-15 08:37:14','2016-07-15 08:37:14'),(353,'here','2016-07-15 08:37:14','2016-07-15 08:37:14'),(354,'hi.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(355,'hiphop','2016-07-15 08:37:14','2016-07-15 08:37:14'),(356,'hiv','2016-07-15 08:37:14','2016-07-15 08:37:14'),(357,'hk.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(358,'hl.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(359,'hn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(360,'hn.cn','2016-07-15 08:37:14','2016-07-15 08:37:14'),(361,'hockey','2016-07-15 08:37:14','2016-07-15 08:37:14'),(362,'holdings','2016-07-15 08:37:14','2016-07-15 08:37:14'),(363,'holiday','2016-07-15 08:37:14','2016-07-15 08:37:14'),(364,'home','2016-07-15 08:37:14','2016-07-15 08:37:14'),(365,'homes','2016-07-15 08:37:14','2016-07-15 08:37:14'),(366,'horse','2016-07-15 08:37:14','2016-07-15 08:37:14'),(367,'hospital','2016-07-15 08:37:14','2016-07-15 08:37:14'),(368,'host','2016-07-15 08:37:14','2016-07-15 08:37:14'),(369,'hosting','2016-07-15 08:37:14','2016-07-15 08:37:14'),(370,'hot','2016-07-15 08:37:14','2016-07-15 08:37:14'),(371,'hotel','2016-07-15 08:37:14','2016-07-15 08:37:14'),(372,'hotels','2016-07-15 08:37:14','2016-07-15 08:37:14'),(373,'house','2016-07-15 08:37:14','2016-07-15 08:37:14'),(374,'how','2016-07-15 08:37:14','2016-07-15 08:37:14'),(375,'hu.com','2016-07-15 08:37:14','2016-07-15 08:37:14'),(376,'icu','2016-07-15 08:37:14','2016-07-15 08:37:14'),(377,'idn','2016-07-15 08:37:15','2016-07-15 08:37:15'),(378,'idv.tw','2016-07-15 08:37:15','2016-07-15 08:37:15'),(379,'ieee','2016-07-15 08:37:15','2016-07-15 08:37:15'),(380,'ikano','2016-07-15 08:37:15','2016-07-15 08:37:15'),(381,'immo','2016-07-15 08:37:15','2016-07-15 08:37:15'),(382,'immobilien','2016-07-15 08:37:15','2016-07-15 08:37:15'),(383,'in','2016-07-15 08:37:15','2016-07-15 08:37:15'),(384,'inc','2016-07-15 08:37:15','2016-07-15 08:37:15'),(385,'ind.in','2016-07-15 08:37:15','2016-07-15 08:37:15'),(386,'indians','2016-07-15 08:37:15','2016-07-15 08:37:15'),(387,'industries','2016-07-15 08:37:15','2016-07-15 08:37:15'),(388,'info','2016-07-15 08:37:15','2016-07-15 08:37:15'),(389,'info.pl','2016-07-15 08:37:15','2016-07-15 08:37:15'),(390,'ing','2016-07-15 08:37:15','2016-07-15 08:37:15'),(391,'ink','2016-07-15 08:37:15','2016-07-15 08:37:15'),(392,'institute','2016-07-15 08:37:15','2016-07-15 08:37:15'),(393,'insurance','2016-07-15 08:37:15','2016-07-15 08:37:15'),(394,'insure','2016-07-15 08:37:15','2016-07-15 08:37:15'),(395,'international','2016-07-15 08:37:15','2016-07-15 08:37:15'),(396,'investments','2016-07-15 08:37:15','2016-07-15 08:37:15'),(397,'io','2016-07-15 08:37:15','2016-07-15 08:37:15'),(398,'ira','2016-07-15 08:37:15','2016-07-15 08:37:15'),(399,'irish','2016-07-15 08:37:15','2016-07-15 08:37:15'),(400,'islam','2016-07-15 08:37:15','2016-07-15 08:37:15'),(401,'ismaili','2016-07-15 08:37:15','2016-07-15 08:37:15'),(402,'ist','2016-07-15 08:37:15','2016-07-15 08:37:15'),(403,'istanbul','2016-07-15 08:37:15','2016-07-15 08:37:15'),(404,'it','2016-07-15 08:37:15','2016-07-15 08:37:15'),(405,'jetzt','2016-07-15 08:37:15','2016-07-15 08:37:15'),(406,'jewelry','2016-07-15 08:37:15','2016-07-15 08:37:15'),(407,'jobs','2016-07-15 08:37:15','2016-07-15 08:37:15'),(408,'joburg','2016-07-15 08:37:15','2016-07-15 08:37:15'),(409,'jp','2016-07-15 08:37:15','2016-07-15 08:37:15'),(410,'jpn.com','2016-07-15 08:37:15','2016-07-15 08:37:15'),(411,'js.cn','2016-07-15 08:37:15','2016-07-15 08:37:15'),(412,'juegos','2016-07-15 08:37:15','2016-07-15 08:37:15'),(413,'jur.pro','2016-07-15 08:37:15','2016-07-15 08:37:15'),(414,'justforu','2016-07-15 08:37:15','2016-07-15 08:37:15'),(415,'jx.cn','2016-07-15 08:37:15','2016-07-15 08:37:15'),(416,'kaufen','2016-07-15 08:37:15','2016-07-15 08:37:15'),(417,'kid','2016-07-15 08:37:15','2016-07-15 08:37:15'),(418,'kids','2016-07-15 08:37:15','2016-07-15 08:37:15'),(419,'kids.us','2016-07-15 08:37:15','2016-07-15 08:37:15'),(420,'kim','2016-07-15 08:37:15','2016-07-15 08:37:15'),(421,'kitchen','2016-07-15 08:37:15','2016-07-15 08:37:15'),(422,'kiwi','2016-07-15 08:37:15','2016-07-15 08:37:15'),(423,'koeln','2016-07-15 08:37:15','2016-07-15 08:37:15'),(424,'kosher','2016-07-15 08:37:15','2016-07-15 08:37:15'),(425,'kr.com','2016-07-15 08:37:15','2016-07-15 08:37:15'),(426,'kyoto','2016-07-15 08:37:15','2016-07-15 08:37:15'),(427,'la','2016-07-15 08:37:15','2016-07-15 08:37:15'),(428,'lamborghini','2016-07-15 08:37:15','2016-07-15 08:37:15'),(429,'land','2016-07-15 08:37:15','2016-07-15 08:37:15'),(430,'lat','2016-07-15 08:37:15','2016-07-15 08:37:15'),(431,'latino','2016-07-15 08:37:15','2016-07-15 08:37:15'),(432,'law','2016-07-15 08:37:15','2016-07-15 08:37:15'),(433,'law.pro','2016-07-15 08:37:15','2016-07-15 08:37:15'),(434,'lawyer','2016-07-15 08:37:15','2016-07-15 08:37:15'),(435,'lds','2016-07-15 08:37:15','2016-07-15 08:37:15'),(436,'lease','2016-07-15 08:37:15','2016-07-15 08:37:15'),(437,'leclerc','2016-07-15 08:37:16','2016-07-15 08:37:16'),(438,'legal','2016-07-15 08:37:16','2016-07-15 08:37:16'),(439,'lgbt','2016-07-15 08:37:16','2016-07-15 08:37:16'),(440,'li','2016-07-15 08:37:16','2016-07-15 08:37:16'),(441,'life','2016-07-15 08:37:16','2016-07-15 08:37:16'),(442,'lifeinsurance','2016-07-15 08:37:16','2016-07-15 08:37:16'),(443,'lifestyle','2016-07-15 08:37:16','2016-07-15 08:37:16'),(444,'lighting','2016-07-15 08:37:16','2016-07-15 08:37:16'),(445,'limited','2016-07-15 08:37:16','2016-07-15 08:37:16'),(446,'limo','2016-07-15 08:37:16','2016-07-15 08:37:16'),(447,'link','2016-07-15 08:37:16','2016-07-15 08:37:16'),(448,'live','2016-07-15 08:37:16','2016-07-15 08:37:16'),(449,'living','2016-07-15 08:37:16','2016-07-15 08:37:16'),(450,'llc','2016-07-15 08:37:16','2016-07-15 08:37:16'),(451,'llp','2016-07-15 08:37:16','2016-07-15 08:37:16'),(452,'ln.cn','2016-07-15 08:37:16','2016-07-15 08:37:16'),(453,'loan','2016-07-15 08:37:16','2016-07-15 08:37:16'),(454,'loans','2016-07-15 08:37:16','2016-07-15 08:37:16'),(455,'lol','2016-07-15 08:37:16','2016-07-15 08:37:16'),(456,'london','2016-07-15 08:37:16','2016-07-15 08:37:16'),(457,'lotto','2016-07-15 08:37:16','2016-07-15 08:37:16'),(458,'love','2016-07-15 08:37:16','2016-07-15 08:37:16'),(459,'ltd','2016-07-15 08:37:16','2016-07-15 08:37:16'),(460,'ltd.uk','2016-07-15 08:37:16','2016-07-15 08:37:16'),(461,'luxe','2016-07-15 08:37:16','2016-07-15 08:37:16'),(462,'luxury','2016-07-15 08:37:16','2016-07-15 08:37:16'),(463,'madrid','2016-07-15 08:37:16','2016-07-15 08:37:16'),(464,'mail','2016-07-15 08:37:16','2016-07-15 08:37:16'),(465,'maison','2016-07-15 08:37:16','2016-07-15 08:37:16'),(466,'management','2016-07-15 08:37:16','2016-07-15 08:37:16'),(467,'map','2016-07-15 08:37:16','2016-07-15 08:37:16'),(468,'market','2016-07-15 08:37:16','2016-07-15 08:37:16'),(469,'marketing','2016-07-15 08:37:16','2016-07-15 08:37:16'),(470,'markets','2016-07-15 08:37:16','2016-07-15 08:37:16'),(471,'mb.ca','2016-07-15 08:37:16','2016-07-15 08:37:16'),(472,'mba','2016-07-15 08:37:16','2016-07-15 08:37:16'),(473,'me','2016-07-15 08:37:16','2016-07-15 08:37:16'),(474,'me.uk','2016-07-15 08:37:16','2016-07-15 08:37:16'),(475,'med','2016-07-15 08:37:16','2016-07-15 08:37:16'),(476,'med.pro','2016-07-15 08:37:16','2016-07-15 08:37:16'),(477,'media','2016-07-15 08:37:16','2016-07-15 08:37:16'),(478,'medical','2016-07-15 08:37:16','2016-07-15 08:37:16'),(479,'meet','2016-07-15 08:37:16','2016-07-15 08:37:16'),(480,'melbourne','2016-07-15 08:37:16','2016-07-15 08:37:16'),(481,'meme','2016-07-15 08:37:16','2016-07-15 08:37:16'),(482,'memorial','2016-07-15 08:37:16','2016-07-15 08:37:16'),(483,'men','2016-07-15 08:37:16','2016-07-15 08:37:16'),(484,'menu','2016-07-15 08:37:16','2016-07-15 08:37:16'),(485,'merck','2016-07-15 08:37:16','2016-07-15 08:37:16'),(486,'miami','2016-07-15 08:37:16','2016-07-15 08:37:16'),(487,'mls','2016-07-15 08:37:16','2016-07-15 08:37:16'),(488,'mma','2016-07-15 08:37:16','2016-07-15 08:37:16'),(489,'mn','2016-07-15 08:37:16','2016-07-15 08:37:16'),(490,'mo.cn','2016-07-15 08:37:16','2016-07-15 08:37:16'),(491,'mobi','2016-07-15 08:37:16','2016-07-15 08:37:16'),(492,'mobile','2016-07-15 08:37:16','2016-07-15 08:37:16'),(493,'mobily','2016-07-15 08:37:16','2016-07-15 08:37:16'),(494,'moda','2016-07-15 08:37:17','2016-07-15 08:37:17'),(495,'moe','2016-07-15 08:37:17','2016-07-15 08:37:17'),(496,'mom','2016-07-15 08:37:17','2016-07-15 08:37:17'),(497,'money','2016-07-15 08:37:17','2016-07-15 08:37:17'),(498,'mormon','2016-07-15 08:37:17','2016-07-15 08:37:17'),(499,'mortgage','2016-07-15 08:37:17','2016-07-15 08:37:17'),(500,'moscow','2016-07-15 08:37:17','2016-07-15 08:37:17'),(501,'moto','2016-07-15 08:37:17','2016-07-15 08:37:17'),(502,'motorcycles','2016-07-15 08:37:17','2016-07-15 08:37:17'),(503,'mov','2016-07-15 08:37:17','2016-07-15 08:37:17'),(504,'movie','2016-07-15 08:37:17','2016-07-15 08:37:17'),(505,'mozaic','2016-07-15 08:37:17','2016-07-15 08:37:17'),(506,'ms','2016-07-15 08:37:17','2016-07-15 08:37:17'),(507,'msd','2016-07-15 08:37:17','2016-07-15 08:37:17'),(508,'music','2016-07-15 08:37:17','2016-07-15 08:37:17'),(509,'mutual','2016-07-15 08:37:17','2016-07-15 08:37:17'),(510,'mutualfunds','2016-07-15 08:37:17','2016-07-15 08:37:17'),(511,'nagoya','2016-07-15 08:37:17','2016-07-15 08:37:17'),(512,'name','2016-07-15 08:37:17','2016-07-15 08:37:17'),(513,'navy','2016-07-15 08:37:17','2016-07-15 08:37:17'),(514,'nb.ca','2016-07-15 08:37:17','2016-07-15 08:37:17'),(515,'nba','2016-07-15 08:37:17','2016-07-15 08:37:17'),(516,'net','2016-07-15 08:37:17','2016-07-15 08:37:17'),(517,'net.ag','2016-07-15 08:37:17','2016-07-15 08:37:17'),(518,'net.au','2016-07-15 08:37:17','2016-07-15 08:37:17'),(519,'net.cn','2016-07-15 08:37:17','2016-07-15 08:37:17'),(520,'net.co','2016-07-15 08:37:17','2016-07-15 08:37:17'),(521,'net.in','2016-07-15 08:37:17','2016-07-15 08:37:17'),(522,'net.nz','2016-07-15 08:37:17','2016-07-15 08:37:17'),(523,'net.pe','2016-07-15 08:37:17','2016-07-15 08:37:17'),(524,'net.pl','2016-07-15 08:37:17','2016-07-15 08:37:17'),(525,'net.sc','2016-07-15 08:37:17','2016-07-15 08:37:17'),(526,'network','2016-07-15 08:37:17','2016-07-15 08:37:17'),(527,'new','2016-07-15 08:37:17','2016-07-15 08:37:17'),(528,'news','2016-07-15 08:37:17','2016-07-15 08:37:17'),(529,'nf.ca','2016-07-15 08:37:17','2016-07-15 08:37:17'),(530,'ngo','2016-07-15 08:37:17','2016-07-15 08:37:17'),(531,'ninja','2016-07-15 08:37:17','2016-07-15 08:37:17'),(532,'nl','2016-07-15 08:37:17','2016-07-15 08:37:17'),(533,'nl.ca','2016-07-15 08:37:17','2016-07-15 08:37:17'),(534,'nm.cn','2016-07-15 08:37:17','2016-07-15 08:37:17'),(535,'no.com','2016-07-15 08:37:17','2016-07-15 08:37:17'),(536,'nom.co','2016-07-15 08:37:17','2016-07-15 08:37:17'),(537,'nom.es','2016-07-15 08:37:17','2016-07-15 08:37:17'),(538,'nom.pe','2016-07-15 08:37:17','2016-07-15 08:37:17'),(539,'notes:','2016-07-15 08:37:17','2016-07-15 08:37:17'),(540,'now','2016-07-15 08:37:17','2016-07-15 08:37:17'),(541,'nowruz','2016-07-15 08:37:17','2016-07-15 08:37:17'),(542,'nrw','2016-07-15 08:37:17','2016-07-15 08:37:17'),(543,'ns.ca','2016-07-15 08:37:17','2016-07-15 08:37:17'),(544,'nt.ca','2016-07-15 08:37:17','2016-07-15 08:37:17'),(545,'nu','2016-07-15 08:37:17','2016-07-15 08:37:17'),(546,'nu.ca','2016-07-15 08:37:17','2016-07-15 08:37:17'),(547,'nx.cn','2016-07-15 08:37:17','2016-07-15 08:37:17'),(548,'nyc','2016-07-15 08:37:17','2016-07-15 08:37:17'),(549,'okinawa','2016-07-15 08:37:17','2016-07-15 08:37:17'),(550,'on.ca','2016-07-15 08:37:17','2016-07-15 08:37:17'),(551,'one','2016-07-15 08:37:17','2016-07-15 08:37:17'),(552,'ong','2016-07-15 08:37:18','2016-07-15 08:37:18'),(553,'onl','2016-07-15 08:37:18','2016-07-15 08:37:18'),(554,'online','2016-07-15 08:37:18','2016-07-15 08:37:18'),(555,'ooo','2016-07-15 08:37:18','2016-07-15 08:37:18'),(556,'org','2016-07-15 08:37:18','2016-07-15 08:37:18'),(557,'org.ag','2016-07-15 08:37:18','2016-07-15 08:37:18'),(558,'org.au','2016-07-15 08:37:18','2016-07-15 08:37:18'),(559,'org.cn','2016-07-15 08:37:18','2016-07-15 08:37:18'),(560,'org.es','2016-07-15 08:37:18','2016-07-15 08:37:18'),(561,'org.in','2016-07-15 08:37:18','2016-07-15 08:37:18'),(562,'org.nz','2016-07-15 08:37:18','2016-07-15 08:37:18'),(563,'org.pe','2016-07-15 08:37:18','2016-07-15 08:37:18'),(564,'org.pl','2016-07-15 08:37:18','2016-07-15 08:37:18'),(565,'org.sc','2016-07-15 08:37:18','2016-07-15 08:37:18'),(566,'org.tw','2016-07-15 08:37:18','2016-07-15 08:37:18'),(567,'org.uk','2016-07-15 08:37:18','2016-07-15 08:37:18'),(568,'organic','2016-07-15 08:37:18','2016-07-15 08:37:18'),(569,'origins','2016-07-15 08:37:18','2016-07-15 08:37:18'),(570,'osaka','2016-07-15 08:37:18','2016-07-15 08:37:18'),(571,'ovh','2016-07-15 08:37:18','2016-07-15 08:37:18'),(572,'paris','2016-07-15 08:37:18','2016-07-15 08:37:18'),(573,'pars','2016-07-15 08:37:18','2016-07-15 08:37:18'),(574,'partners','2016-07-15 08:37:18','2016-07-15 08:37:18'),(575,'parts','2016-07-15 08:37:18','2016-07-15 08:37:18'),(576,'party','2016-07-15 08:37:18','2016-07-15 08:37:18'),(577,'patagonia','2016-07-15 08:37:18','2016-07-15 08:37:18'),(578,'pay','2016-07-15 08:37:18','2016-07-15 08:37:18'),(579,'pe','2016-07-15 08:37:18','2016-07-15 08:37:18'),(580,'pe.ca','2016-07-15 08:37:18','2016-07-15 08:37:18'),(581,'persiangulf','2016-07-15 08:37:18','2016-07-15 08:37:18'),(582,'pet','2016-07-15 08:37:18','2016-07-15 08:37:18'),(583,'pets','2016-07-15 08:37:18','2016-07-15 08:37:18'),(584,'pharmacy','2016-07-15 08:37:18','2016-07-15 08:37:18'),(585,'phd','2016-07-15 08:37:18','2016-07-15 08:37:18'),(586,'phone','2016-07-15 08:37:18','2016-07-15 08:37:18'),(587,'photo','2016-07-15 08:37:18','2016-07-15 08:37:18'),(588,'photography','2016-07-15 08:37:18','2016-07-15 08:37:18'),(589,'photos','2016-07-15 08:37:18','2016-07-15 08:37:18'),(590,'physio','2016-07-15 08:37:18','2016-07-15 08:37:18'),(591,'pics','2016-07-15 08:37:18','2016-07-15 08:37:18'),(592,'pictures','2016-07-15 08:37:18','2016-07-15 08:37:18'),(593,'pid','2016-07-15 08:37:18','2016-07-15 08:37:18'),(594,'pink','2016-07-15 08:37:18','2016-07-15 08:37:18'),(595,'pizza','2016-07-15 08:37:18','2016-07-15 08:37:18'),(596,'pl','2016-07-15 08:37:18','2016-07-15 08:37:18'),(597,'place','2016-07-15 08:37:18','2016-07-15 08:37:18'),(598,'play','2016-07-15 08:37:18','2016-07-15 08:37:18'),(599,'plc.uk','2016-07-15 08:37:18','2016-07-15 08:37:18'),(600,'plumbing','2016-07-15 08:37:18','2016-07-15 08:37:18'),(601,'plus','2016-07-15 08:37:18','2016-07-15 08:37:18'),(602,'poker','2016-07-15 08:37:18','2016-07-15 08:37:18'),(603,'porn','2016-07-15 08:37:18','2016-07-15 08:37:18'),(604,'press','2016-07-15 08:37:18','2016-07-15 08:37:18'),(605,'pro','2016-07-15 08:37:18','2016-07-15 08:37:18'),(606,'productions','2016-07-15 08:37:18','2016-07-15 08:37:18'),(607,'prof','2016-07-15 08:37:18','2016-07-15 08:37:18'),(608,'promo','2016-07-15 08:37:18','2016-07-15 08:37:18'),(609,'properties','2016-07-15 08:37:18','2016-07-15 08:37:18'),(610,'property','2016-07-15 08:37:19','2016-07-15 08:37:19'),(611,'pub','2016-07-15 08:37:19','2016-07-15 08:37:19'),(612,'pw','2016-07-15 08:37:19','2016-07-15 08:37:19'),(613,'qc.ca','2016-07-15 08:37:19','2016-07-15 08:37:19'),(614,'qc.com','2016-07-15 08:37:19','2016-07-15 08:37:19'),(615,'qh.cn','2016-07-15 08:37:19','2016-07-15 08:37:19'),(616,'qpon','2016-07-15 08:37:19','2016-07-15 08:37:19'),(617,'quebec','2016-07-15 08:37:19','2016-07-15 08:37:19'),(618,'racing','2016-07-15 08:37:19','2016-07-15 08:37:19'),(619,'radio','2016-07-15 08:37:19','2016-07-15 08:37:19'),(620,'realestate','2016-07-15 08:37:19','2016-07-15 08:37:19'),(621,'realtor','2016-07-15 08:37:19','2016-07-15 08:37:19'),(622,'realty','2016-07-15 08:37:19','2016-07-15 08:37:19'),(623,'recht.pro','2016-07-15 08:37:19','2016-07-15 08:37:19'),(624,'recipes','2016-07-15 08:37:19','2016-07-15 08:37:19'),(625,'red','2016-07-15 08:37:19','2016-07-15 08:37:19'),(626,'rehab','2016-07-15 08:37:19','2016-07-15 08:37:19'),(627,'reise','2016-07-15 08:37:19','2016-07-15 08:37:19'),(628,'reisen','2016-07-15 08:37:19','2016-07-15 08:37:19'),(629,'reit','2016-07-15 08:37:19','2016-07-15 08:37:19'),(630,'ren','2016-07-15 08:37:19','2016-07-15 08:37:19'),(631,'rent','2016-07-15 08:37:19','2016-07-15 08:37:19'),(632,'rentals','2016-07-15 08:37:19','2016-07-15 08:37:19'),(633,'repair','2016-07-15 08:37:19','2016-07-15 08:37:19'),(634,'report','2016-07-15 08:37:19','2016-07-15 08:37:19'),(635,'republican','2016-07-15 08:37:19','2016-07-15 08:37:19'),(636,'rest','2016-07-15 08:37:19','2016-07-15 08:37:19'),(637,'restaurant','2016-07-15 08:37:19','2016-07-15 08:37:19'),(638,'review','2016-07-15 08:37:19','2016-07-15 08:37:19'),(639,'reviews','2016-07-15 08:37:19','2016-07-15 08:37:19'),(640,'rich','2016-07-15 08:37:19','2016-07-15 08:37:19'),(641,'rio','2016-07-15 08:37:19','2016-07-15 08:37:19'),(642,'rip','2016-07-15 08:37:19','2016-07-15 08:37:19'),(643,'rocks','2016-07-15 08:37:19','2016-07-15 08:37:19'),(644,'rodeo','2016-07-15 08:37:19','2016-07-15 08:37:19'),(645,'roma','2016-07-15 08:37:19','2016-07-15 08:37:19'),(646,'rsvp','2016-07-15 08:37:19','2016-07-15 08:37:19'),(647,'ru.com','2016-07-15 08:37:19','2016-07-15 08:37:19'),(648,'rugby','2016-07-15 08:37:19','2016-07-15 08:37:19'),(649,'ruhr','2016-07-15 08:37:19','2016-07-15 08:37:19'),(650,'run','2016-07-15 08:37:19','2016-07-15 08:37:19'),(651,'ryukyu','2016-07-15 08:37:19','2016-07-15 08:37:19'),(652,'sa.com','2016-07-15 08:37:19','2016-07-15 08:37:19'),(653,'saarland','2016-07-15 08:37:19','2016-07-15 08:37:19'),(654,'safe','2016-07-15 08:37:19','2016-07-15 08:37:19'),(655,'safety','2016-07-15 08:37:19','2016-07-15 08:37:19'),(656,'sale','2016-07-15 08:37:19','2016-07-15 08:37:19'),(657,'salon','2016-07-15 08:37:19','2016-07-15 08:37:19'),(658,'sarl','2016-07-15 08:37:19','2016-07-15 08:37:19'),(659,'sas','2016-07-15 08:37:19','2016-07-15 08:37:19'),(660,'save','2016-07-15 08:37:19','2016-07-15 08:37:19'),(661,'sc','2016-07-15 08:37:19','2016-07-15 08:37:19'),(662,'sc.cn','2016-07-15 08:37:19','2016-07-15 08:37:19'),(663,'scholarships','2016-07-15 08:37:20','2016-07-15 08:37:20'),(664,'school','2016-07-15 08:37:20','2016-07-15 08:37:20'),(665,'schule','2016-07-15 08:37:20','2016-07-15 08:37:20'),(666,'science','2016-07-15 08:37:20','2016-07-15 08:37:20'),(667,'scot','2016-07-15 08:37:20','2016-07-15 08:37:20'),(668,'sd.cn','2016-07-15 08:37:20','2016-07-15 08:37:20'),(669,'se.com','2016-07-15 08:37:20','2016-07-15 08:37:20'),(670,'se.net','2016-07-15 08:37:20','2016-07-15 08:37:20'),(671,'search','2016-07-15 08:37:20','2016-07-15 08:37:20'),(672,'secure','2016-07-15 08:37:20','2016-07-15 08:37:20'),(673,'security','2016-07-15 08:37:20','2016-07-15 08:37:20'),(674,'seek','2016-07-15 08:37:20','2016-07-15 08:37:20'),(675,'services','2016-07-15 08:37:20','2016-07-15 08:37:20'),(676,'sex','2016-07-15 08:37:20','2016-07-15 08:37:20'),(677,'sexy','2016-07-15 08:37:20','2016-07-15 08:37:20'),(678,'sg','2016-07-15 08:37:20','2016-07-15 08:37:20'),(679,'sh','2016-07-15 08:37:20','2016-07-15 08:37:20'),(680,'sh.cn','2016-07-15 08:37:20','2016-07-15 08:37:20'),(681,'shia','2016-07-15 08:37:20','2016-07-15 08:37:20'),(682,'shiksha','2016-07-15 08:37:20','2016-07-15 08:37:20'),(683,'shoes','2016-07-15 08:37:20','2016-07-15 08:37:20'),(684,'shop','2016-07-15 08:37:20','2016-07-15 08:37:20'),(685,'shopping','2016-07-15 08:37:20','2016-07-15 08:37:20'),(686,'shopyourway','2016-07-15 08:37:20','2016-07-15 08:37:20'),(687,'show','2016-07-15 08:37:20','2016-07-15 08:37:20'),(688,'singles','2016-07-15 08:37:20','2016-07-15 08:37:20'),(689,'site','2016-07-15 08:37:20','2016-07-15 08:37:20'),(690,'sk.ca','2016-07-15 08:37:20','2016-07-15 08:37:20'),(691,'ski','2016-07-15 08:37:20','2016-07-15 08:37:20'),(692,'skin','2016-07-15 08:37:20','2016-07-15 08:37:20'),(693,'sn.cn','2016-07-15 08:37:20','2016-07-15 08:37:20'),(694,'soccer','2016-07-15 08:37:20','2016-07-15 08:37:20'),(695,'social','2016-07-15 08:37:20','2016-07-15 08:37:20'),(696,'software','2016-07-15 08:37:20','2016-07-15 08:37:20'),(697,'solar','2016-07-15 08:37:20','2016-07-15 08:37:20'),(698,'solutions','2016-07-15 08:37:20','2016-07-15 08:37:20'),(699,'soy','2016-07-15 08:37:20','2016-07-15 08:37:20'),(700,'spa','2016-07-15 08:37:20','2016-07-15 08:37:20'),(701,'space','2016-07-15 08:37:20','2016-07-15 08:37:20'),(702,'sport','2016-07-15 08:37:20','2016-07-15 08:37:20'),(703,'sports','2016-07-15 08:37:20','2016-07-15 08:37:20'),(704,'spot','2016-07-15 08:37:20','2016-07-15 08:37:20'),(705,'spreadbetting','2016-07-15 08:37:20','2016-07-15 08:37:20'),(706,'srl','2016-07-15 08:37:20','2016-07-15 08:37:20'),(707,'stada','2016-07-15 08:37:20','2016-07-15 08:37:20'),(708,'stockholm','2016-07-15 08:37:20','2016-07-15 08:37:20'),(709,'storage','2016-07-15 08:37:20','2016-07-15 08:37:20'),(710,'store','2016-07-15 08:37:20','2016-07-15 08:37:20'),(711,'stroke','2016-07-15 08:37:20','2016-07-15 08:37:20'),(712,'studio','2016-07-15 08:37:20','2016-07-15 08:37:20'),(713,'study','2016-07-15 08:37:20','2016-07-15 08:37:20'),(714,'style','2016-07-15 08:37:20','2016-07-15 08:37:20'),(715,'sucks','2016-07-15 08:37:20','2016-07-15 08:37:20'),(716,'supplies','2016-07-15 08:37:20','2016-07-15 08:37:20'),(717,'supply','2016-07-15 08:37:20','2016-07-15 08:37:20'),(718,'support','2016-07-15 08:37:21','2016-07-15 08:37:21'),(719,'surf','2016-07-15 08:37:21','2016-07-15 08:37:21'),(720,'surgery','2016-07-15 08:37:21','2016-07-15 08:37:21'),(721,'swiss','2016-07-15 08:37:21','2016-07-15 08:37:21'),(722,'sx.cn','2016-07-15 08:37:21','2016-07-15 08:37:21'),(723,'sydney','2016-07-15 08:37:21','2016-07-15 08:37:21'),(724,'systems','2016-07-15 08:37:21','2016-07-15 08:37:21'),(725,'taipei','2016-07-15 08:37:21','2016-07-15 08:37:21'),(726,'tatar','2016-07-15 08:37:21','2016-07-15 08:37:21'),(727,'tattoo','2016-07-15 08:37:21','2016-07-15 08:37:21'),(728,'tax','2016-07-15 08:37:21','2016-07-15 08:37:21'),(729,'taxi','2016-07-15 08:37:21','2016-07-15 08:37:21'),(730,'tc','2016-07-15 08:37:21','2016-07-15 08:37:21'),(731,'team','2016-07-15 08:37:21','2016-07-15 08:37:21'),(732,'tech','2016-07-15 08:37:21','2016-07-15 08:37:21'),(733,'technology','2016-07-15 08:37:21','2016-07-15 08:37:21'),(734,'tel','2016-07-15 08:37:21','2016-07-15 08:37:21'),(735,'tennis','2016-07-15 08:37:21','2016-07-15 08:37:21'),(736,'thai','2016-07-15 08:37:21','2016-07-15 08:37:21'),(737,'theater','2016-07-15 08:37:21','2016-07-15 08:37:21'),(738,'theatre','2016-07-15 08:37:21','2016-07-15 08:37:21'),(739,'tickets','2016-07-15 08:37:21','2016-07-15 08:37:21'),(740,'tienda','2016-07-15 08:37:21','2016-07-15 08:37:21'),(741,'tips','2016-07-15 08:37:21','2016-07-15 08:37:21'),(742,'tires','2016-07-15 08:37:21','2016-07-15 08:37:21'),(743,'tirol','2016-07-15 08:37:21','2016-07-15 08:37:21'),(744,'tj.cn','2016-07-15 08:37:21','2016-07-15 08:37:21'),(745,'tk','2016-07-15 08:37:21','2016-07-15 08:37:21'),(746,'tm','2016-07-15 08:37:21','2016-07-15 08:37:21'),(747,'today','2016-07-15 08:37:21','2016-07-15 08:37:21'),(748,'tokyo','2016-07-15 08:37:21','2016-07-15 08:37:21'),(749,'tools','2016-07-15 08:37:21','2016-07-15 08:37:21'),(750,'top','2016-07-15 08:37:21','2016-07-15 08:37:21'),(751,'tour','2016-07-15 08:37:21','2016-07-15 08:37:21'),(752,'tours','2016-07-15 08:37:21','2016-07-15 08:37:21'),(753,'town','2016-07-15 08:37:21','2016-07-15 08:37:21'),(754,'toys','2016-07-15 08:37:21','2016-07-15 08:37:21'),(755,'trade','2016-07-15 08:37:21','2016-07-15 08:37:21'),(756,'trading','2016-07-15 08:37:21','2016-07-15 08:37:21'),(757,'training','2016-07-15 08:37:21','2016-07-15 08:37:21'),(758,'translations','2016-07-15 08:37:21','2016-07-15 08:37:21'),(759,'trust','2016-07-15 08:37:21','2016-07-15 08:37:21'),(760,'tube','2016-07-15 08:37:21','2016-07-15 08:37:21'),(761,'tv','2016-07-15 08:37:21','2016-07-15 08:37:21'),(762,'tw','2016-07-15 08:37:21','2016-07-15 08:37:21'),(763,'tw.cn','2016-07-15 08:37:21','2016-07-15 08:37:21'),(764,'uk','2016-07-15 08:37:21','2016-07-15 08:37:21'),(765,'uk.com','2016-07-15 08:37:21','2016-07-15 08:37:21'),(766,'uk.net','2016-07-15 08:37:21','2016-07-15 08:37:21'),(767,'university','2016-07-15 08:37:22','2016-07-15 08:37:22'),(768,'uno','2016-07-15 08:37:22','2016-07-15 08:37:22'),(769,'us','2016-07-15 08:37:22','2016-07-15 08:37:22'),(770,'us.com','2016-07-15 08:37:22','2016-07-15 08:37:22'),(771,'us.org','2016-07-15 08:37:22','2016-07-15 08:37:22'),(772,'uy.com','2016-07-15 08:37:22','2016-07-15 08:37:22'),(773,'vacations','2016-07-15 08:37:22','2016-07-15 08:37:22'),(774,'vana','2016-07-15 08:37:22','2016-07-15 08:37:22'),(775,'vc','2016-07-15 08:37:22','2016-07-15 08:37:22'),(776,'vegas','2016-07-15 08:37:22','2016-07-15 08:37:22'),(777,'ventures','2016-07-15 08:37:22','2016-07-15 08:37:22'),(778,'versicherung','2016-07-15 08:37:22','2016-07-15 08:37:22'),(779,'vet','2016-07-15 08:37:22','2016-07-15 08:37:22'),(780,'vg','2016-07-15 08:37:22','2016-07-15 08:37:22'),(781,'viajes','2016-07-15 08:37:22','2016-07-15 08:37:22'),(782,'video','2016-07-15 08:37:22','2016-07-15 08:37:22'),(783,'villas','2016-07-15 08:37:22','2016-07-15 08:37:22'),(784,'vin','2016-07-15 08:37:22','2016-07-15 08:37:22'),(785,'vip','2016-07-15 08:37:22','2016-07-15 08:37:22'),(786,'vision','2016-07-15 08:37:22','2016-07-15 08:37:22'),(787,'vlaanderen','2016-07-15 08:37:22','2016-07-15 08:37:22'),(788,'vodka','2016-07-15 08:37:22','2016-07-15 08:37:22'),(789,'vote','2016-07-15 08:37:22','2016-07-15 08:37:22'),(790,'voting','2016-07-15 08:37:22','2016-07-15 08:37:22'),(791,'voto','2016-07-15 08:37:22','2016-07-15 08:37:22'),(792,'voyage','2016-07-15 08:37:22','2016-07-15 08:37:22'),(793,'wales','2016-07-15 08:37:22','2016-07-15 08:37:22'),(794,'wang','2016-07-15 08:37:22','2016-07-15 08:37:22'),(795,'watch','2016-07-15 08:37:22','2016-07-15 08:37:22'),(796,'watches','2016-07-15 08:37:22','2016-07-15 08:37:22'),(797,'weather','2016-07-15 08:37:22','2016-07-15 08:37:22'),(798,'web','2016-07-15 08:37:22','2016-07-15 08:37:22'),(799,'web.com','2016-07-15 08:37:22','2016-07-15 08:37:22'),(800,'webcam','2016-07-15 08:37:22','2016-07-15 08:37:22'),(801,'webs','2016-07-15 08:37:22','2016-07-15 08:37:22'),(802,'website','2016-07-15 08:37:22','2016-07-15 08:37:22'),(803,'wed','2016-07-15 08:37:22','2016-07-15 08:37:22'),(804,'wedding','2016-07-15 08:37:22','2016-07-15 08:37:22'),(805,'weibo','2016-07-15 08:37:22','2016-07-15 08:37:22'),(806,'whoswho','2016-07-15 08:37:22','2016-07-15 08:37:22'),(807,'wien','2016-07-15 08:37:22','2016-07-15 08:37:22'),(808,'wiki','2016-07-15 08:37:22','2016-07-15 08:37:22'),(809,'win','2016-07-15 08:37:22','2016-07-15 08:37:22'),(810,'wine','2016-07-15 08:37:22','2016-07-15 08:37:22'),(811,'winners','2016-07-15 08:37:22','2016-07-15 08:37:22'),(812,'work','2016-07-15 08:37:22','2016-07-15 08:37:22'),(813,'works','2016-07-15 08:37:22','2016-07-15 08:37:22'),(814,'world','2016-07-15 08:37:22','2016-07-15 08:37:22'),(815,'wow','2016-07-15 08:37:22','2016-07-15 08:37:22'),(816,'ws','2016-07-15 08:37:23','2016-07-15 08:37:23'),(817,'wtf','2016-07-15 08:37:23','2016-07-15 08:37:23'),(818,'xin','2016-07-15 08:37:23','2016-07-15 08:37:23'),(819,'xj.cn','2016-07-15 08:37:23','2016-07-15 08:37:23'),(820,'xn--11b4c3d','2016-07-15 08:37:23','2016-07-15 08:37:23'),(821,'xn--1ck2e1b','2016-07-15 08:37:23','2016-07-15 08:37:23'),(822,'xn--1qqw23a','2016-07-15 08:37:23','2016-07-15 08:37:23'),(823,'xn--30rr7y','2016-07-15 08:37:23','2016-07-15 08:37:23'),(824,'xn--3bst00m','2016-07-15 08:37:23','2016-07-15 08:37:23'),(825,'xn--3ds443g','2016-07-15 08:37:23','2016-07-15 08:37:23'),(826,'xn--3pxu8k','2016-07-15 08:37:23','2016-07-15 08:37:23'),(827,'xn--42c2d9a','2016-07-15 08:37:23','2016-07-15 08:37:23'),(828,'xn--45q11c','2016-07-15 08:37:23','2016-07-15 08:37:23'),(829,'xn--4gbrim','2016-07-15 08:37:23','2016-07-15 08:37:23'),(830,'xn--4gq48lf9j','2016-07-15 08:37:23','2016-07-15 08:37:23'),(831,'xn--55qw42g','2016-07-15 08:37:23','2016-07-15 08:37:23'),(832,'xn--55qx5d','2016-07-15 08:37:23','2016-07-15 08:37:23'),(833,'xn--5tzm5g','2016-07-15 08:37:23','2016-07-15 08:37:23'),(834,'xn--6frz82g','2016-07-15 08:37:23','2016-07-15 08:37:23'),(835,'xn--6qq986b3xl','2016-07-15 08:37:23','2016-07-15 08:37:23'),(836,'xn--6rtwn','2016-07-15 08:37:23','2016-07-15 08:37:23'),(837,'xn--80adxhks','2016-07-15 08:37:23','2016-07-15 08:37:23'),(838,'xn--80aqecdr1a','2016-07-15 08:37:23','2016-07-15 08:37:23'),(839,'xn--80asehdb','2016-07-15 08:37:23','2016-07-15 08:37:23'),(840,'xn--80aswg','2016-07-15 08:37:23','2016-07-15 08:37:23'),(841,'xn--8y0a063a','2016-07-15 08:37:23','2016-07-15 08:37:23'),(842,'xn--9et52u','2016-07-15 08:37:23','2016-07-15 08:37:23'),(843,'xn--9krt00a','2016-07-15 08:37:23','2016-07-15 08:37:23'),(844,'xn--b4w605ferd','2016-07-15 08:37:23','2016-07-15 08:37:23'),(845,'xn--c1avg','2016-07-15 08:37:23','2016-07-15 08:37:23'),(846,'xn--c1yn36f','2016-07-15 08:37:23','2016-07-15 08:37:23'),(847,'xn--c2br7g','2016-07-15 08:37:23','2016-07-15 08:37:23'),(848,'xn--cck2b3b','2016-07-15 08:37:23','2016-07-15 08:37:23'),(849,'xn--cckwcxetd','2016-07-15 08:37:23','2016-07-15 08:37:23'),(850,'xn--cg4bki','2016-07-15 08:37:23','2016-07-15 08:37:23'),(851,'xn--czr694b','2016-07-15 08:37:23','2016-07-15 08:37:23'),(852,'xn--czrs0t','2016-07-15 08:37:23','2016-07-15 08:37:23'),(853,'xn--czru2d','2016-07-15 08:37:23','2016-07-15 08:37:23'),(854,'xn--d1acj3b','2016-07-15 08:37:23','2016-07-15 08:37:23'),(855,'xn--dkwm73cwpn','2016-07-15 08:37:23','2016-07-15 08:37:23'),(856,'xn--eckvdtc9d','2016-07-15 08:37:23','2016-07-15 08:37:23'),(857,'xn--efvy88h','2016-07-15 08:37:23','2016-07-15 08:37:23'),(858,'xn--estv75g','2016-07-15 08:37:23','2016-07-15 08:37:23'),(859,'xn--fct429k','2016-07-15 08:37:23','2016-07-15 08:37:23'),(860,'xn--fes124c','2016-07-15 08:37:23','2016-07-15 08:37:23'),(861,'xn--fhbei','2016-07-15 08:37:23','2016-07-15 08:37:23'),(862,'xn--fiq228c5hs','2016-07-15 08:37:23','2016-07-15 08:37:23'),(863,'xn--fiq64b','2016-07-15 08:37:23','2016-07-15 08:37:23'),(864,'xn--fjq720a','2016-07-15 08:37:23','2016-07-15 08:37:23'),(865,'xn--flw351e','2016-07-15 08:37:23','2016-07-15 08:37:23'),(866,'xn--g2xx48c','2016-07-15 08:37:23','2016-07-15 08:37:23'),(867,'xn--gckr3f0f','2016-07-15 08:37:23','2016-07-15 08:37:23'),(868,'xn--gk3at1e','2016-07-15 08:37:23','2016-07-15 08:37:23'),(869,'xn--hdb9cza1b','2016-07-15 08:37:24','2016-07-15 08:37:24'),(870,'xn--hxt814e','2016-07-15 08:37:24','2016-07-15 08:37:24'),(871,'xn--i1b6b1a6a2e','2016-07-15 08:37:24','2016-07-15 08:37:24'),(872,'xn--imr513n','2016-07-15 08:37:24','2016-07-15 08:37:24'),(873,'xn--io0a7i','2016-07-15 08:37:24','2016-07-15 08:37:24'),(874,'xn--j1aef','2016-07-15 08:37:24','2016-07-15 08:37:24'),(875,'xn--jlq480n2rg','2016-07-15 08:37:24','2016-07-15 08:37:24'),(876,'xn--jlq61u9w7b','2016-07-15 08:37:24','2016-07-15 08:37:24'),(877,'xn--jvr189m','2016-07-15 08:37:24','2016-07-15 08:37:24'),(878,'xn--kpu716f','2016-07-15 08:37:24','2016-07-15 08:37:24'),(879,'xn--kput3i','2016-07-15 08:37:24','2016-07-15 08:37:24'),(880,'xn--mgba3a3ejt','2016-07-15 08:37:24','2016-07-15 08:37:24'),(881,'xn--mgbaakc7dvf','2016-07-15 08:37:24','2016-07-15 08:37:24'),(882,'xn--mgbab2bd','2016-07-15 08:37:24','2016-07-15 08:37:24'),(883,'xn--mgbb9fbpob','2016-07-15 08:37:24','2016-07-15 08:37:24'),(884,'xn--mgbca7dzdo','2016-07-15 08:37:24','2016-07-15 08:37:24'),(885,'xn--mgbi4ecexp','2016-07-15 08:37:24','2016-07-15 08:37:24'),(886,'xn--mgbt3dhd','2016-07-15 08:37:24','2016-07-15 08:37:24'),(887,'xn--mgbv6cfpo','2016-07-15 08:37:24','2016-07-15 08:37:24'),(888,'xn--mk1bu44c','2016-07-15 08:37:24','2016-07-15 08:37:24'),(889,'xn--mxtq1m','2016-07-15 08:37:24','2016-07-15 08:37:24'),(890,'xn--ngbc5azd','2016-07-15 08:37:24','2016-07-15 08:37:24'),(891,'xn--ngbe9e0a','2016-07-15 08:37:24','2016-07-15 08:37:24'),(892,'xn--ngbrx','2016-07-15 08:37:24','2016-07-15 08:37:24'),(893,'xn--nqv7f','2016-07-15 08:37:24','2016-07-15 08:37:24'),(894,'xn--nyqy26a','2016-07-15 08:37:24','2016-07-15 08:37:24'),(895,'xn--otu796d','2016-07-15 08:37:24','2016-07-15 08:37:24'),(896,'xn--p1acf','2016-07-15 08:37:24','2016-07-15 08:37:24'),(897,'xn--pbt977c','2016-07-15 08:37:24','2016-07-15 08:37:24'),(898,'xn--pgb3ceoj','2016-07-15 08:37:24','2016-07-15 08:37:24'),(899,'xn--pssy2u','2016-07-15 08:37:24','2016-07-15 08:37:24'),(900,'xn--q9jyb4c','2016-07-15 08:37:24','2016-07-15 08:37:24'),(901,'xn--qcka1pmc','2016-07-15 08:37:24','2016-07-15 08:37:24'),(902,'xn--rhqv96g','2016-07-15 08:37:24','2016-07-15 08:37:24'),(903,'xn--rovu88b','2016-07-15 08:37:24','2016-07-15 08:37:24'),(904,'xn--ses554g','2016-07-15 08:37:24','2016-07-15 08:37:24'),(905,'xn--t60b56a','2016-07-15 08:37:24','2016-07-15 08:37:24'),(906,'xn--tckwe','2016-07-15 08:37:24','2016-07-15 08:37:24'),(907,'xn--tiq49xqyj','2016-07-15 08:37:24','2016-07-15 08:37:24'),(908,'xn--unup4y','2016-07-15 08:37:24','2016-07-15 08:37:24'),(909,'xn--vhquv','2016-07-15 08:37:24','2016-07-15 08:37:24'),(910,'xn--vuq861b','2016-07-15 08:37:24','2016-07-15 08:37:24'),(911,'xn--w4rs40l','2016-07-15 08:37:24','2016-07-15 08:37:24'),(912,'xn--xhq521b','2016-07-15 08:37:24','2016-07-15 08:37:24'),(913,'xn--zfr164b','2016-07-15 08:37:24','2016-07-15 08:37:24'),(914,'xxx','2016-07-15 08:37:24','2016-07-15 08:37:24'),(915,'xyz','2016-07-15 08:37:24','2016-07-15 08:37:24'),(916,'xz.cn','2016-07-15 08:37:24','2016-07-15 08:37:24'),(917,'yachts','2016-07-15 08:37:24','2016-07-15 08:37:24'),(918,'yk.ca','2016-07-15 08:37:24','2016-07-15 08:37:24'),(919,'yoga','2016-07-15 08:37:24','2016-07-15 08:37:24'),(920,'yokohama','2016-07-15 08:37:24','2016-07-15 08:37:24'),(921,'you','2016-07-15 08:37:24','2016-07-15 08:37:24'),(922,'za.com','2016-07-15 08:37:25','2016-07-15 08:37:25'),(923,'zip','2016-07-15 08:37:25','2016-07-15 08:37:25'),(924,'zone','2016-07-15 08:37:25','2016-07-15 08:37:25'),(925,'zuerich','2016-07-15 08:37:25','2016-07-15 08:37:25'),(926,'zulu','2016-07-15 08:37:25','2016-07-15 08:37:25');
/*!40000 ALTER TABLE `tbltlds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltodolist`
--

DROP TABLE IF EXISTS `tbltodolist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltodolist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(10) NOT NULL DEFAULT '0',
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `duedate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `duedate` (`duedate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltodolist`
--

LOCK TABLES `tbltodolist` WRITE;
/*!40000 ALTER TABLE `tbltodolist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltodolist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltransientdata`
--

DROP TABLE IF EXISTS `tbltransientdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltransientdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `expires` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`(255))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltransientdata`
--

LOCK TABLES `tbltransientdata` WRITE;
/*!40000 ALTER TABLE `tbltransientdata` DISABLE KEYS */;
INSERT INTO `tbltransientdata` VALUES (1,'cronComplete','1',1468654647);
/*!40000 ALTER TABLE `tbltransientdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblupdatehistory`
--

DROP TABLE IF EXISTS `tblupdatehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblupdatehistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `original_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` tinyint(1) NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblupdatehistory`
--

LOCK TABLES `tblupdatehistory` WRITE;
/*!40000 ALTER TABLE `tblupdatehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblupdatehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblupgrades`
--

DROP TABLE IF EXISTS `tblupgrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblupgrades` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `relid` int(10) NOT NULL,
  `originalvalue` text COLLATE utf8_unicode_ci NOT NULL,
  `newvalue` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `recurringchange` decimal(10,2) NOT NULL,
  `status` enum('Pending','Completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `paid` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `serviceid` (`relid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblupgrades`
--

LOCK TABLES `tblupgrades` WRITE;
/*!40000 ALTER TABLE `tblupgrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblupgrades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblwhoislog`
--

DROP TABLE IF EXISTS `tblwhoislog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblwhoislog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `domain` text COLLATE utf8_unicode_ci NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblwhoislog`
--

LOCK TABLES `tblwhoislog` WRITE;
/*!40000 ALTER TABLE `tblwhoislog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwhoislog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-18  2:52:08
