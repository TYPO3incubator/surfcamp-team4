-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: db
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB-ubu2204-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `icon` int(10) unsigned NOT NULL DEFAULT 0,
  `config` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_dashboards`
--

DROP TABLE IF EXISTS `be_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_dashboards` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `identifier` varchar(120) NOT NULL DEFAULT '',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(120) NOT NULL DEFAULT '',
  `widgets` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `identifier` (`identifier`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES
(1,0,1712495561,1712495561,0,0,0,0,'1c557714f6ac630a5b8d9ddb57afd08aaf9deddf',1,'My dashboard','{\"1d6dacca667cf3014672bc493729b5af7bcc10ae\":{\"identifier\":\"t3information\"},\"7f98f47e14a967d279e439f54450de923a5a4540\":{\"identifier\":\"docGettingStarted\"}}');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `category_perms` longtext DEFAULT NULL,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 0,
  `db_mountpoints` longtext DEFAULT NULL,
  `TSconfig` longtext DEFAULT NULL,
  `file_mountpoints` varchar(255) DEFAULT '',
  `file_permissions` longtext DEFAULT NULL,
  `pagetypes_select` longtext DEFAULT NULL,
  `tables_modify` longtext DEFAULT NULL,
  `tables_select` longtext DEFAULT NULL,
  `non_exclude_fields` longtext DEFAULT NULL,
  `explicit_allowdeny` longtext DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` longtext DEFAULT NULL,
  `groupMods` longtext DEFAULT NULL,
  `mfa_providers` longtext DEFAULT NULL,
  `subgroup` varchar(255) DEFAULT '',
  `availableWidgets` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES
('19370815760cfbadc4709e30a68a102263cf5c822d56277f3198e170d31f73dc','[DISABLED]',1,1718915621,'a:1:{s:26:\"formProtectionSessionToken\";s:64:\"710632cc95dbc9acadc9e1da098d9e3ae2368806f9da9a0356437dda6ba9755b\";}');
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(10) NOT NULL DEFAULT 'default',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `password_reset_token` varchar(100) NOT NULL DEFAULT '',
  `category_perms` longtext DEFAULT NULL,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `options` smallint(5) unsigned NOT NULL DEFAULT 0,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 0,
  `db_mountpoints` longtext DEFAULT NULL,
  `TSconfig` longtext DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `usergroup` varchar(512) DEFAULT '',
  `file_mountpoints` varchar(255) DEFAULT '',
  `file_permissions` longtext DEFAULT NULL,
  `userMods` longtext DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES
(1,0,1712405486,1712405486,0,0,0,0,NULL,'admin','default','','a:7:{s:10:\"moduleData\";a:13:{s:28:\"dashboard/current_dashboard/\";s:40:\"1c557714f6ac630a5b8d9ddb57afd08aaf9deddf\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:1:{s:32:\"740cc03766d763f816353ab2d91dbbaf\";a:5:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:30;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B30%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:30;s:3:\"pid\";i:5;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:99:\"/typo3/module/web/layout?token=28912f01a9e43aa363c53dce9920889a46b75e64&id=5&#element-tt_content-30\";}}i:1;s:32:\"740cc03766d763f816353ab2d91dbbaf\";}s:23:\"backend_user_management\";a:1:{s:13:\"defaultAction\";s:5:\"index\";}s:16:\"opendocs::recent\";a:8:{s:32:\"f87337ea07fd5e46b7487a4d63a03a03\";a:5:{i:0;s:22:\"Our biggest supporters\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:8;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B8%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:8;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:97:\"/typo3/module/web/layout?token=28912f01a9e43aa363c53dce9920889a46b75e64&id=1#element-tt_content-8\";}s:32:\"2dc96ce841a81385a44dac56678f7a3d\";a:5:{i:0;s:21:\"TYPO3_logo_test_2.svg\";i:1;a:5:{s:4:\"edit\";a:1:{s:17:\"sys_file_metadata\";a:1:{i:35;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:41:\"&edit%5Bsys_file_metadata%5D%5B35%5D=edit\";i:3;a:5:{s:5:\"table\";s:17:\"sys_file_metadata\";s:3:\"uid\";i:35;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:168:\"/typo3/module/file/list?token=b3013e7f4f0357ee578b4517052c5aa3ea27c1bc&currentPage=1&id=1:/images_be/logos/sponsor_logos/&expandFolder=1:/images_be/logos/sponsor_logos/\";}s:32:\"740cc03766d763f816353ab2d91dbbaf\";a:5:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:30;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B30%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:30;s:3:\"pid\";i:5;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=28912f01a9e43aa363c53dce9920889a46b75e64&id=5#element-tt_content-30\";}s:32:\"450f1cb96fe4491e1e76cb7e67ee5dd8\";a:5:{i:0;s:27:\"Our companions and sponsors\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:18;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B18%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:18;s:3:\"pid\";i:5;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=28912f01a9e43aa363c53dce9920889a46b75e64&id=5#element-tt_content-18\";}s:32:\"79f152fef150ea5e312ccb91e4470b0d\";a:5:{i:0;s:21:\"Become a Member today\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:29;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B29%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:29;s:3:\"pid\";i:10;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=28912f01a9e43aa363c53dce9920889a46b75e64&id=10\";}s:32:\"0850966397be9550f11eae67b9c302f9\";a:5:{i:0;s:16:\"Our Game Results\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:17;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B17%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:17;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=28912f01a9e43aa363c53dce9920889a46b75e64&id=3#element-tt_content-17\";}s:32:\"a178bf63389fd8af13734ad5c8ca2f10\";a:5:{i:0;s:36:\"Our New Supporter: TYPO3 Association\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:28;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B28%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:28;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=28912f01a9e43aa363c53dce9920889a46b75e64&id=2\";}s:32:\"1d9b29725e7f63f56a69e02c50a5665c\";a:5:{i:0;s:37:\"Get Ready for Another Exciting Match!\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:27;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B27%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:27;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=28912f01a9e43aa363c53dce9920889a46b75e64&id=2\";}}s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:33:\"1:/images_be/logos/sponsor_logos/\";}s:9:\"clipboard\";a:5:{s:6:\"normal\";a:0:{}s:5:\"tab_1\";a:0:{}s:5:\"tab_2\";a:0:{}s:5:\"tab_3\";a:0:{}s:7:\"current\";s:6:\"normal\";}s:15:\"system_BelogLog\";a:1:{s:10:\"constraint\";s:337:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":11:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:10:\"\0*\0channel\";s:3:\"php\";s:8:\"\0*\0level\";s:5:\"debug\";s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;}\";}s:9:\"scheduler\";a:1:{s:6:\"action\";s:16:\"scheduler_manage\";}s:6:\"web_ts\";a:1:{s:6:\"action\";s:17:\"typoscript_active\";}s:17:\"typoscript_active\";a:6:{s:18:\"sortAlphabetically\";b:1;s:28:\"displayConstantSubstitutions\";b:1;s:15:\"displayComments\";b:1;s:23:\"selectedTemplatePerPage\";a:1:{i:1;i:-1;}s:18:\"constantConditions\";a:0:{}s:15:\"setupConditions\";a:0:{}}s:29:\"web_typoscript_constanteditor\";a:2:{s:23:\"selectedTemplatePerPage\";a:1:{i:1;i:-1;}s:16:\"selectedCategory\";s:7:\"content\";}s:25:\"web_typoscript_infomodify\";a:1:{s:23:\"selectedTemplatePerPage\";a:1:{i:1;i:-1;}}}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"moduleSessionID\";a:13:{s:28:\"dashboard/current_dashboard/\";s:40:\"ea7b2b61aba95a8558c2b0a012b8fa87e63b5ac4\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"3f24dcbf93e642a0087cf468de6289206d1e3ed5\";s:10:\"FormEngine\";s:40:\"3f24dcbf93e642a0087cf468de6289206d1e3ed5\";s:23:\"backend_user_management\";s:40:\"f7f1f66252015c74d342969ea254244b6b355bf7\";s:16:\"opendocs::recent\";s:40:\"3f24dcbf93e642a0087cf468de6289206d1e3ed5\";s:16:\"browse_links.php\";s:40:\"3f24dcbf93e642a0087cf468de6289206d1e3ed5\";s:9:\"clipboard\";s:40:\"3f24dcbf93e642a0087cf468de6289206d1e3ed5\";s:15:\"system_BelogLog\";s:40:\"f4e1f38656b3563aca695842f3592a572152ee26\";s:9:\"scheduler\";s:40:\"c94ba7cea7013b6ca7bc278cb1eb4a3fe011c8ba\";s:6:\"web_ts\";s:40:\"b997a0db6ac57112023245efc08e6edce38375de\";s:17:\"typoscript_active\";s:40:\"b997a0db6ac57112023245efc08e6edce38375de\";s:29:\"web_typoscript_constanteditor\";s:40:\"b997a0db6ac57112023245efc08e6edce38375de\";s:25:\"web_typoscript_infomodify\";s:40:\"b997a0db6ac57112023245efc08e6edce38375de\";}s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1712931518}}\";s:10:\"inlineView\";s:687:\"{\"tt_content\":{\"NEW66156971b640e576745905\":{\"sys_file_reference\":[1]},\"2\":{\"sys_file_reference\":[2]},\"NEW66181370a390c517049458\":{\"tx_football_domain_model_link\":[2]},\"6\":{\"tx_football_domain_model_link\":{\"2\":\"\"}},\"NEW6618173287ec9185042595\":{\"sys_file_reference\":[4,5,6,7,8],\"tx_football_domain_model_sponsor\":[6]},\"3\":{\"sys_file_reference\":{\"1\":\"\"}},\"15\":{\"sys_file_reference\":[\"\",11,12,14]},\"7\":{\"sys_file_reference\":{\"1\":\"\"}},\"26\":{\"sys_file_reference\":{\"2\":\"\"}},\"30\":{\"tx_football_domain_model_sponsor\":{\"0\":9,\"28\":\"\"},\"sys_file_reference\":[18,22,\"\",23]},\"8\":{\"tx_football_domain_model_sponsor\":[\"1\"],\"sys_file_reference\":[\"3\"]}},\"pages\":{\"1\":{\"tx_football_domain_model_link\":[1]}}}\";}',0,NULL,'',NULL,1718866540,0,'',1,0,0,NULL,NULL,'$argon2id$v=19$m=65536,t=16,p=1$U2tGS09lL3hXeVQ4aG9iQQ$wgxGv43Dz04di6ojTPnoZGquIR97wCxlULBl0Wu8xGk','','',NULL,NULL,''),
(2,0,1712405633,1712405633,0,0,0,0,NULL,'_cli_','default','','a:4:{s:10:\"moduleData\";a:0:{}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";}',0,NULL,'',NULL,0,0,'',1,0,0,NULL,NULL,'$argon2id$v=19$m=65536,t=16,p=1$cG4uemdDWS9EcVBtbzJhUg$O+oZXdbQVG9hEC53SNb+EjY8FwBpuXUo3zeTpPbxClU','','',NULL,NULL,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash_tags`
--

DROP TABLE IF EXISTS `cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages`
--

DROP TABLE IF EXISTS `cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
INSERT INTO `cache_pages` VALUES
(1,'1_e430b909a0197616',1719304475,'x��}isG��~E�?��ٙ��N��.M��<���7/�Q�]\0Zltc� 	{�b����%/3��B7R�,�Č)���ʫ���2������px�Z�<���w�KO�0HD����1�����߿=�����\'�����|̞�D������|�\"�̙�(��V�L�#�����v�=��d���Fر�_�ፈ����ޚ�ͼ ^z���R�K_�$d1�\'���T�q6��`�R,���T��^�\0���g_��0��N��㾿bN$x\"G���\"b�W�G����|�A�i�B�o~��pq�)\r��U���	���Q�Ќ��u؋[\0\'��\0��D�TN�X$���x�0��@D1�*��т\'Ў�AjD���	P YƇ�n�Z�f\'�f�g�6�W\"��o�������G�����;vo�\nޟ�z|�5G�=�1l�5z�br�o�����u��˻��^�9=���;�)���z�w˼����{���A}�����?ٟ&G])�Gv讠\'�D�/����y?o�W�GL���K`��2�(o���-p}.�\Z�%�:\Z�g�9�+6h�~�\\�_�fK	��� �r8�=�SP*���U@�v�ܽ��m?��-6���y�[jC��Ōő%4I����!w\\�g���?FÁn������j�wϡ۸��w��Y��xn2�\Z�`,��(�s��X�k��~��% zU�p6�E�b ��yK�i1�\'�mǪ���|�R	�f���]��e�:R���<�&��|�\r�$���5�>�BO}n�ykB0 ����u��иyZm���G]�RƋ�g�I��r��s�܍�X)��\0B^�6Oa\rX�m�\0jk\r���P��W�\rL�`�۶�\Z:��Q�S�W�՜�,a��|7��Eqg�$�}/�b9�k@J��;�����n��,��`G]��c\"7J�7��gL7\n�.� G���D�RIu՚��H�M���,��F\r��$=�S��IJ�JZ4�7د�C�{��9d�1M.\' �&}F�=�]������>�-�\\.����[�����0J樳ne��9���4uA�<-�E<|�*t�}Ƌ��I�xq=�5u�����q�M}���\n_��X���^]L:���3�9��9��������=����:^k�U���,�l�+���S��8��R��I���2��k���Oq#�\Zʳ�2����G?ԳgeȗI[n��?�zs��\neWB�<\no����-)��,ܶnзx�p{[�����ؚ�年ۉ���z|vʾ�f�0L�Y*`��4�Gݹ��˲�	�P�c�l%x��p	52� ��C���C�ɼ���5i�C/`I���V�5,��������>����L=_pw�]k���c�Z�q��:��B������\'|�r��be-=�,,��Q:t����	�7��\rd��F�� �Oίeްgmt�� �xb�U���E�X?_=��W�-�����*�#o\"��W�d��5@�=Z/��j~RTФp�l���P���_Dy�r�\ZY��ߦ�y\"�����q�\'qު;7������~Io�\Z�\\P�r2�_2����g������/|����܊������(Lc�\\/��9����U�bhd%9�e%w�6�βj>���(˚��Cvh;��j\\i^Y����q�f� �U{�!�o�j�7Lm�;:�W��� f�4m.�����H��:t:7ޭ��P|�ǻ#C��=��뽱6��>��m�#a�zcsȇ\\�\r�����,�Y�ZG��wo��pt0���v�}�9�k�?HA�h����;��4�@���ʻ���O�X��;RB�D�F��7�ޙ��io���-�qӥr�{�I�\r�Z�E�M���a�vρ�5�������cCs���D*eX��N��b���T�Ӄ8�X8R�i\"6�t��2���|�d��R����[�3!v���H7oIv�\0\nѯ&�����lkF�O����������qG3:�p����^��\'�����}���J?\r�CAo(�7a���?��P\'RM�L���X�D���A9V�s�,���Qe���,����\'��E����yc���?;�_=>�~�|�]x�?�^S��ϔ��OzI��$��8�N7?KU��3���wi�be��Z�k�NCQ���O��3��h>z�N����iw�t߇����z_�q�ϫDx�-�Vj��Ɠ���]�����\'�hOǓ���d�(��:�OeO*돯�އ���K�H�a����w:�����\\�7���&ߝ<��?�ZB�����f��ex��]���|����i��x�|z�O�i{W�<��?�J�,��]p�;�u�>���l%}�d���`S�t_\0�Q�)T܋%�T%O:�I�4y��d\Z�u�\'H��$����w�hA��Z�\0��Z|�^�~[7��t̎�T�#�)5�訫ΰ�B�����2D����\rŁ���$��?�F@�fE�0���nӥ��\Z�B~zم��蕁*ז�	�&��\\c��=���]ɤ|����6��O��O򒕕�iped��F���^�r�����{,�pX�Ʋ۲\nrn����l3�A�>��dޫ�QW�D�@d�H�ޮQE�D�R�#�����C�q�XH�����Y¯[�f�M�#&1\Z���6�7)�r>d^p�a`\'�����4\n�6���Ԃ+ٚ���\n�,M�h��o(0ӒG��yK�WՑWV\Z&�q��8�?7|�1�`�P�Ѓb��L@S�/N�$!������w.�$a�o�)�-p6�J��L���,\0B%��(`X���_0�X$*�^��jM|���������@�E�\0�Bė%nib-x��El����;з�i�Q�t���w�����U$�,���_�U��l2O���:�Af����`kmj��xQ��p!��K\'�\"�l3rU�2Ū�g>-�����1},�z�Pom����\"�Xo1�P�of�iB-�9d\'����rS ��űg�f q�{0�;�S�8R6(�(���}����L��dhgA[+V��\"�OQ��Mg�5>�ǆЦ���&;YF�G�@�X�!;H�k��\"q\"����g��y�����9��S�3v#|���X�$����Eu��k�1\\(x�z/Ļ��0uj��n���E�2�f��3�(�S)nt�������WU�/�	�<�qw�&�=��RD+�����\0\n��1<=*���������k-�>l�R·��/�=�z��@*���fuѤ,�T����]��o�mt�$��;��i�犩��AE�MM+I8�(�B�]}����J�=ی���]��J�\n�{�ۮ>��Js��޻�%�lŎ�\nJ���כ�O����=P(�.m��fy�d#����u#�FCEvi%<T�[�8�έmP�fxaf`CC��9��x�K�f`l\0B��M�V���7U�Whþ��Uf�\"��cMc*`�7a�c��+!M\\�b�V8��yHM�`�,E��q����jR�k7śo�7�)��$����D/����V�֙����[_uMcl3�h��,\"�p��T�#�a�W�O�Á#��J7�ʺq�W����F�_k��$��V[�>�Z	C%�I���hx��z_3�P��6�٦�F[X\n�n�^t�j�H\r�Vo��kb:6��>Ќߍ���@u�����ה�D\ru�����6����?�L�\Z�2\r��ߟ�ʹ~Hjo��GQYt��\rk��Cn\n�\r7SY7}��@��(�6P��eu��禨Pr�?j����XGC�q������B�h��$\Z��it6K�M0�`��oK07��)@��|L�1�`>K�G�tz�ѹ�t�zB:�(�%$���h����(�6����2- ^���>`������l�J��L�(N�0��C7T�N�*K���`O�\nj(9{�(\0kxn�}W�E�O������W�+8��qt���p:�`�.#�5�Pۃ�ǕD\n2#��=�!$�$l�/�yp�R��[���\\���\0\0�v�t&a�\r\0�5�`v\0!m\"�SrE���L��c%uHݻr��1�@\Z��`�aAD�B �.v0�nq�\'��a�j�����L����a$�����+��l�a��]�w&�*W��ǒ,�v)�ap�~q�FC���\"�2f�>���\Z��I�KN�i��>�ّꜥAe\ng��[r<۩�c̭#��s���ger���`������ʾ\')-��\n_	 <q-��*��b	@�n�st���|��H�3\"�8m�q-��4��pvZ`1�)� L�\Z��E_J�r�UN=A�B�U\\�~:lr/��3ų�)�@������nh�J�-8͖0G�.w��\\E�$$i���I_@�j��֔Vi����ތ\\\"��e��tq/Lgo�����T}{��\0��\"�8�]|i,\"K����dF�u�v���p�~qyR�@:^-[P>��k<2�P�-;g ؉w�d>2H\'���n(z��{�xp�\Zz�c�z:yPY��ڞ���I��2\nc)�f��VHk�I��jPǊ�6���Γ�~��k	��P�T4���i���1E�l��Z�4L㶎�~\"���:+�th L�y5f�&7y3��A�Րk!_1݊�\0?�<_��G;8�a����̆��M@m��2�7}v���f8�Y�Y��q�Qq�,,�;�@UϭaC��TG��ܨ�*��ظ��)�D{S�Z�Z)ĨjTJRQ̽8�Z�Ֆo�����5�̉Ӑڦ��)?�h�mHS����B�j�����Sõ!\"-����kK���X��Sa�뢳�@A��_��g�^���Zn_Ț�j6�mo��7-Mj��$\\Gbm��a6�oU�F<�����cos�&��Ϋ&�o�XvJ���Ǆ�\"ئ��srZ�t�9��-�%\\�l�ak�?o�I��(�ne/Z�W�9w�����9���$���۷���c:����l/[�-1��H��Ť����������ɰ�J���Ce�Plb�^��x�sI�zZ��C��L*�7��3��0��#�=:l�&�,\r����>}}����[�gt��P4N\"�lGi@�\"���l�����½<r��P;l-�t��ՠօgde���a���K0�\0���K\0;�/Ne�@_D\'dǝ)\0�����Ԯ0gt.`�W~�7�o��hS��H�\'����^$N_�x~�Rts��j��ALS8li�Y|؇�x��`?�\0�Xb��w���Bz\0��39�$�,	P���)]�.�Dt\'�qܥ����C����{�v!۪�\0/>�3\n���{�uNMUW��4��}g�öñl��j��� >��&�$�uQ�ȥk�\\���̀=�Y���:��A�;�8�_�*崓�Z��A��:�oR�P<E�!i0���ئn���Im�����F�:��a�W�@g�K�g�7*\'��z\'����W�3��}��m%$�=*\Z���럿�3ĥ��#�W2����p�\ZB��w`T��r-�z�axE22&4��&�<qܒ���0�\'�jh�;j,E|E���^���ǜp��o	�,�Ұ^�ޓ\Z���ڇ^.���#C��s�;_T[d�/�d%,h�^�(D��lM�ߵF��{&GyYc3I���Q�����t�.�i@\"`i��J�)r�T�N6��`o<��	uW�k��01�:!�EY�!��j�b�LV�^��I\n7~�5}�Z�3՛�I}��0+i��\'{�5\Z�Eͭ�#��5��7�p��j�h�=kSb��,h\Z���l�tT��(�Uo��vܦ�^�\n�n�e���9���\ZX&���R��w�N���J�&frb��u3ɒZ�1-��%4\\H�Y*;�LҬJ�F|9y}N5�:2P؋�&��s��6�t�kѨ�*z�v�}�yܢ��Aq�	0�LBߗ��\Z$�ܯ5̊�F��M\\#G_>o��t�>�@�4�(Zt)]�iD��q�:�QE���I(�ǯrW�-Nu�8��&!^ � �d�i!�6-P8�{0��Y��Q�86@~�WУڮ<�A�4	-+���G�y�կ}���������SI#�S�dvH	=�/$s�fU���D��2~����\rt��/a��FZ��%j��׾��,����8�ۀy�p�F�ɇ��˥@/�l�0��z�ZW�y4\nH؏��K�wi�7�n���0���w؛5=��(��A��t����q��*h�̅/�s/h�C�+��	#��㢰��� Q���o�W䣼�Q���zS�\\�a����Ye��n0h�8����J��I#�\'��1+˾#lyaSKtZ��I�n�X�˯�8�	X`M��˅M�sӀ��z���y)�j���g���X�|!�n9TY�͗ͭ�YѦY�ͳ2��J!n��{��,E�S�NIC�.7I@^�A��J�/��k�yQ�(�Ȥ�6_�?+�{$��D��w{\Z.����Z�F�H�O5k�r�FĐG�2��+�V\\\nC����[7h	;�Ձ��&�SAF��Z�ol���Z�x��o%W�)K���%A_1V����,Y\n~�MR@9	`5���+Р�0֕�~��{�r�P5ށ����keoȒE?��h�7�\Z�R��+͑�?�WZS�%�\\��&I��	_,�x�㞦�z�ĉ��+K���XI���[��e�d,�(�&�|6���-?�GݢKn%��2	�����b�D(\no�/�Y�H(\\/�C�*���*��Ք�}j��lQ;��Xq����?ֲ�	��R����Ӭ:�1\0\0c�\nK�`\"-y����>�}��U.Ȳ�_\",�oh�ơ��濦��7�ÃO������^��h)�LLa[^}�l���pV~�\0�g򊁜����ˍ�G��YACs����;���_�m%��dF��L������^\"����?+D����$�js�\n��*ר>��l�僂SMԻ8c+X(<~zo�!4���������~{��h�0�VF?�z�~.�K+��\0n��=Z�n�a�\"��c�������\0�K�X!@�3U��t�,8G��d�\\L�g&����s\'�ej/�L�|��������t\"ft X�^���9�QSY��~V�\\Ex<G������ق�5pMX�j-{xWe]>U���x&*�TD��·����՝�Ӝ��\r�gfrQ�4�03(�9���W�YO�$	�k��0�F~I/�uQ<E.����دT\0c]���:?����<y�Ë�v���>6�)e�hX/W\"���mP־5q)�E�BA�Y��*=�ڨ>पtJe���՚D���X�����KڣX�r��mH�K�q�ʶ�rY��Ud�	�j�qXUd�yV�A	�5�,A�Iv��Bɔ�[VE��љ�i�R�قS�P�:E�\\�dkr�-~��tV�\\��Z���5G>6.+��(�����TY+F�P���J�T���RA���\",p=8��u��\0��r�n ��e͕���d�\"����S�����a�r Q3:lZ�K���5X�^��*�/���cӁ����2W욘��.B�o`�=ׇ��H�u���a�*��V�\r��&Sz(��T��:s�\\]\0?���^Z�~3���OV���❈	�X��.7�������{�m�Z�ڒ��k@�/&%>�	C!��|�LFl���6W0�4�1�ƒ�L��(g;�v�Ih�Ѐ�Q~m�ھ�t�6]՛�U�|���j�I�	#�z�ӛS��\'R>Nd�Y\n�W�����u�)�@��䁅��6Eώ$��Gt����Z;Ն�${�X1a�����6��)��2�2ˆS�9�9٩��Dy�Mc�\Z���\0���l��q\Z��Uv�N���8��.7��ЮW�Pn�CMr-~�����I(g��A}^\0޷t������s,�~��a�XtC�͘�+k,7�A���L�Pm�N�뙼�������Y����AU�J-UϚ*vťȜ?M���5�Wg�^����p�o\n�\\ry����[��7�1�D\\�w�r�&���4���y�*�gO�*mie4��lY�����B�4���\\��l�cg~2���oI�#���D#عe��O�{>�����!�\n�.y=z��Lj��L�#F��������Zfk�]=|v����%�)5T#��i\'er�%�]v�E�j	�0.�od���$Mˉ%��u�ߵ22#�N�{��49�+Q�I�g�F��߉%��.��=����AO����[&����*�	Ay:�4�FY�_�������e��ۅ�~8;	�r�ŨY�����)�/Xq���A���qe�6�x�`��a�})�Oޠ���+u�]����ҧ�Tt���g�u�1�b�,�C�$0�f�y\0k�=Cg,�\'��S:���d9�?x�a�/�8����4L�w�]����~x�S����Ni�ܰe�x<jc�E�C��Y����-��E3$̋���x�9��ȉ0̫rO�/]�Z�sC�,�.���y�6ʏk�	)�Da �������.#��,��,�MM>�\n�������pf��d�v����.c��>Χ2��]9e�����HI�z��BpD��#��%���Z�����͘� �xLq1��m\"�5l�&�E�N7���jjV��29�U�k��W�1�+��!~��@�����m�lLz��B���J�	��QO��{�ͳ���R���#&�i��.m�.އA{��RX�e[c���ނ��L^�dؠm�����6���kO}t���}�* m;�A������r~���Q��ߨ��_�ޒ�3�}�f>ދ�2�Ţ��v��)��ϗ�(���6�Ȏ.�8|-A�x�.�����PMRQ��A��8\n=����8!���L.Qk�-GǩN���arJx��l�\Z��5c�b�y�4�5�����d���+���?����w��+p��|c�۶ɶD$�X�w��|^aWJ1�3�|7�����l]��}oq�N�4\\�l��\Z������K Ć+���?����\0�nDp�p���p��XJd)�TW�9Ȋdߴh̒.nԐH��5�ƙ�\")U*�L��]�4� �ީb��ELS�B݅�@F�=�]������>�-�\\��<�����0��O�&U��/�{����-��(�J��04�dI�4�^��1�D#`�E¢�Px�K��x��W��6��MY�\Z��]i��oc��q�觸O\r\nek���T	,���V�\0\'sO���Ens(lT�X�-.�.C���������o\\�V�\n璇�-����F��{YV;��&[	��jd^E��k�����HɁ����#�G����u���I;���Rc	O%�qs\Z��\nM�\'�kY=l>pG��Э����a�2{�r��J���_˼a�(o;x�>Z������9XԣF�70�\"����X�� �p�L��x�²b5f32v��,�N������d�ڲ����³Q���o#�x��!�.�/V�\"C#+e�p����f�YV\ro&��Q��o�)�.|Lvȴ���>y��d�.lX�n�<Ŭ���yw�����\\n(*сJ�~v�y;�A����ھ����|�O�i+�G?i_�~r��O��P�J�MH1��|a���D�)�)TSk��R�3(�\n.�e��>���҉k��f>��/z�]G��(���)�?�������������R�~��6~�K��\'a،���t��Y��}W�Aw�v�K��+���:_[u\Z�J�P������G{o��ѓv��?(�N�S��>��E�����\\^E��E�Τ\\��5���?���G�G�>�G{:��\'}$��C�&�1�x*�xRY|��>]_��D\"����U�����h�\'u����y�4���I-����\\,Sױ�5�.@Km>hz_���{<t>=�\'����}�TҟB%I�����?�.�������t���Aul�.&zG-�Pq/�S�<�\'��\\��9�zt�i���1�, ���PlF��G�}���k�7{��G���usK��h�G�9�RÌ���{+���P�*/C���P���Kxa�coToVD�\r�k��6]\Z��a.t᧗]�`��^�rm!�z��,`r��5���y��n���d��:1���ip�d��F���^�r�����{,�pX�Ʋ۲\nEu?6z�\0�y��5���m�U$�)Y\"��k�R����\\0ۛ�8tG���_��|�%�J0J~Ŧa�q�\rL��{���-P�g����=���۟1����6���Ԃ+ٚ��͊Q��h��o(���t�%ݫ��++\r��U~��HV0f(�U�A1��a&\n�)b��\nh�����IB�;��0h�����8U��@&^�q\0���_��\\��/�ЙG$*�^��jM|���������@�E�\0�Bė%nib-x��El����;з�i�Q�t���w�����U$�,���_�U��l2O���:�Af���`kmj��xQ��p!��KZ������)V�>�i	=`���0���cYջ�zkkn��E��a,�RT4;Lj���!;q��(�,��[.�=4��ރit�) ��ˑ��AYD�54�dd�$#@;�Z�\n�Y~��l:���>6�6}�F7��2��;�j\\x�r@�9@�^#�w��f��>��ȁ�{��߁����)��>JDi,BJ`�Ƣ���5�.\n<d���]�L�L���-=C}>�x��Bf|�lx��p*�M&��8�|r�UU��i��b��d��՚p���c���\n�@N�E\0�z���f�KC��{�[6t)��a�n�M�Y��#IHv���hRt���[�.��_�6�c�������s��p��\"ᦦ�$W�׮�S�id%Ϟm���\rԮ]K�a	�ٽ�mW��p�����G�]���\n�bG}%�y����\'G���(C���h3�WZ���@d뺏�A���\"���\0���-x_��6�J��03�������Uӝ�6c�zOnB��曪w�+��a_O�*�|B۱�1����0�1�땐&�eR�Y��C2h��e)Z�STVU�P�z]�)�|�aO�e\'9ؼ�?�%z-�=g��Z�Τ�>�w?$���k\Zc�A$3�m����]L\"S����=K\\�?��*�8*�ơ^�lV<\n\Z�~��r���Zme�4k%�\0&}C?/��1_�}�`�BM��dXg�\Zma)���{ѝ��\"5�[�i�����l��@3~7��*��}���R_S5ԭhC�o�\\l�~0���1��j�4ljJ7��!����Ee��T6��f�)�6�Le�0�\rd��7�w���@�G��m��J���B����q�~c\r)̗�(w�G!j4�O��\r��4:���&��Z�Wѷ%�n��a�F��&�S0��o���o�=��\\{:t=!v����d{D4��t�z��\0�Jlp@����\0]�i��EW�6M�e��x\'Q̀�*}\'{�%Gvt�\'y5��=l�5<7�>�+�\"��������+���0A���T����`��Bm�W�/�<�s�@摐Ȓ�a��+fs�]KmRo.*sAF��k���$츠�?⠦� �M\"`AqJ�(�[��~���Ur7\0�L��\\ \rm�0�� \"b��:�C����Ȱq��]J�V&w����0�~[�H]�n�\n6�0Վ]�.��;@�+��cIq��08�����A�!��G�+߱��\Z��I�KN�i��>�ّꜥAe\ng��[r<۩�c̭#��s���\'%�$\Z����/�9|�#�}ORZ��:@\"x�Z��U�� \"�6��.��G�m�)�`���a�m�T������i��|���05j�{c})-�\rPV8�\n�cq���ɽ��������򪎻��*-��4[�	���SJ����ً��&}-\0��o8ZSZ\r�I��k{3r�\Z������Ž0��Y?hS;�S����rT����\\w�a�AK����dF�u�v���p�~qyR�@:^-[P>��k<2�P�-;g ؉w�d>2H\'���n(z��{�xp�\Zz�c�z:yPY��ڞ���I��2\nc)�f��VHk�I��jPǊ�6���Γ�~��k	��P�T4���i���1E�l��Z�4L㶎�~\"���:+�th L�y5f�&7y3��A�Րk!_1݊�\0?�<_��G;8�a����̆��M@m��2�7}v���f8�Y�Y��e���YXZ=v���[Æ����=�Q�UN�o�q�%�kS��`���R�Qը����{q��T�-�^���k��!�M5sS~>��`ې&����SÅb�\0W-eɧ�kCD�Z`�O\rז ����7�����Eg���L\r��e����9��F�[��&����a�,�MKF����$	בX�o��[֔|s�&��Ϋ&�o�XvJ���Ǆ�\"ئ��srZ�t�an�n�e	�,��A��/�M�TDfp+{��Z�͹�Dn���i\"K����b�ѯ�$����$�H�Dt\'�I�}\r���\Zf�e��s����O�Մ�\r5֒�?/l���0xx	����!bB�<�q�D[ReJd	�<_D?E%����NBwM1��v䚆05�|0����S+�(my�������|��M�&[�*�+�wy:`�X=�C����1�y>S���^S\n�W�QJ�e9�-fI^���5��U��1����N�sؤ��`j�-ݟ�Q�)1e�W7K����4k9���g���y���k�˥�z�o�_zA�a�2�&|�g�U8�|vG�L��3����Z����;���\Z8\0B/�p���y���ݽD����P+�P�r���!%S�b���n�t�qj_ԡ��E�=q����o�-m-W\\{�hӏ�,+-�(��s��0ܵ�onã��w�A�v)�_�s�!����i0�����C?�)�ܽ;��Q��Ƈ�ޅ4L}�.(��(����\0���9w�\0|�,ȤxЕ)`��(b�Wc�$%\0�]!�e58�T䏍ź�J}�Y��]6��9V��G����$�w{����*�<R\0kA!�T�qtݽ��1�fZ��e�#�ꊹ����Q�߸��:���k\0��u�2y�G�OB�i�u�A�\"ue֭��cД����h00�\Z�:�s�L�;���IG\nrPEE�����x���(����F��a��c\"(��QS&SO�+*��\"��H:�:�a[	e�㱉�\"��/pl��i6�m0��t��������܏�#m��rpW}ZR�gF5�=��#�`�QS���x�yaзB��hA��,�Fƃ!hA�~�O�X����R-�a��a��tUSt0��V`v\0_C�G�c���G�ַ�m��@3>��\0�X����`}���f���{���;���w��0X�~V��xX��@�����=�v����p��j4������+ht5���6Č�����V�Cw�+�#r���h��\0a\rA�Ml���H2?{$��C��\'��{ ���#�w?$�����=���CR�9i��#ip?$\r��}��Ig�Ɨ��a��&s�n5�\n��Ɍ��[�]��w����nΑ��Pog�0�	�%9���K�ި���\"���;ᄑ�����1\"z|�򵣸]z����cS���}��a+�@yVb�#�J��r�	�ť�?�(���k���o�%��'),
(2,'1_6b1b73a705374a94',1719321426,'x��=ko�H�����h�v��eI��q��8��Y�1b�� �ȖĘ\"y|����q��~�UU7ɦ�z�qffo���d?���U��n6���a-d3>v��w�zA)v�\'�Oj���7���v�������_��d�:8�?�����\Z�k���������\'̰�,�y�&�zJ_��2���q�\'��p���G�1&K:xou���Ѝ\\f�<=n$�C{�{�Ne�3��Fr߈�4��q*�6�1ƴ���-�}�B�n�2�[\Zv�Y\"z�+�C7��E���|��\\��1䧾y?]}l�t}y�tm�2rg��h\r���4�F0]m��8{\0pb7�ڈ+ՠp2�ndD�؉{��yC7�4�,�zR#r\'�HH�I�d�Q�\Z�:�W ��~]�.Ϛ���l��|бl��A{jN����m�z�~�X-���lt�k���������Ǜ�v��.�N/?�~4�������5�o���\'���ɠ�9;y}�����49n	<��ZBI��|vg���5x�����!�{ c�\"�V}�>\0�\'AXo\Zq¢�r(�4&����+�\'^`�\Z?׭�x��;Afe.pr}ꥠTD	*�ʀ�\'r�J׽`Ԍyħ/k\r��s3#�l�Cu�čoMش�l��6Y��tݖ�X�	c���ܸ�f�6~��jƽ�$�n��(��y�P3\Z\n�\r����% ze�`6�xT3@�˚(S3���$�و�ca̕�P/� \Z�I�0�@I��D.���^�ߚb���yY�2{�T�M���6\"�����*fc��Vݵ��q��x�TRJ�c�X����\nH��2���Y\ns�bR7����JEb��j�s����#|�[����\r�\ZE1����,6�\0f;�s\"��P��V%�����3?���`{��;�����Ν7<��\'!|~��d���~�Dp� t�y>b|-%2��J���dI�jhLEk5�3���K\'_OR*�h�|�`���	�\n搱\n\\�4��؀���I-w�v��F�~<l��V��C�r�p�n�Dt���c��Q{����w*j����jd?�+�x���9U���O�O\"�a��A���ԍl�#�q#����\'\n/�F��ף#6ir�n���vg�o��->0۶5���_�*�Ϣ�;]*�V���J�t�p�M62I|�����`8]Kg|��x�(�M�|<n\0�1up�B&u��I��J��<\n6�P����>d�%Eo�k��©�Lz����me|�W�bkn�c��7������;�Ab��|_t�҈7斦����P�cZƒ�(��a%�� ��M��q#�4�֙�d���#Z�{����ZmNZ�r�q��<%x\\���d�g�z�9�o��(�ysg�4̆/ƈ�	����3v��b9]����u��iϙ}� P����0���j HBF��_Uޘ��h�\'@P�d��zg\r��X�d��Jsh�!����}����@��jdY�jV�M�R�Ӡ���?�Ot(�)�ϣ�����fֶ���42<��81~bn|�q�%q^�17_cS���D�S��fT�G�܆��@fV�;(��>Ơ}�C�uJ�7�;�%`�EA\Zs����L�P��A�J���8��}�>v�����(Y_�r�y4���JQ!.���A��`#�|-ϔe&?�:M+�i�BSB;���l�@��E��j��]�-�6d�[�wN�K���I�c\\`s��8	��g��5̎��5�풪k�:��3{=Eѭ��!s@Fa�i�|b�*N0+U��r9Y!���(@D\"����c;rC�͹1qgF�6�Z-c��al�g$���lnL����8q���[W�|�g3�A���\\\\��͡�(XP݈ϲIu����ͼ�f��pS7Z�\n	-݅4��4�	��0�Tzq\0�ܳ%�Z.8Ohi�Є���+h�������&	�O��3�!v�P\r�	�1�8\ZY�HC&V�q\"+;/����E���\0��YD\"!Wp��nE|wPy��HNOJ hL��!\Z3?@|����\"M���s�ͮ�:͎�mm$�z� ������ ��H�\" 62�\r����J�{���(���h����#�����V��j���Hn����$��N�9ۊ��-Y�yXi�\n���{HL�����I��)[��%U82���v����>	҄j�@��Ɖ�4E���8�93]�}`O@3�8��0�#�O	H]L@YD�L��^F*22mp����c�T�����q�ɺ��ɛ��aZ�q���H�@�	F�иH�w�cE�ĸƍ(S0��A���G\Z�$�g�u2�<Z7��e���ie��{�1�($x�z7�Ļ��w0t��n��>��ޔH\"3>4& ������7rs~�\Z�[�x��4��0�A��\"�>����O*�� �$]���*҈�)�07��֫��J����&|[_�oq<ug)��$!�U�&EUЩX�z�����f�f󲗜��N��S��N�%	��ME��p�W�#`\n1�,��`=�և��y-��\n\n3�}�s��W�V~���w��S���#(���v��)�᫿��P̖�}A���4�F|����U��*���R\0����Y����6�J3�� 3��\"g�ڇY�ݐ����zrK����h\'�#x�Y����4dH��� �p�-&�oQ�FK��< �&�0#E��`��[�ҩוX�>V��)7x���s���Y�~�98k�ղq$j���nHz�d���&��ƺ�\"��1�,`���1�:�δ���G�_�ƾ�{��[�^�Hh�fۊ)\'k�����^+a0\rLzM;Q�$���W�l3ғM�U��������ݙt�bgܞv:M>X��t�6�ߌ�2�@e���Z�7��D[�6hC�3�0������W���TL�L���������9����_Ee��T6�Ӧ�cg��z*�L���̏ �Z�$]5T�沺ɹ+���p�7]���u4�N��μ�?�:��L?IJ4��wc��F-ث��l��a�F�\\)a�)��\"6�0·\0݂�k.�=8.;��>Y�|D4�t�z��\0���吾��A��kh�ИF.��`�TX�0��8�|�P��p��9�D�\0�$/ ��GX�uR恸\".�x������[�Wp�c�=�`�t*��CF�5�I���q�S����9�	d	ذ]h��A��2���� #�>\0H�L\Z\0�#jʀ���$���bI��L9�b	%5H�;�J��hB\ZN��`bAD�B��.60�f����������w���\'A$��H��%:y��q���ΌUn]ϋY�Cȑap�v���F]��G�]2��1�����E�N�aU�>�ّʜ�~i���\r�\'��᪬�Ȣ��!�� O��a���?s�f�컂���,qI����;1@���H�\0��w�1(�1�Nx��A�E��aG7Z��i�M��h��|��\ZU@�E_H���\0���B�O��~��ѓ�����M��=�eewO�Zn�h��9v����w�� !�>������EiY�8��m�O�P���$A�3\n�\Z���j��A_x���3�˝.3���	�ʱ��d�VEĹ\Z�Kc�����h�>w2+��ƚ=]������\n���\'�����7��zp�}0.����� Y����So;�o�ߘ\"��η�c[��-]W?ɫB�o;̶j�E���$�3�OGٝ�ݚb��<w&���RRU� ��,} �f����#�U>9)V�@�4E{�qe�Ӭ���P��|��0��-���?�д/p��!m\ZR{^�U�.L��\\u�~�(~�g\Z��~��f�#�]�V��V6	nfͶEPk �Iq�o�����g�ǉ�G9e��	�XE��?��柿��rJq��n���N�$��mg$�)��d%�3�b��v�T]�^����%w�jR��c���|��7�m͇���m�P�4pU>j���Z��F�Ӌ_�\r�1h�FX��p�*:�	2�}�g�e=<�^��\\{u-J\Z�TR��_c1��2tjj$I���J\'��.^�C=pÏ�~����uZ�W:�o�XvL����8�	�Eঃ{#�`:um�y���}�?�x0����惓4�Q����Q����+��%;\"7�[�0_�S1>�~t���U|Mxh��Z�;�B�Y�.C�δ�ShFːc���aE�^��ˈ�e��9�]\\�\\߾�]=�l��#n�e��Yֳ��0��>���5t��S����ްF�����ͧ��d��\'~�(\Z\'믢�\'�\0��s6^�x�;��;7�E����Z�37/��]3˃	�	�,o��@H �{7�L<~*��xtBfp|�#�}R�9�E�c���d�kZ��}�B�M9��\"JKt��L݈��a��$���8d�YBLC֚�X<��P\\~O�t��V��À��k�B�\0�������X\0���š?q��]�#Y9nPG<�?��J�uwl�Zԕ�^<�{Jmuvl뒪ʦ��a��O1����n��X��,n����\"�E1\"W�WA�*�O�lt�����0wW��\n��	(!����G!�G��X� \Z8\"�.��EH�\'O0nH�`_�)J~����3��7���;mU�G�/�O�d(�������V0�!n~:3N����zA	u��z�\Z\'��ӏt���z$]s!��r�C��<{F�10�(W�g�$#B��k���5q:�$<�H��Mm�#��\"���\\�q��-:�>GL��[�!K*ԫ��${, *��R�+�;Ȑ���c��r�`��p�K�]C��#I�ٜЕ�Jx��:L��<m5A��[?�T�,?]|�5H,���̦ȉS�:�@zݝY�d\n&�c9 ����O�V	9(�������\"L��n�\\���xCM_)Vizu�W��U@�e9:����J�~����#Y��Z����a?�q4���Q�#2t�\0<�L˶RGU���[��.�q�;{�v���i�8�1��\nX���R��J����VH�����Fx�c&�S�3��=�$��;��s�$͊h5�ѻK*U���^��@Ư5:�D,��]�NG�h��y���\"_Ǡ�Bd�L1�wD�VP��yծzY���9��rtD�N�GA�kx�+s���v��>��\"J���:H��\"���%�����ɩ�4�$��2�2M�Y�n��iނY�g\r�$�86@~_K�Qm�sP�+:��mEԵ)]�[�/?vģ��%��\Z�S���D1;�������Yz�(Q,3 �U��嬡��\\�FM%[�م���z�g�#�̷G�y��ZBk�a��&���-�\Z#O���4��N����ewLh3P�I�����r�|�#�7+z��WA��5:��d-�i{��-`,,�/]_Ç�G�|yD���\"S�J���(������(��*�<�\\��R3���t�1+���5-eq���Y*�4Bz��Y^���噺�����N��X�G-�`��-5S�?�\Z�we��;�yQl5�uP��L> D���r�<��B}�^��nT�~TV�P(@g�;7��R>���H\Z�u�N�5\0�T�pW��\"_+�Ȥۜ/��)�.�dmQ�H2uN��B��WJh�\"E�|�>���j	-b(�p��5/q��z�����4��$�U����)##Au.ͳ��]C����R��j����C��b,5s=�X2~�\"( �0������&�||�:��x�����=d�`sE���`%�,Y��a��\\h�6�,��؞2F���_h>L��]�[S�(��)��2�f��9v$l_���w;���=@����u�g	d,�(&�H��l�)}����#7+�L�(!�q���J�����7�	��&x$w���e<�PS�����hQ;x��?��$��g��̒BÕT���iV������r�G��` �5���că�|v7V3����L�mQ91��m\Zx^p/^m��c��B�h�{Y����3>���.7l.Ej0S{��\n\0�&>1�wq��Z)K���24�m�K)-v�yCo�m%��dD����z\"�c��C�V\'K���D���\'Y�	�o��j�r��֎=Pp��\\���\nc?��f��;F��۔Ik�w7#ڣ Hr���%z\r��8�8n�����f��d�1�����e��,���c{*ߤt�,8Ǩ�`�\\L�5�P�kv�(�I\'xM��\'YQ&?9��hC�x_���9�QS���~�-�������kE��Y�}\\�u�*�W�<�%mʣE<�U�B[��N�4�r�EL�Z��\\�\'\r��\nJ����䛵�1A� 1g�	��4����HE.�<�)�d@_7�_�܌Nߜ\\�t�Zj�~�g��4#���\0��*C�\rT�[�bRX)d��\n�Wj9�F\n�����Q�P���5���Q��JΟ��W�G15�jC&mH���u܆�-�\\�r����\\�0�eEVgY(ح�q&�r%��WUE��1��i��l�)5(g��X�y�9�p��d��f��ս(���9\"}0�N+\"�Txj�jQ�4!��l���ϗJU��u�����x��3u���X�nr�\r$6��R�1l�~����)K=�Vo��j�C���@g�s����})�]h�b�Q��)k���%�&ְ�@��v��V/�Z/ߺ�d$��Z�+V�u����	r���e�ܾ�~�0� ���fhAy-���B��(�0���N\0��(@��\"s�j/&�z�5��#��p���\"+�Ɉ�<l�rɹ�!�n��4ld�TF�8�Ԋ@ڹ+8�۔�d	u�>�x��(�4dk���g\\U��M\"w���ǫS�R�Q��iE����E�u���m[�2�a�Cw�0OlXx-ݔV�%��?����	-���ʮ�X�_�K�����;B^o�\Z���;�MfYwҟ����\n�Id��l���lh�].���1�4���&�:�rO�8K6�.�n|�_S�]*�Vm�&��oc��B j�deP_���=m�(�{ڂu�����e�x����{e��#��?�dr���q:��g���\n���f��,Uq�Tjʖ�2��7<\Z|�˽k��{���Z�8֫&�B^ܷi�$�B��9F����n�\0U�&7���!���\'�T*ť��f{��B��$������?ɼf�;����(&�@���4g$�a�[V��x*���#�+���K����h�/3�dՙ,G�1�����˶�dsߤ0z��$ߓ*4�j�F��N�ds.݉\Zv1���Da\\P��v;n�H�$���V���6�Ȍ�<M�@K�i�sN�6�XI{T����o���jw�zZ��\'J�z?��&�~�{V�@N��w�C#�q}��]��e/JƇ�w^0;����ŨYW.��lV�Vǥ�B��o���X\n�6/�F�v�jB:d�0�螺�ӑͧ���a��+��Ij���C}č	�60A~)��m��^�z��ث�_�C��쮜����wo�/%@.�S«�:n�)��j���Z�R��b1X�ߚ�1��w���ʓ8�n����j��U����c\\�W��x%����B��|rk��jހ�@�F�;�ev� ��oB��ݗ��/�w_�-�c]���rkC�F�w_>�w_>n����}����1��ݗ�U0���,w���r��#�,5���R������*���8��TƲ����)zơ��ݗ�{b���,�����}���r������W������}���r��z���}���r������^��u:��/�w_����}�����x�����f�����}���r�eɐ��}���r������ݗ��/�w_��Ԃ������}���R��w_u������ݗ��/+��ݗ�<w_���ɋ޲c��uǼU�{���:��+*�fv�˥<��w(��#�4%V�e*΄��/eS�\0� �Ɠw�d�e���	Y��kP�Nڢ�N���x�1r�A<V3��Z�����I��X&����Y��u��l��oa/u�����.�=��O��m�k�s�Ⱦ���3�f^\0��I����x#�S\Z�;:��� J���ʹHx���wxp�<�,?��N��s�:xxކ��=:�M�\"������\r-�r�f}�\'��:ف>,�����q��::;)a#6��ѓ�S%�t*�;d���쟕>߉��Μ���䞨�]<���D�$)smsx�Jg��L	�	�rڌ�����ʃ-�r��ҩ���\n�8z�4D�nk���&����;��uz9��-e�:j\Z��;?�r).��\0!��\"�9�0��S����i�[��H\rz�\"g�F[ٵ��\\ѡ8Wt3��g�nCA���������8�/;\'��2�\r,�ٱ���\0�v���j���ȷ��<���-�ֻ�e��1,\nt��W���Y$�;���xr�݁<�)pG�\0[xp`�q�\"�N���F(i�j(�yɑ;�5}��ɓ�e��Evြ k\ne��z�o�T���e��qY�T*(�:�C�3�T��sz��9ՠ�����VG�������C���TE��{#�-k0��dE}�O\"�`߲�اS란����B�o��݈�on�	{�\'�f�Iy\n`2|����n��{��h��i�S����T�#a�N��6�Mh��:����`I7�T��ϱ�k)�$�l6�ļ[@� ���%�������6��������->�6���㮣Z�_��- <w[[|�m�#��n�{N�m��	����.�3�\n����b������a~��Q�v�6\r��i����ں���!v��C\\�Oe����e��^w��Z��P��\r��q��������~�P��H�ί4��ӆ�yF�v��v�6��c����9l9�\\Eà+�@�	�i.�6���Wjs�߂�B�r/���S�[\\�үDU�����]K������n8ȯ���!t#q#�?��N��KF��iR�@^�5b��=}�3�{����YkZ');
/*!40000 ALTER TABLE `cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages_tags`
--

DROP TABLE IF EXISTS `cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cache_pages_tags` VALUES
(1,'1_e430b909a0197616','pageId_1'),
(2,'1_6b1b73a705374a94','pageId_1');
/*!40000 ALTER TABLE `cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline`
--

DROP TABLE IF EXISTS `cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
INSERT INTO `cache_rootline` VALUES
(1,'1__0_0_0_0',1721810075,'x�M�Mr� ���	��_�]e��5��.#�f:�{e����>O�g@Ï���@#S�=��YuXت򦴨wP��i���л�REu��\rS��B{�	�@}�a%7�O�6�@֙\n����3�D��Z\nH������X�\n��������b�t-i���=�S����Te�x��H�\r�8��:׫�q�.NAZ�����ׇK��#W�1ƪr�T�/��:.���u�u�A�EO3��z1,\'sB�ԙ�e������;'),
(2,'3__0_0_0_0',1721810075,'x�͑�n� �߅\'����I;���\rn�J \n&[U���4%bڵ�vB�a��OC\rgr���p�Ѐ���]�4W\rW� �qPaf3Ye�*3��	3~dj�q�	�ۈ�������ɢb���X] s�eM���/�l�,~�ޔ���a��d�����~7o�&�z}�X��p�S���n���� V�i�{(�DYߺd����U��CT\\ۅ�I��{uUp����N�G�N�&(��*�#�ţ���;��G���q>�x��0o����w����)*ep���=��7Z�+L'),
(3,'2__0_0_0_0',1721810075,'x�͑Mn�0���ġ��t�\r�-�±�x�w�`�۶�*�/�7O�i��lA6\Zj	�+�5���uJ�T��\n�V�*,�b&����2�H�0�G���@�x�b��zR�_,)����z��)$ʊޭ1�3`->9��~�zS�;T�1�a�e����r�A��	��c!bN�pXd���ٽh��9�P\\���s����[ 6�h	��pۇ�I\rEvuUp�ל�Vwv���g�����e^�^f��L�e���E�7�?�R�t��f��2������R�*q'),
(4,'4__0_0_0_0',1721810075,'x�͑�N�0D��_����ȅS/��r�m���Q�TU��MSGF\\q��e=;��P�ł\\k�%\\\",@tֈ��nS��%O� h1`���*f���=Tf\ZIf��Ԓ�9�ċK��t����%Ŵݢ��@+N�C�����\Z�>��=�m糏 Л�<�8�:�!u�,��n_����]ئ��G���	\':w��a��v���z3>��Q��]2���=U��}T�mC�\"���*��kΣ���SSʳY�p@7gt���Y})S�B����Q�]�O��?ݥ��2E�tr|�z�J*\\'),
(5,'7__0_0_0_0',1721810075,'x�ݓ�n�0��%O�[z܅�G)1,\"M���V!�}.YQ�vd\Z��_����J��Ɉ�R����d�Ѭ2b^]���%U/�ᬇN��\nb���{�(�h@�0�\'�-�A,[���X�v��ׯ���@ڨ-�j�\'QoFkp -��!�溙���9yl����f����w�7�n�B���������v��no�Z��ԃ!i��F=ί�Nb���3���e�]�̠�v�%��V�#���ґYi�{}�y��=N~���q�{��~�,�m��,~��	��B�+��C��?&�w��\ZF��԰W�Ҟ��k���'),
(6,'10__0_0_0_0',1721810075,'x��Mn�0���ā�9�n��\r�-`��Q<N�w�$&Ȩ]Ҫ����4��i���L��(+%J.N�J�\Z�*#��X�T���p�C\'}����CF�D*�	?5h�N�hj��޴,�;��k5�4Ԁ6*C��Yu�\'a{�5�	�m�Ms��$8��g�� w���2]�/��R�گbݪ�LD��Q�\'��j����X�ƩC\"Ҹ��z�_^�b���3���e���̠�v�%ݣV����ґYi�{��y��5T~��ޙ�{�����a߄Y�����7�\'¼��j���Yrj,c�R�VEK{��OtQ�R'),
(7,'6__0_0_0_0',1721810075,'x���N�0D��\n8G.�zi9[n�)V;�ׁ�ʿ��82���}��g�����(Qsq\rb#�`4k�=�4miz7��\'V�U���<Ӏ\n!��-�i��;T-޽�읚� KK=h�\n�̪����	���e@^��h���G���<	ց<�>�;\'7�D��>u�Pxh��\09\"�8�[�:sb�nY\'\r�D�q��z����b�a��c{ʡH�.��6��8��L�ɔ�tt��0�]?1/⿕V�*差�^�W�ÿ�ߺKN��dRj�T���<�\0,�'),
(8,'12__0_0_0_0',1721810075,'x��AR�0E���)P/���v�qc%x�ؙX.t:�;\n�3f��^����5�p� w\Zj	��5b7��)ݧ������+f���=Tf\ZIf��Ԓ�9��#�^,�^_���-Ţ��X]�-��!Qvd�f�A�{�ʑ����\'�MI�A���1��p����c8�Ӡ;���	g���a��	������笡�e}㒙���yب�%C���>$Oj(����˼�8N�9�uj�@y>V9��[b��?ˬ���]���m�򷻔,�O����V\'�{����*['),
(9,'5__0_0_0_0',1721810075,'x�͑Mn�0���ġ�g�@Wl`o<P��cZ��{\'#Wݢ��h���<�g������j8\'���S��]�<Ms��@�숃��5�tS�g��.4�e,x.�s�9�+�UO1ѐԤ������^t輭�3�`O���\n���a,@�������P]M���~�܏�⸹~E�X�״ʛ��1U\"�|�$\"�Ֆ����b9>�N1>nCv���-�L�Wn;ʑM_��V�P(��<6v{wf\n�D1k1�3��˿m~�]��w��_�yS��.���Բ0Z�d�Ý�A�\\.߻�,B'),
(10,'17__0_0_0_0',1721810075,'x��An� E�Rq��4M�/�U)�#b�.\n�n��w�U��u9O>��J�f/�(����3��3���}���&n�_���$�2�\r��5hi&ɳ`���\Z��ޚjd�N\rrU�;[[�Fe�E0�F1��0Z�K����Ѵ�{��霼\nV�lz�̝�|!i��/�j d�_q� �D�S�]m\ZV�u�`X�4��Q���{4&�`z�1;��ѡ��Jo/(����t�\\2������\'�Y�����^]+���[��]�Gw�I0��AJ\r���ޙ�o�G.x'),
(11,'16__0_0_0_0',1721810075,'x��Ar�0E�����V�@Wl`�1�;ˡ��Wi0�N����ח�����Yk�$�\"�A�ֈzf?U�W.?@�z�A����U��XP�i$M��+SK��;�Cs��ףz<��X�\Z��mN_C����d�A�{�Ё�v��o Л���8�j����]�~k�a��n1&���c>{�wM�Gۊz;����B���Kf���/b���p��e��<��8^U@\\��㠛3o��(��*�#��\'�Y�7���8��������R>;Kɂye�J<��x�4}�p+0');
/*!40000 ALTER TABLE `cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline_tags`
--

DROP TABLE IF EXISTS `cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cache_rootline_tags` VALUES
(1,'1__0_0_0_0','pageId_1'),
(2,'3__0_0_0_0','pageId_3'),
(3,'3__0_0_0_0','pageId_1'),
(4,'2__0_0_0_0','pageId_2'),
(5,'2__0_0_0_0','pageId_1'),
(6,'4__0_0_0_0','pageId_4'),
(7,'4__0_0_0_0','pageId_1'),
(8,'7__0_0_0_0','pageId_7'),
(9,'7__0_0_0_0','pageId_4'),
(10,'7__0_0_0_0','pageId_1'),
(11,'10__0_0_0_0','pageId_10'),
(12,'10__0_0_0_0','pageId_4'),
(13,'10__0_0_0_0','pageId_1'),
(14,'6__0_0_0_0','pageId_6'),
(15,'6__0_0_0_0','pageId_1'),
(16,'12__0_0_0_0','pageId_12'),
(17,'12__0_0_0_0','pageId_1'),
(18,'5__0_0_0_0','pageId_5'),
(19,'5__0_0_0_0','pageId_1'),
(20,'17__0_0_0_0','pageId_17'),
(21,'17__0_0_0_0','pageId_1'),
(22,'16__0_0_0_0','pageId_16'),
(23,'16__0_0_0_0','pageId_1');
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `subgroup` varchar(255) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
INSERT INTO `fe_sessions` VALUES
('19312013448fe0d68cd7ed162e1ae043f327abdcbda5592a1bd0c6305056071f','[DISABLED]',0,1712854901,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:15:\"39KB5QaYE1RpOCw\";}',0),
('227375241ebc19c032e79bbb3e76572da1b5b0538aec5132d6e634aadc37a6be','[DISABLED]',0,1712918477,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:20:\"4Ga2w8rT1pyKQFBgiUku\";}',0),
('262caa9447a477b7a4a2e8a642aa26db32a42041b3e0d605da5d84b27b7be0d7','[DISABLED]',0,1713767935,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:23:\"qHzdV4c6CFe8XJYErbfOZas\";}',0),
('3b9a5d229f283f74870bcf7962469103feff7919b059c50631584f2fa4cf1f01','[DISABLED]',0,1712943309,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:25:\"nzaYQ5khvBrIxeFd8TwqpLj9l\";}',0),
('632bd7bdb84460f5431d0bfe6bee0c496ef5e5a9e6ecf74e0aeb16fd1b0334e2','[DISABLED]',0,1713168533,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:24:\"rbDA2ZfviMPlVBS9XtyTCoE0\";}',0),
('8bb049f2e98dee605e01d28547f5ec42fd8f805f0244724b36974651d55c0f49','[DISABLED]',0,1715609605,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:20:\"ZJUFSMBG8kpu1i0mIo6V\";}',0),
('946ada33950d58224ca374acdfd5e807c7e1d58602fc3d46a2bf6022760cbe97','[DISABLED]',0,1713340370,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:6:\"uv4C2X\";}',0),
('a2eb72b3037e5150aac1c684ae01cfe0b29a908040d3bc5351827094dba725f8','[DISABLED]',0,1713630304,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:21:\"KNZOkul3eQon7ym4VgERY\";}',0),
('b0ed5078b2ed98b36a3bb1a7c31fd05a785ececce1c5f3244d10f2d2bd302cb4','[DISABLED]',0,1712939443,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:7:\"gDEz8v7\";}',0),
('ffdb1e3fdfb09c3fc56cafc921d52a22ff00b1551c652a330cab1744b83c3cfb','[DISABLED]',0,1718866673,'a:1:{s:41:\"tx_form_honeypot_name_contactForm-5page-1\";s:19:\"yv7KCi4ex0pGLq5AodT\";}',0);
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `address` longtext DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `usergroup` varchar(512) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_config`
--

DROP TABLE IF EXISTS `index_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_config` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `set_id` int(11) NOT NULL DEFAULT 0,
  `session_data` mediumtext DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `get_params` varchar(255) NOT NULL DEFAULT '',
  `fieldlist` varchar(255) NOT NULL DEFAULT '',
  `externalUrl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `alternative_source_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `timer_next_indexing` bigint(20) NOT NULL DEFAULT 0,
  `timer_offset` bigint(20) NOT NULL DEFAULT 0,
  `records_indexonchange` smallint(5) unsigned NOT NULL DEFAULT 0,
  `indexcfgs` longtext DEFAULT NULL,
  `url_deny` longtext DEFAULT NULL,
  `recordsbatch` int(11) NOT NULL DEFAULT 0,
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  `depth` int(10) unsigned NOT NULL DEFAULT 0,
  `table2index` varchar(255) NOT NULL DEFAULT '',
  `timer_frequency` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_config`
--

LOCK TABLES `index_config` WRITE;
/*!40000 ALTER TABLE `index_config` DISABLE KEYS */;
INSERT INTO `index_config` VALUES
(1,1,1712846940,1712846894,0,0,'',0,NULL,'Pages','','','','','',1,0,3600,0,NULL,NULL,0,4,0,'pages',86400),
(2,1,1712846928,1712846912,0,0,'',0,NULL,'Content','','','','','',0,0,3600,0,NULL,NULL,0,1,0,'tt_content',86400);
/*!40000 ALTER TABLE `index_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_debug`
--

DROP TABLE IF EXISTS `index_debug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_debug` (
  `phash` varchar(32) NOT NULL,
  `debuginfo` mediumtext DEFAULT NULL,
  PRIMARY KEY (`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_debug`
--

LOCK TABLES `index_debug` WRITE;
/*!40000 ALTER TABLE `index_debug` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_debug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_fulltext`
--

DROP TABLE IF EXISTS `index_fulltext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_fulltext` (
  `phash` varchar(32) NOT NULL,
  `fulltextdata` mediumtext DEFAULT NULL,
  PRIMARY KEY (`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_fulltext`
--

LOCK TABLES `index_fulltext` WRITE;
/*!40000 ALTER TABLE `index_fulltext` DISABLE KEYS */;
INSERT INTO `index_fulltext` VALUES
('03394a29ed2144f96bced193919a622f','Membership Become a Member today\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 Join the FC Bigfoot community by becoming a member today! Our membership program offers a variety of benefits designed to enhance your experience and connection with the club. As a member, you\'ll enjoy exclusive perks, including early access to tickets, discounts on merchandise, and invitations to special events. \n Membership also provides you with the opportunity to be more involved with the club, from participating in member-only meetings to having a say in club decisions. Whether you\'re a lifelong supporter or new to the FC Bigfoot family, our membership program is a great way to show your support and stay engaged with all the exciting developments at the club. \n Sign up now and be a part of the FC Bigfoot legacy, contributing to our community. Together, we can achieve great things both on and off the field. \n   \n   \n    '),
('2708d02ff7a5a42f4024c2585a03dddd','Privacy Policy Privacy Policy\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n\r\n\r\n     \r\n         Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   \n Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   \n Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   \n Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.   \n Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.   \n At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.   \n Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.   \n Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   \n Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   \n Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   \n Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo  '),
('3d798c3f120fdabe32985de46a5fc2fd','Home Events\n                                 \n                            \n                     \n                \n                     \n                        \n                                 \n                                 \n                                    \n                                    News\n                                 \n                            \n                     \n                \n                     \n                        \n                                 \n                                 \n                                    \n                                    Club\n                                 \n                                 \n                                    \n                                        \n                                                 \n                                                    History\n                                                 \n                                            \n                                    \n                                        \n                                                 \n                                                    Membership\n                                                 \n                                            \n                                    \n                                        \n                                                 \n                                                    Contact\n                                                 \n                                            \n                                    \n                                 \n                            \n                     \n                \n                     \n                        \n                                 \n                                 \n                                    \n                                    Team\n                                 \n                            \n                     \n                \n                     \n                        \n                                 \n                                 \n                                    \n                                    Sponsors\n                                 \n                            \n                     \n                \n             \n\n             \n            \n                 \n                     Contact Us \n                 \n            \n         \n     \n \n\n\n\n\n \n    \n    \n    \n\n \n     \n         \n              \n             \n                 FC Bigfoot Fuerteventura \n                 23 years of passion and dedication \n                 \n                    Join today\n                 \n             \n         \n     \n     \n \n\n\n\n\n\n    \n     \n         \n            \r\n\r\n\r\n\r\n\r\n \r\n    \r\n        \n\n\n\r\n    \r\n\r\n    \r\n            \r\n                \r\n                     \r\n                        \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        Our latest Game Results\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                     \r\n                \r\n            \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\n\n\n        \n     \n          \n\n         \n             \n                \n                     \n                         \n                             \n                             \n                                \n                                        3 : 0\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Super Feet Stadium\n                         \n                         \n                            29.02.2024\n                         \n                     \n                \n                     \n                         \n                             \n                             \n                                \n                                        0 : 0\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Super Feet Stadium\n                         \n                         \n                            05.03.2024\n                         \n                     \n                \n                     \n                         \n                             \n                             \n                                \n                                        2 : 1\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Luton Bowl\n                         \n                         \n                            09.03.2024\n                         \n                     \n                \n                     \n                         \n                             \n                             \n                                \n                                        13 : 1\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Super Feet Stadium\n                         \n                         \n                            18.03.2024\n                         \n                     \n                \n                     \n                         \n                             \n                             \n                                \n                                        2 : 1\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Super Feet Stadium\n                         \n                         \n                            21.03.2024\n                         \n                     \n                \n                     \n                         \n                             \n                             \n                                \n                                        2 : 2\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Woodland Arena\n                         \n                         \n                            02.04.2024\n                         \n                     \n                \n                     \n                         \n                             \n                             \n                                \n                                        TBA\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Burns\' Power Plant\n                         \n                         \n                            09.04.2024\n                         \n                     \n                \n                     \n                         \n                             \n                             \n                                \n                                        TBA\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Wolverine Palace\n                         \n                         \n                            16.04.2024\n                         \n                     \n                \n                     \n                         \n                             \n                             \n                                \n                                        TBA\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Super Feet Stadium\n                         \n                         \n                            29.04.2024\n                         \n                     \n                \n                     \n                         \n                             \n                             \n                                \n                                        TBA\n                                    \n                             \n                             \n                         \n                         \n                            SurfCamp League @ Never Ever Arena\n                         \n                         \n                            13.05.2024\n                         \n                     \n                \n             \n         \n     \n\n    \n\n\n\n\n\n\n\n         \n     \n\n    \n     \n        \r\n\r\n\r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        News\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n\r\n \r\n     \r\n         \r\n             \r\n             24 Feb 2024 \r\n             15th charity tournament  \r\n             The big soccer spectacle will take place for the 15th time. We have once again invited soccer teams from the region and many have already confirmed their participation.  Our charity tournament is also always a meeting point for all soccer fans in the region to get together, chat or even have a beer together. \r\n             Learn more    \r\n         \r\n     \r\n     \r\n         \r\n             \r\n             10 Jun 2024 \r\n             Get ready for another exciting match! \r\n             On Thursday, 18.04.2023 at 16.30 the time has come, then the current 3rd of the regional league, our FC Bigfoot, meets the rival SurfCamp League. Here is some information about the game: Access to the stadium is possible from 14.30. Catering will be provided. \r\n             Learn more    \r\n         \r\n     \r\n     \r\n         \r\n             \r\n             13 April 2024 \r\n             Our new supporter: Luna Media \r\n             A Powerful Partnership: We\'re thrilled to welcome Luna Media as our newest sponsor! Their support promises to elevate our club to even greater heights, both on and off the field. \r\n             Learn more    \r\n         \r\n     \r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n    \r\n        \n\n     \n        \n        \n             \n                \n                    \n                         \n                            \n\n        \n \n    \n            \n\n \n\n\n        \n    \n \n\n\n    \n\n\n                         \n                    \n                \n             \n        \n        \n \n\n\n\r\n    \r\n\r\n    \r\n             \r\n                \r\n                    \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        Your City. Your Club.\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 With 21 teams, we are once again one of the largest clubs in Fuerteventura this season! We have three senior teams in each age group and at least two youth teams in each age group. In total, we have almost 900 members. We would like to thank everyone who has supported us so actively this season. \r\n             \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\r\n\r\n \r\n     \r\n        \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        Our events \r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n     \r\n     \r\n        \r\n     \r\n \r\n \r\n     \r\n         \r\n             \r\n\r\n             \r\n                 \r\n                    Gameday\r\n                 \r\n                 Learn more    \r\n             \r\n         \r\n     \r\n     \r\n         \r\n             \r\n\r\n             \r\n                 \r\n                    Charity event\r\n                 \r\n                 Learn more    \r\n             \r\n         \r\n     \r\n     \r\n         \r\n             \r\n\r\n             \r\n                 Junior training\r\n                 \r\n                 Learn more    \r\n\r\n             \r\n\r\n         \r\n     \r\n     \r\n     \r\n         \r\n\r\n         \r\n             Training \r\n             Learn more    \r\n         \r\n     \r\n \r\n \r\n\r\n\r\n\n     \n\n    \n    \r\n\r\n\r\n\r\n\r\n \r\n    \r\n        \n\n\n\r\n    \r\n\r\n    \r\n             \r\n                \r\n                    \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        Our Core Values\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun. \n  Trust and Respect  We trust and respect every individual within our club—players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team. \n  Openness  Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication. \n  Sharing  Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans. \n  Friendship and Fun  Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience. \n FC Bigfoot is more than a club—we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated. \r\n             \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\n\n \n     Our biggest supporters \n\n     \n        \n            \n                 \n            \n        \n            \n                 \n            \n        \n            \n                 \n            \n        \n            \n                 \n            \n        \n            \n                 \n            \n        \n            \n                 \n            \n        \n     \n \n\n\n\n \n     \n         \n             Game on \n             Let\'s keep in touch \n         \n        \n            \n                 \n                    Contact us\n                 \n            \n                 \n                    Suscribe\n                 \n            \n        \n     \n \n\n\n\n\n\n \n\n\n     \n     \n         \n             \n             \n                \n \n    \n         \n             \n                Events\n             \n         \n    \n         \n             \n                News\n             \n         \n    \n         \n             \n                Club\n             \n         \n    \n         \n             \n                Team\n             \n         \n    \n         \n             \n                Sponsors\n             \n         \n    \n \n\n\n                \n                     Privacy Policy \n                \n             \n         \n         \n            \n                © TYPO3 Surfcamp Team4  '),
('3e239e3d69de4b3b36fcd34479259a89','Sponsors Our companions and sponsors\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club. Our supporters and companions share our vision and commitment to excellence, helping to foster a strong sense of community. Through their involvement, we are able to enhance our facilities, invest in youth development programs, and organize community outreach initiatives that make a positive impact. \n By partnering with FC Bigfoot, our supporters and companions benefit from increased visibility and association with a club that values openness, teamwork, and community spirit. We are grateful for their support and look forward to continuing our journey together, achieving new heights and celebrating many successes. \n Thank you to all our supporters and companions for being an integral part of the FC Bigfoot family. Your contributions make a significant difference, and we are proud to stand alongside you.  '),
('4f6e807051e61027dadc02f9f2906020','Search   '),
('56ce185f3262c9101626cfd28a4127a4','News News about our club\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                     \r\n                \r\n            \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n    \r\n        \n\n\n\r\n    \r\n\r\n    \r\n             \r\n                \r\n                    \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        FC Bigfoot\'s 15th Charity Tournament\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n  \r\n       \r\n        A Celebration of Soccer and Community\r\n       \r\n    \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 FC Bigfoot proudly announces the 15th edition of our charity tournament! This beloved event unites soccer enthusiasts, players, and supporters from across the region for a day filled with thrilling matches and community spirit. For the 15th time, we host a marquee event showcasing local soccer talent and fierce competition. Teams from the region have confirmed their participation, promising an exciting display of sportsmanship and skill. \n  Bringing the Community Together  Our charity tournament is more than just a series of soccer matches; it\'s a vibrant gathering point for all soccer fans in the region. It\'s a place where old friends reconnect, new friendships are built, and everyone can share in the collective joy of the sport. Whether you\'re a real soccer fan or someone who enjoys the lively atmosphere, there\'s something for everyone at our event. Beyond the action on the pitch, the tournament offers a perfect setting for families and friends to spend a memorable day together. As the matches unfold, spectators can enjoy a variety of food and beverage options, including the chance to relax and chat over a cold beer. There will be activities for children, ensuring that even the youngest fans have a great time. \n  Supporting a Worthy Cause  At its heart, the charity tournament is about giving back to the community. Proceeds from the event will go towards local charities, supporting initiatives that make a real difference in the lives of those in need. By attending and participating, you\'re not only enjoying a fantastic day of soccer but also contributing to a greater cause. Mark your calendars and gather your friends and family for an unforgettable day of soccer, fun, and community spirit. The 15th charity tournament hosted by FC Bigfoot is more than just an event; it\'s a celebration of everything we love about the game and the bonds it creates. \n We look forward to seeing you there, cheering on your favorite teams, enjoying the festivities, and being part of a tradition that continues to strengthen our community year after year. Let\'s make this 15th edition the best one yet! \r\n             \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n    \r\n        \n\n\n\r\n    \r\n\r\n    \r\n             \r\n                \r\n                    \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        Get Ready for Another Exciting Match!\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 Mark your calendars for Thursday, April 18, 2024, at 16:30, as FC Bigfoot, currently third in the regional league, takes on our rivals from SurfCamp League. This is a match you won\'t want to miss! \n  Match Details    Date and Time: Thursday, April 18, 2024, at 16:30  Teams: FC Bigfoot vs. SurfCamp League  Stadium Access: Gates open at 14:30  Catering: Food and beverages will be available    Join us for an afternoon of intense competition and cheer on FC Bigfoot as they strive to climb the league standings. Bring your friends and family for a memorable day of soccer excitement! \r\n             \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n    \r\n        \n\n\n\r\n    \r\n\r\n    \r\n             \r\n                \r\n                    \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        Our New Supporter\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n  \r\n       \r\n        A Powerful Partnership\r\n       \r\n    \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 We are thrilled to welcome  TYPO3 Association  as our newest sponsor! This exciting partnership promises to elevate FC Bigfoot to even greater heights, both on and off the field. With TYPO3 Association\'s support, we look forward to enhancing our club\'s capabilities and achieving new milestones. Stay tuned for the amazing opportunities this collaboration will bring to our team and community. \n    '),
('6d2ddd1174e062f12957e8f7a89bafb1','Club   '),
('755095551c463ec2cdedd536714e08a7','Contact Us Lorem ipsum dolor sit \n    \n    \n        \n\n    \n\n     \n        \n             Name\n * \n\n \n        \n         \n            \n                \n         \n    \n                \n            \n            \n         \n     \n\n\n\n\n\n\n    \n        \n\n    \n\n     \n        \n             Email address\n * \n\n \n        \n         \n            \n                \n         \n    \n                \n            \n            \n         \n     \n\n\n\n\n\n\n    \n        \n\n    \n\n     \n        \n             Subject\n * \n\n \n        \n         \n            \n                \n         \n    \n                \n            \n            \n         \n     \n\n\n\n\n\n\n    \n        \n\n         \n    \n\n\n    \n        \n\n    \n\n     \n        \n         \n            \n                \n         \n             \n                  \n                 Lorem ipsum dolor sit amet consectetur adipisicing elit\n * \n\n \n             \n         \n    \n                \n            \n            \n         \n     \n\n\n\n\n\n\n    \n\n\n\n             \n                \n \n     \n         \n            \n            \n                     \n                         \n                            Submit  '),
('78cabd40e1e1f417b9f83789c2321f4a','Events Our Game Results\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 Stay updated with the latest scores and outcomes of FC Bigfoot\'s matches. Here, you will find a comprehensive list of our recent game results. Keep checking back for the most current information on our achievements. \r\n             \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\n\n\n        \n     \n         \n             \n            \n                 \n                     \n                         \n                            29.02.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        3 : 0\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Super Feet Stadium\n                         \n                     \n                 \n            \n                 \n                     \n                         \n                            05.03.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        0 : 0\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Super Feet Stadium\n                         \n                     \n                 \n            \n                 \n                     \n                         \n                            09.03.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        2 : 1\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Luton Bowl\n                         \n                     \n                 \n            \n                 \n                     \n                         \n                            18.03.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        13 : 1\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Super Feet Stadium\n                         \n                     \n                 \n            \n                 \n                     \n                         \n                            21.03.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        2 : 1\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Super Feet Stadium\n                         \n                     \n                 \n            \n                 \n                     \n                         \n                            02.04.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        2 : 2\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Woodland Arena\n                         \n                     \n                 \n            \n                 \n                     \n                         \n                            09.04.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        TBA\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Burns\' Power Plant\n                         \n                     \n                 \n            \n                 \n                     \n                         \n                            16.04.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        TBA\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Wolverine Palace\n                         \n                     \n                 \n            \n                 \n                     \n                         \n                            29.04.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        TBA\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Super Feet Stadium\n                         \n                     \n                 \n            \n                 \n                     \n                         \n                            13.05.2024\n                         \n                     \n                     \n                         \n                             \n                             \n                                \n                                        TBA\n                                    \n                             \n                             \n                         \n                     \n                     \n                         \n                            SurfCamp League\n                         \n                         \n                            Never Ever Arena  '),
('9bd8393860e6e9cf4c907a0919ca687d','Team   '),
('c0296a4b8c58865ca9e0f1502b08995d','History From foundation to the regional league\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support. FC Bigfooot is a club at heart with a focus on cohesion and mutual support. The club may only have a comparatively short 23-year history, but it has a lively history with many ups and downs. You can find out more here. \r\n             \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n    \r\n        \n\n\n\r\n    \r\n\r\n    \r\n             \r\n                \r\n                    \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        2001 - 2004\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n  \r\n       \r\n        Our first years\r\n       \r\n    \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 FC Bigfoot was established in 2001 and swiftly became a well-known name in the local football community. In its early days, the team had to practice on a worn-out field with barely enough equipment for all the players. Despite these challenges, they showed remarkable persistence. \n One memorable incident occurred during their first season. In a match against a more experienced team, FC Bigfoot was down by four goals at halftime. Instead of giving up, they rallied together and, with sheer determination and teamwork, managed to tie the game by the final whistle. This game became a turning point for the club, showcasing their spirit and winning the respect of fans and competitors alike. From that day on, FC Bigfoot was known for its fighting spirit. \r\n             \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n    \r\n        \n\n\n\r\n    \r\n\r\n    \r\n             \r\n                \r\n                    \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        2005 - 2018\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n  \r\n       \r\n        Growth, growth, growth!\r\n       \r\n    \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 FC Bigfoot was able to expand during this era, marking a significant period of growth and development for the club. Beyond competing in the classic league, FC Bigfoot became known for its community-oriented approach. The club organized various local events and initiatives that engaged the community, fostering a strong bond between the club and its supporters. \n FC Bigfoot also emphasized inclusivity, ensuring that everyone, regardless of gender or background, had the opportunity to be part of the club. This inclusive approach, combined with their community-focused initiatives, solidified FC Bigfoot’s reputation as a forward-thinking and community-oriented club. \r\n             \r\n        \r\n\r\n    \r\n \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n \r\n    \r\n        \n\n\n\r\n    \r\n\r\n    \r\n             \r\n                \r\n                    \r\n\r\n  \r\n     \r\n      \r\n\r\n  \r\n       \r\n        2018 - 2024\r\n       \r\n    \r\n\r\n\r\n      \r\n\r\n  \r\n       \r\n        Becoming a community\r\n       \r\n    \r\n\r\n\r\n\r\n     \r\n  \r\n\r\n\r\n\r\n                \r\n                 The biggest milestone was reached in 2018 when FC Bigfoot was promoted to the regional league for the first time. This achievement marked a turning point in the club\'s history. The promotion brought a new level of visibility and prestige, attracting more fans and support from the local community. \n Since then, FC Bigfoot has continued its success, not only maintaining its status in the regional league but also expanding its influence nationally. The club\'s strategic focus on youth development has been a cornerstone of this growth. By investing in state-of-the-art training facilities and nurturing young talent through comprehensive development programs, FC Bigfoot has established a strong pipeline of skilled players. \n FC Bigfoot has solidified its position as a prominent and influential football club, known for its dedication to both competitive success and community engagement. The club\'s ongoing commitment to youth development and national expansion ensures that its legacy will continue to grow in the years to come.  ');
/*!40000 ALTER TABLE `index_fulltext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_grlist`
--

DROP TABLE IF EXISTS `index_grlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_grlist` (
  `uniqid` int(11) NOT NULL AUTO_INCREMENT,
  `phash` varchar(32) NOT NULL,
  `phash_x` varchar(32) NOT NULL,
  `hash_gr_list` varchar(32) NOT NULL,
  `gr_list` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uniqid`),
  KEY `joinkey` (`phash`,`hash_gr_list`),
  KEY `phash_grouping` (`phash_x`,`hash_gr_list`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_grlist`
--

LOCK TABLES `index_grlist` WRITE;
/*!40000 ALTER TABLE `index_grlist` DISABLE KEYS */;
INSERT INTO `index_grlist` VALUES
(25,'755095551c463ec2cdedd536714e08a7','755095551c463ec2cdedd536714e08a7','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(32,'2708d02ff7a5a42f4024c2585a03dddd','2708d02ff7a5a42f4024c2585a03dddd','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(35,'4f6e807051e61027dadc02f9f2906020','4f6e807051e61027dadc02f9f2906020','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(54,'6d2ddd1174e062f12957e8f7a89bafb1','6d2ddd1174e062f12957e8f7a89bafb1','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(80,'c0296a4b8c58865ca9e0f1502b08995d','c0296a4b8c58865ca9e0f1502b08995d','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(81,'9bd8393860e6e9cf4c907a0919ca687d','9bd8393860e6e9cf4c907a0919ca687d','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(88,'3d798c3f120fdabe32985de46a5fc2fd','3d798c3f120fdabe32985de46a5fc2fd','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(97,'56ce185f3262c9101626cfd28a4127a4','56ce185f3262c9101626cfd28a4127a4','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(98,'78cabd40e1e1f417b9f83789c2321f4a','78cabd40e1e1f417b9f83789c2321f4a','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(99,'03394a29ed2144f96bced193919a622f','03394a29ed2144f96bced193919a622f','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(108,'3e239e3d69de4b3b36fcd34479259a89','3e239e3d69de4b3b36fcd34479259a89','cdc0a8f9fe7f5e206d167723a90af880','0,-1');
/*!40000 ALTER TABLE `index_grlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_phash`
--

DROP TABLE IF EXISTS `index_phash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_phash` (
  `phash` varchar(32) NOT NULL,
  `phash_grouping` varchar(32) NOT NULL,
  `static_page_arguments` blob DEFAULT NULL,
  `data_filename` varchar(1024) NOT NULL DEFAULT '',
  `data_page_id` int(10) unsigned NOT NULL DEFAULT 0,
  `data_page_type` int(10) unsigned NOT NULL DEFAULT 0,
  `data_page_mp` varchar(255) NOT NULL DEFAULT '',
  `gr_list` varchar(255) NOT NULL DEFAULT '',
  `item_type` varchar(5) NOT NULL DEFAULT '',
  `item_title` varchar(255) NOT NULL DEFAULT '',
  `item_description` varchar(255) NOT NULL DEFAULT '',
  `item_mtime` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `item_size` int(11) NOT NULL DEFAULT 0,
  `contentHash` varchar(32) NOT NULL,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `parsetime` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `item_crdate` int(11) NOT NULL DEFAULT 0,
  `externalUrl` smallint(6) NOT NULL DEFAULT 0,
  `recordUid` int(11) NOT NULL DEFAULT 0,
  `freeIndexUid` int(11) NOT NULL DEFAULT 0,
  `freeIndexSetId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`phash`),
  KEY `phash_grouping` (`phash_grouping`),
  KEY `freeIndexUid` (`freeIndexUid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_phash`
--

LOCK TABLES `index_phash` WRITE;
/*!40000 ALTER TABLE `index_phash` DISABLE KEYS */;
INSERT INTO `index_phash` VALUES
('03394a29ed2144f96bced193919a622f','24209093ce98107aa449a6aa385cd375','[]','',10,0,'','0,-1','0','Membership','Become a Member today Join the FC Bigfoot community by becoming a member today! Our membership program offers a variety of benefits designed to enhance your experience and connection with the club. As',1718897287,1718897289,8486,'837510d96bc991a6c68137f2c29fd3be',1718897289,179,0,1712674099,0,0,0,0),
('2708d02ff7a5a42f4024c2585a03dddd','ca2abee5059a0f2fb967093a4cdf4cac','[]','',17,0,'','0,-1','0','Privacy Policy','Privacy Policy Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et jus',1712914885,1718890398,14636,'521c379ac872b6282fb99ba36a3123cf',1712914888,364,0,1712914801,0,0,0,0),
('3d798c3f120fdabe32985de46a5fc2fd','dc91fa3918f3fab9a43a16f82bb27086','[]','',1,0,'','0,-1','0','Home','Events News Club History Membership Contact Team Sponsors Contact Us FC Bigfoot Fuerteventura 23 years of passion and dedication Join today Our latest Game Results 3 : 0 SurfCamp League @ Super Feet S',1718873192,1719218075,29770,'675b5d1794f69d5af31ced58527a9503',1718873485,123,0,1712586908,0,0,0,0),
('3e239e3d69de4b3b36fcd34479259a89','8a6ef888a6fc754ec9234c30e393cb8f','[]','',5,0,'','0,-1','0','Sponsors','Our companions and sponsors At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club.',1718915307,1718915310,9768,'701ad4462b2323d79871cd208594d364',1718915310,56,0,1712673378,0,0,0,0),
('4f6e807051e61027dadc02f9f2906020','96b2aa8aa943db4a5d8f7349fa047831','[]','',16,0,'','0,-1','0','Search','',1712914817,1718875355,8327,'13348442cc6a27032d2b4aa28b75a5d3',1712921697,153,0,1712846952,0,0,0,0),
('56ce185f3262c9101626cfd28a4127a4','cadd9455631c2005b0784198b1c7f739','[]','',2,0,'','0,-1','0','News','News about our club FC Bigfoot\'s 15th Charity Tournament A Celebration of Soccer and Community FC Bigfoot proudly announces the 15th edition of our charity tournament! This beloved event unites soccer',1718874847,1718874847,12323,'9e17999123c4e96ff2c0541ba3b4a41f',1718874847,112,0,1712672677,0,0,0,0),
('6d2ddd1174e062f12957e8f7a89bafb1','42a44c80384793445371a8816cb755cc','[]','',4,0,'','0,-1','0','Club','',1712676856,1713168567,7201,'aeef646f76c57ed9084edddbb6365b9c',1712937928,40,0,1712673365,0,0,0,0),
('755095551c463ec2cdedd536714e08a7','231cf1b64ac1e2ee0b37e62a56171e27','[]','',6,0,'','0,-1','0','Contact Us','Lorem ipsum dolor sit Name * Email address * Subject * Lorem ipsum dolor sit amet consectetur adipisicing elit * Submit',1712855043,1718866673,12086,'36846f4137c90b0187ed959ec4eb3a20',1712855590,20,0,1712673397,0,0,0,0),
('78cabd40e1e1f417b9f83789c2321f4a','17e3c529abc7b537c5fcf59f12035044','[]','',3,0,'','0,-1','0','Events','Our Game Results Stay updated with the latest scores and outcomes of FC Bigfoot\'s matches. Here, you will find a comprehensive list of our recent game results. Keep checking back for the most current ',1718897025,1718897027,22305,'9a7ea0f99381a3065000f6f877f4ba76',1718897027,114,0,1712673349,0,0,0,0),
('9bd8393860e6e9cf4c907a0919ca687d','f5bad68bc9b081e512151ece334fae4f','[]','',12,0,'','0,-1','0','Team','',1712942889,1718866679,7211,'ac848fa228f49ba2b8a5fbd76596817d',1718866679,30,0,1712677342,0,0,0,0),
('c0296a4b8c58865ca9e0f1502b08995d','101b7d8adb6ae7f7b6bf0abc85b15c25','[]','',7,0,'','0,-1','0','History','From foundation to the regional league Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and ',1718866561,1718866564,11906,'dcec43f7d330335c4ab595c05fbbb026',1718866564,104,0,1712673451,0,0,0,0);
/*!40000 ALTER TABLE `index_phash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_rel`
--

DROP TABLE IF EXISTS `index_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_rel` (
  `phash` varchar(32) NOT NULL,
  `wid` varchar(32) NOT NULL,
  `count` smallint(5) unsigned NOT NULL DEFAULT 0,
  `first` int(10) unsigned NOT NULL DEFAULT 0,
  `freq` smallint(5) unsigned NOT NULL DEFAULT 0,
  `flags` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`phash`,`wid`),
  KEY `wid` (`wid`,`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_rel`
--

LOCK TABLES `index_rel` WRITE;
/*!40000 ALTER TABLE `index_rel` DISABLE KEYS */;
INSERT INTO `index_rel` VALUES
('03394a29ed2144f96bced193919a622f','01b6e20344b68835c5ed1ddedf20d531',8,23,18156,0),
('03394a29ed2144f96bced193919a622f','03265faca14f06be8156135b57d4ccf9',1,24,2269,0),
('03394a29ed2144f96bced193919a622f','04b29480233f4def5c875875b6bdc3b1',1,112,2269,0),
('03394a29ed2144f96bced193919a622f','061c0f607446c5f26244624e0434c72d',1,72,2269,0),
('03394a29ed2144f96bced193919a622f','06cf60d22f85e12c1d761a239a46dae7',1,70,2269,0),
('03394a29ed2144f96bced193919a622f','06e3d36fa30cea095545139854ad1fb9',1,139,2269,0),
('03394a29ed2144f96bced193919a622f','07ccfe360dce69b84595428e2ec1c1cc',1,53,2269,0),
('03394a29ed2144f96bced193919a622f','0bd6506986ec42e732ffb866d33bb14e',1,50,2269,0),
('03394a29ed2144f96bced193919a622f','0cc175b9c0f1b6a831c399e269772661',8,1,18156,0),
('03394a29ed2144f96bced193919a622f','0d3fda0bdbb9d619e09cdf3eecba7999',1,89,2269,0),
('03394a29ed2144f96bced193919a622f','13b5bfe96f3e2fe411c9f66f4a582adf',2,68,4539,0),
('03394a29ed2144f96bced193919a622f','15512a989521ee93ea7ddfcfb4341132',1,54,2269,0),
('03394a29ed2144f96bced193919a622f','162e31afc5ade88a04d3f428e97e8f46',3,14,6808,0),
('03394a29ed2144f96bced193919a622f','16908b0605f2645dfcb4c3a8d248cef3',1,51,2269,0),
('03394a29ed2144f96bced193919a622f','228c70bfc5589c58c044e03fff0e17eb',1,123,2269,0),
('03394a29ed2144f96bced193919a622f','22af645d1859cb5ca6da0c484f1f37ea',1,84,2269,0),
('03394a29ed2144f96bced193919a622f','23a58bf9274bedb19375e527a0744fa9',4,29,9078,0),
('03394a29ed2144f96bced193919a622f','2b3de800b4576343a07e86b8c420e448',1,40,2269,0),
('03394a29ed2144f96bced193919a622f','2b830f876c0bdfab339d80506286180f',1,48,2269,0),
('03394a29ed2144f96bced193919a622f','2c61ebff5a7f675451467527df66788d',1,130,2269,0),
('03394a29ed2144f96bced193919a622f','3262d48df5d75e3452f0f16b313b7808',1,137,2269,0),
('03394a29ed2144f96bced193919a622f','3677b55b4fb1c656b2a6ec776093be88',1,22,2269,0),
('03394a29ed2144f96bced193919a622f','434990c8a25d2be94863561ae98bd682',1,100,2269,0),
('03394a29ed2144f96bced193919a622f','46c48bec0d282018b9d167eef7711b2c',1,113,2269,0),
('03394a29ed2144f96bced193919a622f','4717d53ebfdfea8477f780ec66151dcb',1,28,2269,0),
('03394a29ed2144f96bced193919a622f','56de9219979795654f00a462f479b92d',1,79,2269,0),
('03394a29ed2144f96bced193919a622f','62cc0b4ebb0b57b40778179234246c38',2,25,4539,0),
('03394a29ed2144f96bced193919a622f','639bae9ac6b3e1a84cebb7b403297b79',1,55,2269,0),
('03394a29ed2144f96bced193919a622f','6e5f1a81b34c045ce1dd0ea94a32e614',1,38,2269,0),
('03394a29ed2144f96bced193919a622f','731b886d80d2ea138da54d30f43b2005',1,4,2269,0),
('03394a29ed2144f96bced193919a622f','754faff639576f7a88ff3974c0d63ca4',1,131,2269,0),
('03394a29ed2144f96bced193919a622f','76e369257240ded4b1c059cf20e8d9a4',1,36,2269,0),
('03394a29ed2144f96bced193919a622f','7716ed93eba822a48b5f39b87bb5f56c',1,67,2269,0),
('03394a29ed2144f96bced193919a622f','79da17fa16c14866aa3306a4541afec5',1,21,2269,0),
('03394a29ed2144f96bced193919a622f','7b7813f00f42b7e5366e7065aaa798c6',1,39,2269,0),
('03394a29ed2144f96bced193919a622f','7d0db380a5b95a8ba1da0bca241abda1',1,109,2269,0),
('03394a29ed2144f96bced193919a622f','7d767e6bb05138bb94abee483ea8abc6',1,78,2269,0),
('03394a29ed2144f96bced193919a622f','82df41632da476065ce2997900554442',2,8,4539,0),
('03394a29ed2144f96bced193919a622f','842e77fefc15c4f24aaf4ec4cc737233',1,103,2269,0),
('03394a29ed2144f96bced193919a622f','860cb9843fe4a9b87c60b6d02619515a',1,124,2269,0),
('03394a29ed2144f96bced193919a622f','860d7a9915c3d84e711f7dddfd9b4341',1,62,2269,0),
('03394a29ed2144f96bced193919a622f','86280ac8a7f8881407ba060c76d72d6a',1,0,2269,0),
('03394a29ed2144f96bced193919a622f','8aaab33740413527c3d6f2be39c6ed2c',1,58,2269,0),
('03394a29ed2144f96bced193919a622f','8bf8854bebe108183caeb845c7676ae4',2,20,4539,0),
('03394a29ed2144f96bced193919a622f','8ea3e06d07a108be5a60531161a11019',1,81,2269,0),
('03394a29ed2144f96bced193919a622f','8fc42c6ddf9966db3b09e84365034357',9,5,20425,0),
('03394a29ed2144f96bced193919a622f','910955a907e739b81ec8855763108a29',2,60,4539,0),
('03394a29ed2144f96bced193919a622f','93d1fa1ba6d94983d3d15e1f6b962f9b',1,46,2269,0),
('03394a29ed2144f96bced193919a622f','9544fa2fae515081e7fc27ef2d268642',1,44,2269,0),
('03394a29ed2144f96bced193919a622f','95cc6b4ac5abdeadc74b73a8ba7200d9',4,31,9078,0),
('03394a29ed2144f96bced193919a622f','97bc592b27a9ada2d9a4bb418ed0ebed',1,114,2269,0),
('03394a29ed2144f96bced193919a622f','99be1ee67a0137092d3d112c0620c552',1,102,2269,0),
('03394a29ed2144f96bced193919a622f','9df3b01c60df20d13843841ff0d4482c',1,41,2269,0),
('03394a29ed2144f96bced193919a622f','a04c01d73a91a11610682a602b85a83b',1,19,2269,0),
('03394a29ed2144f96bced193919a622f','a181a603769c1f98ad927e7367c7aa51',1,105,2269,0),
('03394a29ed2144f96bced193919a622f','a2a551a6458a8de22446cc76d639a9e9',1,93,2269,0),
('03394a29ed2144f96bced193919a622f','a4293995cfbfa9ce60ce71ade2ff75f7',1,37,2269,0),
('03394a29ed2144f96bced193919a622f','a53ff64efd169c1b4d085d6e7075c8d7',1,74,2269,0),
('03394a29ed2144f96bced193919a622f','a7dd12b1dab17d25467b0b0a4c8d4a92',1,98,2269,0),
('03394a29ed2144f96bced193919a622f','a9c449d4fa44e9e5a41c574ae55ce4d9',2,16,4539,0),
('03394a29ed2144f96bced193919a622f','aa08769cdcb26674c6706093503ff0a3',3,2,6808,0),
('03394a29ed2144f96bced193919a622f','ab3e355e2b6806c984851ebdee2a0da1',1,82,2269,0),
('03394a29ed2144f96bced193919a622f','acaa16770db76c1ffb9cee51c3cabfcf',2,95,4539,0),
('03394a29ed2144f96bced193919a622f','addec426932e71323700afa1911f8f1c',1,61,2269,0),
('03394a29ed2144f96bced193919a622f','b2bf18e206cf9b5eb2d632030acb16cc',1,17,2269,0),
('03394a29ed2144f96bced193919a622f','b46127d3c32de3d485a478e88b8f6593',4,0,9078,128),
('03394a29ed2144f96bced193919a622f','b5c938d6726bb7657f29dd725a097f16',1,69,2269,0),
('03394a29ed2144f96bced193919a622f','b7a48972570cba2b5c1f751d6fed78f1',1,108,2269,0),
('03394a29ed2144f96bced193919a622f','be5d5d37542d75f93a87094459f76678',5,27,11347,0),
('03394a29ed2144f96bced193919a622f','c5e7dfaf771d423ecf59b008369021e8',2,3,4539,0),
('03394a29ed2144f96bced193919a622f','c83b72dd001482ce10f0b106c7a0ed0e',1,96,2269,0),
('03394a29ed2144f96bced193919a622f','d6e047923b2b0f63a7a03c66074a0151',1,26,2269,0),
('03394a29ed2144f96bced193919a622f','d98a07f84921b24ee30f86fd8cd85c3c',1,66,2269,0),
('03394a29ed2144f96bced193919a622f','db3f3946ba271882d8c74cdbf3d5179a',1,128,2269,0),
('03394a29ed2144f96bced193919a622f','df3f079de6961496f0460dcfdbf9bca3',1,9,2269,0),
('03394a29ed2144f96bced193919a622f','e05fe30750d3ea262a610d17ebc07019',3,6,6808,0),
('03394a29ed2144f96bced193919a622f','e64c3132023b29762b354a750b474c53',1,133,2269,0),
('03394a29ed2144f96bced193919a622f','e81c4e4f2b7b93b481e13a8553c2ae1b',1,83,2269,0),
('03394a29ed2144f96bced193919a622f','e82fa6ac6af62c4e5bcd387709acd5dc',1,107,2269,0),
('03394a29ed2144f96bced193919a622f','ecc3c7b4754f8509cfe9de944671b36f',3,7,6808,0),
('03394a29ed2144f96bced193919a622f','ed2b5c0139cec8ad2873829dc1117d50',2,45,4539,0),
('03394a29ed2144f96bced193919a622f','ef22c14dcebaf7e2d91bb723fdf5bbc9',1,77,2269,0),
('03394a29ed2144f96bced193919a622f','f3ee211eaff2e448e05ba21b9759af63',1,10,2269,0),
('03394a29ed2144f96bced193919a622f','f4ac4122ee48c213eec816f4d7944ea6',1,43,2269,0),
('03394a29ed2144f96bced193919a622f','f4c9385f1902f7334b00b9b4ecd164de',1,118,2269,0),
('03394a29ed2144f96bced193919a622f','f6cb3e816496528d4187db53bc66567f',1,134,2269,0),
('03394a29ed2144f96bced193919a622f','f970e2767d0cfe75876ea857f92e319b',1,32,2269,0),
('03394a29ed2144f96bced193919a622f','fa6c9d5de251d2da13b9f81db8da0ca6',1,35,2269,0),
('03394a29ed2144f96bced193919a622f','ff1ccf57e98c817df1efcd9fe44a8aeb',1,129,2269,0),
('2708d02ff7a5a42f4024c2585a03dddd','0029d2483a1a8a70bc7b15757967d6dd',12,12,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','04bd0ce93e458db4579c595cf42d96ab',4,200,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','06472f9dc34e4ae7850cec892363f2a1',5,172,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','07632e7838df5baaec933a71742f6edc',4,185,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','08123367b10eb42f9c61a297c1fc203c',12,37,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','0e76c9c8d1407bbf1690121eb72ab4aa',5,167,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','0ec44c296b53efbcb8a9d2fb639177b2',4,217,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','107536d845520d5adf1f6b9ce2de2f08',4,188,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','115b0dc1fb0482bd99b59699f65e43a2',4,177,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','1337d38747e659ed836548ae6cda7cc2',12,17,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','134a394e7e9ec2bc21d57ba1d6b42005',12,44,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','13b5bfe96f3e2fe411c9f66f4a582adf',10,158,3252,0),
('2708d02ff7a5a42f4024c2585a03dddd','15ceb382eaee2056153ac76b747c7f95',2,289,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','15d0c7acbbe63d5dd590c7ee3a9f12f3',4,186,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','16b8e956f7e20230367efb963e8ac2f8',5,164,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','177544aa797af6f322f8caa5e80e7f24',27,10,8780,0),
('2708d02ff7a5a42f4024c2585a03dddd','1c52bdae8bad70e82da799843bb4e831',11,46,3577,0),
('2708d02ff7a5a42f4024c2585a03dddd','1fae427ed9fb02eae850a9b3c6d1a597',2,285,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','20296d6bca1bd076c8ed0547e4f55f66',4,208,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','21cec257feb15bcc84e0acd5b0773883',2,0,650,128),
('2708d02ff7a5a42f4024c2585a03dddd','21db4a5fea0f4dedb0aa90007de5c3c3',12,28,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','22c78aadb8d25a53ca407fae265a7154',2,279,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','2f22937a18e3d76202329384bd08ae23',12,45,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','387cfa57545d4814246bbcebe6bc61dc',2,287,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','38c7b2741b1d86c35f51687f1f56fd00',2,294,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','392406f077a3ab6822722d2df998ecd4',9,152,2926,0),
('2708d02ff7a5a42f4024c2585a03dddd','39ad9cca8cb13896b27cbfd8bc7a5be4',4,184,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','39b040ca54fc7aca24b4a28507329bca',4,207,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','39eef2554d8407cbfeb017e68c8685e3',4,175,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','3b1d7a5b5d10577b79fc206c4ffd64ea',2,290,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','3fffe9ed3cb0a88d1a6391801d383647',4,194,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','4087a2d652670c108c9219d058745bc2',14,14,4552,0),
('2708d02ff7a5a42f4024c2585a03dddd','40b264bdd5419a65e1e7c4112c9535c4',11,25,3577,0),
('2708d02ff7a5a42f4024c2585a03dddd','4587c4183c312dd82309be6cdae7bbd6',5,163,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','461580541e92155766bee9d9e8f672ea',16,20,5203,0),
('2708d02ff7a5a42f4024c2585a03dddd','4829322d03d1606fb09ae9af59a271d3',5,169,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','4afe8978f49b2b8389b567200ae59649',4,206,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','4b77a01c9178cf8fcc13fea642393955',4,202,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','4de1b7a4dc53e4a84c25ffb7cdb580ee',56,18,18211,0),
('2708d02ff7a5a42f4024c2585a03dddd','4ed5bb266ded3068c5ba0a01e78b21b9',4,179,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','5078262170842b3759998eb9c3a16314',4,181,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','523af537946b79c4f8369ed39ba78605',4,219,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','54d54a126a783bc9cba8c06137136943',4,232,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','569ef72642be0fadd711d6a468d68ee1',4,191,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','5a74f9bbb93ada84e7794406c86010a5',2,288,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','5a8ebeb7a6108b07be3700432a79840d',4,210,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','5b344ac52a0192941b46a8bf252c859c',16,36,5203,0),
('2708d02ff7a5a42f4024c2585a03dddd','5defbc048070dadee1fa6f2e62532f1f',5,162,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','5e68ca8a651d80d2a005ac825ede6b8c',10,154,3252,0),
('2708d02ff7a5a42f4024c2585a03dddd','60f8b164d96d22ed2d5ac73ff5baa6c6',4,225,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','6167fd4d8a9bd320dc09e90baa27d4c9',4,187,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','630494285045663b6f3e52af740c5254',2,283,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','66c64cd3d8cafc59b39bc1a5583f3786',12,32,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','6af18b52ade789125f28bd8db932f879',12,15,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','6ccb6c0b0d7845edf67759d85e49257d',4,213,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','6eeaf26188917e490d3c52d14b3f6809',12,13,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','7063c5b30e65883fd6b4b2177d627690',12,40,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','72719ffec5896d8017d8cbf23c5a28b7',12,21,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','7a8dc91f944d115c7488f24ea53e9543',5,159,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','7ae8efb349409c73a8eddb47cc303331',2,284,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','7b070e052532394b5c2c1803f7ba00f1',4,221,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','7d0db380a5b95a8ba1da0bca241abda1',16,26,5203,0),
('2708d02ff7a5a42f4024c2585a03dddd','7f9a983a540e00931a69382161bdd265',26,6,8455,0),
('2708d02ff7a5a42f4024c2585a03dddd','7fa3b767c460b54a2be4d49030b349c7',12,42,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','804f743824c0451b2f60d81b63b6a900',12,43,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','81defa8f7aec3af6ec8392bf4594be48',4,180,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','8209600c80b63728b8507839a93c7b41',4,192,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','87d4eeb7dec7686410748d174c0e0a11',26,5,8455,0),
('2708d02ff7a5a42f4024c2585a03dddd','923b22997eabf29a2adf56e77f4d3861',4,215,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','952c5e7aea1b83a37e41d7b9b97fda14',4,220,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','9c76b78f2828eaadd814a5f7fece828f',2,280,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','9d0b1714518907192490ce56247c01cf',2,292,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','9d24420082d450cb81caf59e2b173279',4,182,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','a49a895c965f8aa40b4123fbc5849271',12,38,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','a6ac54ff17ca90704e5d89a8e0d545bc',4,218,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','a98931d104a7fb8f30450547d97e7ca5',31,4,10081,0),
('2708d02ff7a5a42f4024c2585a03dddd','aa1a3ee027cbd71fb271f7ff74ed2ba0',12,33,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','aae82b4d692ecfef8711d47c815707d5',12,30,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','ad18a418da4e3cbf4e3e5a70710f2d85',27,11,8780,0),
('2708d02ff7a5a42f4024c2585a03dddd','ad98f79edf416451a01ddd2e70529a0f',4,224,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','ae1c9c6a127cfbd460a949238c631144',4,234,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','af03af10d57b7b17f26a0130562d6b6e',4,227,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','af2f35ee2183e18edf481f3603d95803',2,296,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','b1310d53db71792f537efc29d477cc39',4,183,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','b1a5d251fa4fe598cb947ffc42b9cbed',24,16,7804,0),
('2708d02ff7a5a42f4024c2585a03dddd','b51d00b52280f0d7479cde95e61749e7',4,223,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','b80bb7740288fda1f201890375a60c8f',2,291,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','b9bcfe8f89ef61629ec387f6916e2741',4,228,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','bb98d4e9c281b175ea84c517b59308ea',4,222,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','bd12a2f7c146e4c5191b12fc9a2739f5',5,170,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','bdfcacaa4e5a8b57727335c0cbf7614b',9,171,2926,0),
('2708d02ff7a5a42f4024c2585a03dddd','c5864e0679a35c03abd1c36ad81c8d20',12,34,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','c87cf4452134244b7f4b18e2e7ad7f50',4,205,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','c8fae3ab04d58c0147395f06241dca64',4,229,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','c94cb6e815f22f3e59e16bd7a49dfd2d',16,22,5203,0),
('2708d02ff7a5a42f4024c2585a03dddd','c9f816aa046f752b966837db2d9bf5a2',12,41,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','cb3f4c73e4c498c768489f566045252c',8,165,2601,0),
('2708d02ff7a5a42f4024c2585a03dddd','cc491de401e5dbcde41ef91090975f42',16,27,5203,0),
('2708d02ff7a5a42f4024c2585a03dddd','cc7ed4d007b9bd962656b84ae7bf98cb',2,295,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','cd49a1455ff422a5540f5e13f5edb75a',5,153,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','cf403b6285fc29f6f74b2855b3996dff',2,297,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','d2e16e6ef52a45b7468f1da56bba1953',26,2,8455,0),
('2708d02ff7a5a42f4024c2585a03dddd','d540f9a8003e11e009342a40200192ea',4,201,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','d97431d6862a4268fdd17104ae114b73',5,156,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','dc4a5e2a23fbd4f67b3f0fc16bdc39ae',4,231,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','dd3aa935c1c8a988517f3f588f7985bf',4,226,1300,0),
('2708d02ff7a5a42f4024c2585a03dddd','dd44ce468d0204b530b79a94b133eca5',12,8,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','dd73e86c9fe114b320f834d644efdc97',5,155,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','e15c932956bb516ce8031bf1a3fd71d4',2,293,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','e78f5438b48b39bcbdea61b73679449d',26,3,8455,0),
('2708d02ff7a5a42f4024c2585a03dddd','e89d59b453d80c31146f4867ace7d73b',12,7,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','ef3e30e070f70244fd6578d88a6b77ac',2,286,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','efde81f569ccb7211e56a522b8b55e5b',2,282,650,0),
('2708d02ff7a5a42f4024c2585a03dddd','f180623caa42379bc4518d06c9c9be05',25,19,8130,0),
('2708d02ff7a5a42f4024c2585a03dddd','f4af8b5789576c000ce9105b25609bd6',2,0,650,128),
('2708d02ff7a5a42f4024c2585a03dddd','f9d000bc691cbd4ed09645220637e3a3',12,9,3902,0),
('2708d02ff7a5a42f4024c2585a03dddd','fb2b038ea78e99cb4ca370639f399ce3',5,161,1626,0),
('2708d02ff7a5a42f4024c2585a03dddd','fce7bfee7c6e21e1d37535d69dadc71d',12,39,3902,0),
('3d798c3f120fdabe32985de46a5fc2fd','01b6e20344b68835c5ed1ddedf20d531',8,149,4758,0),
('3d798c3f120fdabe32985de46a5fc2fd','03d59e663c1af9ac33a9949d1193505a',1,197,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','05e94e8cbc28f5837d0c355917c05fea',1,468,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','06e3d36fa30cea095545139854ad1fb9',2,253,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','06f287d4d2555285b15d0e30a7738037',1,352,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','074b62fb6c21b84e6b5846e6bb001f67',1,16,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','075a959179a3ff15345c5865a10c5435',1,227,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','07811dc6c422334ce36a09ff5cd6fe71',3,101,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','07868a716d4712d7771f6414d2b8bf8a',1,360,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','07ab242311dbad887fb03e4a25092781',1,210,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','07cc694b9b3fc636710fa08b6922c42b',2,115,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','07ccfe360dce69b84595428e2ec1c1cc',1,137,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','08391c959fc8bd0b672c596c4d6bcdcd',1,236,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','09286af346951f520509c5702db7625e',1,235,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','0b3b97fa66886c5688ee4ae80ec0c3c2',6,9,3568,0),
('3d798c3f120fdabe32985de46a5fc2fd','0cc175b9c0f1b6a831c399e269772661',10,139,5947,0),
('3d798c3f120fdabe32985de46a5fc2fd','0cfff68896ae6825dfa9caee7afcea9f',1,77,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','0e5243d9965540f62aac19a985f3f33e',1,179,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','0e66be14b86bd30bf4fc84357763b591',2,131,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','0eee59a475855895f87e4900c084a4a9',1,70,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','0f9642bcff1dc3cd224f1f3e2f1ca629',1,120,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','106a6c241b8797f52e1e77317b96a201',1,0,594,128),
('3d798c3f120fdabe32985de46a5fc2fd','10b73ec3370562dbd65f130ea54a8a35',12,27,7137,0),
('3d798c3f120fdabe32985de46a5fc2fd','11a7a5d55a91adb201e113967eff93fe',1,424,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','1253208465b1efa876f982d8a9e73eef',1,385,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','12de3a4dab98ef8a7d67aace8150b540',1,178,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','13b5bfe96f3e2fe411c9f66f4a582adf',6,146,3568,0),
('3d798c3f120fdabe32985de46a5fc2fd','1424ca49c88f72347af1f2fe7a569169',6,31,3568,0),
('3d798c3f120fdabe32985de46a5fc2fd','162e31afc5ade88a04d3f428e97e8f46',12,21,7137,0),
('3d798c3f120fdabe32985de46a5fc2fd','16908b0605f2645dfcb4c3a8d248cef3',3,0,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','18218139eec55d83cf82679934e5cd75',2,109,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','18ccf61d533b600bbf5a963359223fe4',1,521,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','1b20e9021b3a16b059287caddc7862f6',1,452,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','1b3231655cebb7a1f783eddf27d254ca',5,29,2973,0),
('3d798c3f120fdabe32985de46a5fc2fd','1ebf4e55c604b92cce9b0f1fd7debcc0',1,129,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','1ed1645edd706dc379effe13f3edcacf',2,145,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','1f5f6080965ed6d0a90e6b9ec599e441',1,213,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','1fecb4dca32e01d3a83ebab5314ebbab',1,90,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','1ff1de774005f8da13f42943881c655f',1,99,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','21582c6c30be1217322cdb9aebaf4a59',3,357,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','21cec257feb15bcc84e0acd5b0773883',1,532,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','22af645d1859cb5ca6da0c484f1f37ea',1,220,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','23a58bf9274bedb19375e527a0744fa9',1,260,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','23b79ae0fc0f07a3669598dd23c694cc',1,379,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','29d0b8d9daec06cdd0cda7269997b216',1,435,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','2f8a6bf31f3bd67bd2d9720c58b19c9a',3,5,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','30c6ee2fd7ea2b9ab608ad1b56291bb2',1,388,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','312db69f5bf4447dfe3c58983083b54f',1,341,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','3262d48df5d75e3452f0f16b313b7808',2,251,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','3309a7a7941818e131b4dfb9a6349914',2,177,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','339d8d14024f2ae5c8dc2e07362eba1d',7,159,4163,0),
('3d798c3f120fdabe32985de46a5fc2fd','35d6d33467aae9a2e3dccb4b6b027878',1,278,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','364107f60f8e60ce22332e1d3fb8aa6d',1,526,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','3681df8d04470ecc65053b790e19a065',1,81,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','37693cfc748049e45d87b8c7d8b9aacd',1,13,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','37b4e2d82900d5e94b8da524fbeb33c0',2,362,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','37d153a06c79e99e4de5889dbe2e7c57',1,217,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','393070777bc8dc5f8900ff849e704f54',1,190,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','3a098d086c802fe130b34cda92eaa1bb',1,174,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','3c59dc048e8850243be8079a5c74d079',1,261,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','3c6e0b8a9c15224a8228b9a98ca1531d',1,426,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','3cd15f8f2940aff879df34df4e5c2cd1',1,3,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','3d9fb56d74e048e4b871027949764052',1,403,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','3e1867f5aee83045775fbe355e6a3ce1',1,157,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','3f1b0333a44fd5f611d3429887eba4a8',2,275,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','3f347890f95ef75c2eacb4f01c622ac9',1,520,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','4015e9ce43edfb0668ddaa973ebc7e87',4,264,2379,0),
('3d798c3f120fdabe32985de46a5fc2fd','40be4e59b9a2a2b5dffb918c0e86b3d7',1,230,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','4119639092e62c55ea8be348e4d9260d',1,322,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','41b54177746ada75a77ec0768ebd51dc',1,172,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','42bd4c0819c498d1c1ab622de74d6f82',1,310,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','434990c8a25d2be94863561ae98bd682',1,238,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','43b5c9175984c071f30b873fdce0a000',1,181,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','43c4975d498bbc4228b3f3a20ff5ac6f',1,389,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','46b3931b9959c927df4fc65fdee94b07',2,199,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','46defce884d1be32019f20864172323d',1,74,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','49889d3f78e208b1538f15a0c7bc16d0',1,185,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','4cf2d30b6327df1b462663c7611de22f',2,7,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','4ed5d2eaed1a1fadcc41ad1d58ed603e',1,257,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','50584c36a7a475387f81fa1b1655fe79',1,239,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','508c75c8507a2ae5223dfd2faeb98122',3,1,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','517b08dafd8aa7559790bf0715de47c6',12,28,7137,0),
('3d798c3f120fdabe32985de46a5fc2fd','52d6127375d82f3e300827eb479b2c65',4,367,2379,0),
('3d798c3f120fdabe32985de46a5fc2fd','536801a526cbca7d986e6b9bc55363b8',3,366,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','53a9c3686afdbb0db7c626e56a243a41',1,32,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','53d670af9bb16ea82e7ef41ee23ec6df',1,308,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','53e61336bb49ec978968786b07dea50b',1,24,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','560a6e42db25034a739955610bd3f8b4',1,108,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','5634275d694f8665957746c9619132f0',1,299,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','567904efe9e64d9faf3e41ef402cb568',1,507,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','589b397ed82131bf51acdf63521c2df5',1,489,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','59fdccc6b09347dffb28514c8b5a59ca',1,318,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','5d17dca175f108350a96a8dfb36a4be6',2,391,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','5e96bf62b9b2c18fdb65564b4a18fd1f',1,419,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','5fbab8c991be6b35d52e2d4868b6854f',1,47,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','600d6af0f320a021dc494cfa2daca569',1,110,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','60df9e64b0693131b626e465236c6874',1,380,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','62628cfd1cdd77d02c32812f048bada3',1,399,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','62933a2951ef01f4eafd9bdf4d3cd2f0',2,223,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','62cc0b4ebb0b57b40778179234246c38',2,256,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','62cd275989e78ee56a81f0265a87562e',1,75,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','639849f6b368019778991b32434354fc',2,119,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','667940ea3df6617168cef1233b76dc29',1,82,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','6b48da551d6920b8da8eb01ebc400297',1,358,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','6b5843ce9d2d0599c3e3ce6d59c1551f',1,162,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','6c92285fa6d3e827b198d120ea3ac674',1,195,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','6ed2640df741eafe327878bd65000ad3',2,354,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','6f7f9432d35dea629c8384dab312259a',1,394,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','6f857e1b82f3db1d72613365ea42d442',1,516,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','6fcc4b7d36184ba33346b4be2d5d8244',1,207,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','71ccb7a35a452ea8153b6d920f9f190e',1,22,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','71df210ad5e28264557f10c663572933',1,434,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','731b886d80d2ea138da54d30f43b2005',2,19,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','75aeb98e5241592ad6a6c2c4c78a16ef',1,14,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','77004ea213d5fc71acf74a8c9c6795fb',4,370,2379,0),
('3d798c3f120fdabe32985de46a5fc2fd','7761127a460aaf290ed953098284dd1a',1,482,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','77a072fba34a72588b4a8170238f2cf0',1,83,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','78ee54aa8f813885fe2fe20d232518b9',1,141,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','7b8dc4fb0fb55fc8eb69ff080c45ed7e',1,246,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','7d0db380a5b95a8ba1da0bca241abda1',5,173,2973,0),
('3d798c3f120fdabe32985de46a5fc2fd','7d637d275668ed6d41a9b97e6ad3a556',2,283,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','7dfc1f5dc725f462d6a85bd6a7224164',1,461,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','7f90df6477bdb81ce131fe37eeeb1f01',3,103,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','82082716189f80fd070b89ac716570ba',1,465,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','82df41632da476065ce2997900554442',3,356,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','83ab982dd08483187289a75163dc50fe',2,378,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','83c6ea9026abedd647a70333769f6504',1,417,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','8451fc653eaa269664a6d9b46a238424',1,287,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','8512eed920a9b68c84fbb7cc7454378c',1,536,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','8518008e8835d42ddb7c83810b5cede0',1,471,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','88c1942bc02943fd4338ebd18d3bf464',1,456,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','89ee4584f59a50776fd36a64d55c1277',1,438,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','8abf18f876245f99e3e536216d5d3bf3',1,384,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','8b461191e6b0705ec1ce1199a20f370e',1,225,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','8bf8854bebe108183caeb845c7676ae4',6,15,3568,0),
('3d798c3f120fdabe32985de46a5fc2fd','8cd283d8b7bacc277f2bae5e26ce6d1e',1,127,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','8df358eebbbb64bf19235a902db73505',2,104,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','8e15b32e960ad327e4c48061410f8bd4',1,209,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','8e83b1d4dd4533f7d84d1c6055598795',2,387,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','8fc42c6ddf9966db3b09e84365034357',15,105,8921,0),
('3d798c3f120fdabe32985de46a5fc2fd','8fd6f46ad5874b41fc087b26745c81b2',4,122,2379,0),
('3d798c3f120fdabe32985de46a5fc2fd','910955a907e739b81ec8855763108a29',1,212,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','931504633da3bba2ae68490a4d0aef24',2,12,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','93349189c5d0219ba8b20ca7cbf068a1',3,368,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','933dd8674c563081260867dfa95b5e74',2,282,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','95cc6b4ac5abdeadc74b73a8ba7200d9',6,2,3568,0),
('3d798c3f120fdabe32985de46a5fc2fd','960db2ed82202a9706b97775a4269378',2,125,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','97081c1611358b350e8088cb3d2b8b5b',1,404,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','979b93285de87c4731fc824bd9e4ba75',1,422,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','9827f490863603674bc635c4a4bea06c',1,271,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','99f78c54130e752954404fff0707dcbd',1,412,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','9c44fc81ae1c3b4b362d5576bf6cda53',1,46,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','9cb9ce5bd9e807867d42a740c9633fc7',1,441,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','9df3b01c60df20d13843841ff0d4482c',1,202,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','9e81e7b963c71363e2fb3eefcfecfc0e',1,491,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','9e925e9341b490bfd3b4c4ca3b0c1ef2',2,274,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','9ea0a36b3a20901fafe834eb519a595c',1,76,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','a0c391dc49c440fc9962168353cedde3',1,340,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','a181a603769c1f98ad927e7367c7aa51',1,143,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','a2a551a6458a8de22446cc76d639a9e9',7,136,4163,0),
('3d798c3f120fdabe32985de46a5fc2fd','a2bbabfe7b1dd886a0c32b57bd8a94f9',2,383,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','a542e9b744bedcfd874129ab0f98c4ff',1,431,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','a658279f9b983958149f31e4d8487673',1,432,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','a74ad8dfacd4f985eb3977517615ce25',1,333,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','a7c78469daa497a86142ff91ed286c9c',1,226,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','a86fcebe37c3e9c82e43c25d54ad2146',1,40,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','a98e84980a3612cf1f06dae18c313459',1,228,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','aa08769cdcb26674c6706093503ff0a3',1,512,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','aa8af3ebe14831a7cd1b6d1383a03755',1,152,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ab3e355e2b6806c984851ebdee2a0da1',1,221,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ac05c7d8f4406c971085f947e43ef730',4,364,2379,0),
('3d798c3f120fdabe32985de46a5fc2fd','acf4b89d3d503d8252c9c4ba75ddbf6d',1,300,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','adb00236071c05878eaeec5b3b96103d',4,365,2379,0),
('3d798c3f120fdabe32985de46a5fc2fd','addec426932e71323700afa1911f8f1c',9,160,5353,0),
('3d798c3f120fdabe32985de46a5fc2fd','af71e0a18f8a746aaeedb1bbe63b66aa',1,462,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b03e3fd2b3d22ff6df2796c412b09311',1,325,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b2fdab230a2c39f3595a947861863cb7',1,165,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b32d73e56ec99bc5ec8f83871cde708a',1,167,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b42dad5453b2128a32f6612b13ea5d9f',5,117,2973,0),
('3d798c3f120fdabe32985de46a5fc2fd','b46127d3c32de3d485a478e88b8f6593',1,4,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b5122e6bf436c50799accdaed57a846d',1,313,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b5eda0a74558a342cf659187f06f746f',2,150,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','b7b655045b89200c7a4dedb1303ca2f1',1,182,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b807023f87e63b8ada92f79f546ff9cc',1,312,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b8488851cdb11c1ff0ba352fb3308451',4,71,2379,0),
('3d798c3f120fdabe32985de46a5fc2fd','b8a9f715dbb64fd5c56e7783c6820a61',1,288,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b96ba508e3690f5168e4b0e68b15b178',1,523,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','b9b4136389b37e3520cac8ddc3596c43',1,395,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ba8a48b0e34226a2992d871c65600a7c',2,222,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','bb3ccd5881d651448ded1dac904054ac',1,198,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','be1ab1632e4285edc3733b142935c60b',1,304,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','be5d5d37542d75f93a87094459f76678',21,17,12490,0),
('3d798c3f120fdabe32985de46a5fc2fd','bf7b83f5e1b17616ccf3e2af66e54e47',1,509,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c05f6c233521207f6fe311afef550c3c',1,472,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c185ddac8b5a8f5aa23c5b80bc12d214',2,326,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','c1a1738648ecda410dc3a0dbbb3be683',1,279,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c395246f710b0e2c86b7ed82f7f56ce3',1,171,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c458d397f9d289f2e4aaa14db438c03d',1,45,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c4ca4238a0b923820dcc509a6f75849b',3,42,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','c51ce410c124a10e0db5e4b97fc2af39',2,48,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','c59174e113eee69e3e2145e6fb22bfad',1,401,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c5e7dfaf771d423ecf59b008369021e8',1,20,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c6c24400cd50cd724c6f9a9d2493abf4',1,409,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c7561db7a418dd39b2201dfe110ab4a4',1,94,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c81e728d9d4c2f636f067f89cc14862c',4,41,2379,0),
('3d798c3f120fdabe32985de46a5fc2fd','c8d11180c956e5b5afc3d1970ce2193e',1,95,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','c8d46d341bea4fd5bff866a65ff8aea9',3,23,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','c9ff055d5178c1e5686eb62017e3c4ff',1,241,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ca23ba209cc33678530392b7197fda4d',2,363,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','cb50fd5e8c18cffaaad1ab74baf6eb3c',1,63,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','cbf5d56e63331be4b1df14b5d99678b2',1,453,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','cc935c5faf4c8f7a0468d7552a9b8138',2,154,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','cd9e6a20f2dd30591bce77969f2b90c1',1,458,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','cf19be9223758af6ecd460b5fc46b2f6',1,476,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','cfcd208495d565ef66e7dff9f98764da',3,26,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','d00413cdded7a5c5bc2e06079d63e562',1,406,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d0cab90d8d20d57e2f2b9be52f7dd25d',1,440,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d2e3083420929d8bfae81f58fa4594cb',1,301,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d3d9446802a44259755d38e6d163e820',1,161,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d42f2dd9c54d4fbd36ce35b5ae060c0c',1,459,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d4579b2688d675235f402f6b4b43bcbf',1,343,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d48788168076b999d36c4f3ccb75ba2f',1,140,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d55669822f1a8cf72ec1911e462a54eb',3,112,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','d6e047923b2b0f63a7a03c66074a0151',1,477,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d745415de7dbe78a88c1cd077b8a798c',1,469,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d7b85f12bdf36266db695411a654f73f',1,100,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d861877da56b8b4ceb35c8cbfdf65bb4',1,106,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d92d09fea730e2ba3908f2bff7c2b56b',1,97,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','d98a07f84921b24ee30f86fd8cd85c3c',2,123,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','da443a0ad979d5530df38ca1a74e4f80',3,107,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','db0f6f37ebeb6ea09489124345af2a45',2,284,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','db3f3946ba271882d8c74cdbf3d5179a',2,151,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','dc117c9322deb502c3b16769a8a64e08',1,534,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','de0c47fd329b3e2e28f59696b73b11cc',1,514,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','e03f9063484fb1967d1675c86a6094d7',5,30,2973,0),
('3d798c3f120fdabe32985de46a5fc2fd','e05fe30750d3ea262a610d17ebc07019',6,10,3568,0),
('3d798c3f120fdabe32985de46a5fc2fd','e1342b084a6585295c7ade62c211f850',1,289,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','e2eff6c2dafd909df8508f891b385d88',2,118,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','e3cc92c14a5e6dd1a7d94b6ff634d7fc',1,169,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','e5439f340ec51b34d51348e0885bcdf1',1,247,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','e680afd37e4511a8cb3ce9f63168862a',1,303,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','e72ff831dbceb5bf11b0a31b81327631',2,102,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','e81c4e4f2b7b93b481e13a8553c2ae1b',1,153,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','e82fa6ac6af62c4e5bcd387709acd5dc',1,168,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ebed715e82a0a0f3e950ef6565cdc4a8',1,111,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ecc3c7b4754f8509cfe9de944671b36f',6,11,3568,0),
('3d798c3f120fdabe32985de46a5fc2fd','eccbc87e4b5ce2fe28308fd9f2a7baf3',1,25,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ed29da59b3ca8a6b01b216d2973487d2',1,192,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ed2b5c0139cec8ad2873829dc1117d50',5,170,2973,0),
('3d798c3f120fdabe32985de46a5fc2fd','ed881bac6397ede33c0a285c9f50bb83',2,307,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','eda721c5f8c61daee37ca15ce3c4d881',1,130,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ee20fd29e100990f661f3f1479c19647',2,392,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','eeaf118e5d97270acfc4cd8da9555891',1,421,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f068fc985d0a439e5a126d78a28cc4c9',1,437,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f09cc7ee3a9a93273f4b80601cafb00c',4,334,2379,0),
('3d798c3f120fdabe32985de46a5fc2fd','f1edc500eb1136f10c17eeffb9eecbc5',1,500,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f212d489ec65fe36e32d99f6ac0861c9',1,55,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f2f645b7cf0962908fdb5bb485bd0cad',2,69,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','f39ed5b6d0275dcbc4a2f5de624d95ae',1,270,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f4af8b5789576c000ce9105b25609bd6',1,533,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f5743daa1b0c190dc25ac146a657932e',1,415,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f59cd8184f216f9ebecc3697b68de4c3',1,18,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f5ab96926a6a561aab7ecb4ba7c915d4',1,306,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f6216ab8b669f451dd4270a9cb96ec69',1,68,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f6cb3e816496528d4187db53bc66567f',2,248,1189,0),
('3d798c3f120fdabe32985de46a5fc2fd','f894427cc1c571f79da49605ef8b112f',3,6,1784,0),
('3d798c3f120fdabe32985de46a5fc2fd','f970e2767d0cfe75876ea857f92e319b',1,233,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f97c5d29941bfb1b2fdab0874906ab82',1,267,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f9cb12f89c3f82ffaba2483cd3551d82',1,132,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','f9f90eeaf400d228facde6bc48da5cfb',1,138,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','fbb44b4487415b134bce9c790a27fe5e',1,296,594,0),
('3d798c3f120fdabe32985de46a5fc2fd','ff1ccf57e98c817df1efcd9fe44a8aeb',11,116,6542,0),
('3e239e3d69de4b3b36fcd34479259a89','01b6e20344b68835c5ed1ddedf20d531',7,10,14177,0),
('3e239e3d69de4b3b36fcd34479259a89','03265faca14f06be8156135b57d4ccf9',1,61,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','05199deca16614131327f2c3fea9031c',1,78,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','06f287d4d2555285b15d0e30a7738037',1,16,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','07868a716d4712d7771f6414d2b8bf8a',1,103,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','099dafc678df7d266c25f95ccf6cde22',2,75,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','0cc175b9c0f1b6a831c399e269772661',5,24,10126,0),
('3e239e3d69de4b3b36fcd34479259a89','0d3fda0bdbb9d619e09cdf3eecba7999',1,142,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','0e66be14b86bd30bf4fc84357763b591',2,55,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','111c081293c11cb7c2ac6fbf841805cb',1,46,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','13b5bfe96f3e2fe411c9f66f4a582adf',2,27,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','162e31afc5ade88a04d3f428e97e8f46',9,0,18227,0),
('3e239e3d69de4b3b36fcd34479259a89','18b049cc8d8535787929df716f9f4e68',1,135,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','21582c6c30be1217322cdb9aebaf4a59',2,74,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','22af645d1859cb5ca6da0c484f1f37ea',1,119,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','23a58bf9274bedb19375e527a0744fa9',2,81,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','25aa2761448ea05599418ee93dd1d5c5',1,136,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','260ca9dd8a4577fc00b7bd5810298076',1,29,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','29a7e96467b69a9f5a93332e29e9b0de',1,26,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','3f4cede61a59db6832b07ea4f3bd3de1',1,134,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','4015e9ce43edfb0668ddaa973ebc7e87',4,8,8101,0),
('3e239e3d69de4b3b36fcd34479259a89','434990c8a25d2be94863561ae98bd682',1,109,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','43c4975d498bbc4228b3f3a20ff5ac6f',1,144,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','4ace69650136d3421a5e0b259c3bb8e3',5,1,10126,0),
('3e239e3d69de4b3b36fcd34479259a89','4cf2d30b6327df1b462663c7611de22f',2,0,4050,128),
('3e239e3d69de4b3b36fcd34479259a89','4debdd5acda769f4dec9baaf951c1bb9',1,156,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','4e8b250e91212b7e5d8b9f89abea051a',1,122,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','536801a526cbca7d986e6b9bc55363b8',1,99,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','53689aacbba32f62a7ee90c641493951',1,68,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','53d37303b62aa2c190bd5f384faf40ed',1,80,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','5d17dca175f108350a96a8dfb36a4be6',1,21,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','5ff58d62c15f28a3f16d0bbe332a1439',1,31,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','62cc0b4ebb0b57b40778179234246c38',1,143,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','639bae9ac6b3e1a84cebb7b403297b79',1,126,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','6e5f1255c3b7e3008e41ca8974012fc4',1,63,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','6f7f9432d35dea629c8384dab312259a',1,50,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','759b74ce43947f5f4c91aeddc3e5bad3',1,67,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','7896f8fa69398c56d86a65357615c41f',1,22,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','791b0c20a65a95dc903f4928be58156c',1,114,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','7959b935afdef74b73fc9ce484019f03',1,118,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','7d0db380a5b95a8ba1da0bca241abda1',1,4,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','82082716189f80fd070b89ac716570ba',1,77,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','82df41632da476065ce2997900554442',3,53,6075,0),
('3e239e3d69de4b3b36fcd34479259a89','85e47ac07ac9d6416168a97e33fa969a',1,39,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','892ea9918d303f79425139c5a34ccb0b',1,73,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','8bf8854bebe108183caeb845c7676ae4',4,14,8101,0),
('3e239e3d69de4b3b36fcd34479259a89','8c4291f6956da81515a5c0caec2976d0',1,111,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','8cd283d8b7bacc277f2bae5e26ce6d1e',1,123,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','8e83b1d4dd4533f7d84d1c6055598795',4,17,8101,0),
('3e239e3d69de4b3b36fcd34479259a89','8f488a54759182774701b7162904c10c',1,124,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','8fc42c6ddf9966db3b09e84365034357',3,12,6075,0),
('3e239e3d69de4b3b36fcd34479259a89','945b93f37cd9aa702a7380756f44e36a',1,154,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','95456e7506a8c9c04e3bdffd78da1cae',1,148,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','95cc6b4ac5abdeadc74b73a8ba7200d9',2,34,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','965dbaac085fc891bfbbd4f9d145bbc8',1,112,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','96853c0e2dd18a1ef79b19f485d60290',1,48,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','98dc0157e90a9b28306967d14bdd2f4f',1,116,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','9a9baf382431a948930621cc5e9757fe',1,25,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','a181a603769c1f98ad927e7367c7aa51',1,128,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','a3b34c0871dc2fd51eec5559b68f709d',1,23,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','a3e0f6576a754059784babff593d798a',2,9,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','af14b067a4804cdc758bf5ba6908a3fb',1,93,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','b42dad5453b2128a32f6612b13ea5d9f',1,11,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','b4aea98a6f42c3ff3c7e6a3632f5d789',1,88,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','bd4c4ea1b44a8ff2afa18dfd261ec2c8',1,20,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','be5d5d37542d75f93a87094459f76678',13,2,26329,0),
('3e239e3d69de4b3b36fcd34479259a89','c0db7d4e3cbad2b18c767c659f448a11',1,59,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','c53df31e20ec8b1f3656fd090f271c0f',1,147,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','ca23ba209cc33678530392b7197fda4d',1,54,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','cdb64a7b235e8c2d9746398a52932c4d',1,13,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','d55669822f1a8cf72ec1911e462a54eb',2,107,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','d98a07f84921b24ee30f86fd8cd85c3c',1,89,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','db3f3946ba271882d8c74cdbf3d5179a',1,117,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','dd17a1076c261ef24eb6483739b6ecea',1,56,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','df3f079de6961496f0460dcfdbf9bca3',1,79,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e05fe30750d3ea262a610d17ebc07019',3,5,6075,0),
('3e239e3d69de4b3b36fcd34479259a89','e1342b084a6585295c7ade62c211f850',1,66,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e36bb832c6550e87daece530c8b9a3ca',1,45,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e4586172850ecb0954a632168fa0151a',1,43,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e5439f340ec51b34d51348e0885bcdf1',1,120,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e6d1833ee14a790892540fc15fd3aa2a',1,90,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e80cc6e47b0a1772b7d539489060e797',1,155,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','ecc3c7b4754f8509cfe9de944671b36f',3,6,6075,0),
('3e239e3d69de4b3b36fcd34479259a89','ef87f051e5c271f948020014f3c59dd4',1,64,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f09cc7ee3a9a93273f4b80601cafb00c',1,98,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f3bddd7c27287b153ac2150e49b01ece',1,70,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f42087059b37ae7f4d9f0d3a475801a8',1,41,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f4c9385f1902f7334b00b9b4ecd164de',1,137,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f5743daa1b0c190dc25ac146a657932e',1,51,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f5ab96926a6a561aab7ecb4ba7c915d4',1,125,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f6bc81b1fa9e98a5f645cf8e05202f6f',1,106,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f6fee22e34c7d055ea7c17169175d0de',1,100,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f79b1d64a8d8b02b86d797765a6a1fe4',1,91,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f9b3d9bfeaf71205d348b43f37cafd0c',1,72,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','ff1ccf57e98c817df1efcd9fe44a8aeb',4,7,8101,0),
('4f6e807051e61027dadc02f9f2906020','06a943c59f33a34bb5924aaf72cd2995',1,0,32000,128),
('56ce185f3262c9101626cfd28a4127a4','003f53160982b3d377b1a054b3638c49',1,208,601,0),
('56ce185f3262c9101626cfd28a4127a4','01b6e20344b68835c5ed1ddedf20d531',13,167,7819,0),
('56ce185f3262c9101626cfd28a4127a4','030d798f350102e3f7ab04197e97c9bd',1,441,601,0),
('56ce185f3262c9101626cfd28a4127a4','03a93f03f1d612f37642342071e4986e',1,336,601,0),
('56ce185f3262c9101626cfd28a4127a4','05e94e8cbc28f5837d0c355917c05fea',1,143,601,0),
('56ce185f3262c9101626cfd28a4127a4','06e3d36fa30cea095545139854ad1fb9',1,499,601,0),
('56ce185f3262c9101626cfd28a4127a4','07811dc6c422334ce36a09ff5cd6fe71',2,374,1203,0),
('56ce185f3262c9101626cfd28a4127a4','07868a716d4712d7771f6414d2b8bf8a',2,48,1203,0),
('56ce185f3262c9101626cfd28a4127a4','07ab242311dbad887fb03e4a25092781',1,425,601,0),
('56ce185f3262c9101626cfd28a4127a4','07cc694b9b3fc636710fa08b6922c42b',3,52,1804,0),
('56ce185f3262c9101626cfd28a4127a4','07ccfe360dce69b84595428e2ec1c1cc',1,268,601,0),
('56ce185f3262c9101626cfd28a4127a4','08391c959fc8bd0b672c596c4d6bcdcd',1,481,601,0),
('56ce185f3262c9101626cfd28a4127a4','09286af346951f520509c5702db7625e',1,480,601,0),
('56ce185f3262c9101626cfd28a4127a4','099dafc678df7d266c25f95ccf6cde22',2,243,1203,0),
('56ce185f3262c9101626cfd28a4127a4','0b3b97fa66886c5688ee4ae80ec0c3c2',1,433,601,0),
('56ce185f3262c9101626cfd28a4127a4','0cc175b9c0f1b6a831c399e269772661',21,9,12631,0),
('56ce185f3262c9101626cfd28a4127a4','0d149b90e7394297301c90191ae775f0',1,320,601,0),
('56ce185f3262c9101626cfd28a4127a4','0d3fda0bdbb9d619e09cdf3eecba7999',2,282,1203,0),
('56ce185f3262c9101626cfd28a4127a4','0e66be14b86bd30bf4fc84357763b591',1,71,601,0),
('56ce185f3262c9101626cfd28a4127a4','10b73ec3370562dbd65f130ea54a8a35',2,391,1203,0),
('56ce185f3262c9101626cfd28a4127a4','11a7a5d55a91adb201e113967eff93fe',1,523,601,0),
('56ce185f3262c9101626cfd28a4127a4','13af528039c500905f92e2a55ccccc2d',1,99,601,0),
('56ce185f3262c9101626cfd28a4127a4','13b5bfe96f3e2fe411c9f66f4a582adf',5,106,3007,0),
('56ce185f3262c9101626cfd28a4127a4','1424ca49c88f72347af1f2fe7a569169',1,419,601,0),
('56ce185f3262c9101626cfd28a4127a4','149603e6c03516362a8da23f624db945',1,113,601,0),
('56ce185f3262c9101626cfd28a4127a4','162e31afc5ade88a04d3f428e97e8f46',10,2,6015,0),
('56ce185f3262c9101626cfd28a4127a4','18218139eec55d83cf82679934e5cd75',4,199,2406,0),
('56ce185f3262c9101626cfd28a4127a4','18b049cc8d8535787929df716f9f4e68',4,74,2406,0),
('56ce185f3262c9101626cfd28a4127a4','1ce873c16c6b46b4a275b438591a9f7c',2,170,1203,0),
('56ce185f3262c9101626cfd28a4127a4','1ea287f2ecbfd355c05b14f134d85007',1,189,601,0),
('56ce185f3262c9101626cfd28a4127a4','1ed1645edd706dc379effe13f3edcacf',2,105,1203,0),
('56ce185f3262c9101626cfd28a4127a4','1f2bf2e032a11fec0ea5d7f9d6a5aa1d',1,138,601,0),
('56ce185f3262c9101626cfd28a4127a4','21582c6c30be1217322cdb9aebaf4a59',3,205,1804,0),
('56ce185f3262c9101626cfd28a4127a4','229789c5a8df3182ad7757f6dc6c7eec',1,100,601,0),
('56ce185f3262c9101626cfd28a4127a4','22af645d1859cb5ca6da0c484f1f37ea',3,116,1804,0),
('56ce185f3262c9101626cfd28a4127a4','23a58bf9274bedb19375e527a0744fa9',2,43,1203,0),
('56ce185f3262c9101626cfd28a4127a4','268184c12df027f536154d099d497b31',1,203,601,0),
('56ce185f3262c9101626cfd28a4127a4','27792947ed5d5da7c0d1f43327ed9dab',1,403,601,0),
('56ce185f3262c9101626cfd28a4127a4','279f4c1b096489e724b12e6643ebfb3a',1,185,601,0),
('56ce185f3262c9101626cfd28a4127a4','28b3da6a4cad283dd294dd51d476084c',1,449,601,0),
('56ce185f3262c9101626cfd28a4127a4','28f20a02bf8a021fab4fcec48afb584e',4,114,2406,0),
('56ce185f3262c9101626cfd28a4127a4','2bb3d86d95234affa7c5bd68c4bab606',1,446,601,0),
('56ce185f3262c9101626cfd28a4127a4','2c61ebff5a7f675451467527df66788d',2,122,1203,0),
('56ce185f3262c9101626cfd28a4127a4','2ea1a0d2250c0a3444da79587f2d2cf1',1,239,601,0),
('56ce185f3262c9101626cfd28a4127a4','309b5d4f7785cdf69a212603f95efcc5',1,249,601,0),
('56ce185f3262c9101626cfd28a4127a4','312db69f5bf4447dfe3c58983083b54f',1,311,601,0),
('56ce185f3262c9101626cfd28a4127a4','3189934774aa880fa7fbf8da8f9e446d',1,220,601,0),
('56ce185f3262c9101626cfd28a4127a4','3190dbf13beaf51d8852bdd9bc4cdf89',2,64,1203,0),
('56ce185f3262c9101626cfd28a4127a4','3262d48df5d75e3452f0f16b313b7808',1,497,601,0),
('56ce185f3262c9101626cfd28a4127a4','32aad2fce95f306356015aa528ff4513',1,329,601,0),
('56ce185f3262c9101626cfd28a4127a4','340bac32dadc0feb0ba6cc0ffac94515',1,344,601,0),
('56ce185f3262c9101626cfd28a4127a4','3413e60c4be854b769e90cfa4cb1730d',2,453,1203,0),
('56ce185f3262c9101626cfd28a4127a4','34d1f91fb2e514b8576fab1a75a89a6b',1,236,601,0),
('56ce185f3262c9101626cfd28a4127a4','37598dad8f8805ce708ba8c4f67ce367',1,267,601,0),
('56ce185f3262c9101626cfd28a4127a4','37d153a06c79e99e4de5889dbe2e7c57',2,372,1203,0),
('56ce185f3262c9101626cfd28a4127a4','3823552b7a2b839259a831e3b7b349a3',1,130,601,0),
('56ce185f3262c9101626cfd28a4127a4','388053b7c0f6bc0351cb7698028e0611',1,204,601,0),
('56ce185f3262c9101626cfd28a4127a4','3b759a9ca80234563d87672350659b2b',1,194,601,0),
('56ce185f3262c9101626cfd28a4127a4','3d262d4c9d3fd91c57191af817d40f8c',1,44,601,0),
('56ce185f3262c9101626cfd28a4127a4','3e1867f5aee83045775fbe355e6a3ce1',1,197,601,0),
('56ce185f3262c9101626cfd28a4127a4','3f347890f95ef75c2eacb4f01c622ac9',1,352,601,0),
('56ce185f3262c9101626cfd28a4127a4','3f4cede61a59db6832b07ea4f3bd3de1',1,338,601,0),
('56ce185f3262c9101626cfd28a4127a4','3ffc3af202ae44739c09f22a441653fb',1,144,601,0),
('56ce185f3262c9101626cfd28a4127a4','4015e9ce43edfb0668ddaa973ebc7e87',2,118,1203,0),
('56ce185f3262c9101626cfd28a4127a4','40be4e59b9a2a2b5dffb918c0e86b3d7',1,475,601,0),
('56ce185f3262c9101626cfd28a4127a4','4119639092e62c55ea8be348e4d9260d',5,28,3007,0),
('56ce185f3262c9101626cfd28a4127a4','418c5509e2171d55b0aee5c2ea4442b5',1,153,601,0),
('56ce185f3262c9101626cfd28a4127a4','434990c8a25d2be94863561ae98bd682',1,503,601,0),
('56ce185f3262c9101626cfd28a4127a4','437b930db84b8079c2dd804a71936b5f',1,145,601,0),
('56ce185f3262c9101626cfd28a4127a4','43a0a1e8212cd9140a5c1fa1ef5a5bac',1,251,601,0),
('56ce185f3262c9101626cfd28a4127a4','469bba0a564235dfceede42db14f17b0',1,227,601,0),
('56ce185f3262c9101626cfd28a4127a4','46b3931b9959c927df4fc65fdee94b07',3,1,1804,0),
('56ce185f3262c9101626cfd28a4127a4','490e1788a77a71429b8caa472697e1e4',1,508,601,0),
('56ce185f3262c9101626cfd28a4127a4','49889d3f78e208b1538f15a0c7bc16d0',1,384,601,0),
('56ce185f3262c9101626cfd28a4127a4','4bca24304861acde5770fdbe3cc2503b',2,134,1203,0),
('56ce185f3262c9101626cfd28a4127a4','50584c36a7a475387f81fa1b1655fe79',1,485,601,0),
('56ce185f3262c9101626cfd28a4127a4','508c75c8507a2ae5223dfd2faeb98122',2,0,1203,128),
('56ce185f3262c9101626cfd28a4127a4','50bd8c21bfafa6e4e962f6a948b1ef92',1,136,601,0),
('56ce185f3262c9101626cfd28a4127a4','517b08dafd8aa7559790bf0715de47c6',4,385,2406,0),
('56ce185f3262c9101626cfd28a4127a4','53d670af9bb16ea82e7ef41ee23ec6df',1,139,601,0),
('56ce185f3262c9101626cfd28a4127a4','53e21a352428181343474073e76918ed',1,447,601,0),
('56ce185f3262c9101626cfd28a4127a4','560220fc3242a805f094edce47f35702',2,217,1203,0),
('56ce185f3262c9101626cfd28a4127a4','564adc21ef12d979b9b055426798dce2',1,255,601,0),
('56ce185f3262c9101626cfd28a4127a4','567904efe9e64d9faf3e41ef402cb568',1,112,601,0),
('56ce185f3262c9101626cfd28a4127a4','56de9219979795654f00a462f479b92d',2,132,1203,0),
('56ce185f3262c9101626cfd28a4127a4','584826e70485130530f7f01a973d5637',1,219,601,0),
('56ce185f3262c9101626cfd28a4127a4','589b397ed82131bf51acdf63521c2df5',1,119,601,0),
('56ce185f3262c9101626cfd28a4127a4','5bace2853ebc457c9baf0678fe77fe1b',1,226,601,0),
('56ce185f3262c9101626cfd28a4127a4','5c4e8c01bf4510088d37c806e77bd628',1,285,601,0),
('56ce185f3262c9101626cfd28a4127a4','5f12b786b2f662365bc4843f7fc2a6fa',2,276,1203,0),
('56ce185f3262c9101626cfd28a4127a4','5fc732311905cb27e82d67f4f6511f7f',1,404,601,0),
('56ce185f3262c9101626cfd28a4127a4','609f88983635a66fe4c8570afee066e0',1,201,601,0),
('56ce185f3262c9101626cfd28a4127a4','62506be34d574da4a0d158a67253ea99',2,183,1203,0),
('56ce185f3262c9101626cfd28a4127a4','628b7db04235f228d40adc671413a8c8',5,41,3007,0),
('56ce185f3262c9101626cfd28a4127a4','6299ba2cbd9661a5e3872b715521cd6a',1,260,601,0),
('56ce185f3262c9101626cfd28a4127a4','62cc0b4ebb0b57b40778179234246c38',5,275,3007,0),
('56ce185f3262c9101626cfd28a4127a4','632a2406bbcbcd553eec45ac14b40a0a',1,350,601,0),
('56ce185f3262c9101626cfd28a4127a4','639bae9ac6b3e1a84cebb7b403297b79',2,327,1203,0),
('56ce185f3262c9101626cfd28a4127a4','67b3dba8bc6778101892eb77249db32e',1,54,601,0),
('56ce185f3262c9101626cfd28a4127a4','6819d54dd49f7cece869e3fe77d213f8',1,342,601,0),
('56ce185f3262c9101626cfd28a4127a4','6c3fa34115345a2636a23876089152b7',1,5,601,0),
('56ce185f3262c9101626cfd28a4127a4','6d1cc5925faebb27245b48b88c94838b',2,214,1203,0),
('56ce185f3262c9101626cfd28a4127a4','6f4922f45568161a8cdf4ad2299f6d23',2,373,1203,0),
('56ce185f3262c9101626cfd28a4127a4','706dc2ee585fb5dcb18e3ac08da7ce0c',3,97,1804,0),
('56ce185f3262c9101626cfd28a4127a4','713dd4d0b2e842c08da62ddeec872331',1,80,601,0),
('56ce185f3262c9101626cfd28a4127a4','7297ba034884447afd590e24a0638ba2',1,464,601,0),
('56ce185f3262c9101626cfd28a4127a4','731b886d80d2ea138da54d30f43b2005',1,432,601,0),
('56ce185f3262c9101626cfd28a4127a4','734d3030ff72ad8d9678efa82b1db7d2',1,297,601,0),
('56ce185f3262c9101626cfd28a4127a4','75631f399043213a36602cc670faef71',1,436,601,0),
('56ce185f3262c9101626cfd28a4127a4','75e52a0ecfafeda17a34fc60111c1f0b',1,196,601,0),
('56ce185f3262c9101626cfd28a4127a4','76a79a1cdd981d7b73a1b7cf9cc6e0de',1,278,601,0),
('56ce185f3262c9101626cfd28a4127a4','76e369257240ded4b1c059cf20e8d9a4',1,179,601,0),
('56ce185f3262c9101626cfd28a4127a4','77004ea213d5fc71acf74a8c9c6795fb',1,289,601,0),
('56ce185f3262c9101626cfd28a4127a4','7716ed93eba822a48b5f39b87bb5f56c',1,257,601,0),
('56ce185f3262c9101626cfd28a4127a4','7761127a460aaf290ed953098284dd1a',2,90,1203,0),
('56ce185f3262c9101626cfd28a4127a4','78ee54aa8f813885fe2fe20d232518b9',1,101,601,0),
('56ce185f3262c9101626cfd28a4127a4','7959b935afdef74b73fc9ce484019f03',1,513,601,0),
('56ce185f3262c9101626cfd28a4127a4','79b7ba2c4d2732da179563e4a3ad7d2e',1,29,601,0),
('56ce185f3262c9101626cfd28a4127a4','7b7813f00f42b7e5366e7065aaa798c6',1,187,601,0),
('56ce185f3262c9101626cfd28a4127a4','7b8dc4fb0fb55fc8eb69ff080c45ed7e',2,272,1203,0),
('56ce185f3262c9101626cfd28a4127a4','7bcf2403c6ea5f9a79fabfa53a0d43b8',1,521,601,0),
('56ce185f3262c9101626cfd28a4127a4','7cef8a734855777c2a9d0caf42666e69',1,422,601,0),
('56ce185f3262c9101626cfd28a4127a4','7d0db380a5b95a8ba1da0bca241abda1',5,148,3007,0),
('56ce185f3262c9101626cfd28a4127a4','7d5827a9c13ecd79a8fd94ebb2537412',1,31,601,0),
('56ce185f3262c9101626cfd28a4127a4','7d767e6bb05138bb94abee483ea8abc6',1,131,601,0),
('56ce185f3262c9101626cfd28a4127a4','7dc22b2c6a992f0232345df41303f5ea',1,162,601,0),
('56ce185f3262c9101626cfd28a4127a4','7f90df6477bdb81ce131fe37eeeb1f01',5,7,3007,0),
('56ce185f3262c9101626cfd28a4127a4','8134b84030cca5285ed0e0b31ba06f10',2,91,1203,0),
('56ce185f3262c9101626cfd28a4127a4','826ad6b0338304c40b42644b5144f80a',1,161,601,0),
('56ce185f3262c9101626cfd28a4127a4','82df41632da476065ce2997900554442',7,14,4210,0),
('56ce185f3262c9101626cfd28a4127a4','84cdc76cabf41bd7c961f6ab12f117d8',2,349,1203,0),
('56ce185f3262c9101626cfd28a4127a4','85964989611934e09fd33690cd7aa279',1,151,601,0),
('56ce185f3262c9101626cfd28a4127a4','85e47ac07ac9d6416168a97e33fa969a',1,123,601,0),
('56ce185f3262c9101626cfd28a4127a4','860cb9843fe4a9b87c60b6d02619515a',1,269,601,0),
('56ce185f3262c9101626cfd28a4127a4','86abf8f8953dc4beec265226cc233369',2,261,1203,0),
('56ce185f3262c9101626cfd28a4127a4','8727920077943a3af1ff377e46437c42',1,176,601,0),
('56ce185f3262c9101626cfd28a4127a4','88627d1fe4d5ef9e8b341f0dbf0370b5',1,61,601,0),
('56ce185f3262c9101626cfd28a4127a4','88d2c32b8e12e4cadb0fdbf279a85d8d',1,421,601,0),
('56ce185f3262c9101626cfd28a4127a4','892ea9918d303f79425139c5a34ccb0b',1,241,601,0),
('56ce185f3262c9101626cfd28a4127a4','8a6b6ea3aa08285be1d4e00725aa9090',1,332,601,0),
('56ce185f3262c9101626cfd28a4127a4','8b461191e6b0705ec1ce1199a20f370e',1,469,601,0),
('56ce185f3262c9101626cfd28a4127a4','8bf8854bebe108183caeb845c7676ae4',13,11,7819,0),
('56ce185f3262c9101626cfd28a4127a4','8c4291f6956da81515a5c0caec2976d0',2,323,1203,0),
('56ce185f3262c9101626cfd28a4127a4','8df358eebbbb64bf19235a902db73505',6,8,3609,0),
('56ce185f3262c9101626cfd28a4127a4','8e83b1d4dd4533f7d84d1c6055598795',1,34,601,0),
('56ce185f3262c9101626cfd28a4127a4','8ee0b79fb35b0efe85b44c0ee243f8d5',1,156,601,0),
('56ce185f3262c9101626cfd28a4127a4','8fc42c6ddf9966db3b09e84365034357',28,19,16842,0),
('56ce185f3262c9101626cfd28a4127a4','8fd6f46ad5874b41fc087b26745c81b2',3,65,1804,0),
('56ce185f3262c9101626cfd28a4127a4','90bec61be5ffe907d8a66f2484f95ba0',1,56,601,0),
('56ce185f3262c9101626cfd28a4127a4','910955a907e739b81ec8855763108a29',2,200,1203,0),
('56ce185f3262c9101626cfd28a4127a4','91735fc2b8934286afcbab65f138cdf7',1,81,601,0),
('56ce185f3262c9101626cfd28a4127a4','922c8158165d7c6528b9194c86b54b01',1,520,601,0),
('56ce185f3262c9101626cfd28a4127a4','9357f705a055126cd4cadc045c987c4e',1,389,601,0),
('56ce185f3262c9101626cfd28a4127a4','93da65a9fd0004d9477aeac024e08e15',1,186,601,0),
('56ce185f3262c9101626cfd28a4127a4','95456e7506a8c9c04e3bdffd78da1cae',1,246,601,0),
('56ce185f3262c9101626cfd28a4127a4','95aedc669e1140c32256d3ac1921c23e',2,376,1203,0),
('56ce185f3262c9101626cfd28a4127a4','95cc6b4ac5abdeadc74b73a8ba7200d9',1,3,601,0),
('56ce185f3262c9101626cfd28a4127a4','960db2ed82202a9706b97775a4269378',3,38,1804,0),
('56ce185f3262c9101626cfd28a4127a4','965dbaac085fc891bfbbd4f9d145bbc8',2,324,1203,0),
('56ce185f3262c9101626cfd28a4127a4','97e32a574aa9ef24f76a81fc43aba6ce',2,21,1203,0),
('56ce185f3262c9101626cfd28a4127a4','999b1ad8231180184caf38ed6b540ed7',1,424,601,0),
('56ce185f3262c9101626cfd28a4127a4','99be1ee67a0137092d3d112c0620c552',1,516,601,0),
('56ce185f3262c9101626cfd28a4127a4','9a7d3e2c3ffb452b2e40784f77723938',1,263,601,0),
('56ce185f3262c9101626cfd28a4127a4','9aa76d8a9f8e25e87dbcafc7aaf556fc',1,42,601,0),
('56ce185f3262c9101626cfd28a4127a4','9b680059d7f7ea92ea578a9ceeb0f0db',1,515,601,0),
('56ce185f3262c9101626cfd28a4127a4','9c28d32df234037773be184dbdafc274',3,45,1804,0),
('56ce185f3262c9101626cfd28a4127a4','9ce90fddf23fb66e39c8adb03e690768',1,237,601,0),
('56ce185f3262c9101626cfd28a4127a4','9df3b01c60df20d13843841ff0d4482c',1,420,601,0),
('56ce185f3262c9101626cfd28a4127a4','9df9fdb80dd531ff0f17c4754d44d995',1,164,601,0),
('56ce185f3262c9101626cfd28a4127a4','9e2bce23d37e9c08d8baae6e87ea5e90',1,321,601,0),
('56ce185f3262c9101626cfd28a4127a4','9e925e9341b490bfd3b4c4ca3b0c1ef2',5,26,3007,0),
('56ce185f3262c9101626cfd28a4127a4','a04c01d73a91a11610682a602b85a83b',1,181,601,0),
('56ce185f3262c9101626cfd28a4127a4','a181a603769c1f98ad927e7367c7aa51',1,103,601,0),
('56ce185f3262c9101626cfd28a4127a4','a2a551a6458a8de22446cc76d639a9e9',4,88,2406,0),
('56ce185f3262c9101626cfd28a4127a4','a2bbabfe7b1dd886a0c32b57bd8a94f9',1,32,601,0),
('56ce185f3262c9101626cfd28a4127a4','a3186a309d94022f5d4ec3a601f4a7c6',1,399,601,0),
('56ce185f3262c9101626cfd28a4127a4','a385f393da1ce58b289e89aef75880e6',1,73,601,0),
('56ce185f3262c9101626cfd28a4127a4','a7c78469daa497a86142ff91ed286c9c',2,470,1203,0),
('56ce185f3262c9101626cfd28a4127a4','a98e84980a3612cf1f06dae18c313459',1,473,601,0),
('56ce185f3262c9101626cfd28a4127a4','aa716414de9fdd94b9e111bddc0169b7',2,10,1203,0),
('56ce185f3262c9101626cfd28a4127a4','aa8af3ebe14831a7cd1b6d1383a03755',1,193,601,0),
('56ce185f3262c9101626cfd28a4127a4','ab3e355e2b6806c984851ebdee2a0da1',1,467,601,0),
('56ce185f3262c9101626cfd28a4127a4','ac725768466500046904d27b548d75c5',1,380,601,0),
('56ce185f3262c9101626cfd28a4127a4','acaa16770db76c1ffb9cee51c3cabfcf',1,212,601,0),
('56ce185f3262c9101626cfd28a4127a4','acd05dbb82fb59c9e37b60fe1f328f16',1,142,601,0),
('56ce185f3262c9101626cfd28a4127a4','ad5cd0c1aa08427cdec8d8cc5349a6e6',1,115,601,0),
('56ce185f3262c9101626cfd28a4127a4','addec426932e71323700afa1911f8f1c',2,89,1203,0),
('56ce185f3262c9101626cfd28a4127a4','af14b067a4804cdc758bf5ba6908a3fb',1,477,601,0),
('56ce185f3262c9101626cfd28a4127a4','b214af95fab423cc843792c70a199f09',1,63,601,0),
('56ce185f3262c9101626cfd28a4127a4','b2bf18e206cf9b5eb2d632030acb16cc',1,159,601,0),
('56ce185f3262c9101626cfd28a4127a4','b2fdab230a2c39f3595a947861863cb7',1,362,601,0),
('56ce185f3262c9101626cfd28a4127a4','b32d73e56ec99bc5ec8f83871cde708a',1,364,601,0),
('56ce185f3262c9101626cfd28a4127a4','b40b43fd5af2db4fbfeb4e83856e4876',1,517,601,0),
('56ce185f3262c9101626cfd28a4127a4','b42dad5453b2128a32f6612b13ea5d9f',2,69,1203,0),
('56ce185f3262c9101626cfd28a4127a4','b5c0b187fe309af0f4d35982fd961d7e',1,313,601,0),
('56ce185f3262c9101626cfd28a4127a4','b5eda0a74558a342cf659187f06f746f',1,361,601,0),
('56ce185f3262c9101626cfd28a4127a4','b7a61cf5d29e4ad809c301c74229b078',1,398,601,0),
('56ce185f3262c9101626cfd28a4127a4','b81dd45e6a3e12c5f231f00cb988f858',1,438,601,0),
('56ce185f3262c9101626cfd28a4127a4','b8284650440a8e32b5189e1bcb3e94d8',1,360,601,0),
('56ce185f3262c9101626cfd28a4127a4','ba7830c6c0beaca54d8dca32b2a20c93',1,17,601,0),
('56ce185f3262c9101626cfd28a4127a4','bb7887c1012eb32934823abd96a1068e',1,27,601,0),
('56ce185f3262c9101626cfd28a4127a4','bd15747ee12aff1277bcf3617bcff10b',1,18,601,0),
('56ce185f3262c9101626cfd28a4127a4','be5d5d37542d75f93a87094459f76678',22,13,13233,0),
('56ce185f3262c9101626cfd28a4127a4','be6601e0439c8f7e32e545c04aae24c7',1,126,601,0),
('56ce185f3262c9101626cfd28a4127a4','bef99584217af744e404ed44a33af589',1,93,601,0),
('56ce185f3262c9101626cfd28a4127a4','bf0b130004f7942e3197451db4a1c330',1,326,601,0),
('56ce185f3262c9101626cfd28a4127a4','c180aaadf5ab10fb3a733f43f3ffc4b3',1,191,601,0),
('56ce185f3262c9101626cfd28a4127a4','c2c8e798aecbc26d86e4805114b03c51',1,127,601,0),
('56ce185f3262c9101626cfd28a4127a4','c395246f710b0e2c86b7ed82f7f56ce3',2,371,1203,0),
('56ce185f3262c9101626cfd28a4127a4','c55704728716728d5e1b6d3857b503a6',1,36,601,0),
('56ce185f3262c9101626cfd28a4127a4','c81c0f0b71e938091314334dc3440fa6',1,58,601,0),
('56ce185f3262c9101626cfd28a4127a4','c8d46d341bea4fd5bff866a65ff8aea9',1,316,601,0),
('56ce185f3262c9101626cfd28a4127a4','c9ff055d5178c1e5686eb62017e3c4ff',1,487,601,0),
('56ce185f3262c9101626cfd28a4127a4','cbf5d56e63331be4b1df14b5d99678b2',1,117,601,0),
('56ce185f3262c9101626cfd28a4127a4','cc935c5faf4c8f7a0468d7552a9b8138',2,206,1203,0),
('56ce185f3262c9101626cfd28a4127a4','d50d86b4591ddaaa0609de5237552c3e',1,78,601,0),
('56ce185f3262c9101626cfd28a4127a4','d529e941509eb9e9b9cfaeae1fe7ca23',1,259,601,0),
('56ce185f3262c9101626cfd28a4127a4','d55669822f1a8cf72ec1911e462a54eb',12,39,7218,0),
('56ce185f3262c9101626cfd28a4127a4','d850f04cdb48312a9be171e214c0b4ee',2,198,1203,0),
('56ce185f3262c9101626cfd28a4127a4','d98a07f84921b24ee30f86fd8cd85c3c',4,35,2406,0),
('56ce185f3262c9101626cfd28a4127a4','d998ff3a339f9318bd7b6e98912e4043',1,168,601,0),
('56ce185f3262c9101626cfd28a4127a4','da443a0ad979d5530df38ca1a74e4f80',9,12,5413,0),
('56ce185f3262c9101626cfd28a4127a4','db3f3946ba271882d8c74cdbf3d5179a',2,84,1203,0),
('56ce185f3262c9101626cfd28a4127a4','db82206b1d49042d1a710e9c88c21d36',1,358,601,0),
('56ce185f3262c9101626cfd28a4127a4','dc117c9322deb502c3b16769a8a64e08',2,476,1203,0),
('56ce185f3262c9101626cfd28a4127a4','dc62980cd9036671e0a3a0c16c16e61c',1,502,601,0),
('56ce185f3262c9101626cfd28a4127a4','dd24ed91e7104df8ec2f38f5d969de43',1,346,601,0),
('56ce185f3262c9101626cfd28a4127a4','dd5c8bf51558ffcbe5007071908e9524',1,381,601,0),
('56ce185f3262c9101626cfd28a4127a4','de13fc4490fbd29a732bf77eb7476650',1,401,601,0),
('56ce185f3262c9101626cfd28a4127a4','df3f079de6961496f0460dcfdbf9bca3',2,254,1203,0),
('56ce185f3262c9101626cfd28a4127a4','e05fe30750d3ea262a610d17ebc07019',7,4,4210,0),
('56ce185f3262c9101626cfd28a4127a4','e3cc92c14a5e6dd1a7d94b6ff634d7fc',3,366,1804,0),
('56ce185f3262c9101626cfd28a4127a4','e4894ca167b08880bfc35862f18575eb',1,431,601,0),
('56ce185f3262c9101626cfd28a4127a4','e5439f340ec51b34d51348e0885bcdf1',1,493,601,0),
('56ce185f3262c9101626cfd28a4127a4','e58a50b35e8d273ffe254b905362a7fb',1,140,601,0),
('56ce185f3262c9101626cfd28a4127a4','e72ff831dbceb5bf11b0a31b81327631',5,6,3007,0),
('56ce185f3262c9101626cfd28a4127a4','e81c4e4f2b7b93b481e13a8553c2ae1b',1,137,601,0),
('56ce185f3262c9101626cfd28a4127a4','e82fa6ac6af62c4e5bcd387709acd5dc',3,75,1804,0),
('56ce185f3262c9101626cfd28a4127a4','e833b2db6f85ce861428ebef754d13cc',1,452,601,0),
('56ce185f3262c9101626cfd28a4127a4','e877c56e4fb621e81fd30dbd114a545b',1,253,601,0),
('56ce185f3262c9101626cfd28a4127a4','ea82410c7a9991816b5eeeebe195e20a',2,274,1203,0),
('56ce185f3262c9101626cfd28a4127a4','eb693dc3e09666bb339be2c419d0478e',1,428,601,0),
('56ce185f3262c9101626cfd28a4127a4','ebed715e82a0a0f3e950ef6565cdc4a8',1,111,601,0),
('56ce185f3262c9101626cfd28a4127a4','ebf78b512222fe4dcd14e7d5060a15b0',1,76,601,0),
('56ce185f3262c9101626cfd28a4127a4','ecc3c7b4754f8509cfe9de944671b36f',6,16,3609,0),
('56ce185f3262c9101626cfd28a4127a4','ed2b5c0139cec8ad2873829dc1117d50',5,154,3007,0),
('56ce185f3262c9101626cfd28a4127a4','ed881bac6397ede33c0a285c9f50bb83',2,121,1203,0),
('56ce185f3262c9101626cfd28a4127a4','eda721c5f8c61daee37ca15ce3c4d881',1,70,601,0),
('56ce185f3262c9101626cfd28a4127a4','ee63700a92c5b6a61802e226ed995c05',1,319,601,0),
('56ce185f3262c9101626cfd28a4127a4','f277687cfcb8e4e4714c2b582bc37080',1,510,601,0),
('56ce185f3262c9101626cfd28a4127a4','f3965f8846e37e152d8cd79bba70891a',1,216,601,0),
('56ce185f3262c9101626cfd28a4127a4','f45ead318b5fa57aa8985c486928acc3',1,231,601,0),
('56ce185f3262c9101626cfd28a4127a4','f4842dcb685d490e2a43212b8072a6fe',1,416,601,0),
('56ce185f3262c9101626cfd28a4127a4','f4c9385f1902f7334b00b9b4ecd164de',1,339,601,0),
('56ce185f3262c9101626cfd28a4127a4','f5ddaf0ca7929578b408c909429f68f2',2,59,1203,0),
('56ce185f3262c9101626cfd28a4127a4','f68d48a1c64478cadff5c343371783c3',1,177,601,0),
('56ce185f3262c9101626cfd28a4127a4','f6cb3e816496528d4187db53bc66567f',1,494,601,0),
('56ce185f3262c9101626cfd28a4127a4','f75cac02116d825a000c33a7c326af37',1,386,601,0),
('56ce185f3262c9101626cfd28a4127a4','f7b11037f2050959293aafb493b7653c',1,511,601,0),
('56ce185f3262c9101626cfd28a4127a4','f894427cc1c571f79da49605ef8b112f',1,528,601,0),
('56ce185f3262c9101626cfd28a4127a4','f970e2767d0cfe75876ea857f92e319b',4,173,2406,0),
('56ce185f3262c9101626cfd28a4127a4','f97c5d29941bfb1b2fdab0874906ab82',1,359,601,0),
('56ce185f3262c9101626cfd28a4127a4','f9cb12f89c3f82ffaba2483cd3551d82',1,72,601,0),
('56ce185f3262c9101626cfd28a4127a4','ff1ccf57e98c817df1efcd9fe44a8aeb',5,53,3007,0),
('6d2ddd1174e062f12957e8f7a89bafb1','95cc6b4ac5abdeadc74b73a8ba7200d9',1,0,32000,128),
('755095551c463ec2cdedd536714e08a7','0b3b97fa66886c5688ee4ae80ec0c3c2',1,0,16842,128),
('755095551c463ec2cdedd536714e08a7','0c83f57c786a0b4a39efab23731c7ebc',1,5,16842,0),
('755095551c463ec2cdedd536714e08a7','1f96d7488ccbf36f57147e2f9ef9cb55',1,14,16842,0),
('755095551c463ec2cdedd536714e08a7','2f8a6bf31f3bd67bd2d9720c58b19c9a',1,0,16842,128),
('755095551c463ec2cdedd536714e08a7','4b77a01c9178cf8fcc13fea642393955',1,15,16842,0),
('755095551c463ec2cdedd536714e08a7','4c480b2170d066b2af6f98af80902ce0',1,13,16842,0),
('755095551c463ec2cdedd536714e08a7','7f9a983a540e00931a69382161bdd265',1,12,16842,0),
('755095551c463ec2cdedd536714e08a7','87d4eeb7dec7686410748d174c0e0a11',2,3,32000,0),
('755095551c463ec2cdedd536714e08a7','884d9804999fc47a3c2694e49ad2536a',1,6,16842,0),
('755095551c463ec2cdedd536714e08a7','a98931d104a7fb8f30450547d97e7ca5',2,2,32000,0),
('755095551c463ec2cdedd536714e08a7','b068931cc450442b63f5b3d276ea4297',1,4,16842,0),
('755095551c463ec2cdedd536714e08a7','b5e3374e43f6544852f7751dfc529100',1,7,16842,0),
('755095551c463ec2cdedd536714e08a7','c79bdf421714f5087fc34b7c538b6807',1,16,16842,0),
('755095551c463ec2cdedd536714e08a7','d2e16e6ef52a45b7468f1da56bba1953',2,0,32000,0),
('755095551c463ec2cdedd536714e08a7','e78f5438b48b39bcbdea61b73679449d',2,1,32000,0),
('78cabd40e1e1f417b9f83789c2321f4a','0cc175b9c0f1b6a831c399e269772661',1,19,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','0cfff68896ae6825dfa9caee7afcea9f',1,84,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','0eee59a475855895f87e4900c084a4a9',1,77,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','0f81d52e06caaa4860887488d18271c7',1,4,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','10ae9fc7d453b0dd525d0edf2ede7961',1,21,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','10b73ec3370562dbd65f130ea54a8a35',10,41,28571,0),
('78cabd40e1e1f417b9f83789c2321f4a','1424ca49c88f72347af1f2fe7a569169',5,45,14285,0),
('78cabd40e1e1f417b9f83789c2321f4a','162e31afc5ade88a04d3f428e97e8f46',3,0,8571,0),
('78cabd40e1e1f417b9f83789c2321f4a','16908b0605f2645dfcb4c3a8d248cef3',1,0,2857,128),
('78cabd40e1e1f417b9f83789c2321f4a','18218139eec55d83cf82679934e5cd75',1,17,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','18ccf61d533b600bbf5a963359223fe4',1,27,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','1b3231655cebb7a1f783eddf27d254ca',5,43,14285,0),
('78cabd40e1e1f417b9f83789c2321f4a','1fecb4dca32e01d3a83ebab5314ebbab',1,97,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','23a58bf9274bedb19375e527a0744fa9',1,5,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','308319a5ba52f2b73fd79195accdd23a',1,20,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','3681df8d04470ecc65053b790e19a065',1,95,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','43b5c9175984c071f30b873fdce0a000',1,33,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','469bba0a564235dfceede42db14f17b0',1,29,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','46defce884d1be32019f20864172323d',1,88,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','517b08dafd8aa7559790bf0715de47c6',10,42,28571,0),
('78cabd40e1e1f417b9f83789c2321f4a','53a9c3686afdbb0db7c626e56a243a41',1,38,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','53e61336bb49ec978968786b07dea50b',2,2,5714,0),
('78cabd40e1e1f417b9f83789c2321f4a','5fbab8c991be6b35d52e2d4868b6854f',1,54,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','62cd275989e78ee56a81f0265a87562e',1,89,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','639bae9ac6b3e1a84cebb7b403297b79',1,16,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','667940ea3df6617168cef1233b76dc29',1,96,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','6c3fa34115345a2636a23876089152b7',1,13,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','6c92285fa6d3e827b198d120ea3ac674',1,15,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','6e373659f3c93670f67f66279ce312f1',1,37,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','71ccb7a35a452ea8153b6d920f9f190e',1,7,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','77a072fba34a72588b4a8170238f2cf0',1,91,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','8154f2ab366901a6744c15cef7c62eba',1,24,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','8bf8854bebe108183caeb845c7676ae4',2,11,5714,0),
('78cabd40e1e1f417b9f83789c2321f4a','8fc42c6ddf9966db3b09e84365034357',2,6,5714,0),
('78cabd40e1e1f417b9f83789c2321f4a','99be1ee67a0137092d3d112c0620c552',1,3,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','9c28d32df234037773be184dbdafc274',1,14,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','9c44fc81ae1c3b4b362d5576bf6cda53',1,60,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','9ea0a36b3a20901fafe834eb519a595c',1,90,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','a86fcebe37c3e9c82e43c25d54ad2146',1,46,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','ada150cea270ef5267b5ef2ff2366846',1,10,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','b8488851cdb11c1ff0ba352fb3308451',4,85,11428,0),
('78cabd40e1e1f417b9f83789c2321f4a','bb3ccd5881d651448ded1dac904054ac',1,34,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','be5d5d37542d75f93a87094459f76678',1,9,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','c458d397f9d289f2e4aaa14db438c03d',1,59,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','c4ca4238a0b923820dcc509a6f75849b',3,56,8571,0),
('78cabd40e1e1f417b9f83789c2321f4a','c51ce410c124a10e0db5e4b97fc2af39',1,62,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','c7561db7a418dd39b2201dfe110ab4a4',1,108,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','c81e728d9d4c2f636f067f89cc14862c',4,55,11428,0),
('78cabd40e1e1f417b9f83789c2321f4a','c8d11180c956e5b5afc3d1970ce2193e',1,109,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','c8d46d341bea4fd5bff866a65ff8aea9',2,1,5714,0),
('78cabd40e1e1f417b9f83789c2321f4a','cb50fd5e8c18cffaaad1ab74baf6eb3c',1,69,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','ce5fb8df125a4721d1df328bc6f2ddea',1,28,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','cfcd208495d565ef66e7dff9f98764da',3,40,8571,0),
('78cabd40e1e1f417b9f83789c2321f4a','d55669822f1a8cf72ec1911e462a54eb',1,30,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','d92d09fea730e2ba3908f2bff7c2b56b',1,104,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','e03f9063484fb1967d1675c86a6094d7',5,44,14285,0),
('78cabd40e1e1f417b9f83789c2321f4a','e05fe30750d3ea262a610d17ebc07019',1,12,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','e97e07d7e0c203250f2e9891a4bec03c',1,8,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','ea170e2cafb1337755c8b3d5ae4437f4',1,18,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','eccbc87e4b5ce2fe28308fd9f2a7baf3',1,39,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','ed2b5c0139cec8ad2873829dc1117d50',1,35,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','f212d489ec65fe36e32d99f6ac0861c9',1,61,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','f2f645b7cf0962908fdb5bb485bd0cad',2,83,5714,0),
('78cabd40e1e1f417b9f83789c2321f4a','f6216ab8b669f451dd4270a9cb96ec69',1,82,2857,0),
('78cabd40e1e1f417b9f83789c2321f4a','f7c0a09108cdf26287c1bc5af2ed1f93',1,32,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','f894427cc1c571f79da49605ef8b112f',1,0,32000,128),
('c0296a4b8c58865ca9e0f1502b08995d','0010c6d8214b2e0dbcce46f52cca3734',1,117,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','01b6e20344b68835c5ed1ddedf20d531',12,2,8187,0),
('c0296a4b8c58865ca9e0f1502b08995d','01baf36bbdfd6958a8f4fa68b8eb9138',1,1,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','03c7c0ace395d80182db07ae2c30f034',1,298,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','052868ffed45aa3fb6beaff64dcef9b2',1,14,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','06e3d36fa30cea095545139854ad1fb9',1,108,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','07811dc6c422334ce36a09ff5cd6fe71',1,307,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','07868a716d4712d7771f6414d2b8bf8a',2,182,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','07cc694b9b3fc636710fa08b6922c42b',1,330,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','07ccfe360dce69b84595428e2ec1c1cc',2,267,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','0a541335927d1ab16d9febe9b199bae1',3,87,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','0b86f0f8d1478e2f4da5aee809824821',1,350,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','0cc175b9c0f1b6a831c399e269772661',20,9,13646,0),
('c0296a4b8c58865ca9e0f1502b08995d','0d149b90e7394297301c90191ae775f0',1,58,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','0e5243d9965540f62aac19a985f3f33e',1,361,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','0e66be14b86bd30bf4fc84357763b591',3,129,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','10933ceaff3c94fa3844de8a15af6a45',1,202,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','1180a13c0273c83a6e0b2dcd9a7a6f62',1,454,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','13b5bfe96f3e2fe411c9f66f4a582adf',10,83,6823,0),
('c0296a4b8c58865ca9e0f1502b08995d','14f4aeb5bebf370f95ab882c829a5a86',1,440,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','152c8d094c159fe4ed76eae56d8d48ed',1,146,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','162e31afc5ade88a04d3f428e97e8f46',2,6,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','16875aa2b5eed3e388dcceaa36f56214',1,246,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','16908b0605f2645dfcb4c3a8d248cef3',1,248,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','1818d506396d77b3d035f719885c4cd1',2,41,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','18218139eec55d83cf82679934e5cd75',1,459,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','1a57771a7d3737aadc12f4c4c8c19b71',1,385,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','1af4e7c58b59d5254ef70440b21fceab',2,19,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','1c6819d0309c7f049345d8d6a8c03162',1,170,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','1ce873c16c6b46b4a275b438591a9f7c',1,125,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','1ed1645edd706dc379effe13f3edcacf',2,188,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','1fe57d6202c7cfbb0ee344b1e0a6fb37',1,322,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','21582c6c30be1217322cdb9aebaf4a59',4,193,2729,0),
('c0296a4b8c58865ca9e0f1502b08995d','228c70bfc5589c58c044e03fff0e17eb',1,458,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','22af645d1859cb5ca6da0c484f1f37ea',1,345,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','22c1febc0ae5b70d1b992009b7ff05d2',1,110,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','23a58bf9274bedb19375e527a0744fa9',5,39,3411,0),
('c0296a4b8c58865ca9e0f1502b08995d','260ca9dd8a4577fc00b7bd5810298076',2,367,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','27b084adcf83c8fac848dbd371ff76c1',1,245,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','2942c466ae985c4fe2d8cc9d0c801501',1,259,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','2a1585a864d9e67627c6ae04c807a2c5',1,169,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','2b30eb962003529aa1d435285d39b1c0',1,218,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','2b3de800b4576343a07e86b8c420e448',1,98,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','2bb3d86d95234affa7c5bd68c4bab606',2,120,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','2c61ebff5a7f675451467527df66788d',1,69,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','308319a5ba52f2b73fd79195accdd23a',1,408,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','31407b18c5a9dd810565caedda2d0e42',1,214,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','3189934774aa880fa7fbf8da8f9e446d',1,38,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','3309a7a7941818e131b4dfb9a6349914',5,59,3411,0),
('c0296a4b8c58865ca9e0f1502b08995d','36a383994590c1a836800f68a08d00ba',1,135,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','37598dad8f8805ce708ba8c4f67ce367',2,57,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','37b4e2d82900d5e94b8da524fbeb33c0',2,94,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','388053b7c0f6bc0351cb7698028e0611',1,270,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','39abfe1fef63919e7062a25193c1708c',1,17,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','3a6988a0228a33b2c1100201f4dd148e',1,123,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','3cd15f8f2940aff879df34df4e5c2cd1',5,0,3411,128),
('c0296a4b8c58865ca9e0f1502b08995d','3e072748feb6ecd1b1ba397704e009c0',1,126,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','3f1b0333a44fd5f611d3429887eba4a8',1,131,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','431bc85b812bd8bcac81bdd27429a12d',1,16,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','434990c8a25d2be94863561ae98bd682',3,31,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','44fdec47036f482b68b748f9d786801b',1,99,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','46c48bec0d282018b9d167eef7711b2c',1,152,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','4757fe07fd492a8be0ea6a760d683d6e',1,426,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','4802fad13618b3ecb36d9180e981704f',1,313,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','48bb082d4244476f2ef109e51f8f7554',1,191,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','49889d3f78e208b1538f15a0c7bc16d0',3,4,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','49a2d564f1275e1c4e633abc331547db',1,400,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','4d200fce73a8e1cc965cfc2c43343824',1,462,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','4f09daa9d95bcb166a302407a0e0babe',1,54,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','4fef4776f4c032045190a1f915411e19',1,33,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','50324905c471f3d4d61f7d3f723f3644',1,360,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','507d922378ecab8e10b81dcbc2ff8bf3',1,290,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','517b08dafd8aa7559790bf0715de47c6',4,5,2729,0),
('c0296a4b8c58865ca9e0f1502b08995d','53689aacbba32f62a7ee90c641493951',1,410,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','55824ad4959e2d9b965227bbc833c960',1,332,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','584826e70485130530f7f01a973d5637',10,97,6823,0),
('c0296a4b8c58865ca9e0f1502b08995d','59588ec7ce34becf631e42e3f6287300',2,175,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','596733001b7a1d7dac726edda17df294',1,431,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','5a02279c40a93ee286d2cb0d9a0db4f0',1,419,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','5b6ddba2ee690f181e25b9cfb807b824',1,184,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','5bace2853ebc457c9baf0678fe77fe1b',1,151,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','5bbf2d6725b29ad8ddb7c3ab47c50930',1,333,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','5c73514ee7a609054d81de61dd9ca3d6',1,393,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','5f9a38494f6d7426bcbd945a2c332949',1,86,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','5fd9a718e5c073bb745cd970a6f1a5f3',1,447,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','5ff58d62c15f28a3f16d0bbe332a1439',5,206,3411,0),
('c0296a4b8c58865ca9e0f1502b08995d','60aef5b4c954c9f7ac9016310c55aac7',1,381,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','610264491fdf7f3be32d04c3b7c453cf',1,398,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','62628cfd1cdd77d02c32812f048bada3',1,288,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','628b7db04235f228d40adc671413a8c8',1,194,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6299ba2cbd9661a5e3872b715521cd6a',2,50,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','639bae9ac6b3e1a84cebb7b403297b79',1,68,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','661841eec099d5338efbfc94d9f17510',1,45,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','66972eaa447917c5b2effc22f60a956b',1,154,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','66a57cbdbefdd38ae98fb2fec3234384',1,269,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','67ed0b03a2cf33155fcb3d27e399f4e6',1,467,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6805db9aa8d4796fdccedadc356c77b3',1,444,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','69d9d554b415750c188714d172ff955e',1,343,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6b393b6b209b981e9c552d3d3814c420',1,119,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6c92285fa6d3e827b198d120ea3ac674',1,73,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6ce207e8f7bc1afc40ba5e1d8a181478',1,162,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6e373659f3c93670f67f66279ce312f1',1,20,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6e5f1255c3b7e3008e41ca8974012fc4',1,402,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6ed2640df741eafe327878bd65000ad3',1,255,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6f7f9432d35dea629c8384dab312259a',2,257,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','6f857e1b82f3db1d72613365ea42d442',1,312,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','6fed0ce6808435a1b1cff1c17a4c957a',1,299,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','74e8333ad11685ff3bdae589c8f6e34d',1,143,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','759b74ce43947f5f4c91aeddc3e5bad3',4,225,2729,0),
('c0296a4b8c58865ca9e0f1502b08995d','75aeb98e5241592ad6a6c2c4c78a16ef',2,78,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','78ee54aa8f813885fe2fe20d232518b9',2,176,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','795c964753c55813f4b19e093e31f934',2,241,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','7a3e56dbf4b75792017d682faf64ac07',1,22,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','7aa28ed115707345d0274032757e8991',1,460,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','7b0746dabfaed032913530c495453f0f',1,65,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','7b3a3fe6bf7149d60689a62a053ec719',1,351,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','7d0db380a5b95a8ba1da0bca241abda1',2,37,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','8126146c1eb667719d29fdbe57abc7e1',1,302,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','82df41632da476065ce2997900554442',6,30,4093,0),
('c0296a4b8c58865ca9e0f1502b08995d','842e77fefc15c4f24aaf4ec4cc737233',1,252,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','846c3508919d95b9b6dc610487597e99',1,429,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','84ddfb34126fc3a48ee38d7044e87276',3,205,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','85964989611934e09fd33690cd7aa279',1,229,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','88627d1fe4d5ef9e8b341f0dbf0370b5',1,406,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','892ea9918d303f79425139c5a34ccb0b',2,250,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','8aaab33740413527c3d6f2be39c6ed2c',1,280,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','8b04d5e3775d298e78455efc5ca404d5',3,77,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','8bf8854bebe108183caeb845c7676ae4',9,26,6140,0),
('c0296a4b8c58865ca9e0f1502b08995d','8c00c19e66a7ba9d80bded9460cb1b41',1,391,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','8c40400c009918b5f10b73f9a0e47398',1,104,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','8cbad96aced40b3838dd9f07f6ef5772',1,145,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','8cd283d8b7bacc277f2bae5e26ce6d1e',1,64,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','8dee49165153fc68ffacb5f7f7bf9a3a',1,149,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','8e355cefbf01134adf70802efd236b9b',1,455,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','8e83b1d4dd4533f7d84d1c6055598795',1,264,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','8fc42c6ddf9966db3b09e84365034357',26,3,17739,0),
('c0296a4b8c58865ca9e0f1502b08995d','910955a907e739b81ec8855763108a29',1,282,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','933dd8674c563081260867dfa95b5e74',1,21,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','95cc6b4ac5abdeadc74b73a8ba7200d9',9,36,6140,0),
('c0296a4b8c58865ca9e0f1502b08995d','99f6f4be0908f24bb4a22a4ffb277da4',1,417,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','9a4b6f884971dcb4a5172876b335baab',1,49,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','9aaf3f374c58e8c9dcdd1ebf10256fa5',1,89,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','9acb44549b41563697bb490144ec6258',1,372,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','9dd64fb755655d0ad31e8c5507dab208',1,55,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','9e925e9341b490bfd3b4c4ca3b0c1ef2',5,171,3411,0),
('c0296a4b8c58865ca9e0f1502b08995d','a0acfa46d86f7610b2c73dbb28f64701',1,221,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','a181a603769c1f98ad927e7367c7aa51',1,114,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','a1e6cd7f9480f01643245e0b648d9fbe',2,102,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','a2a551a6458a8de22446cc76d639a9e9',2,8,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','a2bbabfe7b1dd886a0c32b57bd8a94f9',2,116,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','a4559ffef072253af47cf34482a6decb',1,67,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','a533b26cba9a7c8d891c962473f49ec0',2,82,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','a77b3598941cb803eac0fcdafe44fac9',6,81,4093,0),
('c0296a4b8c58865ca9e0f1502b08995d','a8c478391757a06ee53d8aec274b31a6',1,23,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','acd05dbb82fb59c9e37b60fe1f328f16',1,61,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','adb00236071c05878eaeec5b3b96103d',1,186,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','addec426932e71323700afa1911f8f1c',3,72,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','afa05a6348902c252ae10d48879826b3',1,158,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','b068931cc450442b63f5b3d276ea4297',1,90,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','b42dad5453b2128a32f6612b13ea5d9f',1,51,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','b58f5a2fc4d5f188e6b0d11f439437a8',1,268,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','b8b4b727d6f5d1b61fff7be687f7970f',1,75,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','b96d6d76b27e3aaa414cf7d198085aea',1,53,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','bc500dd033a84b00ffd9f81a8a9d5372',2,128,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','bd352c8df49c325dd22ad8867e6ef874',1,164,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','bd4c4ea1b44a8ff2afa18dfd261ec2c8',1,118,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','be5d5d37542d75f93a87094459f76678',19,13,12963,0),
('c0296a4b8c58865ca9e0f1502b08995d','bec670e5a55424d840db8636ecc28828',1,25,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','c0db7d4e3cbad2b18c767c659f448a11',1,212,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','c185ddac8b5a8f5aa23c5b80bc12d214',1,401,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','c3262ebffab78cac6b72a63ed8137c4f',1,12,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','c53df31e20ec8b1f3656fd090f271c0f',1,220,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','c5ed7369a5a50edae102076547d1405a',1,107,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','c68271a63ddbc431c307beb7d2918275',1,71,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','c69b68a0ca8b19b9e58dcfcadb6933f5',1,382,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','c81c0f0b71e938091314334dc3440fa6',1,180,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','c8d46d341bea4fd5bff866a65ff8aea9',2,166,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','c90ae688b2a3b1fd0751fd743eb385cd',3,199,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','c9e9a848920877e76685b2e4e76de38d',1,346,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','ca23ba209cc33678530392b7197fda4d',1,407,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','cc23a5af73453c27c71b49531c5d8900',1,121,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','cc90f1913b83d255b95be0e0fea6d576',1,275,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','ce0bb0eb1dafcd911038df729e7ebb29',1,293,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','cf5c0a6a33f6f53bf10be6c527fe5c93',1,217,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d0fb963ff976f9c37fc81fe03c21ea7b',2,74,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','d194c61fed20c09409961a338e47d739',1,159,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d229bbf31eaeebc7c88897732d8b932d',1,277,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d2940a0e09b88be2041e12abacc881ef',1,365,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d334616758f1c1099a0ae6c443872c8b',1,112,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d35e8f9c6b6b0f1c54ced7de730a6241',1,404,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d47268e9db2e9aa3827bba3afb7ff94a',1,204,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d529e941509eb9e9b9cfaeae1fe7ca23',1,368,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d55669822f1a8cf72ec1911e462a54eb',7,113,4776,0),
('c0296a4b8c58865ca9e0f1502b08995d','d69029ce18e0f2dc8f7842634f064775',1,127,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d7812c32def55adbcab7b18cc0276e68',1,138,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','d98a07f84921b24ee30f86fd8cd85c3c',4,0,2729,0),
('c0296a4b8c58865ca9e0f1502b08995d','db3f3946ba271882d8c74cdbf3d5179a',1,155,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','df3f079de6961496f0460dcfdbf9bca3',3,144,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','df491a4de50739fa9cffdbd4e3f4b4bb',1,318,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','e05fe30750d3ea262a610d17ebc07019',12,32,8187,0),
('c0296a4b8c58865ca9e0f1502b08995d','e1342b084a6585295c7ade62c211f850',2,388,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','e3c8afbeb0ec4736db977d18e7e37020',1,10,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','e3cc92c14a5e6dd1a7d94b6ff634d7fc',1,134,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','e4586172850ecb0954a632168fa0151a',1,448,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','e4d31f74c4397cca404cc0fbfebc89ff',1,273,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','e665e64d39be8129287ce8731e7e473b',1,370,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','e81c4e4f2b7b93b481e13a8553c2ae1b',1,276,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','ea170e2cafb1337755c8b3d5ae4437f4',1,70,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','ea2449f872702f9be2673252f649f821',1,379,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','ec92c58adafe8f3291136b615a7bae5b',2,295,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','ecc3c7b4754f8509cfe9de944671b36f',11,80,7505,0),
('c0296a4b8c58865ca9e0f1502b08995d','ecda8ff7933831de47cded3bb238b613',1,258,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','ed2b5c0139cec8ad2873829dc1117d50',4,42,2729,0),
('c0296a4b8c58865ca9e0f1502b08995d','ed881bac6397ede33c0a285c9f50bb83',1,272,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','edc1e3ea2ca4939a55f1edf84a1fb85e',1,111,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f277687cfcb8e4e4714c2b582bc37080',3,339,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','f36acfa3674037fc4f43dab0f06c14b0',2,242,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','f3d64714d1f6e7f71558d4252e84ab58',1,233,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f3ee211eaff2e448e05ba21b9759af63',1,308,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f4c9385f1902f7334b00b9b4ecd164de',1,283,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f59cd8184f216f9ebecc3697b68de4c3',2,27,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','f5ddaf0ca7929578b408c909429f68f2',3,93,2046,0),
('c0296a4b8c58865ca9e0f1502b08995d','f6182f0359f72aae12fb90d305ccf9eb',1,405,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f61bc28aac428bfb11c51ea329cbc7ff',1,43,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f62071fb2eb560e8614c8dc829212273',1,190,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f6cb3e816496528d4187db53bc66567f',1,439,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f6fee22e34c7d055ea7c17169175d0de',2,28,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','f79b1d64a8d8b02b86d797765a6a1fe4',1,348,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f82d71a6491c31b384ab5b57d85b6593',1,453,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f83d0796e53709a8dd72d2dbf8231ecf',1,230,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f894427cc1c571f79da49605ef8b112f',2,101,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','f8dcad058c9c44fdb6ffcb22d2d4c31f',1,342,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f910ff3a8628ebda9c67ed678703fd7d',1,315,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','f970e2767d0cfe75876ea857f92e319b',2,300,1364,0),
('c0296a4b8c58865ca9e0f1502b08995d','f97c5d29941bfb1b2fdab0874906ab82',1,124,682,0),
('c0296a4b8c58865ca9e0f1502b08995d','fa7842058929774b5e27b579fc597fc9',1,148,682,0);
/*!40000 ALTER TABLE `index_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_section`
--

DROP TABLE IF EXISTS `index_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_section` (
  `uniqid` int(11) NOT NULL AUTO_INCREMENT,
  `phash` varchar(32) NOT NULL,
  `phash_t3` varchar(32) NOT NULL,
  `rl0` int(10) unsigned NOT NULL DEFAULT 0,
  `rl1` int(10) unsigned NOT NULL DEFAULT 0,
  `rl2` int(10) unsigned NOT NULL DEFAULT 0,
  `page_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uniqid`),
  KEY `joinkey` (`phash`,`rl0`),
  KEY `page_id` (`page_id`),
  KEY `rl0` (`rl0`,`rl1`,`phash`),
  KEY `rl0_2` (`rl0`,`phash`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_section`
--

LOCK TABLES `index_section` WRITE;
/*!40000 ALTER TABLE `index_section` DISABLE KEYS */;
INSERT INTO `index_section` VALUES
(25,'755095551c463ec2cdedd536714e08a7','755095551c463ec2cdedd536714e08a7',1,6,0,6),
(32,'2708d02ff7a5a42f4024c2585a03dddd','2708d02ff7a5a42f4024c2585a03dddd',1,17,0,17),
(35,'4f6e807051e61027dadc02f9f2906020','4f6e807051e61027dadc02f9f2906020',1,16,0,16),
(54,'6d2ddd1174e062f12957e8f7a89bafb1','6d2ddd1174e062f12957e8f7a89bafb1',1,4,0,4),
(80,'c0296a4b8c58865ca9e0f1502b08995d','c0296a4b8c58865ca9e0f1502b08995d',1,4,7,7),
(81,'9bd8393860e6e9cf4c907a0919ca687d','9bd8393860e6e9cf4c907a0919ca687d',1,12,0,12),
(88,'3d798c3f120fdabe32985de46a5fc2fd','3d798c3f120fdabe32985de46a5fc2fd',1,0,0,1),
(97,'56ce185f3262c9101626cfd28a4127a4','56ce185f3262c9101626cfd28a4127a4',1,2,0,2),
(98,'78cabd40e1e1f417b9f83789c2321f4a','78cabd40e1e1f417b9f83789c2321f4a',1,3,0,3),
(99,'03394a29ed2144f96bced193919a622f','03394a29ed2144f96bced193919a622f',1,4,10,10),
(108,'3e239e3d69de4b3b36fcd34479259a89','3e239e3d69de4b3b36fcd34479259a89',1,5,0,5);
/*!40000 ALTER TABLE `index_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_stat_word`
--

DROP TABLE IF EXISTS `index_stat_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_stat_word` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL DEFAULT '',
  `index_stat_search_id` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `pageid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tstamp` (`tstamp`,`word`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_stat_word`
--

LOCK TABLES `index_stat_word` WRITE;
/*!40000 ALTER TABLE `index_stat_word` DISABLE KEYS */;
INSERT INTO `index_stat_word` VALUES
(1,'maya',0,1712847107,16),
(2,'maya',0,1712847107,16),
(3,'maya',0,1712847107,16),
(4,'maya',0,1712847213,16),
(5,'maya',0,1712847213,16),
(6,'maya',0,1712847213,16),
(7,'maya',0,1712847230,16),
(8,'maya',0,1712847230,16),
(9,'maya',0,1712847230,16),
(10,'maya',0,1712847239,16),
(11,'maya',0,1712847239,16),
(12,'maya',0,1712847239,16),
(13,'maya',0,1712847419,16),
(14,'maya',0,1712847419,16),
(15,'maya',0,1712847419,16),
(16,'maya',0,1712847430,16),
(17,'maya',0,1712847430,16),
(18,'maya',0,1712847430,16),
(19,'williams',0,1712847454,16),
(20,'williams',0,1712847454,16),
(21,'williams',0,1712847454,16),
(22,'congratulations',0,1712847460,16),
(23,'congratulations',0,1712847460,16),
(24,'congratulations',0,1712847460,16),
(25,'events',0,1712847699,16),
(26,'events',0,1712847699,16),
(27,'events',0,1712847699,16),
(28,'events',0,1712847875,16),
(29,'events',0,1712847875,16),
(30,'events',0,1712847875,16),
(31,'image',0,1712852819,16),
(32,'image',0,1712852819,16),
(33,'test',0,1712853756,16),
(34,'test',0,1712853756,16),
(35,'maya',0,1712853924,16),
(36,'maya',0,1712853924,16),
(37,'bigfoot',0,1712853933,16),
(38,'bigfoot',0,1712853933,16),
(39,'bigfoot',0,1712854519,16),
(40,'bigfoot',0,1712854519,16),
(41,'maya',0,1712855612,16),
(42,'maya',0,1712855612,16),
(43,'events',0,1712855624,16),
(44,'events',0,1712855624,16),
(45,'event',0,1712855768,16),
(46,'event',0,1712855768,16),
(47,'test',0,1712855849,16),
(48,'test',0,1712855849,16),
(49,'team',0,1712855857,16),
(50,'team',0,1712855857,16),
(51,'event',0,1712856748,16),
(52,'event',0,1712856748,16),
(53,'event',0,1712857614,16),
(54,'event',0,1712857614,16),
(55,'event',0,1712921982,16),
(56,'event',0,1712921982,16),
(57,'bigfoot',0,1712925238,16),
(58,'bigfoot',0,1712925238,16),
(59,'bigfoot',0,1712928120,16),
(60,'bigfoot',0,1712928120,16),
(61,'event',0,1712928819,16),
(62,'event',0,1712928819,16),
(63,'event',0,1712928822,16),
(64,'event',0,1712928822,16),
(65,'events',0,1712928830,16),
(66,'events',0,1712928830,16),
(67,'bigfoot',0,1712936086,16),
(68,'bigfoot',0,1712936086,16),
(69,'event',0,1712937318,16),
(70,'event',0,1712937318,16),
(71,'event',0,1712942319,16),
(72,'event',0,1712942319,16),
(73,'event',0,1712942341,16),
(74,'event',0,1712942341,16),
(75,'event',0,1712942613,16),
(76,'event',0,1712942613,16),
(77,'event',0,1712942717,16),
(78,'event',0,1712942717,16),
(79,'event',0,1712942720,16),
(80,'event',0,1712942720,16),
(81,'event',0,1712942722,16),
(82,'event',0,1712942722,16),
(83,'event',0,1712942725,16),
(84,'event',0,1712942725,16),
(85,'event',0,1712943302,16),
(86,'event',0,1712943302,16),
(87,'event',0,1712946101,16),
(88,'event',0,1712946101,16),
(89,'football',0,1713168515,16),
(90,'football',0,1713168515,16),
(91,'events',0,1713168522,16),
(92,'events',0,1713168522,16),
(93,'events',0,1713194797,16),
(94,'events',0,1713194797,16),
(95,'event',0,1713252728,16),
(96,'event',0,1713252728,16),
(97,'events',0,1713340374,16),
(98,'events',0,1713340374,16),
(99,'events',0,1713767941,16),
(100,'events',0,1713767941,16),
(101,'events',0,1713767952,16),
(102,'events',0,1713767952,16),
(103,'events',0,1713770392,16),
(104,'events',0,1713770392,16),
(105,'tets',0,1718875355,16),
(106,'tets',0,1718875355,16);
/*!40000 ALTER TABLE `index_stat_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_words`
--

DROP TABLE IF EXISTS `index_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_words` (
  `wid` varchar(32) NOT NULL,
  `baseword` varchar(60) NOT NULL DEFAULT '',
  `is_stopword` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`wid`),
  KEY `baseword` (`baseword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_words`
--

LOCK TABLES `index_words` WRITE;
/*!40000 ALTER TABLE `index_words` DISABLE KEYS */;
INSERT INTO `index_words` VALUES
('0010c6d8214b2e0dbcce46f52cca3734','despite',0),
('0029d2483a1a8a70bc7b15757967d6dd','nonumy',0),
('003f53160982b3d377b1a054b3638c49','youngest',0),
('01b6e20344b68835c5ed1ddedf20d531','to',0),
('01baf36bbdfd6958a8f4fa68b8eb9138','foundation',0),
('02c77002a0c646684b3325959fe147b2','oops',0),
('030d798f350102e3f7ab04197e97c9bd','cheer',0),
('03265faca14f06be8156135b57d4ccf9','enhance',0),
('03a93f03f1d612f37642342071e4986e','festivities',0),
('03c7c0ace395d80182db07ae2c30f034','s',0),
('03d59e663c1af9ac33a9949d1193505a','some',0),
('04b29480233f4def5c875875b6bdc3b1','sign',0),
('04bd0ce93e458db4579c595cf42d96ab','consectetuer',0),
('05199deca16614131327f2c3fea9031c','impact',0),
('052868ffed45aa3fb6beaff64dcef9b2','triumph',0),
('05e94e8cbc28f5837d0c355917c05fea','atmosphere',0),
('061c0f607446c5f26244624e0434c72d','having',0),
('06472f9dc34e4ae7850cec892363f2a1','facilisis',0),
('06a943c59f33a34bb5924aaf72cd2995','search',0),
('06cf60d22f85e12c1d761a239a46dae7','meetings',0),
('06e3d36fa30cea095545139854ad1fb9','field',0),
('06f287d4d2555285b15d0e30a7738037','dedicated',0),
('074b62fb6c21b84e6b5846e6bb001f67','passion',0),
('075a959179a3ff15345c5865a10c5435','we\'re',0),
('07632e7838df5baaec933a71742f6edc','luptatum',0),
('07811dc6c422334ce36a09ff5cd6fe71','2024',0),
('07868a716d4712d7771f6414d2b8bf8a','spirit',0),
('07ab242311dbad887fb03e4a25092781','catering',0),
('07cc694b9b3fc636710fa08b6922c42b','time',0),
('07ccfe360dce69b84595428e2ec1c1cc','also',0),
('08123367b10eb42f9c61a297c1fc203c','rebum',0),
('08391c959fc8bd0b672c596c4d6bcdcd','sponsor',0),
('09286af346951f520509c5702db7625e','newest',0),
('099dafc678df7d266c25f95ccf6cde22','make',0),
('0a541335927d1ab16d9febe9b199bae1','became',0),
('0b3b97fa66886c5688ee4ae80ec0c3c2','us',0),
('0b86f0f8d1478e2f4da5aee809824821','prestige',0),
('0bd6506986ec42e732ffb866d33bb14e','special',0),
('0c83f57c786a0b4a39efab23731c7ebc','email',0),
('0cc175b9c0f1b6a831c399e269772661','a',0),
('0cfff68896ae6825dfa9caee7afcea9f','09.04.2024',0),
('0d149b90e7394297301c90191ae775f0','it',0),
('0d3fda0bdbb9d619e09cdf3eecba7999','family',0),
('0e5243d9965540f62aac19a985f3f33e','then',0),
('0e66be14b86bd30bf4fc84357763b591','their',0),
('0e76c9c8d1407bbf1690121eb72ab4aa','illum',0),
('0ec44c296b53efbcb8a9d2fb639177b2','wisi',0),
('0eee59a475855895f87e4900c084a4a9','02.04.2024',0),
('0f81d52e06caaa4860887488d18271c7','updated',0),
('0f9642bcff1dc3cd224f1f3e2f1ca629','invited',0),
('10573b873d2fa5a365d558a45e328e47','request',0),
('106a6c241b8797f52e1e77317b96a201','home',0),
('107536d845520d5adf1f6b9ce2de2f08','augue',0),
('10933ceaff3c94fa3844de8a15af6a45','fighting',0),
('10ae9fc7d453b0dd525d0edf2ede7961','list',0),
('10b73ec3370562dbd65f130ea54a8a35','surfcamp',0),
('111c081293c11cb7c2ac6fbf841805cb','helping',0),
('1145f263256c923716d2b8eade2f6689','board',0),
('115b0dc1fb0482bd99b59699f65e43a2','accumsan',0),
('1180a13c0273c83a6e0b2dcd9a7a6f62','expansion',0),
('11a7a5d55a91adb201e113967eff93fe','collaboration',0),
('1253208465b1efa876f982d8a9e73eef','staff',0),
('12de3a4dab98ef8a7d67aace8150b540','come',0),
('1337d38747e659ed836548ae6cda7cc2','labore',0),
('134a394e7e9ec2bc21d57ba1d6b42005','takimata',0),
('13af528039c500905f92e2a55ccccc2d','vibrant',0),
('13b5bfe96f3e2fe411c9f66f4a582adf','in',0),
('1424ca49c88f72347af1f2fe7a569169','stadium',0),
('149603e6c03516362a8da23f624db945','old',0),
('14f4aeb5bebf370f95ab882c829a5a86','competitive',0),
('152c8d094c159fe4ed76eae56d8d48ed','goals',0),
('15512a989521ee93ea7ddfcfb4341132','provides',0),
('15ceb382eaee2056153ac76b747c7f95','imperdiet',0),
('15d0c7acbbe63d5dd590c7ee3a9f12f3','zzril',0),
('162e31afc5ade88a04d3f428e97e8f46','our',0),
('16875aa2b5eed3e388dcceaa36f56214','various',0),
('16908b0605f2645dfcb4c3a8d248cef3','events',0),
('16b8e956f7e20230367efb963e8ac2f8','molestie',0),
('177544aa797af6f322f8caa5e80e7f24','sed',0),
('1818d506396d77b3d035f719885c4cd1','focus',0),
('18218139eec55d83cf82679934e5cd75','will',0),
('18b049cc8d8535787929df716f9f4e68','an',0),
('18ccf61d533b600bbf5a963359223fe4','keep',0),
('19c98a7d80cccb811de09930e2fcd898','voted',0),
('1a57771a7d3737aadc12f4c4c8c19b71','strategic',0),
('1af4e7c58b59d5254ef70440b21fceab','remarkable',0),
('1b20e9021b3a16b059287caddc7862f6','building',0),
('1b3231655cebb7a1f783eddf27d254ca','super',0),
('1c52bdae8bad70e82da799843bb4e831','est',0),
('1c6819d0309c7f049345d8d6a8c03162','whistle',0),
('1ce873c16c6b46b4a275b438591a9f7c','memorable',0),
('1ea287f2ecbfd355c05b14f134d85007','chance',0),
('1ebf4e55c604b92cce9b0f1fd7debcc0','already',0),
('1ed1645edd706dc379effe13f3edcacf','fans',0),
('1f2bf2e032a11fec0ea5d7f9d6a5aa1d','someone',0),
('1f5f6080965ed6d0a90e6b9ec599e441','provided',0),
('1f96d7488ccbf36f57147e2f9ef9cb55','adipisicing',0),
('1fae427ed9fb02eae850a9b3c6d1a597','eleifend',0),
('1fe57d6202c7cfbb0ee344b1e0a6fb37','promoted',0),
('1fecb4dca32e01d3a83ebab5314ebbab','29.04.2024',0),
('1ff1de774005f8da13f42943881c655f','24',0),
('20296d6bca1bd076c8ed0547e4f55f66','tincidunt',0),
('21582c6c30be1217322cdb9aebaf4a59','that',0),
('21cec257feb15bcc84e0acd5b0773883','privacy',0),
('21db4a5fea0f4dedb0aa90007de5c3c3','eos',0),
('228c70bfc5589c58c044e03fff0e17eb','legacy',0),
('229789c5a8df3182ad7757f6dc6c7eec','gathering',0),
('22af645d1859cb5ca6da0c484f1f37ea','new',0),
('22c1febc0ae5b70d1b992009b7ff05d2','barely',0),
('22c78aadb8d25a53ca407fae265a7154','nam',0),
('23a58bf9274bedb19375e527a0744fa9','with',0),
('23b79ae0fc0f07a3669598dd23c694cc','individual',0),
('24bcfb7caf5bf962b08a15f2c0fd1f11','club.',0),
('25aa2761448ea05599418ee93dd1d5c5','integral',0),
('260ca9dd8a4577fc00b7bd5810298076','success',0),
('268184c12df027f536154d099d497b31','children',0),
('27792947ed5d5da7c0d1f43327ed9dab','details',0),
('279f4c1b096489e724b12e6643ebfb3a','beverage',0),
('27b084adcf83c8fac848dbd371ff76c1','organized',0),
('28b3da6a4cad283dd294dd51d476084c','climb',0),
('28f20a02bf8a021fab4fcec48afb584e','friends',0),
('2942c466ae985c4fe2d8cc9d0c801501','between',0),
('29a7e96467b69a9f5a93332e29e9b0de','role',0),
('29d0b8d9daec06cdd0cda7269997b216','makes',0),
('2a1585a864d9e67627c6ae04c807a2c5','final',0),
('2b30eb962003529aa1d435285d39b1c0','marking',0),
('2b3de800b4576343a07e86b8c420e448','early',0),
('2b830f876c0bdfab339d80506286180f','invitations',0),
('2bb3d86d95234affa7c5bd68c4bab606','they',0),
('2c065aae9fcb37b49043a5a2012b3dbf','trainer',0),
('2c61ebff5a7f675451467527df66788d','can',0),
('2df63c2a91e0084b1beb51694e5c7e9c','standout',0),
('2ea1a0d2250c0a3444da79587f2d2cf1','charities',0),
('2f22937a18e3d76202329384bd08ae23','sanctus',0),
('2f5714788930dff5f67b647cfdfabdc5','korel',0),
('2f8a6bf31f3bd67bd2d9720c58b19c9a','contact',0),
('308319a5ba52f2b73fd79195accdd23a','comprehensive',0),
('309b5d4f7785cdf69a212603f95efcc5','lives',0),
('30c6ee2fd7ea2b9ab608ad1b56291bb2','everyone\'s',0),
('312db69f5bf4447dfe3c58983083b54f','everything',0),
('31407b18c5a9dd810565caedda2d0e42','expand',0),
('3189934774aa880fa7fbf8da8f9e446d','heart',0),
('3190dbf13beaf51d8852bdd9bc4cdf89','competition',0),
('3250d1e21c4281d3cd9479f5685770b6','executive',0),
('3262d48df5d75e3452f0f16b313b7808','off',0),
('32aad2fce95f306356015aa528ff4513','cheering',0),
('3309a7a7941818e131b4dfb9a6349914','has',0),
('339d8d14024f2ae5c8dc2e07362eba1d','learn',0),
('340bac32dadc0feb0ba6cc0ffac94515','continues',0),
('3413e60c4be854b769e90cfa4cb1730d','bring',0),
('34d1f91fb2e514b8576fab1a75a89a6b','go',0),
('35d6d33467aae9a2e3dccb4b6b027878','three',0),
('364107f60f8e60ce22332e1d3fb8aa6d','suscribe',0),
('3677b55b4fb1c656b2a6ec776093be88','designed',0),
('3681df8d04470ecc65053b790e19a065','wolverine',0),
('36a383994590c1a836800f68a08d00ba','against',0),
('37598dad8f8805ce708ba8c4f67ce367','but',0),
('37693cfc748049e45d87b8c7d8b9aacd','23',0),
('37b4e2d82900d5e94b8da524fbeb33c0','football',0),
('37d153a06c79e99e4de5889dbe2e7c57','april',0),
('3823552b7a2b839259a831e3b7b349a3','sport',0),
('387cfa57545d4814246bbcebe6bc61dc','congue',0),
('388053b7c0f6bc0351cb7698028e0611','ensuring',0),
('38c7b2741b1d86c35f51687f1f56fd00','placerat',0),
('392406f077a3ab6822722d2df998ecd4','duis',0),
('393070777bc8dc5f8900ff849e704f54','meets',0),
('39412d6ea2922f181706c1c33811db92','tournaments',0),
('39abfe1fef63919e7062a25193c1708c','beginnings',0),
('39ad9cca8cb13896b27cbfd8bc7a5be4','praesent',0),
('39b040ca54fc7aca24b4a28507329bca','euismod',0),
('39eef2554d8407cbfeb017e68c8685e3','eros',0),
('3a098d086c802fe130b34cda92eaa1bb','16.30',0),
('3a6988a0228a33b2c1100201f4dd148e','persistence',0),
('3b1d7a5b5d10577b79fc206c4ffd64ea','doming',0),
('3b759a9ca80234563d87672350659b2b','over',0),
('3c59dc048e8850243be8079a5c74d079','21',0),
('3c6e0b8a9c15224a8228b9a98ca1531d','key',0),
('3c709b10a5d47ba33d85337dd9110917','progress',0),
('3cd15f8f2940aff879df34df4e5c2cd1','history',0),
('3d262d4c9d3fd91c57191af817d40f8c','thrilling',0),
('3d9fb56d74e048e4b871027949764052','embraces',0),
('3db1a73a245aa55c61204c56c8d99f6d','united',0),
('3e072748feb6ecd1b1ba397704e009c0','incident',0),
('3e1867f5aee83045775fbe355e6a3ce1','beer',0),
('3f1b0333a44fd5f611d3429887eba4a8','season',0),
('3f347890f95ef75c2eacb4f01c622ac9','let\'s',0),
('3f4cede61a59db6832b07ea4f3bd3de1','being',0),
('3ffc3af202ae44739c09f22a441653fb','there\'s',0),
('3fffe9ed3cb0a88d1a6391801d383647','facilisi',0),
('4015e9ce43edfb0668ddaa973ebc7e87','are',0),
('4087a2d652670c108c9219d058745bc2','tempor',0),
('40b264bdd5419a65e1e7c4112c9535c4','voluptua',0),
('40be4e59b9a2a2b5dffb918c0e86b3d7','welcome',0),
('4119639092e62c55ea8be348e4d9260d','event',0),
('418c5509e2171d55b0aee5c2ea4442b5','action',0),
('41b54177746ada75a77ec0768ebd51dc','18.04.2023',0),
('42bd4c0819c498d1c1ab622de74d6f82','supported',0),
('431bc85b812bd8bcac81bdd27429a12d','humble',0),
('434990c8a25d2be94863561ae98bd682','support',0),
('437b930db84b8079c2dd804a71936b5f','something',0),
('43a0a1e8212cd9140a5c1fa1ef5a5bac','those',0),
('43b5c9175984c071f30b873fdce0a000','current',0),
('43c4975d498bbc4228b3f3a20ff5ac6f','contributions',0),
('44e7cdc8f1386a1820b02f504f38317d','williams',0),
('44fdec47036f482b68b748f9d786801b','days',0),
('4587c4183c312dd82309be6cdae7bbd6','esse',0),
('461580541e92155766bee9d9e8f672ea','magna',0),
('469bba0a564235dfceede42db14f17b0','back',0),
('46b3931b9959c927df4fc65fdee94b07','about',0),
('46c48bec0d282018b9d167eef7711b2c','up',0),
('46defce884d1be32019f20864172323d','burns',0),
('4717d53ebfdfea8477f780ec66151dcb','connection',0),
('4757fe07fd492a8be0ea6a760d683d6e','position',0),
('478669c7fa549970e36eac591cdca62e','questions',0),
('4802fad13618b3ecb36d9180e981704f','milestone',0),
('4829322d03d1606fb09ae9af59a271d3','eu',0),
('48bb082d4244476f2ef109e51f8f7554','alike',0),
('490e1788a77a71429b8caa472697e1e4','enhancing',0),
('49889d3f78e208b1538f15a0c7bc16d0','regional',0),
('49a2d564f1275e1c4e633abc331547db','state-of-the-art',0),
('4a548addbfb239bbd12f5afe11a4b6dc','middle',0),
('4ace69650136d3421a5e0b259c3bb8e3','companions',0),
('4afe8978f49b2b8389b567200ae59649','nibh',0),
('4b77a01c9178cf8fcc13fea642393955','elit',0),
('4bca24304861acde5770fdbe3cc2503b','real',0),
('4c480b2170d066b2af6f98af80902ce0','consectetur',0),
('4c9858e082cad5bd214a9efc0f2f8cec','reach',0),
('4cf2d30b6327df1b462663c7611de22f','sponsors',0),
('4d200fce73a8e1cc965cfc2c43343824','grow',0),
('4de1b7a4dc53e4a84c25ffb7cdb580ee','et',0),
('4debdd5acda769f4dec9baaf951c1bb9','you.',0),
('4e8b250e91212b7e5d8b9f89abea051a','celebrating',0),
('4ed5bb266ded3068c5ba0a01e78b21b9','iusto',0),
('4ed5d2eaed1a1fadcc41ad1d58ed603e','city',0),
('4f09daa9d95bcb166a302407a0e0babe','short',0),
('4fef4776f4c032045190a1f915411e19','bigfooot',0),
('50324905c471f3d4d61f7d3f723f3644','since',0),
('5051d8eebe8a58f3d972761a941b2ab2','produced',0),
('50584c36a7a475387f81fa1b1655fe79','promises',0),
('5078262170842b3759998eb9c3a16314','dignissim',0),
('507d922378ecab8e10b81dcbc2ff8bf3','combined',0),
('508c75c8507a2ae5223dfd2faeb98122','news',0),
('50bd8c21bfafa6e4e962f6a948b1ef92','fan',0),
('50c1f58be7f5e47e0f53d64c094783c2','gone',0),
('517b08dafd8aa7559790bf0715de47c6','league',0),
('523af537946b79c4f8369ed39ba78605','ad',0),
('52d6127375d82f3e300827eb479b2c65','sharing',0),
('536801a526cbca7d986e6b9bc55363b8','openness',0),
('53689aacbba32f62a7ee90c641493951','programs',0),
('53a9c3686afdbb0db7c626e56a243a41','29.02.2024',0),
('53d37303b62aa2c190bd5f384faf40ed','partnering',0),
('53d670af9bb16ea82e7ef41ee23ec6df','who',0),
('53e21a352428181343474073e76918ed','strive',0),
('53e61336bb49ec978968786b07dea50b','results',0),
('54d54a126a783bc9cba8c06137136943','ex',0),
('55824ad4959e2d9b965227bbc833c960','achievement',0),
('560220fc3242a805f094edce47f35702','cause',0),
('560a6e42db25034a739955610bd3f8b4','spectacle',0),
('5634275d694f8665957746c9619132f0','almost',0),
('564adc21ef12d979b9b055426798dce2','attending',0),
('567904efe9e64d9faf3e41ef402cb568','where',0),
('569ef72642be0fadd711d6a468d68ee1','te',0),
('56de9219979795654f00a462f479b92d','you\'re',0),
('584826e70485130530f7f01a973d5637','its',0),
('589b397ed82131bf51acdf63521c2df5','built',0),
('59588ec7ce34becf631e42e3f6287300','turning',0),
('596733001b7a1d7dac726edda17df294','influential',0),
('5970929a425637241abb7a44591e32b3','don\'t',0),
('59fdccc6b09347dffb28514c8b5a59ca','gameday',0),
('5a02279c40a93ee286d2cb0d9a0db4f0','skilled',0),
('5a74f9bbb93ada84e7794406c86010a5','nihil',0),
('5a8ebeb7a6108b07be3700432a79840d','laoreet',0),
('5b344ac52a0192941b46a8bf252c859c','ea',0),
('5b6ddba2ee690f181e25b9cfb807b824','winning',0),
('5bace2853ebc457c9baf0678fe77fe1b','giving',0),
('5bbf2d6725b29ad8ddb7c3ab47c50930','marked',0),
('5c4e8c01bf4510088d37c806e77bd628','unforgettable',0),
('5c73514ee7a609054d81de61dd9ca3d6','cornerstone',0),
('5d17dca175f108350a96a8dfb36a4be6','valued',0),
('5defbc048070dadee1fa6f2e62532f1f','velit',0),
('5e68ca8a651d80d2a005ac825ede6b8c','vel',0),
('5e96bf62b9b2c18fdb65564b4a18fd1f','transparent',0),
('5f12b786b2f662365bc4843f7fc2a6fa','calendars',0),
('5f9a38494f6d7426bcbd945a2c332949','swiftly',0),
('5fbab8c991be6b35d52e2d4868b6854f','09.03.2024',0),
('5fc732311905cb27e82d67f4f6511f7f','date',0),
('5fd9a718e5c073bb745cd970a6f1a5f3','ongoing',0),
('5ff58d62c15f28a3f16d0bbe332a1439','growth',0),
('600d6af0f320a021dc494cfa2daca569','take',0),
('6050ce63e4bce6764cb34cac51fb44d1','please',0),
('609f88983635a66fe4c8570afee066e0','activities',0),
('60aef5b4c954c9f7ac9016310c55aac7','influence',0),
('60df9e64b0693131b626e465236c6874','within',0),
('60f8b164d96d22ed2d5ac73ff5baa6c6','tation',0),
('610264491fdf7f3be32d04c3b7c453cf','investing',0),
('6167fd4d8a9bd320dc09e90baa27d4c9','delenit',0),
('62506be34d574da4a0d158a67253ea99','food',0),
('62628cfd1cdd77d02c32812f048bada3','inclusive',0),
('628b7db04235f228d40adc671413a8c8','day',0),
('62933a2951ef01f4eafd9bdf4d3cd2f0','media',0),
('6299ba2cbd9661a5e3872b715521cd6a','only',0),
('62cc0b4ebb0b57b40778179234246c38','your',0),
('62cd275989e78ee56a81f0265a87562e','power',0),
('630494285045663b6f3e52af740c5254','soluta',0),
('632a2406bbcbcd553eec45ac14b40a0a','after',0),
('6368f06eff0e7ca72ea18b0792c99f03','61a6f371ce6f8',0),
('639849f6b368019778991b32434354fc','again',0),
('639bae9ac6b3e1a84cebb7b403297b79','you',0),
('661841eec099d5338efbfc94d9f17510','mutual',0),
('667940ea3df6617168cef1233b76dc29','palace',0),
('66972eaa447917c5b2effc22f60a956b','rallied',0),
('66a57cbdbefdd38ae98fb2fec3234384','inclusivity',0),
('66c64cd3d8cafc59b39bc1a5583f3786','justo',0),
('67b3dba8bc6778101892eb77249db32e','host',0),
('67daf92c833c41c95db874e18fcb2786','description',0),
('67ed0b03a2cf33155fcb3d27e399f4e6','come.',0),
('6805db9aa8d4796fdccedadc356c77b3','engagement',0),
('6819d54dd49f7cece869e3fe77d213f8','tradition',0),
('69d9d554b415750c188714d172ff955e','brought',0),
('6af18b52ade789125f28bd8db932f879','invidunt',0),
('6b393b6b209b981e9c552d3d3814c420','challenges',0),
('6b48da551d6920b8da8eb01ebc400297','embodies',0),
('6b5843ce9d2d0599c3e3ce6d59c1551f','jun',0),
('6c3fa34115345a2636a23876089152b7','bigfoot\'s',0),
('6c92285fa6d3e827b198d120ea3ac674','here',0),
('6ccb6c0b0d7845edf67759d85e49257d','aliquam',0),
('6ce207e8f7bc1afc40ba5e1d8a181478','managed',0),
('6d1cc5925faebb27245b48b88c94838b','supporting',0),
('6e373659f3c93670f67f66279ce312f1','achievements',0),
('6e5f1255c3b7e3008e41ca8974012fc4','facilities',0),
('6e5f1a81b34c045ce1dd0ea94a32e614','perks',0),
('6ed2640df741eafe327878bd65000ad3','fostering',0),
('6eeaf26188917e490d3c52d14b3f6809','eirmod',0),
('6f4922f45568161a8cdf4ad2299f6d23','18',0),
('6f7f9432d35dea629c8384dab312259a','strong',0),
('6f857e1b82f3db1d72613365ea42d442','biggest',0),
('6fcc4b7d36184ba33346b4be2d5d8244','possible',0),
('6fed0ce6808435a1b1cff1c17a4c957a','reputation',0),
('7063c5b30e65883fd6b4b2177d627690','kasd',0),
('706dc2ee585fb5dcb18e3ac08da7ce0c','it\'s',0),
('713dd4d0b2e842c08da62ddeec872331','skill',0),
('71ccb7a35a452ea8153b6d920f9f190e','latest',0),
('71df210ad5e28264557f10c663572933','experiences',0),
('72719ffec5896d8017d8cbf23c5a28b7','aliquyam',0),
('7297ba034884447afd590e24a0638ba2','excitement',0),
('731b886d80d2ea138da54d30f43b2005','join',0),
('734d3030ff72ad8d9678efa82b1db7d2','hosted',0),
('7436f942d5ea836cb84f1bb2527d8286','month',0),
('74e8333ad11685ff3bdae589c8f6e34d','down',0),
('754faff639576f7a88ff3974c0d63ca4','achieve',0),
('75631f399043213a36602cc670faef71','afternoon',0),
('759b74ce43947f5f4c91aeddc3e5bad3','development',0),
('75abd646aa7982eb338fb51b49178384','further',0),
('75aeb98e5241592ad6a6c2c4c78a16ef','years',0),
('75e52a0ecfafeda17a34fc60111c1f0b','cold',0),
('76a79a1cdd981d7b73a1b7cf9cc6e0de','gather',0),
('76e369257240ded4b1c059cf20e8d9a4','enjoy',0),
('77004ea213d5fc71acf74a8c9c6795fb','fun',0),
('7716ed93eba822a48b5f39b87bb5f56c','participating',0),
('7761127a460aaf290ed953098284dd1a','than',0),
('77a072fba34a72588b4a8170238f2cf0','16.04.2024',0),
('784742a66a3a0c271feced5b149ff8db','anton',0),
('78805a221a988e79ef3f42d7c5bfd418','image',0),
('7896f8fa69398c56d86a65357615c41f','partners',0),
('78ee54aa8f813885fe2fe20d232518b9','point',0),
('791b0c20a65a95dc903f4928be58156c','continuing',0),
('7959b935afdef74b73fc9ce484019f03','achieving',0),
('795c964753c55813f4b19e093e31f934','community-oriented',0),
('795f3202b17cb6bc3d4b771d8c6c9eaf','other',0),
('79b7ba2c4d2732da179563e4a3ad7d2e','unites',0),
('79da17fa16c14866aa3306a4541afec5','benefits',0),
('7a3e56dbf4b75792017d682faf64ac07','chapter',0),
('7a8dc91f944d115c7488f24ea53e9543','hendrerit',0),
('7aa28ed115707345d0274032757e8991','continue',0),
('7ae8efb349409c73a8eddb47cc303331','nobis',0),
('7b070e052532394b5c2c1803f7ba00f1','veniam',0),
('7b0746dabfaed032913530c495453f0f','ups',0),
('7b3a3fe6bf7149d60689a62a053ec719','attracting',0),
('7b7813f00f42b7e5366e7065aaa798c6','including',0),
('7b8dc4fb0fb55fc8eb69ff080c45ed7e','greater',0),
('7bcf2403c6ea5f9a79fabfa53a0d43b8','opportunities',0),
('7cef8a734855777c2a9d0caf42666e69','open',0),
('7d0db380a5b95a8ba1da0bca241abda1','at',0),
('7d5827a9c13ecd79a8fd94ebb2537412','enthusiasts',0),
('7d637d275668ed6d41a9b97e6ad3a556','age',0),
('7d767e6bb05138bb94abee483ea8abc6','whether',0),
('7dc22b2c6a992f0232345df41303f5ea','setting',0),
('7dfc1f5dc725f462d6a85bd6a7224164','enjoyment',0),
('7e4f307f80e533fa0b4f0044e4694fc0','efforts',0),
('7f90df6477bdb81ce131fe37eeeb1f01','charity',0),
('7f9a983a540e00931a69382161bdd265','amet',0),
('7fa3b767c460b54a2be4d49030b349c7','no',0),
('804f743824c0451b2f60d81b63b6a900','sea',0),
('8126146c1eb667719d29fdbe57abc7e1','forward-thinking',0),
('8134b84030cca5285ed0e0b31ba06f10','just',0),
('8154f2ab366901a6744c15cef7c62eba','recent',0),
('81defa8f7aec3af6ec8392bf4594be48','odio',0),
('82082716189f80fd070b89ac716570ba','positive',0),
('8209600c80b63728b8507839a93c7b41','feugait',0),
('826ad6b0338304c40b42644b5144f80a','perfect',0),
('82df41632da476065ce2997900554442','community',0),
('836eb5e382b5d9f430df48883fca918e','levels',0),
('83ab982dd08483187289a75163dc50fe','every',0),
('83c6ea9026abedd647a70333769f6504','belonging',0),
('842e77fefc15c4f24aaf4ec4cc737233','engaged',0),
('8451fc653eaa269664a6d9b46a238424','least',0),
('846c3508919d95b9b6dc610487597e99','prominent',0),
('84cdc76cabf41bd7c961f6ab12f117d8','year',0),
('84ddfb34126fc3a48ee38d7044e87276','2018',0),
('8512eed920a9b68c84fbb7cc7454378c','team4',0),
('8518008e8835d42ddb7c83810b5cede0','better',0),
('85964989611934e09fd33690cd7aa279','beyond',0),
('85e47ac07ac9d6416168a97e33fa969a','share',0),
('860cb9843fe4a9b87c60b6d02619515a','contributing',0),
('860d7a9915c3d84e711f7dddfd9b4341','involved',0),
('86280ac8a7f8881407ba060c76d72d6a','become',0),
('86abf8f8953dc4beec265226cc233369','enjoying',0),
('8727920077943a3af1ff377e46437c42','unfold',0),
('87d4eeb7dec7686410748d174c0e0a11','sit',0),
('884d9804999fc47a3c2694e49ad2536a','address',0),
('88627d1fe4d5ef9e8b341f0dbf0370b5','talent',0),
('88c1942bc02943fd4338ebd18d3bf464','memories',0),
('88d2c32b8e12e4cadb0fdbf279a85d8d','gates',0),
('892ea9918d303f79425139c5a34ccb0b','initiatives',0),
('89ee4584f59a50776fd36a64d55c1277','inspiring',0),
('8a6b6ea3aa08285be1d4e00725aa9090','favorite',0),
('8aaab33740413527c3d6f2be39c6ed2c','opportunity',0),
('8abf18f876245f99e3e536216d5d3bf3','coaches',0),
('8b04d5e3775d298e78455efc5ca404d5','first',0),
('8b461191e6b0705ec1ce1199a20f370e','powerful',0),
('8bf8854bebe108183caeb845c7676ae4','of',0),
('8c00c19e66a7ba9d80bded9460cb1b41','been',0),
('8c40400c009918b5f10b73f9a0e47398','practice',0),
('8c4291f6956da81515a5c0caec2976d0','look',0),
('8cbad96aced40b3838dd9f07f6ef5772','four',0),
('8cd283d8b7bacc277f2bae5e26ce6d1e','many',0),
('8dee49165153fc68ffacb5f7f7bf9a3a','instead',0),
('8df358eebbbb64bf19235a902db73505','tournament',0),
('8e15b32e960ad327e4c48061410f8bd4','14.30',0),
('8e296a067a37563370ded05f5a3bf3ec','25',0),
('8e355cefbf01134adf70802efd236b9b','ensures',0),
('8e52de0d4b03d5fe87dc88da09616c7f','here.',0),
('8e83b1d4dd4533f7d84d1c6055598795','supporters',0),
('8ea3e06d07a108be5a60531161a11019','lifelong',0),
('8ee0b79fb35b0efe85b44c0ee243f8d5','pitch',0),
('8f488a54759182774701b7162904c10c','successes',0),
('8f664011b293bfe505d7464c8bed65c8','bolstered',0),
('8fc42c6ddf9966db3b09e84365034357','the',0),
('8fd6f46ad5874b41fc087b26745c81b2','teams',0),
('90bec61be5ffe907d8a66f2484f95ba0','marquee',0),
('910955a907e739b81ec8855763108a29','be',0),
('912af0dff974604f1321254ca8ff38b6','player',0),
('91735fc2b8934286afcbab65f138cdf7','bringing',0),
('922c8158165d7c6528b9194c86b54b01','amazing',0),
('923b22997eabf29a2adf56e77f4d3861','volutpat',0),
('923c88ea6ba552667a36dc44601fcfbf','stadion',0),
('931504633da3bba2ae68490a4d0aef24','fuerteventura',0),
('93349189c5d0219ba8b20ca7cbf068a1','friendship',0),
('933dd8674c563081260867dfa95b5e74','each',0),
('9357f705a055126cd4cadc045c987c4e','rivals',0),
('93a6a7e71e1464680cf1df8403211724','alt-text',0),
('93d1fa1ba6d94983d3d15e1f6b962f9b','merchandise',0),
('93da65a9fd0004d9477aeac024e08e15','options',0),
('945b93f37cd9aa702a7380756f44e36a','stand',0),
('94a8ccc472cbd126831d64429334a106','forging',0),
('952c5e7aea1b83a37e41d7b9b97fda14','minim',0),
('9544fa2fae515081e7fc27ef2d268642','discounts',0),
('95456e7506a8c9c04e3bdffd78da1cae','difference',0),
('95aedc669e1140c32256d3ac1921c23e','16:30',0),
('95cc6b4ac5abdeadc74b73a8ba7200d9','club',0),
('960db2ed82202a9706b97775a4269378','region',0),
('965dbaac085fc891bfbbd4f9d145bbc8','forward',0),
('96853c0e2dd18a1ef79b19f485d60290','foster',0),
('97081c1611358b350e8088cb3d2b8b5b','diversity',0),
('979b93285de87c4731fc824bd9e4ba75','communication',0),
('97bc592b27a9ada2d9a4bb418ed0ebed','now',0),
('97e32a574aa9ef24f76a81fc43aba6ce','edition',0),
('9827f490863603674bc635c4a4bea06c','clubs',0),
('98dc0157e90a9b28306967d14bdd2f4f','journey',0),
('999b1ad8231180184caf38ed6b540ed7','14:30',0),
('99be1ee67a0137092d3d112c0620c552','stay',0),
('99f6f4be0908f24bb4a22a4ffb277da4','pipeline',0),
('99f78c54130e752954404fff0707dcbd','included',0),
('9a4b6f884971dcb4a5172876b335baab','may',0),
('9a7d3e2c3ffb452b2e40784f77723938','fantastic',0),
('9a9baf382431a948930621cc5e9757fe','crucial',0),
('9aa76d8a9f8e25e87dbcafc7aaf556fc','filled',0),
('9aaf3f374c58e8c9dcdd1ebf10256fa5','well-known',0),
('9acb44549b41563697bb490144ec6258','status',0),
('9b680059d7f7ea92ea578a9ceeb0f0db','milestones',0),
('9c28d32df234037773be184dbdafc274','matches',0),
('9c44fc81ae1c3b4b362d5576bf6cda53','bowl',0),
('9c76b78f2828eaadd814a5f7fece828f','liber',0),
('9cb9ce5bd9e807867d42a740c9633fc7','generation',0),
('9ce90fddf23fb66e39c8adb03e690768','towards',0),
('9d0b1714518907192490ce56247c01cf','quod',0),
('9d24420082d450cb81caf59e2b173279','qui',0),
('9dd64fb755655d0ad31e8c5507dab208','23-year',0),
('9df3b01c60df20d13843841ff0d4482c','access',0),
('9df9fdb80dd531ff0f17c4754d44d995','families',0),
('9e2bce23d37e9c08d8baae6e87ea5e90','creates',0),
('9e81e7b963c71363e2fb3eefcfecfc0e','shared',0),
('9e925e9341b490bfd3b4c4ca3b0c1ef2','this',0),
('9ea0a36b3a20901fafe834eb519a595c','plant',0),
('a04c01d73a91a11610682a602b85a83b','variety',0),
('a0acfa46d86f7610b2c73dbb28f64701','period',0),
('a0c391dc49c440fc9962168353cedde3','guide',0),
('a181a603769c1f98ad927e7367c7aa51','all',0),
('a1e6cd7f9480f01643245e0b648d9fbe','had',0),
('a2a551a6458a8de22446cc76d639a9e9','is',0),
('a2bbabfe7b1dd886a0c32b57bd8a94f9','players',0),
('a3186a309d94022f5d4ec3a601f4a7c6','want',0),
('a385f393da1ce58b289e89aef75880e6','promising',0),
('a3b34c0871dc2fd51eec5559b68f709d','play',0),
('a3e0f6576a754059784babff593d798a','proud',0),
('a4293995cfbfa9ce60ce71ade2ff75f7','exclusive',0),
('a4559ffef072253af47cf34482a6decb','downs',0),
('a49a895c965f8aa40b4123fbc5849271','stet',0),
('a533b26cba9a7c8d891c962473f49ec0','established',0),
('a53ff64efd169c1b4d085d6e7075c8d7','say',0),
('a542e9b744bedcfd874129ab0f98c4ff','knowledge',0),
('a658279f9b983958149f31e4d8487673','skills',0),
('a6ac54ff17ca90704e5d89a8e0d545bc','enim',0),
('a74ad8dfacd4f985eb3977517615ce25','core',0),
('a77b3598941cb803eac0fcdafe44fac9','was',0),
('a7c78469daa497a86142ff91ed286c9c','partnership',0),
('a7dd12b1dab17d25467b0b0a4c8d4a92','show',0),
('a86fcebe37c3e9c82e43c25d54ad2146','05.03.2024',0),
('a8c478391757a06ee53d8aec274b31a6','tells',0),
('a98931d104a7fb8f30450547d97e7ca5','dolor',0),
('a98e84980a3612cf1f06dae18c313459','thrilled',0),
('a9c449d4fa44e9e5a41c574ae55ce4d9','program',0),
('aa08769cdcb26674c6706093503ff0a3','member',0),
('aa1a3ee027cbd71fb271f7ff74ed2ba0','duo',0),
('aa716414de9fdd94b9e111bddc0169b7','celebration',0),
('aa8af3ebe14831a7cd1b6d1383a03755','chat',0),
('aae82b4d692ecfef8711d47c815707d5','accusam',0),
('ab3e355e2b6806c984851ebdee2a0da1','supporter',0),
('ac05c7d8f4406c971085f947e43ef730','trust',0),
('ac725768466500046904d27b548d75c5','currently',0),
('acaa16770db76c1ffb9cee51c3cabfcf','great',0),
('acd05dbb82fb59c9e37b60fe1f328f16','lively',0),
('acf4b89d3d503d8252c9c4ba75ddbf6d','900',0),
('ad18a418da4e3cbf4e3e5a70710f2d85','diam',0),
('ad5cd0c1aa08427cdec8d8cc5349a6e6','reconnect',0),
('ad98f79edf416451a01ddd2e70529a0f','exerci',0),
('ada150cea270ef5267b5ef2ff2366846','outcomes',0),
('adb00236071c05878eaeec5b3b96103d','respect',0),
('addec426932e71323700afa1911f8f1c','more',0),
('ae1c9c6a127cfbd460a949238c631144','commodo',0),
('af03af10d57b7b17f26a0130562d6b6e','suscipit',0),
('af14b067a4804cdc758bf5ba6908a3fb','association',0),
('af2f35ee2183e18edf481f3603d95803','possim',0),
('af71e0a18f8a746aaeedb1bbe63b66aa','believing',0),
('af9dc3cd6ce29d560a1e4077694254d9','know',0),
('afa05a6348902c252ae10d48879826b3','sheer',0),
('b03e3fd2b3d22ff6df2796c412b09311','junior',0),
('b068931cc450442b63f5b3d276ea4297','name',0),
('b1310d53db71792f537efc29d477cc39','blandit',0),
('b1a5d251fa4fe598cb947ffc42b9cbed','ut',0),
('b214af95fab423cc843792c70a199f09','fierce',0),
('b2693d9c2124f3ca9547b897794ac6a1','maya',0),
('b2bf18e206cf9b5eb2d632030acb16cc','offers',0),
('b2fdab230a2c39f3595a947861863cb7','ready',0),
('b32d73e56ec99bc5ec8f83871cde708a','another',0),
('b40b43fd5af2db4fbfeb4e83856e4876','tuned',0),
('b42dad5453b2128a32f6612b13ea5d9f','have',0),
('b46127d3c32de3d485a478e88b8f6593','membership',0),
('b4aea98a6f42c3ff3c7e6a3632f5d789','benefit',0),
('b5122e6bf436c50799accdaed57a846d','actively',0),
('b51d00b52280f0d7479cde95e61749e7','nostrud',0),
('b58f5a2fc4d5f188e6b0d11f439437a8','emphasized',0),
('b5c0b187fe309af0f4d35982fd961d7e','love',0),
('b5c938d6726bb7657f29dd725a097f16','member-only',0),
('b5e3374e43f6544852f7751dfc529100','subject',0),
('b5eda0a74558a342cf659187f06f746f','get',0),
('b7a48972570cba2b5c1f751d6fed78f1','developments',0),
('b7a61cf5d29e4ad809c301c74229b078','won\'t',0),
('b7b655045b89200c7a4dedb1303ca2f1','3rd',0),
('b807023f87e63b8ada92f79f546ff9cc','so',0),
('b80bb7740288fda1f201890375a60c8f','id',0),
('b81dd45e6a3e12c5f231f00cb988f858','intense',0),
('b8284650440a8e32b5189e1bcb3e94d8','yet',0),
('b8488851cdb11c1ff0ba352fb3308451','tba',0),
('b8a9f715dbb64fd5c56e7783c6820a61','two',0),
('b8b4b727d6f5d1b61fff7be687f7970f','2004',0),
('b96ba508e3690f5168e4b0e68b15b178','touch',0),
('b96d6d76b27e3aaa414cf7d198085aea','comparatively',0),
('b9b4136389b37e3520cac8ddc3596c43','cohesive',0),
('b9bcfe8f89ef61629ec387f6916e2741','lobortis',0),
('ba7830c6c0beaca54d8dca32b2a20c93','proudly',0),
('ba8a48b0e34226a2992d871c65600a7c','luna',0),
('bb3ccd5881d651448ded1dac904054ac','information',0),
('bb7887c1012eb32934823abd96a1068e','beloved',0),
('bb98d4e9c281b175ea84c517b59308ea','quis',0),
('bbe0eabc824b1fed2095707f72219118','high-profile',0),
('bc500dd033a84b00ffd9f81a8a9d5372','during',0),
('bd12a2f7c146e4c5191b12fc9a2739f5','feugiat',0),
('bd15747ee12aff1277bcf3617bcff10b','announces',0),
('bd352c8df49c325dd22ad8867e6ef874','tie',0),
('bd4c4ea1b44a8ff2afa18dfd261ec2c8','these',0),
('bdfcacaa4e5a8b57727335c0cbf7614b','nulla',0),
('be1ab1632e4285edc3733b142935c60b','like',0),
('be5d5d37542d75f93a87094459f76678','and',0),
('be6601e0439c8f7e32e545c04aae24c7','collective',0),
('bec670e5a55424d840db8636ecc28828','story',0),
('bef99584217af744e404ed44a33af589','series',0),
('bf0b130004f7942e3197451db4a1c330','seeing',0),
('bf7b83f5e1b17616ccf3e2af66e54e47','matter',0),
('c05f6c233521207f6fe311afef550c3c','performance',0),
('c0db7d4e3cbad2b18c767c659f448a11','able',0),
('c180aaadf5ab10fb3a733f43f3ffc4b3','relax',0),
('c185ddac8b5a8f5aa23c5b80bc12d214','training',0),
('c1a1738648ecda410dc3a0dbbb3be683','senior',0),
('c2c8e798aecbc26d86e4805114b03c51','joy',0),
('c3262ebffab78cac6b72a63ed8137c4f','resilience',0),
('c395246f710b0e2c86b7ed82f7f56ce3','thursday',0),
('c458d397f9d289f2e4aaa14db438c03d','luton',0),
('c4ca4238a0b923820dcc509a6f75849b','1',0),
('c51ce410c124a10e0db5e4b97fc2af39','13',0),
('c53df31e20ec8b1f3656fd090f271c0f','significant',0),
('c55704728716728d5e1b6d3857b503a6','across',0),
('c5864e0679a35c03abd1c36ad81c8d20','dolores',0),
('c59174e113eee69e3e2145e6fb22bfad','welcoming',0),
('c5e7dfaf771d423ecf59b008369021e8','today',0),
('c5ed7369a5a50edae102076547d1405a','worn-out',0),
('c68271a63ddbc431c307beb7d2918275','out',0),
('c69b68a0ca8b19b9e58dcfcadb6933f5','nationally',0),
('c6c24400cd50cd724c6f9a9d2493abf4','feels',0),
('c7561db7a418dd39b2201dfe110ab4a4','never',0),
('c79bdf421714f5087fc34b7c538b6807','submit',0),
('c81c0f0b71e938091314334dc3440fa6','showcasing',0),
('c81e728d9d4c2f636f067f89cc14862c','2',0),
('c83b72dd001482ce10f0b106c7a0ed0e','way',0),
('c87cf4452134244b7f4b18e2e7ad7f50','nonummy',0),
('c8d11180c956e5b5afc3d1970ce2193e','ever',0),
('c8d46d341bea4fd5bff866a65ff8aea9','game',0),
('c8fae3ab04d58c0147395f06241dca64','nisl',0),
('c902a61794c63ac71c92866bc0556092','several',0),
('c90ae688b2a3b1fd0751fd743eb385cd','known',0),
('c94cb6e815f22f3e59e16bd7a49dfd2d','erat',0),
('c9cd1cc0763c6474f71fa9da5329b910','hearing',0),
('c9e9a848920877e76685b2e4e76de38d','level',0),
('c9f816aa046f752b966837db2d9bf5a2','gubergren',0),
('c9ff055d5178c1e5686eb62017e3c4ff','elevate',0),
('ca23ba209cc33678530392b7197fda4d','through',0),
('cb3f4c73e4c498c768489f566045252c','consequat',0),
('cb50fd5e8c18cffaaad1ab74baf6eb3c','21.03.2024',0),
('cb5e100e5a9a3e7f6d1fd97512215282','error',0),
('cbf5d56e63331be4b1df14b5d99678b2','friendships',0),
('cc23a5af73453c27c71b49531c5d8900','showed',0),
('cc491de401e5dbcde41ef91090975f42','vero',0),
('cc7ed4d007b9bd962656b84ae7bf98cb','facer',0),
('cc90f1913b83d255b95be0e0fea6d576','gender',0),
('cc935c5faf4c8f7a0468d7552a9b8138','even',0),
('cd49a1455ff422a5540f5e13f5edb75a','autem',0),
('cd9e6a20f2dd30591bce77969f2b90c1','prioritize',0),
('cdb64a7b235e8c2d9746398a52932c4d','backing',0),
('ce0bb0eb1dafcd911038df729e7ebb29','community-focused',0),
('ce2e6aff420d72bbf56e8077be344bc9','partnerships',0),
('ce5fb8df125a4721d1df328bc6f2ddea','checking',0),
('cf19be9223758af6ecd460b5fc46b2f6','fulfilling',0),
('cf403b6285fc29f6f74b2855b3996dff','assum',0),
('cf5c0a6a33f6f53bf10be6c527fe5c93','era',0),
('cfcd208495d565ef66e7dff9f98764da','0',0),
('d00413cdded7a5c5bc2e06079d63e562','ensure',0),
('d0cab90d8d20d57e2f2b9be52f7dd25d','next',0),
('d0fb963ff976f9c37fc81fe03c21ea7b','2001',0),
('d194c61fed20c09409961a338e47d739','determination',0),
('d229bbf31eaeebc7c88897732d8b932d','background',0),
('d2940a0e09b88be2041e12abacc881ef','continued',0),
('d2e16e6ef52a45b7468f1da56bba1953','lorem',0),
('d2e3083420929d8bfae81f58fa4594cb','members',0),
('d334616758f1c1099a0ae6c443872c8b','equipment',0),
('d35e8f9c6b6b0f1c54ced7de730a6241','nurturing',0),
('d3d9446802a44259755d38e6d163e820','10',0),
('d42f2dd9c54d4fbd36ce35b5ae060c0c','camaraderie',0),
('d4579b2688d675235f402f6b4b43bcbf','do',0),
('d47268e9db2e9aa3827bba3afb7ff94a','2005',0),
('d48788168076b999d36c4f3ccb75ba2f','meeting',0),
('d50d86b4591ddaaa0609de5237552c3e','sportsmanship',0),
('d529e941509eb9e9b9cfaeae1fe7ca23','not',0),
('d540f9a8003e11e009342a40200192ea','adipiscing',0),
('d55669822f1a8cf72ec1911e462a54eb','for',0),
('d5a9c70352da04497dc3a67f2798ba4c','academy',0),
('d5d3db1765287eef77d7927cc956f50a','title',0),
('d69029ce18e0f2dc8f7842634f064775','occurred',0),
('d6e047923b2b0f63a7a03c66074a0151','experience',0),
('d745415de7dbe78a88c1cd077b8a798c','leads',0),
('d7812c32def55adbcab7b18cc0276e68','experienced',0),
('d7b85f12bdf36266db695411a654f73f','feb',0),
('d850f04cdb48312a9be171e214c0b4ee','there',0),
('d861877da56b8b4ceb35c8cbfdf65bb4','big',0),
('d92d09fea730e2ba3908f2bff7c2b56b','13.05.2024',0),
('d97431d6862a4268fdd17104ae114b73','iriure',0),
('d98a07f84921b24ee30f86fd8cd85c3c','from',0),
('d998ff3a339f9318bd7b6e98912e4043','spend',0),
('da443a0ad979d5530df38ca1a74e4f80','soccer',0),
('db0f6f37ebeb6ea09489124345af2a45','group',0),
('db3f3946ba271882d8c74cdbf3d5179a','together',0),
('db82206b1d49042d1a710e9c88c21d36','best',0),
('dc117c9322deb502c3b16769a8a64e08','typo3',0),
('dc4a5e2a23fbd4f67b3f0fc16bdc39ae','aliquip',0),
('dc62980cd9036671e0a3a0c16c16e61c','association\'s',0),
('dd17a1076c261ef24eb6483739b6ecea','involvement',0),
('dd24ed91e7104df8ec2f38f5d969de43','strengthen',0),
('dd3aa935c1c8a988517f3f588f7985bf','ullamcorper',0),
('dd44ce468d0204b530b79a94b133eca5','sadipscing',0),
('dd5c8bf51558ffcbe5007071908e9524','third',0),
('dd73e86c9fe114b320f834d644efdc97','eum',0),
('de0c47fd329b3e2e28f59696b73b11cc','celebrated',0),
('de13fc4490fbd29a732bf77eb7476650','miss',0),
('df3f079de6961496f0460dcfdbf9bca3','by',0),
('df491a4de50739fa9cffdbd4e3f4b4bb','when',0),
('df610180a55cc99aa4a86f042cc64eaf','additionally',0),
('e03f9063484fb1967d1675c86a6094d7','feet',0),
('e05fe30750d3ea262a610d17ebc07019','fc',0),
('e1342b084a6585295c7ade62c211f850','youth',0),
('e15c932956bb516ce8031bf1a3fd71d4','mazim',0),
('e2eff6c2dafd909df8508f891b385d88','once',0),
('e36bb832c6550e87daece530c8b9a3ca','excellence',0),
('e3970a92215aa4b2db39d4b4ef5330b3','spirit.',0),
('e3c8afbeb0ec4736db977d18e7e37020','testament',0),
('e3cc92c14a5e6dd1a7d94b6ff634d7fc','match',0),
('e4586172850ecb0954a632168fa0151a','commitment',0),
('e4894ca167b08880bfc35862f18575eb','available',0),
('e4d31f74c4397cca404cc0fbfebc89ff','regardless',0),
('e5439f340ec51b34d51348e0885bcdf1','heights',0),
('e58a50b35e8d273ffe254b905362a7fb','enjoys',0),
('e64c3132023b29762b354a750b474c53','things',0),
('e665e64d39be8129287ce8731e7e473b','maintaining',0),
('e680afd37e4511a8cb3ce9f63168862a','would',0),
('e6d1833ee14a790892540fc15fd3aa2a','increased',0),
('e72ff831dbceb5bf11b0a31b81327631','15th',0),
('e78f5438b48b39bcbdea61b73679449d','ipsum',0),
('e80cc6e47b0a1772b7d539489060e797','alongside',0),
('e81c4e4f2b7b93b481e13a8553c2ae1b','or',0),
('e82fa6ac6af62c4e5bcd387709acd5dc','exciting',0),
('e833b2db6f85ce861428ebef754d13cc','standings',0),
('e877c56e4fb621e81fd30dbd114a545b','need',0),
('e89d59b453d80c31146f4867ace7d73b','consetetur',0),
('e909c2d7067ea37437cf97fe11d91bd0','country',0),
('e97e07d7e0c203250f2e9891a4bec03c','scores',0),
('e9a23cbc455158951716b440c3d165e0','meta',0),
('ea170e2cafb1337755c8b3d5ae4437f4','find',0),
('ea2449f872702f9be2673252f649f821','expanding',0),
('ea82410c7a9991816b5eeeebe195e20a','mark',0),
('eb693dc3e09666bb339be2c419d0478e','beverages',0),
('ebed715e82a0a0f3e950ef6565cdc4a8','place',0),
('ebf78b512222fe4dcd14e7d5060a15b0','display',0),
('ec92c58adafe8f3291136b615a7bae5b','solidified',0),
('ecc3c7b4754f8509cfe9de944671b36f','bigfoot',0),
('eccbc87e4b5ce2fe28308fd9f2a7baf3','3',0),
('ecda8ff7933831de47cded3bb238b613','bond',0),
('ed29da59b3ca8a6b01b216d2973487d2','rival',0),
('ed2b5c0139cec8ad2873829dc1117d50','on',0),
('ed881bac6397ede33c0a285c9f50bb83','everyone',0),
('eda721c5f8c61daee37ca15ce3c4d881','confirmed',0),
('edc1e3ea2ca4939a55f1edf84a1fb85e','enough',0),
('ee20fd29e100990f661f3f1479c19647','creating',0),
('ee63700a92c5b6a61802e226ed995c05','bonds',0),
('eeaf118e5d97270acfc4cd8da9555891','honest',0),
('ef22c14dcebaf7e2d91bb723fdf5bbc9','decisions',0),
('ef3e30e070f70244fd6578d88a6b77ac','option',0),
('ef87f051e5c271f948020014f3c59dd4','invest',0),
('efde81f569ccb7211e56a522b8b55e5b','cum',0),
('f068fc985d0a439e5a126d78a28cc4c9','stronger',0),
('f09cc7ee3a9a93273f4b80601cafb00c','values',0),
('f180623caa42379bc4518d06c9c9be05','dolore',0),
('f1965a857bc285d26fe22023aa5ab50d','row',0),
('f1edc500eb1136f10c17eeffb9eecbc5','define',0),
('f212d489ec65fe36e32d99f6ac0861c9','18.03.2024',0),
('f277687cfcb8e4e4714c2b582bc37080','club\'s',0),
('f2f645b7cf0962908fdb5bb485bd0cad','arena',0),
('f36acfa3674037fc4f43dab0f06c14b0','approach',0),
('f3965f8846e37e152d8cd79bba70891a','worthy',0),
('f39ed5b6d0275dcbc4a2f5de624d95ae','largest',0),
('f3bddd7c27287b153ac2150e49b01ece','organize',0),
('f3d64714d1f6e7f71558d4252e84ab58','classic',0),
('f3ee211eaff2e448e05ba21b9759af63','becoming',0),
('f42087059b37ae7f4d9f0d3a475801a8','vision',0),
('f45ead318b5fa57aa8985c486928acc3','proceeds',0),
('f4842dcb685d490e2a43212b8072a6fe','vs',0),
('f4ac4122ee48c213eec816f4d7944ea6','tickets',0),
('f4af8b5789576c000ce9105b25609bd6','policy',0),
('f4c9385f1902f7334b00b9b4ecd164de','part',0),
('f5743daa1b0c190dc25ac146a657932e','sense',0),
('f59cd8184f216f9ebecc3697b68de4c3','dedication',0),
('f5ab96926a6a561aab7ecb4ba7c915d4','thank',0),
('f5ddaf0ca7929578b408c909429f68f2','local',0),
('f6182f0359f72aae12fb90d305ccf9eb','young',0),
('f61bc28aac428bfb11c51ea329cbc7ff','cohesion',0),
('f62071fb2eb560e8614c8dc829212273','competitors',0),
('f6216ab8b669f451dd4270a9cb96ec69','woodland',0),
('f68d48a1c64478cadff5c343371783c3','spectators',0),
('f6bc81b1fa9e98a5f645cf8e05202f6f','grateful',0),
('f6cb3e816496528d4187db53bc66567f','both',0),
('f6fee22e34c7d055ea7c17169175d0de','teamwork',0),
('f75cac02116d825a000c33a7c326af37','takes',0),
('f79b1d64a8d8b02b86d797765a6a1fe4','visibility',0),
('f7b11037f2050959293aafb493b7653c','capabilities',0),
('f7c0a09108cdf26287c1bc5af2ed1f93','most',0),
('f82d71a6491c31b384ab5b57d85b6593','national',0),
('f83d0796e53709a8dd72d2dbf8231ecf','competing',0),
('f894427cc1c571f79da49605ef8b112f','team',0),
('f8dcad058c9c44fdb6ffcb22d2d4c31f','promotion',0),
('f910ff3a8628ebda9c67ed678703fd7d','reached',0),
('f970e2767d0cfe75876ea857f92e319b','as',0),
('f97c5d29941bfb1b2fdab0874906ab82','one',0),
('f9b3d9bfeaf71205d348b43f37cafd0c','outreach',0),
('f9cb12f89c3f82ffaba2483cd3551d82','participation',0),
('f9d000bc691cbd4ed09645220637e3a3','elitr',0),
('f9f90eeaf400d228facde6bc48da5cfb','always',0),
('fa2ec87a2e6783b2193f71bfdf0f9cc8','higher',0),
('fa6c9d5de251d2da13b9f81db8da0ca6','you\'ll',0),
('fa7842058929774b5e27b579fc597fc9','halftime',0),
('fb2b038ea78e99cb4ca370639f399ce3','vulputate',0),
('fb8d98be1265dd88bac522e1b2182140','congratulations',0),
('fbb44b4487415b134bce9c790a27fe5e','total',0),
('fce7bfee7c6e21e1d37535d69dadc71d','clita',0),
('fdc34633c5c258b0aab520a235228574','support.',0),
('ff1ccf57e98c817df1efcd9fe44a8aeb','we',0),
('ffe8560492ef96f860b965341d0c9698','instagram',0);
/*!40000 ALTER TABLE `index_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(80) NOT NULL DEFAULT '',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` bigint(20) NOT NULL DEFAULT 0,
  `newUntil` bigint(20) NOT NULL DEFAULT 0,
  `slug` varchar(2048) DEFAULT NULL,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `php_tree_stop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nav_hide` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_siteroot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_follow` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TSconfig` longtext DEFAULT NULL,
  `keywords` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `abstract` longtext DEFAULT NULL,
  `og_description` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `canonical_link` varchar(2048) NOT NULL DEFAULT '',
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `module` varchar(255) NOT NULL DEFAULT '',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` longtext DEFAULT NULL,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  `copyright` longtext DEFAULT NULL,
  `data_privacy` varchar(2048) NOT NULL DEFAULT '',
  `social` int(10) unsigned NOT NULL DEFAULT 0,
  `contact` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(1,0,1712940144,1712586908,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\",\"contact\":\"\",\"data_privacy\":\"\",\"copyright\":\"\",\"social\":\"\"}',0,0,0,0,1,0,31,27,0,'Home','','','','',1718873192,'','',0,0,0,'','','',0.5,0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','pagets__home','pagets__default',NULL,'','summary','TYPO3 Surfcamp Team4','t3://page?uid=17',1,'t3://page?uid=6'),
(2,1,1712676853,1712672677,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'News','','','','',1718874847,'','',0,0,0,'','','',0.5,0,0,0,'/news',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(3,1,1712676850,1712673349,0,0,0,0,'0',128,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Events','','','','',1718897025,'','',0,0,0,'','','',0.5,0,0,0,'/events',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(4,1,1712676856,1712673365,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Club','','','','',1712676856,'','',0,0,0,'','','',0.5,0,0,0,'/club',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(5,1,1712676923,1712673378,0,0,0,0,'0',768,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Sponsors','','','','',1718915307,'','',0,0,0,'','','',0.5,0,0,0,'/sponsors',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(6,1,1712855043,1712673397,0,0,0,0,'',1024,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Contact Us','','','','',1712855043,'','',0,0,0,'','','',0.5,0,0,0,'/contact',0,0,0,'',0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(7,4,1712929455,1712673451,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'History','','','','',1718866561,'','',0,0,0,'','','',0.5,0,0,0,'/club/history',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(8,4,1712930870,1712673487,1,0,0,0,'',512,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Executive board','','','','',1712676900,'','',0,0,0,'','','',0.5,0,0,0,'/club/as',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(9,4,1712936772,1712674076,1,0,0,0,'',768,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Stadion','','','','',1712677935,'','',0,0,0,'','','',0.5,0,0,0,'/club/stadion',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(10,4,1712679828,1712674099,0,0,0,0,'0',832,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Membership','','','','',1718897287,'','',0,0,0,'','','',0.5,0,0,0,'/club/membership',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(11,4,1712936725,1712676547,1,0,0,0,'0',640,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Trainer','','','','',0,'','',0,0,0,'','','',0.5,0,0,0,'/club/trainer',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(12,1,1712825525,1712677342,0,0,0,0,'',640,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Team','','','','',1712942889,'','',0,0,0,'','','',0.5,0,0,0,'/team',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(13,12,1712825506,1712679709,1,0,0,0,'0',256,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Senior','','','','',0,'','',0,0,0,'','','',0.5,0,0,0,'/club/membership/teams/senior',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(14,12,1712825510,1712679716,1,0,0,0,'0',512,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Youth','','','','',0,'','',0,0,0,'','','',0.5,0,0,0,'/club/membership/teams/youth',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(15,4,1712679820,1712679770,0,0,0,0,'',896,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,'Contact','','','','',0,'','',6,0,0,'','','',0.5,0,0,0,'/club/contact',0,0,0,'',0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',4,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(16,1,1712914817,1712846952,0,0,0,0,'',1088,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Search','','','','',1712914817,'','',0,0,0,'','','',0.5,0,0,0,'/search',0,0,0,'',0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,''),
(17,1,1712914825,1712914801,0,0,0,0,'',1152,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Privacy Policy','','','','',1712914885,'','',0,0,0,'','','',0.5,0,0,0,'/privacy-policy',0,0,0,'',0,0,1,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,'',1,0,0,0,'','','',NULL,'','summary',NULL,'',0,'');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `route` varchar(255) NOT NULL DEFAULT '',
  `arguments` text DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext NOT NULL,
  `items` int(11) NOT NULL DEFAULT 0,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid_local`,`uid_foreign`,`tablenames`,`fieldname`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_csp_resolution`
--

DROP TABLE IF EXISTS `sys_csp_resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_csp_resolution` (
  `summary` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `scope` varchar(264) NOT NULL,
  `mutation_identifier` text DEFAULT NULL,
  `mutation_collection` mediumtext DEFAULT NULL,
  `meta` mediumtext DEFAULT NULL,
  PRIMARY KEY (`summary`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_csp_resolution`
--

LOCK TABLES `sys_csp_resolution` WRITE;
/*!40000 ALTER TABLE `sys_csp_resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_csp_resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `identifier` text DEFAULT NULL,
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `sha1` varchar(40) NOT NULL DEFAULT '',
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(5) unsigned NOT NULL DEFAULT 0,
  `metadata` int(10) unsigned NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  `storage` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES
(1,0,1712586942,1712586943,'/_assets/9e1baf7acd042a575966876125939baa/Images/Logos/logo.svg','b0cce8c5e79a4a07afe0cb2c071f943991b40667','99d6067d7934a4bde70efa0413434de9afb1b07b','svg','image/svg+xml','logo.svg','bf2b16e37e836933bc939ce180798073cf37816b',1712586649,1712586620,0,0,52266,0,2),
(2,0,1712675459,1712675459,'/images_be/dummy_picture_football.jpg','582c86749a3a5eb93a244ea35a2ffb97970599c4','c522ad77a2fd876b50d77da61b5bc18385ac4e34','jpg','image/jpeg','dummy_picture_football.jpg','91411b5aefea60fd24eb9a6a9b43c5948af06136',1712675459,1712675459,0,0,591494,1,2),
(3,0,1712675931,1712675931,'/images_be/dummy_picture_football_2.jpg','3733200f6833131573df135781671d5bcfe323b5','c522ad77a2fd876b50d77da61b5bc18385ac4e34','jpg','image/jpeg','dummy_picture_football_2.jpg','e1526709f13c0006b8b39e089b52a486c6b64db8',1712675931,1712675930,0,0,651906,1,2),
(5,0,1712676222,1712676222,'/images_be/logos/FC_Bigfoot_logo_dummy.svg','2648f657fbf4f0b2f5d39063ca27161f1a16be65','5d3dde317d4320c86110586eb1fc2c3d9f8a0467','svg','image/svg+xml','FC_Bigfoot_logo_dummy.svg','9ddfce691445eb6e70475dc3727b328856a8386d',1712676222,1712676222,0,0,79849,1,2),
(6,0,1712681947,1712681947,'/images_be/players/football_player_dummy.jpg','eefbc821ad1c162dde38177c8f034e172a66c194','98fd771254fde6a47723379c4700044fe71b0815','jpg','image/jpeg','football_player_dummy.jpg','d34952523c84b27528f000dcbdc5aab0aeea87be',1712681947,1712681947,0,0,1548427,1,2),
(7,0,1712854676,1712854676,'/images_be/logos/4.svg','7ec4e2ae3232bf027433b73ed98957b3e7f6f25d','5d3dde317d4320c86110586eb1fc2c3d9f8a0467','svg','image/svg+xml','4.svg','a59f18c7c0bcf473370762c0e5f3b8a1de102d23',1712854676,1712854676,0,0,3006,1,2),
(8,0,1712854676,1712854676,'/images_be/logos/2.svg','c69f88ea5e491811b879d4e025cc751f676abdbc','5d3dde317d4320c86110586eb1fc2c3d9f8a0467','svg','image/svg+xml','2.svg','a73d3d3573c500a4a470a0bd6a0e5a66656b8fd4',1712854676,1712854676,0,0,13006,1,2),
(9,0,1712854677,1712854677,'/images_be/logos/3.svg','e1b981e53b1fb8df2d70ef6f0858b145009cae6d','5d3dde317d4320c86110586eb1fc2c3d9f8a0467','svg','image/svg+xml','3.svg','4c077802827d6efedd8214fd67f077033ece5fd7',1712854677,1712854677,0,0,42532,1,2),
(10,0,1712854677,1712854677,'/images_be/logos/6.svg','866ad98b91353276b39810d09cf8f8e029114bb4','5d3dde317d4320c86110586eb1fc2c3d9f8a0467','svg','image/svg+xml','6.svg','6c30fca67fa9a61b2e1c9dbb79cad9265f8dafb8',1712854677,1712854677,0,0,39284,1,2),
(11,0,1712854677,1712854677,'/images_be/logos/1.svg','0c15d2c1413c0ad4db0cfa304980a0c612a9ea9b','5d3dde317d4320c86110586eb1fc2c3d9f8a0467','svg','image/svg+xml','1.svg','eb99faee4b2c8f732012e2e1f5c86f0a360b9439',1712854677,1712854677,0,0,93120,1,2),
(12,0,1712854677,1712854677,'/images_be/logos/5.svg','812a1ad273be59a6f267805e74a1b5715d94e620','5d3dde317d4320c86110586eb1fc2c3d9f8a0467','svg','image/svg+xml','5.svg','0fdf98a9df9086bf09e9696c9f05f6d11a8cc604',1712854677,1712854677,0,0,170382,1,2),
(13,0,1712854734,1712854734,'/user_upload/1.svg','481e7d2f4c4c84562f4215a7a4f9b550967017b3','19669f1e02c2f16705ec7587044c66443be70725','svg','image/svg+xml','1.svg','eb99faee4b2c8f732012e2e1f5c86f0a360b9439',1712854734,1712854734,0,0,93120,1,2),
(14,0,1712918177,1712918177,'/JSON/matches.json','f1674edaf469276ec8775fd5520aa734de7d5b88','f92cabd14cc915f59a618b36aeeafc3d75d22cd0','json','application/json','matches.json','d22ee5d45e178f311cc0e4bcc97a523081351606',1712918177,1712918177,0,0,7320,1,5),
(15,0,1712922999,1712922999,'/images_be/football_field_dummy_picture.jpg','c67f088c2aba8ed4933272526e02953bf115233b','c522ad77a2fd876b50d77da61b5bc18385ac4e34','jpg','image/jpeg','football_field_dummy_picture.jpg','113704fc12784d14d5500dbc875e4b04e0e142ef',1712922999,1712922999,0,0,3790542,1,2),
(16,0,1712928469,1712928469,'/_assets/9e1baf7acd042a575966876125939baa/Icons/favicon.png','24d7f47445939f1e0b1b92f4a262cdcec3ed856d','8d369134bad7e8ed8023232ccdeadab17ccc8c13','png','image/png','favicon.png','5548a3844dbcb85360c84671b8168a52db47bef2',1712928164,1712928121,0,0,14515,0,2),
(17,0,1712934261,1712934261,'/_assets/9e1baf7acd042a575966876125939baa/Images/News/15th_charity_tournament.jpg','b337fbe60b71dff95ffc0248224c76e88492dd4d','b46720dc297b91d3fb4c9080c69da6010bb94482','jpg','image/jpeg','15th_charity_tournament.jpg','c8c26d9f6233407d56bad6d07a5d1009c574e05c',1712934040,1712933993,0,0,719386,0,2),
(18,0,1712934262,1712934262,'/_assets/9e1baf7acd042a575966876125939baa/Images/News/get_ready_for_another_exciting_matches.jpg','ae5644a5c7d8013fb944d7e97bea2069a83df651','b46720dc297b91d3fb4c9080c69da6010bb94482','jpg','image/jpeg','get_ready_for_another_exciting_matches.jpg','94b5110e18ac2d9468faaef362185f8f5f6e7002',1712934040,1712933993,0,0,6950606,0,2),
(19,0,1712934264,1712934264,'/_assets/9e1baf7acd042a575966876125939baa/Images/News/our_new_supporter_lunamedia.jpg','d8202194bbef24bd42273b68c0b01752df02f77c','b46720dc297b91d3fb4c9080c69da6010bb94482','jpg','image/jpeg','our_new_supporter_lunamedia.jpg','09bfb0d4a98e2833b7d594fd68a1652d0d256d29',1712934040,1712933993,0,0,891908,0,2),
(20,0,1712939004,1712939004,'/images_be/players/dummy_player_1.jpg','5f7f21179b13e6789fb01b24dbbb268893a5ad43','98fd771254fde6a47723379c4700044fe71b0815','jpg','image/jpeg','dummy_player_1.jpg','7c867e99212925af3e5b0ca722f0fb89a6769623',1712939004,1712939004,0,0,687291,1,2),
(21,0,1712940532,1712940532,'/user_upload/TestJpegDatei.jpg','a4a63b333fabdebf56e77cc900f006a479638c28','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','TestJpegDatei.jpg','e5b0a2e74b81de1cf49bd66d6229ae79156bfee3',1712940532,1712940532,0,0,8938,1,2),
(22,0,1712942521,1712942521,'/_assets/9e1baf7acd042a575966876125939baa/Images/Events/event4.png','8e5b0b8513d757dfbe86ec2379a11dc81a11e4f4','24609d614f49e269278ae42e77cdf6db094315af','png','image/png','event4.png','6a7f22cbcfa41cda40b00d061c33d8c1acb4fcf9',1712942476,1712942426,0,0,2942514,0,2),
(23,0,1712942522,1712942522,'/_assets/9e1baf7acd042a575966876125939baa/Images/Events/event5.png','eaa4bcd74917bb956b1d30ab94f35b88dc7afd54','24609d614f49e269278ae42e77cdf6db094315af','png','image/png','event5.png','2d0cfd00b529dcd152b618f552a7e7a730832f46',1712942476,1712942426,0,0,725676,0,2),
(24,0,1712942523,1712942523,'/_assets/9e1baf7acd042a575966876125939baa/Images/Events/event1.png','249d20a917d0116c5ce5009686312af87eab6378','24609d614f49e269278ae42e77cdf6db094315af','png','image/png','event1.png','685a62506fa3ca87c2107c04df7d5a74c6e1c8a4',1712942476,1712942426,0,0,3095134,0,2),
(25,0,1712942524,1712942524,'/_assets/9e1baf7acd042a575966876125939baa/Images/Events/event2.png','2e3d0ca31aee949c7b675ce8ed11105675b0352f','24609d614f49e269278ae42e77cdf6db094315af','png','image/png','event2.png','b47c046eeef75e490ac8bedc5e38fc053f0c8dab',1712942476,1712942426,0,0,1488863,0,2),
(26,0,1718874025,1718874025,'/images_be/content_pictures/example_pic_1.jpg','fd5428cb0e8e9474bffaba16b6118a44f497df44','64af815863c56d27f0a2151884b70fffb44aeb26','jpg','image/jpeg','example_pic_1.jpg','4e8598c9ec0543c8c1ae1d3f069ccd380eb05900',1718874025,1718874024,0,0,594015,1,2),
(27,0,1718874038,1718874038,'/images_be/content_pictures/example_pic_2.jpg','fb506221823cccac424bd23ce981ef200d258f87','64af815863c56d27f0a2151884b70fffb44aeb26','jpg','image/jpeg','example_pic_2.jpg','cad0c82d236e73cd0491329c502242a01c252c6a',1718874038,1718874038,0,0,1731086,1,2),
(28,0,1718874049,1718874049,'/images_be/content_pictures/example_pic_3.jpg','551f405de7366dc3f50f68d1b964bff094009f27','64af815863c56d27f0a2151884b70fffb44aeb26','jpg','image/jpeg','example_pic_3.jpg','0e68dfe04b674d0cd74e8e3204056622317a1c22',1718874049,1718874049,0,0,3089547,1,2),
(30,0,1718914479,1718914479,'/images_be/logos/sponsor_logos/logo_queo_test.svg','f78276e5310a83398e1abc269574baa88de5ba91','546f41c2363db099086d1f010458ab74d67257a9','svg','image/svg+xml','logo_queo_test.svg','d5f778152c3bc5dc0d76aa0170e55aca1c9c9542',1718914479,1718914479,0,0,1457,1,2),
(31,0,1718914507,1718914507,'/images_be/logos/sponsor_logos/logo_contenance_test.svg','55778ae6865f70890ad48af55bc298ee05a93753','546f41c2363db099086d1f010458ab74d67257a9','svg','image/svg+xml','logo_contenance_test.svg','43267405a98d873f9312e230d6b571602f8893f8',1718914507,1718914507,0,0,1120,1,2),
(32,0,1718914521,1718914521,'/images_be/logos/sponsor_logos/logo_decode_test.svg','6d1e245510dc3b9ec4ca66ca0bdf7c2c67b4e037','546f41c2363db099086d1f010458ab74d67257a9','svg','image/svg+xml','logo_decode_test.svg','88aee2161aa84d862cabe13ad5d35e8f6808c75e',1718914521,1718914521,0,0,15957,1,2),
(33,0,1718914571,1718914571,'/images_be/logos/sponsor_logos/TYPO3_logo_test.png','1cc68ba30b0ca8a365aa999da31b63a317b2df41','546f41c2363db099086d1f010458ab74d67257a9','png','image/png','TYPO3_logo_test.png','8dec4422baf63b4d058a4c1149fac163857468d5',1718914571,1718914571,0,0,2651,1,2),
(34,0,1718914635,1718914635,'/images_be/logos/sponsor_logos/KM2_logo_test.svg','78535a8f1ad768b542eda81a0e0217e6d0b89ea5','546f41c2363db099086d1f010458ab74d67257a9','svg','image/svg+xml','KM2_logo_test.svg','7218785d471215990f609e67eba516ddadfd62f9',1718914635,1718914635,0,0,1194,1,2),
(35,0,1718914977,1718914977,'/images_be/logos/sponsor_logos/TYPO3_logo_test_2.svg','53dad1ae49aa9124d0a80cbb2e7094c9211a7c87','546f41c2363db099086d1f010458ab74d67257a9','svg','image/svg+xml','TYPO3_logo_test_2.svg','3b36871c47154d0bd3b023dae2833ae24e9e8913',1718914977,1718914977,0,0,913,1,2),
(36,0,1718915178,1718915178,'/images_be/logos/sponsor_logos/in2code_logo_test.svg','3889a0909ceb4a9ca05f8efbd53647d7944027e6','546f41c2363db099086d1f010458ab74d67257a9','svg','image/svg+xml','in2code_logo_test.svg','cf356deead1b6d0000b4fadb0754764a761468b1',1718915178,1718915178,0,0,50322,1,2);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `files` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_identifier` longtext DEFAULT NULL,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `status` varchar(24) DEFAULT '',
  `creator_tool` varchar(255) DEFAULT '',
  `download_name` varchar(255) DEFAULT '',
  `creator` varchar(255) DEFAULT '',
  `publisher` varchar(45) DEFAULT '',
  `source` varchar(255) DEFAULT '',
  `location_country` varchar(45) DEFAULT '',
  `location_region` varchar(45) DEFAULT '',
  `location_city` varchar(45) DEFAULT '',
  `latitude` decimal(24,14) DEFAULT 0.00000000000000,
  `longitude` decimal(24,14) DEFAULT 0.00000000000000,
  `pages` int(10) unsigned DEFAULT 0,
  `language` varchar(45) DEFAULT '',
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `content_creation_date` bigint(20) NOT NULL DEFAULT 0,
  `content_modification_date` bigint(20) NOT NULL DEFAULT 0,
  `visible` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `keywords` longtext DEFAULT NULL,
  `caption` longtext DEFAULT NULL,
  `copyright` longtext DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT 0,
  `file` int(10) unsigned NOT NULL DEFAULT 0,
  `ranking` int(10) unsigned NOT NULL DEFAULT 0,
  `unit` varchar(3) NOT NULL DEFAULT '',
  `color_space` varchar(4) NOT NULL DEFAULT '',
  `fe_groups` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES
(1,0,1712586942,1712586942,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,400,92,0,1,0,'','',NULL),
(2,0,1712675459,1712675459,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,3000,2000,0,2,0,'','',NULL),
(3,0,1712675930,1712675930,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,2972,1896,0,3,0,'','',NULL),
(5,0,1712676222,1712676222,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,500,500,0,5,0,'','',NULL),
(6,0,1712681947,1712681947,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,4000,6000,0,6,0,'','',NULL),
(7,0,1712854676,1712854676,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,500,500,0,7,0,'','',NULL),
(8,0,1712854676,1712854676,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,500,500,0,8,0,'','',NULL),
(9,0,1712854677,1712854677,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,500,500,0,9,0,'','',NULL),
(10,0,1712854677,1712854677,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,500,500,0,10,0,'','',NULL),
(11,0,1712854677,1712854677,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,500,500,0,12,0,'','',NULL),
(12,0,1712854677,1712854677,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,500,500,0,11,0,'','',NULL),
(13,0,1712854734,1712854734,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,500,500,0,13,0,'','',NULL),
(14,0,1712918177,1712918177,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,14,0,'','',NULL),
(15,0,1712922999,1712922999,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,5267,3492,0,15,0,'','',NULL),
(16,0,1712928469,1712928469,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,96,96,0,16,0,'','',NULL),
(17,0,1712934259,1712934259,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,3999,2667,0,17,0,'','',NULL),
(18,0,1712934259,1712934259,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,8064,4536,0,18,0,'','',NULL),
(19,0,1712934259,1712934259,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,5568,3712,0,19,0,'','',NULL),
(20,0,1712939004,1712939004,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,4000,2251,0,20,0,'','',NULL),
(21,0,1712940532,1712940532,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,500,500,0,21,0,'','',NULL),
(22,0,1712942520,1712942520,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,1472,1312,0,22,0,'','',NULL),
(23,0,1712942520,1712942520,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,873,657,0,23,0,'','',NULL),
(24,0,1712942520,1712942520,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,1810,1288,0,24,0,'','',NULL),
(25,0,1712942520,1712942520,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,862,1316,0,25,0,'','',NULL),
(26,0,1718874025,1718874025,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,6000,4000,0,26,0,'','',NULL),
(27,0,1718874038,1718874038,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,4000,5240,0,27,0,'','',NULL),
(28,0,1718874049,1718874049,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,3910,5866,0,28,0,'','',NULL),
(30,0,1718914479,1718914479,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,887,283,0,30,0,'','',NULL),
(31,0,1718914507,1718914507,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,192,192,0,31,0,'','',NULL),
(32,0,1718914521,1718914521,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,320,320,0,32,0,'','',NULL),
(33,0,1718914571,1718914571,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,345,146,0,33,0,'','',NULL),
(34,0,1718914635,1718914635,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,659,149,0,34,0,'','',NULL),
(35,0,1718914977,1718914977,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,512,512,0,35,0,'','',NULL),
(36,0,1718915178,1718915178,0,0,NULL,'',0,0,0,0,NULL,NULL,'','','','','','','','','',0.00000000000000,0.00000000000000,0,'',0,0,0,0,NULL,NULL,NULL,NULL,NULL,900,500,0,36,0,'','',NULL);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `processing_url` text DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES
(1,1712586942,1712586942,0,1,'',NULL,'','a:7:{s:5:\"width\";i:250;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','1c145b63aec74a5880401c00f1a35d8859d2c2d4','bf2b16e37e836933bc939ce180798073cf37816b','Image.CropScaleMask','6b2c3272da',250,58),
(2,1712674556,1712674556,0,1,'',NULL,'','a:7:{s:5:\"width\";i:650;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','583e26c3e704024e4b721ee71c72ea0d51543970','bf2b16e37e836933bc939ce180798073cf37816b','Image.CropScaleMask','0a2745b94e',650,150),
(3,1712941836,1712675459,1,2,'/_processed_/2/9/preview_dummy_picture_football_1c7aeedf90.jpg','preview_dummy_picture_football_1c7aeedf90.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','91411b5aefea60fd24eb9a6a9b43c5948af06136','Image.Preview','1c7aeedf90',64,64),
(4,1718874071,1712675467,1,2,'/_processed_/2/9/csm_dummy_picture_football_26d967157d.jpg','csm_dummy_picture_football_26d967157d.jpg','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','91411b5aefea60fd24eb9a6a9b43c5948af06136','Image.CropScaleMask','26d967157d',32,32),
(5,1712675468,1712675467,1,2,'/_processed_/2/9/csm_dummy_picture_football_68fef85267.jpg','csm_dummy_picture_football_68fef85267.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','91411b5aefea60fd24eb9a6a9b43c5948af06136','Image.CropScaleMask','68fef85267',166,111),
(6,1712675554,1712675553,1,2,'/_processed_/2/9/preview_dummy_picture_football_a5a0e8b7ae.jpg','preview_dummy_picture_football_a5a0e8b7ae.jpg','','a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}','55d97d4e532f03dbc8a5053eac06a25a43ca2e20','91411b5aefea60fd24eb9a6a9b43c5948af06136','Image.Preview','a5a0e8b7ae',150,150),
(7,1712679370,1712675930,1,3,'/_processed_/7/c/preview_dummy_picture_football_2_583ed59fb5.jpg','preview_dummy_picture_football_2_583ed59fb5.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','e1526709f13c0006b8b39e089b52a486c6b64db8','Image.Preview','583ed59fb5',0,0),
(8,1712679292,1712675947,1,3,'/_processed_/7/c/csm_dummy_picture_football_2_87434df841.jpg','csm_dummy_picture_football_2_87434df841.jpg','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','e1526709f13c0006b8b39e089b52a486c6b64db8','Image.CropScaleMask','87434df841',32,32),
(9,1712675948,1712675947,1,3,'/_processed_/7/c/csm_dummy_picture_football_2_69d731c5e6.jpg','csm_dummy_picture_football_2_69d731c5e6.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','e1526709f13c0006b8b39e089b52a486c6b64db8','Image.CropScaleMask','69d731c5e6',166,106),
(10,1712675949,1712675949,1,3,'/_processed_/7/c/preview_dummy_picture_football_2_939544e0f9.jpg','preview_dummy_picture_football_2_939544e0f9.jpg','','a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}','55d97d4e532f03dbc8a5053eac06a25a43ca2e20','e1526709f13c0006b8b39e089b52a486c6b64db8','Image.Preview','939544e0f9',150,150),
(15,1712676222,1712676222,1,5,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','9ddfce691445eb6e70475dc3727b328856a8386d','Image.Preview','672e2033cc',64,64),
(16,1712676229,1712676229,1,5,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','9ddfce691445eb6e70475dc3727b328856a8386d','Image.CropScaleMask','24224db132',32,32),
(17,1712676229,1712676229,1,5,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','9ddfce691445eb6e70475dc3727b328856a8386d','Image.CropScaleMask','ec2d26a949',115,115),
(18,1712676231,1712676231,1,5,'',NULL,'','a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}','55d97d4e532f03dbc8a5053eac06a25a43ca2e20','9ddfce691445eb6e70475dc3727b328856a8386d','Image.Preview','a9b42fdee0',150,150),
(19,1712679296,1712679295,1,3,'/_processed_/7/c/csm_dummy_picture_football_2_d9e9765abd.jpg','csm_dummy_picture_football_2_d9e9765abd.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','e1526709f13c0006b8b39e089b52a486c6b64db8','Image.CropScaleMask','d9e9765abd',235,150),
(20,1712679296,1712679295,1,3,'/_processed_/7/c/csm_dummy_picture_football_2_edfb9d184d.jpg','csm_dummy_picture_football_2_edfb9d184d.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','e1526709f13c0006b8b39e089b52a486c6b64db8','Image.CropScaleMask','edfb9d184d',71,45),
(21,1712679326,1712679326,1,3,'/_processed_/7/c/csm_dummy_picture_football_2_06c24c03ad.jpg','csm_dummy_picture_football_2_06c24c03ad.jpg',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','e1526709f13c0006b8b39e089b52a486c6b64db8','Image.CropScaleMask','06c24c03ad',2972,1896),
(22,1712940632,1712681947,1,6,'/_processed_/b/c/preview_football_player_dummy_44f573a26f.jpg','preview_football_player_dummy_44f573a26f.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.Preview','44f573a26f',64,64),
(23,1712940623,1712681957,1,6,'/_processed_/b/c/csm_football_player_dummy_5f0d2ef321.jpg','csm_football_player_dummy_5f0d2ef321.jpg','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','5f0d2ef321',32,32),
(24,1712681959,1712681957,1,6,'/_processed_/b/c/csm_football_player_dummy_a67e4f72d3.jpg','csm_football_player_dummy_a67e4f72d3.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','a67e4f72d3',77,115),
(25,1712681961,1712681958,1,6,'/_processed_/b/c/csm_football_player_dummy_3b41996997.jpg','csm_football_player_dummy_3b41996997.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','3b41996997',100,150),
(26,1712681961,1712681958,1,6,'/_processed_/b/c/csm_football_player_dummy_4708443a87.jpg','csm_football_player_dummy_4708443a87.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','4708443a87',30,45),
(27,1712681967,1712681965,1,6,'/_processed_/b/c/csm_football_player_dummy_216ddf298c.jpg','csm_football_player_dummy_216ddf298c.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1000;s:9:\"maxHeight\";i:1000;s:4:\"crop\";N;}','1097b19f7c94bc1bdd2bf43bfc22198c30890d2e','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','216ddf298c',667,1000),
(28,1712681967,1712681965,1,6,'/_processed_/b/c/csm_football_player_dummy_eb3b76849f.jpg','csm_football_player_dummy_eb3b76849f.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:300;s:9:\"maxHeight\";i:300;s:4:\"crop\";N;}','e239fcbae08ee546b841850592062fe370de3336','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','eb3b76849f',200,300),
(29,1712682810,1712682806,1,6,'/_processed_/b/c/csm_football_player_dummy_ed5852fca2.jpg','csm_football_player_dummy_ed5852fca2.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:605.6971514242878;s:4:\"\0*\0y\";d:786.5622188905546;s:8:\"\0*\0width\";d:2248.8755622188905;s:9:\"\0*\0height\";d:2248.8755622188905;}}','81a27114332dc5f4236602575b40ac789a0faa1c','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','ed5852fca2',150,150),
(30,1712682810,1712682806,1,6,'/_processed_/b/c/csm_football_player_dummy_a795b78213.jpg','csm_football_player_dummy_a795b78213.jpg','','a:4:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:605.6971514242878;s:4:\"\0*\0y\";d:786;s:8:\"\0*\0width\";d:2248.8755622188905;s:9:\"\0*\0height\";d:2250;}}','d5e6cec228e87acdac3144a9febc9b16d1e507e4','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','a795b78213',45,45),
(31,1712682833,1712682832,1,6,'/_processed_/b/c/csm_football_player_dummy_f36f4ee9e3.jpg','csm_football_player_dummy_f36f4ee9e3.jpg','','a:3:{s:8:\"maxWidth\";i:64;s:9:\"maxHeight\";i:64;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:605.6971514242878;s:4:\"\0*\0y\";d:786;s:8:\"\0*\0width\";d:2248.8755622188905;s:9:\"\0*\0height\";d:2250;}}','9cabe6b341dcc67ee2680c3f54cf1c6614343f61','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','f36f4ee9e3',64,64),
(32,1712933423,1712755324,1,6,'/_processed_/b/c/csm_football_player_dummy_0656ade056.jpg','csm_football_player_dummy_0656ade056.jpg','','a:4:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:605.6971514242878;s:4:\"\0*\0y\";d:786.5622188905546;s:8:\"\0*\0width\";d:2248.8755622188905;s:9:\"\0*\0height\";d:2248.8755622188905;}}','9a132a6e2650febac2f0ca014f90a8cc20eafb4d','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','0656ade056',45,45),
(33,1712755328,1712755326,1,6,'/_processed_/b/c/csm_football_player_dummy_c3ba8c7ed2.jpg','csm_football_player_dummy_c3ba8c7ed2.jpg','','a:3:{s:8:\"maxWidth\";i:64;s:9:\"maxHeight\";i:64;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:605.6971514242878;s:4:\"\0*\0y\";d:786.5622188905546;s:8:\"\0*\0width\";d:2248.8755622188905;s:9:\"\0*\0height\";d:2248.8755622188905;}}','589cd19cac915a89d78ffbe2f264c3eb92007133','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','c3ba8c7ed2',64,64),
(34,1712755348,1712755348,1,6,'/_processed_/b/c/csm_football_player_dummy_5147e9c190.jpg','csm_football_player_dummy_5147e9c190.jpg',NULL,'a:3:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:605.6971514242878;s:4:\"\0*\0y\";d:786.5622188905546;s:8:\"\0*\0width\";d:2248.8755622188905;s:9:\"\0*\0height\";d:2248.8755622188905;}}','6831c4bc3d75010a25770e2dd67576a542186853','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','5147e9c190',2249,2249),
(35,1712842287,1712842287,0,1,'',NULL,'','a:7:{s:5:\"width\";i:68;s:6:\"height\";i:68;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','b65ef2f799feec0068e92c4ba113888f1514f526','bf2b16e37e836933bc939ce180798073cf37816b','Image.CropScaleMask','c901d5e18a',68,68),
(36,1712846473,1712846473,0,1,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f36cf294907344fb50e07b2b64c0e626c2cc70cf','bf2b16e37e836933bc939ce180798073cf37816b','Image.CropScaleMask','7fb44b721e',300,69),
(37,1712854676,1712854676,1,8,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','a73d3d3573c500a4a470a0bd6a0e5a66656b8fd4','Image.Preview','610c36ac7b',64,64),
(38,1712854676,1712854676,1,7,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','a59f18c7c0bcf473370762c0e5f3b8a1de102d23','Image.Preview','c360ca1d93',64,64),
(39,1712854677,1712854677,1,10,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','6c30fca67fa9a61b2e1c9dbb79cad9265f8dafb8','Image.Preview','96e55335ac',64,64),
(40,1712854677,1712854677,1,9,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4c077802827d6efedd8214fd67f077033ece5fd7','Image.Preview','c7be914a7c',64,64),
(41,1712854677,1712854677,1,12,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','0fdf98a9df9086bf09e9696c9f05f6d11a8cc604','Image.Preview','32fcf821ab',64,64),
(42,1712854677,1712854677,1,11,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','eb99faee4b2c8f732012e2e1f5c86f0a360b9439','Image.Preview','bd9995a987',64,64),
(43,1712854684,1712854684,1,10,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','6c30fca67fa9a61b2e1c9dbb79cad9265f8dafb8','Image.CropScaleMask','2fbd4630a8',32,32),
(44,1712854684,1712854684,1,10,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','6c30fca67fa9a61b2e1c9dbb79cad9265f8dafb8','Image.CropScaleMask','df7609d33b',115,115),
(45,1712854684,1712854684,1,11,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','eb99faee4b2c8f732012e2e1f5c86f0a360b9439','Image.CropScaleMask','f0a2f2ddbf',32,32),
(46,1712854684,1712854684,1,11,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','eb99faee4b2c8f732012e2e1f5c86f0a360b9439','Image.CropScaleMask','e2936a7e9f',115,115),
(47,1712854684,1712854684,1,12,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','0fdf98a9df9086bf09e9696c9f05f6d11a8cc604','Image.CropScaleMask','7ba4f72021',32,32),
(48,1712854684,1712854684,1,12,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','0fdf98a9df9086bf09e9696c9f05f6d11a8cc604','Image.CropScaleMask','a3adf0a161',115,115),
(49,1712854684,1712854684,1,7,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','a59f18c7c0bcf473370762c0e5f3b8a1de102d23','Image.CropScaleMask','b9bea78991',32,32),
(50,1712854684,1712854684,1,7,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','a59f18c7c0bcf473370762c0e5f3b8a1de102d23','Image.CropScaleMask','055820cec5',115,115),
(51,1712854684,1712854684,1,8,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','a73d3d3573c500a4a470a0bd6a0e5a66656b8fd4','Image.CropScaleMask','ec6bbf8066',32,32),
(52,1712854684,1712854684,1,8,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','a73d3d3573c500a4a470a0bd6a0e5a66656b8fd4','Image.CropScaleMask','b5399d8dba',115,115),
(53,1712854684,1712854684,1,9,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','4c077802827d6efedd8214fd67f077033ece5fd7','Image.CropScaleMask','d8798cebb4',32,32),
(54,1712854684,1712854684,1,9,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','4c077802827d6efedd8214fd67f077033ece5fd7','Image.CropScaleMask','65c7342d4e',115,115),
(55,1712854734,1712854734,1,13,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','eb99faee4b2c8f732012e2e1f5c86f0a360b9439','Image.Preview','69e6f66ad1',64,64),
(56,1712854734,1712854734,1,13,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','eb99faee4b2c8f732012e2e1f5c86f0a360b9439','Image.CropScaleMask','2e2b5560ae',150,150),
(57,1712854734,1712854734,1,13,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','eb99faee4b2c8f732012e2e1f5c86f0a360b9439','Image.CropScaleMask','e132874ad2',45,45),
(58,1712854933,1712854933,1,8,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','a73d3d3573c500a4a470a0bd6a0e5a66656b8fd4','Image.CropScaleMask','3c146bc9ff',150,150),
(59,1712854933,1712854933,1,8,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','a73d3d3573c500a4a470a0bd6a0e5a66656b8fd4','Image.CropScaleMask','ca0308b178',45,45),
(60,1712854944,1712854944,1,9,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','4c077802827d6efedd8214fd67f077033ece5fd7','Image.CropScaleMask','9c826cc93e',150,150),
(61,1712854944,1712854944,1,9,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','4c077802827d6efedd8214fd67f077033ece5fd7','Image.CropScaleMask','cf2ee249cb',45,45),
(62,1712854954,1712854954,1,7,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','a59f18c7c0bcf473370762c0e5f3b8a1de102d23','Image.CropScaleMask','bb52315680',150,150),
(63,1712854954,1712854954,1,7,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','a59f18c7c0bcf473370762c0e5f3b8a1de102d23','Image.CropScaleMask','cbbee8c540',45,45),
(64,1712854962,1712854962,1,12,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','0fdf98a9df9086bf09e9696c9f05f6d11a8cc604','Image.CropScaleMask','7b321c3e7c',150,150),
(65,1712854962,1712854962,1,12,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','0fdf98a9df9086bf09e9696c9f05f6d11a8cc604','Image.CropScaleMask','6dc624d359',45,45),
(66,1712854980,1712854980,1,10,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','6c30fca67fa9a61b2e1c9dbb79cad9265f8dafb8','Image.CropScaleMask','a9c655db4f',150,150),
(67,1712854980,1712854980,1,10,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','6c30fca67fa9a61b2e1c9dbb79cad9265f8dafb8','Image.CropScaleMask','885e86afa3',45,45),
(68,1712854987,1712854987,1,13,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','eb99faee4b2c8f732012e2e1f5c86f0a360b9439','Image.CropScaleMask','56392f2eec',200,200),
(69,1712854987,1712854987,1,8,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','a73d3d3573c500a4a470a0bd6a0e5a66656b8fd4','Image.CropScaleMask','66ed3d8fde',200,200),
(70,1712854987,1712854987,1,9,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','4c077802827d6efedd8214fd67f077033ece5fd7','Image.CropScaleMask','3a9dd29a3f',200,200),
(71,1712854987,1712854987,1,7,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','a59f18c7c0bcf473370762c0e5f3b8a1de102d23','Image.CropScaleMask','9cd42d788e',200,200),
(72,1712854987,1712854987,1,12,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','0fdf98a9df9086bf09e9696c9f05f6d11a8cc604','Image.CropScaleMask','634483d123',200,200),
(73,1712854987,1712854987,1,10,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','6c30fca67fa9a61b2e1c9dbb79cad9265f8dafb8','Image.CropScaleMask','3614bca99d',200,200),
(74,1712922949,1712922949,1,13,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','eb99faee4b2c8f732012e2e1f5c86f0a360b9439','Image.CropScaleMask','2efcc4c5bd',32,32),
(75,1712922949,1712922949,1,13,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','eb99faee4b2c8f732012e2e1f5c86f0a360b9439','Image.CropScaleMask','8e44f1e96b',115,115),
(76,1712922999,1712922999,1,15,'/_processed_/9/2/csm_football_field_dummy_picture_d4351d724e.jpg','csm_football_field_dummy_picture_d4351d724e.jpg','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','113704fc12784d14d5500dbc875e4b04e0e142ef','Image.CropScaleMask','d4351d724e',32,32),
(77,1712923000,1712922999,1,15,'/_processed_/9/2/csm_football_field_dummy_picture_180ceb243e.jpg','csm_football_field_dummy_picture_180ceb243e.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','113704fc12784d14d5500dbc875e4b04e0e142ef','Image.CropScaleMask','180ceb243e',166,110),
(78,1712923004,1712923002,1,15,'/_processed_/9/2/csm_football_field_dummy_picture_ba01bf11ef.jpg','csm_football_field_dummy_picture_ba01bf11ef.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','113704fc12784d14d5500dbc875e4b04e0e142ef','Image.CropScaleMask','ba01bf11ef',226,150),
(79,1712923004,1712923002,1,15,'/_processed_/9/2/csm_football_field_dummy_picture_cfa9828caa.jpg','csm_football_field_dummy_picture_cfa9828caa.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','113704fc12784d14d5500dbc875e4b04e0e142ef','Image.CropScaleMask','cfa9828caa',68,45),
(80,1712923013,1712923013,1,6,'/_processed_/b/c/csm_football_player_dummy_057ed8543b.jpg','csm_football_player_dummy_057ed8543b.jpg',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:605.6971514242878;s:4:\"\0*\0y\";d:786.5622188905546;s:8:\"\0*\0width\";d:2248.8755622188905;s:9:\"\0*\0height\";d:2248.8755622188905;}}','29b19750dd80d89542abe95231735d66c428e0cb','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','057ed8543b',2249,2249),
(81,1712923134,1712923132,1,15,'/_processed_/9/2/preview_football_field_dummy_picture_50aad639d1.jpg','preview_football_field_dummy_picture_50aad639d1.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','113704fc12784d14d5500dbc875e4b04e0e142ef','Image.Preview','50aad639d1',64,64),
(82,1719235031,1712928469,0,16,'/typo3temp/assets/_processed_/0/8/csm_favicon_2b8f3a9ab6.png','csm_favicon_2b8f3a9ab6.png',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','5548a3844dbcb85360c84671b8168a52db47bef2','Image.CropScaleMask','2b8f3a9ab6',96,96),
(83,1712931536,1712931536,1,15,'/_processed_/9/2/csm_football_field_dummy_picture_ba6d85f7df.jpg','csm_football_field_dummy_picture_ba6d85f7df.jpg',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','113704fc12784d14d5500dbc875e4b04e0e142ef','Image.CropScaleMask','ba6d85f7df',5267,3492),
(84,1719235028,1712934259,0,17,'/typo3temp/assets/_processed_/d/6/csm_15th_charity_tournament_9925c57044.jpg','csm_15th_charity_tournament_9925c57044.jpg',NULL,'a:7:{s:5:\"width\";i:415;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','51d928f5dfa5b0adf81444b0e542182886160add','c8c26d9f6233407d56bad6d07a5d1009c574e05c','Image.CropScaleMask','9925c57044',415,277),
(85,1719235029,1712934259,0,18,'/typo3temp/assets/_processed_/7/6/csm_get_ready_for_another_exciting_matches_263a505d61.jpg','csm_get_ready_for_another_exciting_matches_263a505d61.jpg',NULL,'a:7:{s:5:\"width\";i:415;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','51d928f5dfa5b0adf81444b0e542182886160add','94b5110e18ac2d9468faaef362185f8f5f6e7002','Image.CropScaleMask','263a505d61',415,233),
(86,1719235029,1712934259,0,19,'/typo3temp/assets/_processed_/f/e/csm_our_new_supporter_lunamedia_50a6192e0f.jpg','csm_our_new_supporter_lunamedia_50a6192e0f.jpg',NULL,'a:7:{s:5:\"width\";i:415;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','51d928f5dfa5b0adf81444b0e542182886160add','09bfb0d4a98e2833b7d594fd68a1652d0d256d29','Image.CropScaleMask','50a6192e0f',415,277),
(87,1712939299,1712939004,1,20,'/_processed_/d/8/preview_dummy_player_1_f07822676e.jpg','preview_dummy_player_1_f07822676e.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','7c867e99212925af3e5b0ca722f0fb89a6769623','Image.Preview','f07822676e',0,0),
(88,1712939014,1712939013,1,20,'/_processed_/d/8/csm_dummy_player_1_c05d72c92f.jpg','csm_dummy_player_1_c05d72c92f.jpg','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','7c867e99212925af3e5b0ca722f0fb89a6769623','Image.CropScaleMask','c05d72c92f',32,32),
(89,1712939014,1712939013,1,20,'/_processed_/d/8/csm_dummy_player_1_1d6ca8e778.jpg','csm_dummy_player_1_1d6ca8e778.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','7c867e99212925af3e5b0ca722f0fb89a6769623','Image.CropScaleMask','1d6ca8e778',166,93),
(90,1712939016,1712939015,1,20,'/_processed_/d/8/csm_dummy_player_1_2a44d2609b.jpg','csm_dummy_player_1_2a44d2609b.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','7c867e99212925af3e5b0ca722f0fb89a6769623','Image.CropScaleMask','2a44d2609b',267,150),
(91,1712939016,1712939015,1,20,'/_processed_/d/8/csm_dummy_player_1_d597cc138c.jpg','csm_dummy_player_1_d597cc138c.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','7c867e99212925af3e5b0ca722f0fb89a6769623','Image.CropScaleMask','d597cc138c',80,45),
(92,1712939020,1712939020,1,20,'/_processed_/d/8/csm_dummy_player_1_fcbbb7074b.jpg','csm_dummy_player_1_fcbbb7074b.jpg',NULL,'a:3:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"crop\";N;}','146732fd2c1760bebafbe7c8fcaf26d17d306347','7c867e99212925af3e5b0ca722f0fb89a6769623','Image.CropScaleMask','fcbbb7074b',4000,2251),
(93,1712940200,1712940200,1,20,'',NULL,'','a:3:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"crop\";N;}','8d9eef97c18a1544a224d1e2bb8e794b5d8881e3','7c867e99212925af3e5b0ca722f0fb89a6769623','Image.CropScaleMask','26276c19cc',0,0),
(94,1712940540,1712940532,1,21,'/_processed_/5/2/preview_TestJpegDatei_712fcdd06e.jpg','preview_TestJpegDatei_712fcdd06e.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','e5b0a2e74b81de1cf49bd66d6229ae79156bfee3','Image.Preview','712fcdd06e',64,64),
(95,1712940533,1712940532,1,21,'/_processed_/5/2/csm_TestJpegDatei_f5c281ca4b.jpg','csm_TestJpegDatei_f5c281ca4b.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','e5b0a2e74b81de1cf49bd66d6229ae79156bfee3','Image.CropScaleMask','f5c281ca4b',150,150),
(96,1712940533,1712940532,1,21,'/_processed_/5/2/csm_TestJpegDatei_e977b3b589.jpg','csm_TestJpegDatei_e977b3b589.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','e5b0a2e74b81de1cf49bd66d6229ae79156bfee3','Image.CropScaleMask','e977b3b589',45,45),
(97,1712940537,1712940537,1,21,'/_processed_/5/2/csm_TestJpegDatei_6f4ebd0548.jpg','csm_TestJpegDatei_6f4ebd0548.jpg',NULL,'a:3:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";N;}','925a73bcbee0c1bbe935227b73627233497979d6','e5b0a2e74b81de1cf49bd66d6229ae79156bfee3','Image.CropScaleMask','6f4ebd0548',300,300),
(98,1712940605,1712940545,1,21,'/_processed_/5/2/csm_TestJpegDatei_453487a1a9.jpg','csm_TestJpegDatei_453487a1a9.jpg','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','e5b0a2e74b81de1cf49bd66d6229ae79156bfee3','Image.CropScaleMask','453487a1a9',32,32),
(99,1712940546,1712940545,1,21,'/_processed_/5/2/csm_TestJpegDatei_8707fae375.jpg','csm_TestJpegDatei_8707fae375.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','e5b0a2e74b81de1cf49bd66d6229ae79156bfee3','Image.CropScaleMask','8707fae375',115,115),
(100,1712940627,1712940627,1,6,'/_processed_/b/c/csm_football_player_dummy_2dbc16cb0f.jpg','csm_football_player_dummy_2dbc16cb0f.jpg',NULL,'a:3:{s:5:\"width\";i:300;s:6:\"height\";i:450;s:4:\"crop\";N;}','8bbdc8a9ac1166aa3d92f7ea60b2aae7309d8c8d','d34952523c84b27528f000dcbdc5aab0aeea87be','Image.CropScaleMask','2dbc16cb0f',300,450),
(101,1712941178,1712941177,1,2,'/_processed_/2/9/csm_dummy_picture_football_b8f0d4c2a3.jpg','csm_dummy_picture_football_b8f0d4c2a3.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','91411b5aefea60fd24eb9a6a9b43c5948af06136','Image.CropScaleMask','b8f0d4c2a3',225,150),
(102,1712941178,1712941177,1,2,'/_processed_/2/9/csm_dummy_picture_football_8a252ea937.jpg','csm_dummy_picture_football_8a252ea937.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','91411b5aefea60fd24eb9a6a9b43c5948af06136','Image.CropScaleMask','8a252ea937',68,45),
(103,1712941182,1712941182,1,2,'/_processed_/2/9/csm_dummy_picture_football_d4def2d6b6.jpg','csm_dummy_picture_football_d4def2d6b6.jpg',NULL,'a:3:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";N;}','60473dcbb40e956b51b233ed911d60077665c731','91411b5aefea60fd24eb9a6a9b43c5948af06136','Image.CropScaleMask','d4def2d6b6',300,200),
(104,1719235029,1712942520,0,22,'/typo3temp/assets/_processed_/3/2/csm_event4_e6d15f776c.png','csm_event4_e6d15f776c.png',NULL,'a:7:{s:5:\"width\";i:800;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','05a4adce918047e9ad8b28a702b6c11f88059a88','6a7f22cbcfa41cda40b00d061c33d8c1acb4fcf9','Image.CropScaleMask','e6d15f776c',800,713),
(105,1719235030,1712942520,0,23,'/typo3temp/assets/_processed_/a/6/csm_event5_4f550ef936.png','csm_event5_4f550ef936.png',NULL,'a:7:{s:5:\"width\";i:800;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','05a4adce918047e9ad8b28a702b6c11f88059a88','2d0cfd00b529dcd152b618f552a7e7a730832f46','Image.CropScaleMask','4f550ef936',800,602),
(106,1719235030,1712942520,0,24,'/typo3temp/assets/_processed_/0/9/csm_event1_4ade25bbae.png','csm_event1_4ade25bbae.png',NULL,'a:7:{s:5:\"width\";i:800;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','05a4adce918047e9ad8b28a702b6c11f88059a88','685a62506fa3ca87c2107c04df7d5a74c6e1c8a4','Image.CropScaleMask','4ade25bbae',800,569),
(107,1719235031,1712942520,0,25,'/typo3temp/assets/_processed_/e/5/csm_event2_f037a3ea07.png','csm_event2_f037a3ea07.png',NULL,'a:7:{s:5:\"width\";i:800;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','05a4adce918047e9ad8b28a702b6c11f88059a88','b47c046eeef75e490ac8bedc5e38fc053f0c8dab','Image.CropScaleMask','f037a3ea07',800,1221),
(108,1718874025,1718874025,1,26,'/_processed_/e/8/preview_example_pic_1_8678c4c37d.jpg','preview_example_pic_1_8678c4c37d.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','4e8598c9ec0543c8c1ae1d3f069ccd380eb05900','Image.Preview','8678c4c37d',64,43),
(109,1718874038,1718874038,1,27,'/_processed_/b/5/preview_example_pic_2_9e068922a7.jpg','preview_example_pic_2_9e068922a7.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','cad0c82d236e73cd0491329c502242a01c252c6a','Image.Preview','9e068922a7',49,64),
(110,1718874049,1718874049,1,28,'/_processed_/5/1/preview_example_pic_3_f637b5ed92.jpg','preview_example_pic_3_f637b5ed92.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','0e68dfe04b674d0cd74e8e3204056622317a1c22','Image.Preview','f637b5ed92',43,64),
(111,1718874213,1718874073,1,26,'/_processed_/e/8/csm_example_pic_1_cb43538012.jpg','csm_example_pic_1_cb43538012.jpg','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','4e8598c9ec0543c8c1ae1d3f069ccd380eb05900','Image.CropScaleMask','cb43538012',32,32),
(112,1718874075,1718874073,1,26,'/_processed_/e/8/csm_example_pic_1_5865190f69.jpg','csm_example_pic_1_5865190f69.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','4e8598c9ec0543c8c1ae1d3f069ccd380eb05900','Image.CropScaleMask','5865190f69',166,111),
(113,1718874213,1718874073,1,27,'/_processed_/b/5/csm_example_pic_2_5ee43cb756.jpg','csm_example_pic_2_5ee43cb756.jpg','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','cad0c82d236e73cd0491329c502242a01c252c6a','Image.CropScaleMask','5ee43cb756',32,32),
(114,1718874075,1718874073,1,27,'/_processed_/b/5/csm_example_pic_2_af59eb0a1a.jpg','csm_example_pic_2_af59eb0a1a.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','cad0c82d236e73cd0491329c502242a01c252c6a','Image.CropScaleMask','af59eb0a1a',88,115),
(115,1718874213,1718874073,1,28,'/_processed_/5/1/csm_example_pic_3_dbca598886.jpg','csm_example_pic_3_dbca598886.jpg','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','0e68dfe04b674d0cd74e8e3204056622317a1c22','Image.CropScaleMask','dbca598886',32,32),
(116,1718874075,1718874073,1,28,'/_processed_/5/1/csm_example_pic_3_b6d1d97bcc.jpg','csm_example_pic_3_b6d1d97bcc.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','0e68dfe04b674d0cd74e8e3204056622317a1c22','Image.CropScaleMask','b6d1d97bcc',77,115),
(117,1718874078,1718874076,1,26,'/_processed_/e/8/csm_example_pic_1_a4c3e96374.jpg','csm_example_pic_1_a4c3e96374.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','4e8598c9ec0543c8c1ae1d3f069ccd380eb05900','Image.CropScaleMask','a4c3e96374',225,150),
(118,1718874078,1718874076,1,26,'/_processed_/e/8/csm_example_pic_1_542d8d7db0.jpg','csm_example_pic_1_542d8d7db0.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','4e8598c9ec0543c8c1ae1d3f069ccd380eb05900','Image.CropScaleMask','542d8d7db0',68,45),
(119,1718874081,1718874081,1,26,'/_processed_/e/8/csm_example_pic_1_cf9f8f138c.jpg','csm_example_pic_1_cf9f8f138c.jpg',NULL,'a:3:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";N;}','60473dcbb40e956b51b233ed911d60077665c731','4e8598c9ec0543c8c1ae1d3f069ccd380eb05900','Image.CropScaleMask','cf9f8f138c',300,200),
(120,1718874218,1718874217,1,27,'/_processed_/b/5/csm_example_pic_2_2df713b93e.jpg','csm_example_pic_2_2df713b93e.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','cad0c82d236e73cd0491329c502242a01c252c6a','Image.CropScaleMask','2df713b93e',115,150),
(121,1718874218,1718874217,1,27,'/_processed_/b/5/csm_example_pic_2_bcfb936740.jpg','csm_example_pic_2_bcfb936740.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','cad0c82d236e73cd0491329c502242a01c252c6a','Image.CropScaleMask','bcfb936740',34,45),
(122,1718874218,1718874218,1,28,'/_processed_/5/1/csm_example_pic_3_1ad7b3500a.jpg','csm_example_pic_3_1ad7b3500a.jpg','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','0e68dfe04b674d0cd74e8e3204056622317a1c22','Image.CropScaleMask','1ad7b3500a',100,150),
(123,1718874218,1718874218,1,28,'/_processed_/5/1/csm_example_pic_3_d11540f740.jpg','csm_example_pic_3_d11540f740.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','0e68dfe04b674d0cd74e8e3204056622317a1c22','Image.CropScaleMask','d11540f740',30,45),
(127,1718914479,1718914479,1,30,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','d5f778152c3bc5dc0d76aa0170e55aca1c9c9542','Image.Preview','2b7fde32ef',64,20),
(128,1718914507,1718914507,1,31,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','43267405a98d873f9312e230d6b571602f8893f8','Image.Preview','0b1cd0f605',64,64),
(129,1718914521,1718914521,1,32,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','88aee2161aa84d862cabe13ad5d35e8f6808c75e','Image.Preview','34e02b24e8',64,64),
(131,1718914635,1718914635,1,34,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','7218785d471215990f609e67eba516ddadfd62f9','Image.Preview','dc173e7704',64,14),
(132,1718914783,1718914783,1,34,'/_processed_/d/3/csm_KM2_logo_test_52595b32f0.svg','csm_KM2_logo_test_52595b32f0.svg',NULL,'a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','7218785d471215990f609e67eba516ddadfd62f9','Image.CropScaleMask','52595b32f0',32,32),
(133,1718914783,1718914783,1,34,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','7218785d471215990f609e67eba516ddadfd62f9','Image.CropScaleMask','7fbf1e920d',166,38),
(134,1718914783,1718914783,1,31,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','43267405a98d873f9312e230d6b571602f8893f8','Image.CropScaleMask','a8254353fa',32,32),
(135,1718914783,1718914783,1,31,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','43267405a98d873f9312e230d6b571602f8893f8','Image.CropScaleMask','25c21c0981',115,115),
(136,1718914783,1718914783,1,32,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','88aee2161aa84d862cabe13ad5d35e8f6808c75e','Image.CropScaleMask','6b8731d305',32,32),
(137,1718914783,1718914783,1,32,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','88aee2161aa84d862cabe13ad5d35e8f6808c75e','Image.CropScaleMask','c80cd99bdc',115,115),
(138,1718914783,1718914783,1,30,'/_processed_/3/8/csm_logo_queo_test_c21cd4c338.svg','csm_logo_queo_test_c21cd4c338.svg',NULL,'a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','d5f778152c3bc5dc0d76aa0170e55aca1c9c9542','Image.CropScaleMask','c21cd4c338',32,32),
(139,1718914783,1718914783,1,30,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','d5f778152c3bc5dc0d76aa0170e55aca1c9c9542','Image.CropScaleMask','f41a711c19',166,53),
(145,1718914894,1718914894,1,30,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','d5f778152c3bc5dc0d76aa0170e55aca1c9c9542','Image.CropScaleMask','1166040b4d',470,150),
(146,1718914894,1718914894,1,30,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','d5f778152c3bc5dc0d76aa0170e55aca1c9c9542','Image.CropScaleMask','cdb656939a',141,45),
(147,1718914903,1718914903,1,30,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','d5f778152c3bc5dc0d76aa0170e55aca1c9c9542','Image.CropScaleMask','7904334b77',200,64),
(148,1718914977,1718914977,1,35,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','3b36871c47154d0bd3b023dae2833ae24e9e8913','Image.Preview','c890df325c',64,64),
(149,1718914989,1718914989,1,35,'',NULL,'','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','3b36871c47154d0bd3b023dae2833ae24e9e8913','Image.CropScaleMask','4992b2f712',32,32),
(150,1718914989,1718914989,1,35,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','3b36871c47154d0bd3b023dae2833ae24e9e8913','Image.CropScaleMask','f0c450f922',115,115),
(151,1718914992,1718914992,1,35,'',NULL,'','a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}','55d97d4e532f03dbc8a5053eac06a25a43ca2e20','3b36871c47154d0bd3b023dae2833ae24e9e8913','Image.Preview','4bc42b0afc',150,150),
(152,1718914999,1718914999,1,33,'/_processed_/b/4/preview_TYPO3_logo_test_f89207873d.png','preview_TYPO3_logo_test_f89207873d.png','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','8dec4422baf63b4d058a4c1149fac163857468d5','Image.Preview','f89207873d',64,27),
(153,1718915020,1718915006,1,33,'/_processed_/b/4/csm_TYPO3_logo_test_15db64db7a.png','csm_TYPO3_logo_test_15db64db7a.png','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','8dec4422baf63b4d058a4c1149fac163857468d5','Image.CropScaleMask','15db64db7a',32,32),
(154,1718915006,1718915006,1,33,'/_processed_/b/4/csm_TYPO3_logo_test_7c0ece6855.png','csm_TYPO3_logo_test_7c0ece6855.png','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','8dec4422baf63b4d058a4c1149fac163857468d5','Image.CropScaleMask','7c0ece6855',166,70),
(155,1718915021,1718915021,1,33,'/_processed_/b/4/csm_TYPO3_logo_test_949d49553a.png','csm_TYPO3_logo_test_949d49553a.png','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','8dec4422baf63b4d058a4c1149fac163857468d5','Image.CropScaleMask','949d49553a',345,146),
(156,1718915022,1718914571,1,33,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','8dec4422baf63b4d058a4c1149fac163857468d5','Image.CropScaleMask','15981664da',106,45),
(157,1718915026,1718915026,1,33,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','8dec4422baf63b4d058a4c1149fac163857468d5','Image.CropScaleMask','8a32b1cedd',0,0),
(158,1718915041,1718915041,1,35,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','3b36871c47154d0bd3b023dae2833ae24e9e8913','Image.CropScaleMask','1567bcef72',150,150),
(159,1718915041,1718915041,1,35,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','3b36871c47154d0bd3b023dae2833ae24e9e8913','Image.CropScaleMask','ca454032d1',45,45),
(160,1718915054,1718915054,1,34,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','7218785d471215990f609e67eba516ddadfd62f9','Image.CropScaleMask','8cc9e54161',659,149),
(161,1718915054,1718915054,1,34,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','7218785d471215990f609e67eba516ddadfd62f9','Image.CropScaleMask','e818a3d20d',145,33),
(162,1718915062,1718915062,1,32,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','88aee2161aa84d862cabe13ad5d35e8f6808c75e','Image.CropScaleMask','3e663a283b',150,150),
(163,1718915062,1718915062,1,32,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','88aee2161aa84d862cabe13ad5d35e8f6808c75e','Image.CropScaleMask','a59b1b1024',45,45),
(164,1718915074,1718915074,1,31,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','43267405a98d873f9312e230d6b571602f8893f8','Image.CropScaleMask','273031d734',150,150),
(165,1718915074,1718915074,1,31,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','43267405a98d873f9312e230d6b571602f8893f8','Image.CropScaleMask','88782fea84',45,45),
(166,1718915079,1718915079,1,35,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','3b36871c47154d0bd3b023dae2833ae24e9e8913','Image.CropScaleMask','98dae8d242',200,200),
(167,1718915079,1718915079,1,34,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','7218785d471215990f609e67eba516ddadfd62f9','Image.CropScaleMask','e9c09d0ea6',200,45),
(168,1718915079,1718915079,1,32,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','88aee2161aa84d862cabe13ad5d35e8f6808c75e','Image.CropScaleMask','7cfdd59734',200,200),
(169,1718915079,1718915079,1,31,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','43267405a98d873f9312e230d6b571602f8893f8','Image.CropScaleMask','696e86295c',200,200),
(170,1718915178,1718915178,1,36,'',NULL,'','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','cf356deead1b6d0000b4fadb0754764a761468b1','Image.Preview','ac24d16044',64,36),
(171,1718915184,1718915184,1,36,'/_processed_/f/4/csm_in2code_logo_test_9c32a02947.svg','csm_in2code_logo_test_9c32a02947.svg',NULL,'a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','cf356deead1b6d0000b4fadb0754764a761468b1','Image.CropScaleMask','9c32a02947',32,32),
(172,1718915184,1718915184,1,36,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','cf356deead1b6d0000b4fadb0754764a761468b1','Image.CropScaleMask','a248241374',166,92),
(173,1718915206,1718915206,1,36,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','cf356deead1b6d0000b4fadb0754764a761468b1','Image.CropScaleMask','110d96e1c1',270,150),
(174,1718915206,1718915206,1,36,'',NULL,'','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','cf356deead1b6d0000b4fadb0754764a761468b1','Image.CropScaleMask','13c4a92511',81,45),
(175,1718915310,1718915310,1,36,'',NULL,'','a:7:{s:5:\"width\";i:200;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f510c047a7d4c40c573888efbdf65b4eb635dba3','cf356deead1b6d0000b4fadb0754764a761468b1','Image.CropScaleMask','ed842b66ef',200,111);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `autoplay` smallint(5) unsigned NOT NULL DEFAULT 0,
  `crop` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(2048) NOT NULL DEFAULT '',
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES
(1,1,1712930216,1712679321,1,1,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'tt_content','image',3,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',3,1),
(2,1,1718870271,1712682806,1,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,'tt_content','assets',6,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0.15142428785607195,\"y\":0.13109370314842578,\"width\":0.5622188905547226,\"height\":0.3748125937031484},\"selectedRatio\":\"1:1\",\"focusArea\":null}}',NULL,'',2,1),
(3,1,1712854983,1712854983,0,0,0,0,NULL,'',0,0,0,0,'tx_football_domain_model_sponsor','image',13,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',1,1),
(4,1,1712854983,1712854983,0,0,0,0,NULL,'',0,0,0,0,'tx_football_domain_model_sponsor','image',8,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',2,1),
(5,1,1712854983,1712854983,0,0,0,0,NULL,'',0,0,0,0,'tx_football_domain_model_sponsor','image',9,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',3,1),
(6,1,1712854983,1712854983,0,0,0,0,NULL,'',0,0,0,0,'tx_football_domain_model_sponsor','image',7,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',4,1),
(7,1,1712854983,1712854983,0,0,0,0,NULL,'',0,0,0,0,'tx_football_domain_model_sponsor','image',12,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',5,1),
(8,1,1712854983,1712854983,0,0,0,0,NULL,'',0,0,0,0,'tx_football_domain_model_sponsor','image',10,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',6,1),
(9,1,1713626388,1712923010,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'tt_content','image',15,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',3,1),
(10,12,1712940534,1712939017,1,0,0,0,NULL,'',0,0,0,0,'tt_content','assets',20,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',15,1),
(11,12,1712940617,1712940534,1,0,0,0,NULL,'',0,0,0,0,'tt_content','assets',21,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',15,1),
(12,12,1712942889,1712940625,1,0,0,0,NULL,'',0,0,0,0,'tt_content','assets',6,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',15,1),
(13,1,1712941278,1712941179,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'tt_content','assets',2,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',7,1),
(14,12,1718816365,1712942889,1,0,0,0,NULL,'',0,0,0,0,'tt_content','assets',2,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',15,1),
(15,2,1718874189,1718874078,1,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,'tt_content','assets',26,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',26,1),
(16,5,1718914901,1718914817,0,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,'tx_football_domain_model_sponsor','image',33,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',7,1),
(17,5,1718915307,1718914901,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'tx_football_domain_model_sponsor','image',30,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',8,1),
(18,5,1718915025,1718915025,0,0,0,0,NULL,'',0,0,0,0,'tx_football_domain_model_sponsor','image',33,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',9,1),
(19,5,1718915307,1718915076,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'tx_football_domain_model_sponsor','image',35,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',10,1),
(20,5,1718915307,1718915076,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'tx_football_domain_model_sponsor','image',34,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',11,1),
(21,5,1718915307,1718915076,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'tx_football_domain_model_sponsor','image',32,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',12,1),
(22,5,1718915307,1718915076,0,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,'tx_football_domain_model_sponsor','image',31,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',13,1),
(23,5,1718915307,1718915307,0,0,0,0,NULL,'',0,0,0,0,'tx_football_domain_model_sponsor','image',36,NULL,NULL,0,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',NULL,'',14,1);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `processingfolder` tinytext DEFAULT NULL,
  `is_browsable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_default` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_writable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_online` smallint(5) unsigned NOT NULL DEFAULT 0,
  `auto_extract_metadata` smallint(5) unsigned NOT NULL DEFAULT 0,
  `configuration` longtext DEFAULT NULL,
  `driver` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES
(1,0,1712499613,1712499613,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin',1,NULL,1,1,1,1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','Local');
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `identifier` longtext DEFAULT NULL,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `history_data` mediumtext DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  `correlation_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES
(1,1712586908,1,'BE',1,0,1,'pages','{\"doktype\":\"1\",\"slug\":\"\\/\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":0,\"sorting\":256,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Home\",\"crdate\":1712586908,\"t3ver_stage\":0,\"tstamp\":1712586908,\"uid\":1}',0,'0400$de8e4397eb04881a67b6ae33bf0f3834:e175f7045d7ccbfb26ffcf279422c2e5'),
(2,1712586908,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"slug\\\":\\\"\\\"}\"}}',0,'0400$5e6585ecd5cce7044f839d6831ea4ff2:e175f7045d7ccbfb26ffcf279422c2e5'),
(3,1712586916,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"is_siteroot\":0,\"hidden\":1,\"fe_group\":\"0\",\"l10n_diffsource\":\"{\\\"slug\\\":\\\"\\\"}\"},\"newRecord\":{\"is_siteroot\":\"1\",\"hidden\":\"0\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$09d62c890cbcbe82010edf965271ac5c:e175f7045d7ccbfb26ffcf279422c2e5'),
(4,1712586929,1,'BE',1,0,1,'sys_template','{\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"root\":\"0\",\"basedOn\":\"\",\"includeStaticAfterBasedOn\":\"0\",\"static_file_mode\":\"0\",\"pid\":1,\"sorting\":256,\"title\":\"Template\",\"constants\":\"\",\"config\":\"\",\"clear\":\"0\",\"include_static_file\":\"EXT:football\\/Configuration\\/TypoScript\",\"description\":\"\",\"crdate\":1712586929,\"tstamp\":1712586929,\"uid\":1}',0,'0400$6ef444585d0d8620fbe6a1889408072b:35af6288617af54964e77af08c30949a'),
(5,1712672082,1,'BE',1,0,1,'tt_content','{\"CType\":\"header\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":1,\"sorting\":256,\"header\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712672082,\"t3ver_stage\":0,\"tstamp\":1712672082,\"uid\":1}',0,'0400$45c2f30c0e82e22830922415eac817c2:7fa2c035f26826fe83eeecaaeddc4d40'),
(6,1712672091,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"header\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"FC Bigfoot\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$ebdd128d2fd952c72500b08196d9ccdf:7fa2c035f26826fe83eeecaaeddc4d40'),
(7,1712672166,4,'BE',1,0,1,'tt_content',NULL,0,'0400$b795c6cde03696b66dbf462a6bf83f09:7fa2c035f26826fe83eeecaaeddc4d40'),
(8,1712672418,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"hidden\":0},\"newRecord\":{\"hidden\":\"1\"}}',0,'0400$ef5c652de107dc4829f37c1cae23e765:35af6288617af54964e77af08c30949a'),
(9,1712672677,1,'BE',1,0,2,'pages','{\"doktype\":\"1\",\"slug\":\"\\/news\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":1,\"sorting\":256,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"News\",\"sys_language_uid\":0,\"crdate\":1712672677,\"t3ver_stage\":0,\"tstamp\":1712672677,\"uid\":2}',0,'0400$0298ccae8764b838434d7df9c8aeb364:f11830df10b4b0bca2db34810c2241b3'),
(10,1712673349,1,'BE',1,0,3,'pages','{\"doktype\":\"1\",\"slug\":\"\\/events\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":1,\"sorting\":128,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Events\",\"sys_language_uid\":0,\"crdate\":1712673349,\"t3ver_stage\":0,\"tstamp\":1712673349,\"uid\":3}',0,'0400$beea95b3d2bf8a5059e19ddda3461663:fe15eeb7d49e64e2cea91ab53fcf0db1'),
(11,1712673365,1,'BE',1,0,4,'pages','{\"doktype\":\"1\",\"slug\":\"\\/club\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":1,\"sorting\":512,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Club\",\"sys_language_uid\":0,\"crdate\":1712673365,\"t3ver_stage\":0,\"tstamp\":1712673365,\"uid\":4}',0,'0400$0ab22506f13ecf945b13e1129d357944:412add0b3eb6ec8f1cb6710aea92e21e'),
(12,1712673378,1,'BE',1,0,5,'pages','{\"doktype\":\"1\",\"slug\":\"\\/sponsors\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":1,\"sorting\":64,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Sponsors\",\"sys_language_uid\":0,\"crdate\":1712673378,\"t3ver_stage\":0,\"tstamp\":1712673378,\"uid\":5}',0,'0400$caa8cbeeff15e02b3a9350bc0e80fc31:7ef5a4e3e11db8ac3fea4d7a75468161'),
(13,1712673382,3,'BE',1,0,5,'pages','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Sponsors\",\"pid\":1,\"event_pid\":5,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712673382,\"pid\":1,\"sorting\":768}}',0,'0400$c09ffa2205fbe021c0f571c2bb25d0f0:7ef5a4e3e11db8ac3fea4d7a75468161'),
(14,1712673397,1,'BE',1,0,6,'pages','{\"doktype\":\"1\",\"slug\":\"\\/contact\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":1,\"sorting\":1024,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Contact\",\"sys_language_uid\":0,\"crdate\":1712673397,\"t3ver_stage\":0,\"tstamp\":1712673397,\"uid\":6}',0,'0400$7c378e1631129767171012854e81813b:c75354c439a48dbde16b03ac553a080d'),
(15,1712673451,1,'BE',1,0,7,'pages','{\"doktype\":\"1\",\"slug\":\"\\/club\\/about\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":4,\"sorting\":256,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"About\",\"sys_language_uid\":0,\"crdate\":1712673451,\"t3ver_stage\":0,\"tstamp\":1712673451,\"uid\":7}',0,'0400$0a68f174b0d623215f1a36631ebf3612:df50bb24cbce671cf0d61f42fbbef601'),
(16,1712673487,1,'BE',1,0,8,'pages','{\"doktype\":\"1\",\"slug\":\"\\/club\\/as\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":4,\"sorting\":512,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"As\",\"sys_language_uid\":0,\"crdate\":1712673487,\"t3ver_stage\":0,\"tstamp\":1712673487,\"uid\":8}',0,'0400$1e38edb43497b89971497ed003c69cf3:595375f2fb9f014e091eb08fbc51ec88'),
(17,1712673512,2,'BE',1,0,8,'pages','{\"oldRecord\":{\"title\":\"As\",\"fe_group\":\"0\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"title\":\"Executive board\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$43919af0fff1b062c6c60e47741d9eaa:595375f2fb9f014e091eb08fbc51ec88'),
(18,1712673540,2,'BE',1,0,7,'pages','{\"oldRecord\":{\"title\":\"About\",\"fe_group\":\"0\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"title\":\"About us\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$37bc5251c578c2c8f7533435096449cf:df50bb24cbce671cf0d61f42fbbef601'),
(19,1712674076,1,'BE',1,0,9,'pages','{\"doktype\":\"1\",\"slug\":\"\\/club\\/facility\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":4,\"sorting\":768,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Facility\",\"sys_language_uid\":0,\"crdate\":1712674076,\"t3ver_stage\":0,\"tstamp\":1712674076,\"uid\":9}',0,'0400$8dea5afaa271608f635b9abb201dc5cf:c5e7fa6b7b8146bdcdc78407b052e1d7'),
(20,1712674099,1,'BE',1,0,10,'pages','{\"doktype\":\"1\",\"slug\":\"\\/club\\/membership\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":4,\"sorting\":1024,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Membership\",\"sys_language_uid\":0,\"crdate\":1712674099,\"t3ver_stage\":0,\"tstamp\":1712674099,\"uid\":10}',0,'0400$aca0634a0687026c452a34736e1135d6:e904af5a60392ab3165f5849f5877e45'),
(21,1712674580,4,'BE',1,0,1,'sys_template',NULL,0,'0400$c537b0e50803c3e01956029ed1971ae0:35af6288617af54964e77af08c30949a'),
(22,1712676143,2,'BE',1,0,4,'sys_file_metadata','{\"oldRecord\":{\"title\":null,\"status\":\"\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"title\":\"FC_Bigfoot_Logo\",\"status\":\"1\",\"l10n_diffsource\":\"{\\\"title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"ranking\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"alternative\\\":\\\"\\\",\\\"caption\\\":\\\"\\\",\\\"download_name\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"creator\\\":\\\"\\\",\\\"creator_tool\\\":\\\"\\\",\\\"publisher\\\":\\\"\\\",\\\"source\\\":\\\"\\\",\\\"copyright\\\":\\\"\\\",\\\"language\\\":\\\"\\\",\\\"location_country\\\":\\\"\\\",\\\"location_region\\\":\\\"\\\",\\\"location_city\\\":\\\"\\\",\\\"latitude\\\":\\\"\\\",\\\"longitude\\\":\\\"\\\",\\\"content_creation_date\\\":\\\"\\\",\\\"content_modification_date\\\":\\\"\\\",\\\"visible\\\":\\\"\\\",\\\"status\\\":\\\"\\\",\\\"fe_groups\\\":\\\"\\\",\\\"categories\\\":\\\"\\\"}\"}}',0,'0400$847556c36cc8d611fce63209f286ba09:3579fcab7d87ce942f97f120e288dcaa'),
(23,1712676547,1,'BE',1,0,11,'pages','{\"doktype\":\"1\",\"slug\":\"\\/club\\/trainer\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":4,\"sorting\":640,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Trainer\",\"sys_language_uid\":0,\"crdate\":1712676547,\"t3ver_stage\":0,\"tstamp\":1712676547,\"uid\":11}',0,'0400$6df692392c706a1b0514ddab8382dff7:51bca2bcf14079cc366c99de31802400'),
(24,1712676850,2,'BE',1,0,3,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$53f08e6e29064aca5236f2d722342cc7:fe15eeb7d49e64e2cea91ab53fcf0db1'),
(25,1712676853,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$031b48dde4074516c81a3ed402e3497d:f11830df10b4b0bca2db34810c2241b3'),
(26,1712676856,2,'BE',1,0,4,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$5ed8be5c32278cfccf89b0266b4c956b:412add0b3eb6ec8f1cb6710aea92e21e'),
(27,1712676897,2,'BE',1,0,7,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$891163eb0f110deec07c9a0ff7b050cc:df50bb24cbce671cf0d61f42fbbef601'),
(28,1712676900,2,'BE',1,0,8,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$c0261411ab8a1a14f3ae4666941c16f0:595375f2fb9f014e091eb08fbc51ec88'),
(29,1712676903,2,'BE',1,0,11,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$eb17cac5f70689f8dd9e1d17c6a76e1b:51bca2bcf14079cc366c99de31802400'),
(30,1712676905,2,'BE',1,0,9,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$0fe8476932b3d2cf9894f5e6d97e94a0:c5e7fa6b7b8146bdcdc78407b052e1d7'),
(31,1712676909,2,'BE',1,0,10,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$582c4d9ffea895e29193f31bede66df4:e904af5a60392ab3165f5849f5877e45'),
(32,1712676923,2,'BE',1,0,5,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$e6adbc01f01f4fae55e7cc3fb3d47079:7ef5a4e3e11db8ac3fea4d7a75468161'),
(33,1712676929,2,'BE',1,0,6,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$56af830f1f855f7cd501ae9191ab0413:c75354c439a48dbde16b03ac553a080d'),
(34,1712677342,1,'BE',1,0,12,'pages','{\"doktype\":\"1\",\"slug\":\"\\/club\\/membership\\/teams\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":10,\"sorting\":256,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Teams\",\"sys_language_uid\":0,\"crdate\":1712677342,\"t3ver_stage\":0,\"tstamp\":1712677342,\"uid\":12}',0,'0400$a607eb53a80f54b97246774870598e10:d6f57183d4ec29f4a568a174f36b861b'),
(35,1712677360,3,'BE',1,0,12,'pages','{\"oldPageId\":10,\"newPageId\":1,\"oldData\":{\"header\":\"Teams\",\"pid\":10,\"event_pid\":12,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712677360,\"pid\":1,\"sorting\":1280}}',0,'0400$d8a1cacfa1ad46d552eaa89075875d5b:d6f57183d4ec29f4a568a174f36b861b'),
(36,1712677366,3,'BE',1,0,12,'pages','{\"oldPageId\":1,\"newPageId\":10,\"oldData\":{\"header\":\"Teams\",\"pid\":1,\"event_pid\":12,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712677366,\"pid\":10,\"sorting\":256}}',0,'0400$c61a87407a59f6e97e1331c687ef156c:d6f57183d4ec29f4a568a174f36b861b'),
(37,1712677417,3,'BE',1,0,12,'pages','{\"oldPageId\":10,\"newPageId\":1,\"oldData\":{\"header\":\"Teams\",\"pid\":10,\"event_pid\":12,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712677417,\"pid\":1,\"sorting\":896}}',0,'0400$296aa7d88333c2e6886b6af3e0a53628:d6f57183d4ec29f4a568a174f36b861b'),
(38,1712677423,3,'BE',1,0,12,'pages','{\"oldPageId\":1,\"newPageId\":10,\"oldData\":{\"header\":\"Teams\",\"pid\":1,\"event_pid\":12,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712677423,\"pid\":10,\"sorting\":256}}',0,'0400$4fea2dac73e645628923d0a7e8d3ab58:d6f57183d4ec29f4a568a174f36b861b'),
(39,1712677438,3,'BE',1,0,12,'pages','{\"oldPageId\":10,\"newPageId\":1,\"oldData\":{\"header\":\"Teams\",\"pid\":10,\"event_pid\":12,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712677438,\"pid\":1,\"sorting\":896}}',0,'0400$bc502f98a73a774704f17be5b103bab4:d6f57183d4ec29f4a568a174f36b861b'),
(40,1712677447,3,'BE',1,0,12,'pages','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Teams\",\"pid\":1,\"event_pid\":12,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712677447,\"pid\":1,\"sorting\":640}}',0,'0400$0c91e04a5522e5c47972550d1972f6ae:d6f57183d4ec29f4a568a174f36b861b'),
(41,1712677463,2,'BE',1,0,12,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$6db6af1f9838070827bd8b975887e077:d6f57183d4ec29f4a568a174f36b861b'),
(42,1712677935,2,'BE',1,0,9,'pages','{\"oldRecord\":{\"title\":\"Facility\",\"slug\":\"\\/club\\/facility\",\"fe_group\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"},\"newRecord\":{\"title\":\"Stadion\",\"slug\":\"\\/club\\/stadion\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$400a43b06e6d7a3368a20b37d84da070:c5e7fa6b7b8146bdcdc78407b052e1d7'),
(43,1712679228,1,'BE',1,0,2,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":1,\"sorting\":256,\"header\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"imageborder\":\"0\",\"image_zoom\":\"0\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712679228,\"t3ver_stage\":0,\"tstamp\":1712679228,\"uid\":2}',0,'0400$33a9cf498d168b67489394ced5ba4692:01dbc21fdb1263685b9147b3b1596ea8'),
(44,1712679321,1,'BE',1,0,3,'tt_content','{\"CType\":\"hero\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":1,\"sorting\":128,\"header\":\"FC Bigfoot\",\"header_link\":\"\",\"subheader\":\"\",\"button_text\":\"\",\"button_link\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712679321,\"t3ver_stage\":0,\"tstamp\":1712679321,\"uid\":3}',0,'0400$846d4e543d8590305ad3cc128ea7f6e7:b92300cfb5d1d3645c9cb212a7f56c1f'),
(45,1712679321,1,'BE',1,0,1,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"3\",\"sys_language_uid\":0,\"crdate\":1712679321,\"t3ver_stage\":0,\"tstamp\":1712679321,\"uid\":1}',0,'0400$846d4e543d8590305ad3cc128ea7f6e7:4cf496f597e7b095ce8b755e6cec3c0c'),
(46,1712679323,2,'BE',1,0,3,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"button_text\\\":\\\"\\\",\\\"button_link\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$bb7cb94a4acbf3a37d62f91fafe67f38:b92300cfb5d1d3645c9cb212a7f56c1f'),
(47,1712679323,2,'BE',1,0,1,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$bb7cb94a4acbf3a37d62f91fafe67f38:4cf496f597e7b095ce8b755e6cec3c0c'),
(48,1712679709,1,'BE',1,0,13,'pages','{\"doktype\":\"1\",\"slug\":\"\\/club\\/membership\\/teams\\/senior\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":12,\"sorting\":256,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Senior\",\"sys_language_uid\":0,\"crdate\":1712679709,\"t3ver_stage\":0,\"tstamp\":1712679709,\"uid\":13}',0,'0400$9c84f67e2d30427ce95b563f9f66afb9:8a89606121863fe3a2ec2ea63ba83d69'),
(49,1712679716,1,'BE',1,0,14,'pages','{\"doktype\":\"1\",\"slug\":\"\\/club\\/membership\\/teams\\/youth\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":12,\"sorting\":512,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Youth\",\"sys_language_uid\":0,\"crdate\":1712679716,\"t3ver_stage\":0,\"tstamp\":1712679716,\"uid\":14}',0,'0400$b65d3e8bdca89f79fdcbf4b69f7b2377:aaa274fb7a5f76c9749f1b2c8fba84a4'),
(50,1712679728,2,'BE',1,0,13,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$4b3ab212fc7c201277c15ded7e2cef55:8a89606121863fe3a2ec2ea63ba83d69'),
(51,1712679734,2,'BE',1,0,14,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$dff38604acc07773dfa75b5a0fb0b458:aaa274fb7a5f76c9749f1b2c8fba84a4'),
(52,1712679770,1,'BE',1,0,15,'pages','{\"doktype\":\"4\",\"slug\":\"\\/club\\/contact\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":4,\"sorting\":896,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Contact\",\"sys_language_uid\":0,\"crdate\":1712679770,\"t3ver_stage\":0,\"tstamp\":1712679770,\"uid\":15}',0,'0400$84fe0ca7cbea981b6eb47009ee41901d:c97934f122918253f51c81fbe45fd105'),
(53,1712679814,2,'BE',1,0,15,'pages','{\"oldRecord\":{\"shortcut\":0,\"fe_group\":\"0\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"shortcut\":\"6\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"shortcut_mode\\\":\\\"\\\",\\\"shortcut\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$c5318575db9bb34907d1273039ac1d80:c97934f122918253f51c81fbe45fd105'),
(54,1712679820,2,'BE',1,0,15,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"shortcut_mode\\\":\\\"\\\",\\\"shortcut\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$67d6343a47b1e17456e3108c9d5504f9:c97934f122918253f51c81fbe45fd105'),
(55,1712679828,3,'BE',1,0,10,'pages','{\"oldPageId\":4,\"newPageId\":4,\"oldData\":{\"header\":\"Membership\",\"pid\":4,\"event_pid\":10,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712679828,\"pid\":4,\"sorting\":832}}',0,'0400$19473a9cd04aa28523dbdfe4d20d1572:e904af5a60392ab3165f5849f5877e45'),
(56,1712681845,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"header\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"Player of the month\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imagewidth\\\":\\\"\\\",\\\"imageheight\\\":\\\"\\\",\\\"imageborder\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"imagecols\\\":\\\"\\\",\\\"image_zoom\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$ba88a4dc3095aba28c3f0a1e60c00e2a:01dbc21fdb1263685b9147b3b1596ea8'),
(57,1712682806,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"subheader\":\"\",\"bodytext\":\"\"},\"newRecord\":{\"subheader\":\"Maya Williams\",\"bodytext\":\"<p>For the third time in a row, our Maya has been voted player of the month. She came out on top after John Smith was voted player of the month in February and March. Congratulations Maya!<\\/p>\"}}',0,'0400$99f7745baa3441f01fbdefb490d00c0e:01dbc21fdb1263685b9147b3b1596ea8'),
(58,1712682806,1,'BE',1,0,2,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"height\\\":0.375,\\\"width\\\":0.5622188905547226,\\\"x\\\":0.15142428785607195,\\\"y\\\":0.131},\\\"selectedRatio\\\":\\\"1:1\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"6\",\"sys_language_uid\":0,\"crdate\":1712682806,\"t3ver_stage\":0,\"tstamp\":1712682806,\"uid\":2}',0,'0400$99f7745baa3441f01fbdefb490d00c0e:814fc0f720dfab882655a795e23a5b66'),
(59,1712682806,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"subheader\":\"\",\"bodytext\":\"\"},\"newRecord\":{\"subheader\":\"Maya Williams\",\"bodytext\":\"<p>For the third time in a row, our Maya has been voted player of the month. She came out on top after John Smith was voted player of the month in February and March. Congratulations Maya!<\\/p>\"}}',0,'0400$99f7745baa3441f01fbdefb490d00c0e:01dbc21fdb1263685b9147b3b1596ea8'),
(60,1712755323,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"header_layout\":0,\"bodytext\":\"<p>For the third time in a row, our Maya has been voted player of the month. She came out on top after John Smith was voted player of the month in February and March. Congratulations Maya!<\\/p>\",\"imageorient\":0,\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imagewidth\\\":\\\"\\\",\\\"imageheight\\\":\\\"\\\",\\\"imageborder\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"imagecols\\\":\\\"\\\",\\\"image_zoom\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"header_layout\":\"2\",\"bodytext\":\"<p>For the third time in a row, our Maya has been voted player of the month. Congratulations Maya!<\\/p>\",\"imageorient\":\"25\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$6c826a7411c02f7d788d9d37619ed949:01dbc21fdb1263685b9147b3b1596ea8'),
(61,1712755323,2,'BE',1,0,2,'sys_file_reference','{\"oldRecord\":{\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"height\\\":0.375,\\\"width\\\":0.5622188905547226,\\\"x\\\":0.15142428785607195,\\\"y\\\":0.131},\\\"selectedRatio\\\":\\\"1:1\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0.15142428785607195,\\\"y\\\":0.13109370314842578,\\\"width\\\":0.5622188905547226,\\\"height\\\":0.3748125937031484},\\\"selectedRatio\\\":\\\"1:1\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$6c826a7411c02f7d788d9d37619ed949:814fc0f720dfab882655a795e23a5b66'),
(62,1712825506,4,'BE',1,0,13,'pages',NULL,0,'0400$779a83a1f904179fd8edde73082c34ba:8a89606121863fe3a2ec2ea63ba83d69'),
(63,1712825510,4,'BE',1,0,14,'pages',NULL,0,'0400$f429506b847202760858f55cda8394c7:aaa274fb7a5f76c9749f1b2c8fba84a4'),
(64,1712825525,2,'BE',1,0,12,'pages','{\"oldRecord\":{\"title\":\"Teams\",\"slug\":\"\\/club\\/membership\\/teams\",\"fe_group\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"},\"newRecord\":{\"title\":\"Team\",\"slug\":\"\\/team\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$80509109f780c8b4b6534bc78f4cbdc7:d6f57183d4ec29f4a568a174f36b861b'),
(65,1712846894,1,'BE',1,0,1,'index_config','{\"hidden\":\"1\",\"starttime\":0,\"records_indexonchange\":0,\"timer_next_indexing\":0,\"timer_offset\":3600,\"timer_frequency\":\"86400\",\"recordsbatch\":0,\"pid\":1,\"type\":\"1\",\"title\":\"Pages\",\"description\":\"\",\"crdate\":1712846894,\"tstamp\":1712846894,\"uid\":1}',0,'0400$51c715135d21f5332a161a98510465b2:b391350c8855ae81759286d44fd3e1f9'),
(66,1712846898,2,'BE',1,0,1,'index_config','{\"oldRecord\":{\"table2index\":\"\"},\"newRecord\":{\"table2index\":\"pages\"}}',0,'0400$bda992d242f96effc7a12048281ef4bc:b391350c8855ae81759286d44fd3e1f9'),
(67,1712846912,1,'BE',1,0,2,'index_config','{\"hidden\":\"1\",\"starttime\":0,\"records_indexonchange\":0,\"timer_next_indexing\":0,\"timer_offset\":3600,\"timer_frequency\":\"86400\",\"recordsbatch\":0,\"pid\":1,\"type\":\"1\",\"title\":\"Content\",\"description\":\"\",\"crdate\":1712846912,\"tstamp\":1712846912,\"uid\":2}',0,'0400$1e1daca2e435cf0c0b0d76d0b833d242:05fc983104697bf1db8c3f6521163963'),
(68,1712846923,2,'BE',1,0,2,'index_config','{\"oldRecord\":{\"table2index\":\"\"},\"newRecord\":{\"table2index\":\"tt_content\"}}',0,'0400$742c701fb5e604c179b7b3305013b1c5:05fc983104697bf1db8c3f6521163963'),
(69,1712846928,2,'BE',1,0,1,'index_config','{\"oldRecord\":{\"hidden\":1},\"newRecord\":{\"hidden\":\"0\"}}',0,'0400$6a8a890c6dba44d202ec8af3b7630a1d:b391350c8855ae81759286d44fd3e1f9'),
(70,1712846928,2,'BE',1,0,2,'index_config','{\"oldRecord\":{\"hidden\":1},\"newRecord\":{\"hidden\":\"0\"}}',0,'0400$fc6fa3fdecf4efe5cc96761c8217cafb:05fc983104697bf1db8c3f6521163963'),
(71,1712846933,2,'BE',1,0,1,'index_config','{\"oldRecord\":{\"type\":1},\"newRecord\":{\"type\":\"4\"}}',0,'0400$9c289ca859652946c739d92f683e60e6:b391350c8855ae81759286d44fd3e1f9'),
(72,1712846940,2,'BE',1,0,1,'index_config','{\"oldRecord\":{\"alternative_source_pid\":0},\"newRecord\":{\"alternative_source_pid\":\"1\"}}',0,'0400$959734d1a3383676c48c788c856567ca:b391350c8855ae81759286d44fd3e1f9'),
(73,1712846952,1,'BE',1,0,16,'pages','{\"doktype\":\"1\",\"slug\":\"\\/search\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":1,\"sorting\":64,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Search\",\"sys_language_uid\":0,\"crdate\":1712846952,\"t3ver_stage\":0,\"tstamp\":1712846952,\"uid\":16}',0,'0400$a222cd9967f2e2c926efed1ae27967f8:878fab4218e507eb25dda6ac21dd7ff1'),
(74,1712846955,3,'BE',1,0,16,'pages','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Search\",\"pid\":1,\"event_pid\":16,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712846955,\"pid\":1,\"sorting\":1280}}',0,'0400$b0a28396e3cfecc4aba4c7e0846089bf:878fab4218e507eb25dda6ac21dd7ff1'),
(75,1712846957,2,'BE',1,0,16,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$0e4bac7d2aa7cb35f30c20b24b4386d4:878fab4218e507eb25dda6ac21dd7ff1'),
(76,1712846967,2,'BE',1,0,16,'pages','{\"oldRecord\":{\"nav_hide\":0,\"fe_group\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"},\"newRecord\":{\"nav_hide\":\"1\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$970e621f7f0a30a7ec25d377f290a3cc:878fab4218e507eb25dda6ac21dd7ff1'),
(77,1712847000,1,'BE',1,0,4,'tt_content','{\"CType\":\"indexedsearch_pi2\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":16,\"sorting\":256,\"header\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712847000,\"t3ver_stage\":0,\"tstamp\":1712847000,\"uid\":4}',0,'0400$8920b5379a1b3d5cfd3abf40f7aff684:4d391f5ef79b8d5d10dffa8a07ca167d'),
(78,1712847040,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"data_privacy\":\"\",\"copyright\":null,\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"data_privacy\":\"t3:\\/\\/page?uid=6\",\"copyright\":\"TYPO3SurfCamp Team4\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\",\\\"data_privacy\\\":\\\"\\\",\\\"copyright\\\":\\\"\\\",\\\"social\\\":\\\"\\\"}\"}}',0,'0400$28a0fe8898c6063ddb7c1ddc126b9c51:e175f7045d7ccbfb26ffcf279422c2e5'),
(79,1712847040,1,'BE',1,0,1,'tx_football_domain_model_link','{\"pid\":1,\"sorting\":256,\"url\":\"https:\\/\\/www.instagram.com\\/typo3_official\\/ _blank\",\"icon\":\"instagram\",\"crdate\":1712847040,\"tstamp\":1712847040,\"uid\":1}',0,'0400$28a0fe8898c6063ddb7c1ddc126b9c51:6149ae871bbec3839ca64c097e120d2a'),
(80,1712847040,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"data_privacy\":\"\",\"copyright\":null,\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"data_privacy\":\"t3:\\/\\/page?uid=6\",\"copyright\":\"TYPO3SurfCamp Team4\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\",\\\"data_privacy\\\":\\\"\\\",\\\"copyright\\\":\\\"\\\",\\\"social\\\":\\\"\\\"}\"}}',0,'0400$28a0fe8898c6063ddb7c1ddc126b9c51:e175f7045d7ccbfb26ffcf279422c2e5'),
(81,1712847058,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"data_privacy\":\"t3:\\/\\/page?uid=6\"},\"newRecord\":{\"data_privacy\":\"\"}}',0,'0400$1c86ba62f5964bd40c4d597c61ab7954:e175f7045d7ccbfb26ffcf279422c2e5'),
(82,1712847093,2,'BE',1,0,16,'pages','{\"oldRecord\":{\"backend_layout\":\"\"},\"newRecord\":{\"backend_layout\":\"pagets__default\"}}',0,'0400$bfdcc494650e6b9182e2667747c268ef:878fab4218e507eb25dda6ac21dd7ff1'),
(83,1712847113,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"copyright\":\"TYPO3SurfCamp Team4\"},\"newRecord\":{\"copyright\":\"TYPO3 Surfcamp Team4\"}}',0,'0400$5f2c11925bd992923ddce75646b75bb9:e175f7045d7ccbfb26ffcf279422c2e5'),
(84,1712847394,2,'BE',1,0,16,'pages','{\"oldRecord\":{\"backend_layout\":\"pagets__default\"},\"newRecord\":{\"backend_layout\":\"\"}}',0,'0400$6bbd4d1ac852bfe1e28d4a3e58bdc426:878fab4218e507eb25dda6ac21dd7ff1'),
(85,1712853802,1,'BE',1,0,5,'tt_content','{\"CType\":\"form_formframework\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":6,\"sorting\":256,\"header\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">EXT:football\\/Configuration\\/Form\\/FormDefinitions\\/contactForm.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712853802,\"t3ver_stage\":0,\"tstamp\":1712853802,\"uid\":5}',0,'0400$4fe5ed9799775cb7244d36a60827df43:c7626fc9bcba6f70beb6ebc085a400db'),
(86,1712853804,2,'BE',1,0,5,'tt_content','{\"oldRecord\":{\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">EXT:football\\/Configuration\\/Form\\/FormDefinitions\\/contactForm.form.yaml<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"settings.persistenceIdentifier\\\">\\n                    <value index=\\\"vDEF\\\">EXT:football\\/Configuration\\/Form\\/FormDefinitions\\/contactForm.form.yaml<\\/value>\\n                <\\/field>\\n                <field index=\\\"settings.overrideFinishers\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"pi_flexform\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$e9aefc9a765e0ff2d70614b729bd1168:c7626fc9bcba6f70beb6ebc085a400db'),
(87,1712853855,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"hidden\":0,\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"hidden\":\"1\",\"l18n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$3b80ea0c370ab01eb426f14feb1d998b:01dbc21fdb1263685b9147b3b1596ea8'),
(88,1712854050,1,'BE',1,0,6,'tt_content','{\"CType\":\"cta\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":192,\"header\":\"\",\"header_link\":\"\",\"subheader\":\"Do you have questions? Would you like to know more? Please contact us \\u2013 we look forward to hearing from you.\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712854050,\"t3ver_stage\":0,\"tstamp\":1712854050,\"uid\":6}',0,'0400$cd3647212bba7b3ecda43434cf1ce89d:c0db6803ab1ec5f70c36e2a72187867b'),
(89,1712854050,1,'BE',1,0,2,'tx_football_domain_model_link','{\"pid\":1,\"sorting\":0,\"title\":\"Get in touch\",\"url\":\"t3:\\/\\/page?uid=6\",\"crdate\":1712854050,\"tstamp\":1712854050,\"uid\":2}',0,'0400$cd3647212bba7b3ecda43434cf1ce89d:07d1a6ecacb7e9673f899f1bfdb2043b'),
(90,1712854166,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"header\":\"\",\"subheader\":\"Do you have questions? Would you like to know more? Please contact us \\u2013 we look forward to hearing from you.\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"Do you have questions? Would you like to know more?\",\"subheader\":\"Please contact us \\u2013 we look forward to hearing from you.\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"buttons\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$579fb1f08daaec36c71b9573d12858cb:c0db6803ab1ec5f70c36e2a72187867b'),
(91,1712854206,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"header\":\"Do you have questions? Would you like to know more?\",\"header_link\":\"\",\"subheader\":\"Please contact us \\u2013 we look forward to hearing from you.\"},\"newRecord\":{\"header\":\"Please contact us \\u2013 we look forward to hearing from you.\",\"header_link\":\"Do you have questions? Would you like to know more?\",\"subheader\":\"Do you have questions? Would you like to know more?\"}}',0,'0400$d5c043b707e3f378a69f7fe313e13952:c0db6803ab1ec5f70c36e2a72187867b'),
(92,1712854283,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"header\":\"Please contact us \\u2013 we look forward to hearing from you.\"},\"newRecord\":{\"header\":\"We look forward to hearing from you\"}}',0,'0400$c10834edc7a7b9b3208d7747fec07a5a:c0db6803ab1ec5f70c36e2a72187867b'),
(93,1712854389,1,'BE',1,0,3,'tx_football_domain_model_link','{\"pid\":1,\"sorting\":0,\"title\":\"Suscribe\",\"url\":\"t3:\\/\\/page?uid=10\",\"crdate\":1712854389,\"tstamp\":1712854389,\"uid\":3}',0,'0400$7c413e54678aaf4d97b6c7c69173e1b2:0b658b554012e703e49e09f143552c50'),
(94,1712854412,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"backend_layout\":\"\"},\"newRecord\":{\"backend_layout\":\"pagets__home\"}}',0,'0400$6c88aebf9cabe1b55c34bbc3af749346:e175f7045d7ccbfb26ffcf279422c2e5'),
(95,1712854424,3,'BE',1,0,3,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"FC Bigfoot\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712854424,\"pid\":1,\"sorting\":128}}',0,'0400$b900bfb246a117f28512b8a028db181d:b92300cfb5d1d3645c9cb212a7f56c1f'),
(96,1712854424,2,'BE',1,0,3,'tt_content','{\"oldRecord\":{\"colPos\":0,\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"button_text\\\":\\\"\\\",\\\"button_link\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"colPos\":\"1\",\"l18n_diffsource\":\"{\\\"colPos\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$a4651644bd1d6f866d45a41442e083ea:b92300cfb5d1d3645c9cb212a7f56c1f'),
(97,1712854432,3,'BE',1,0,6,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"We look forward to hearing from you\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712854432,\"pid\":1,\"sorting\":64}}',0,'0400$d50a8fd58c13fe01454b997c30061df1:c0db6803ab1ec5f70c36e2a72187867b'),
(98,1712854432,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"colPos\":0,\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"buttons\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"colPos\":\"3\",\"l18n_diffsource\":\"{\\\"colPos\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$40eecbf07c8aa4fdbb8225c2d6661d63:c0db6803ab1ec5f70c36e2a72187867b'),
(99,1712854816,1,'BE',1,0,7,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":32,\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"linkToTop\":\"0\",\"sys_language_uid\":0,\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712854816,\"t3ver_stage\":0,\"tstamp\":1712854816,\"uid\":7}',0,'0400$6050e9c06264edbea39496cac3678770:ea41b626baac59a1fe0716bc344af5d9'),
(100,1712854983,1,'BE',1,0,8,'tt_content','{\"CType\":\"sponsors\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":48,\"header\":\"Our Biggest Supporters\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712854983,\"t3ver_stage\":0,\"tstamp\":1712854983,\"uid\":8}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:2097d84972a039cb6bfe093b17089287'),
(101,1712854983,1,'BE',1,0,1,'tx_football_domain_model_sponsor','{\"pid\":1,\"sorting\":256,\"title\":\"Luna Media\",\"url\":\"\",\"crdate\":1712854983,\"tstamp\":1712854983,\"uid\":1}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:dfc67fde8bac3784ab3d6669532df058'),
(102,1712854983,1,'BE',1,0,2,'tx_football_domain_model_sponsor','{\"pid\":1,\"sorting\":128,\"title\":\"MESA\",\"url\":\"\",\"crdate\":1712854983,\"tstamp\":1712854983,\"uid\":2}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:cbc666c0eec959d4f4b9b229da58f7b4'),
(103,1712854983,1,'BE',1,0,3,'tx_football_domain_model_sponsor','{\"pid\":1,\"sorting\":64,\"title\":\"Phoenix Logistics\",\"url\":\"\",\"crdate\":1712854983,\"tstamp\":1712854983,\"uid\":3}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:05ac492b513223eaab96ded32f72dbcf'),
(104,1712854983,1,'BE',1,0,4,'tx_football_domain_model_sponsor','{\"pid\":1,\"sorting\":32,\"title\":\"Azul\",\"url\":\"\",\"crdate\":1712854983,\"tstamp\":1712854983,\"uid\":4}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:c79375599d6fe5c1960cac649afe729c'),
(105,1712854983,1,'BE',1,0,5,'tx_football_domain_model_sponsor','{\"pid\":1,\"sorting\":16,\"title\":\"Walrus\",\"url\":\"\",\"crdate\":1712854983,\"tstamp\":1712854983,\"uid\":5}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:b3be37ff0f37d740cd2355742d4a2eee'),
(106,1712854983,1,'BE',1,0,6,'tx_football_domain_model_sponsor','{\"pid\":1,\"sorting\":8,\"title\":\"\",\"url\":\"\",\"crdate\":1712854983,\"tstamp\":1712854983,\"uid\":6}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:0ccd272d3ba05828354daa56f0e5bbd5'),
(107,1712854983,1,'BE',1,0,3,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"13\",\"sys_language_uid\":0,\"crdate\":1712854983,\"t3ver_stage\":0,\"tstamp\":1712854983,\"uid\":3}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:d2c609347a4764200256b39b9425159a'),
(108,1712854983,1,'BE',1,0,4,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"8\",\"sys_language_uid\":0,\"crdate\":1712854983,\"t3ver_stage\":0,\"tstamp\":1712854983,\"uid\":4}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:cea5fcd7b97871880cfe3717d6b52ef4'),
(109,1712854983,1,'BE',1,0,5,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"9\",\"sys_language_uid\":0,\"crdate\":1712854983,\"t3ver_stage\":0,\"tstamp\":1712854983,\"uid\":5}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:5f15a1453f67b933ed3314381f5d67e4'),
(110,1712854983,1,'BE',1,0,6,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"7\",\"sys_language_uid\":0,\"crdate\":1712854983,\"t3ver_stage\":0,\"tstamp\":1712854983,\"uid\":6}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:768f9cd4e98812f969df7ebe17f11b50'),
(111,1712854983,1,'BE',1,0,7,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"12\",\"sys_language_uid\":0,\"crdate\":1712854983,\"t3ver_stage\":0,\"tstamp\":1712854983,\"uid\":7}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:117c97010b9af15cb554d115dba4e316'),
(112,1712854983,1,'BE',1,0,8,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"10\",\"sys_language_uid\":0,\"crdate\":1712854983,\"t3ver_stage\":0,\"tstamp\":1712854983,\"uid\":8}',0,'0400$abdc9a9a93354abc87fcb4d91bc91121:5ff44a4f59fb3bfbe13a2c3ed1d0bd8b'),
(113,1712855043,2,'BE',1,0,6,'pages','{\"oldRecord\":{\"title\":\"Contact\",\"nav_hide\":0,\"fe_group\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"},\"newRecord\":{\"title\":\"Contact Us\",\"nav_hide\":\"1\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$01989c50d0eca554bec458111a3b2938:c75354c439a48dbde16b03ac553a080d'),
(114,1712855584,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"contact\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\",\\\"data_privacy\\\":\\\"\\\",\\\"copyright\\\":\\\"\\\",\\\"social\\\":\\\"\\\"}\"},\"newRecord\":{\"contact\":\"t3:\\/\\/page?uid=6\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\",\\\"contact\\\":\\\"\\\",\\\"data_privacy\\\":\\\"\\\",\\\"copyright\\\":\\\"\\\",\\\"social\\\":\\\"\\\"}\"}}',0,'0400$f115e82da044ed1797b1e130d4976461:e175f7045d7ccbfb26ffcf279422c2e5'),
(115,1712855704,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"header\":\"We look forward to hearing from you\",\"header_link\":\"Do you have questions? Would you like to know more?\",\"l18n_diffsource\":\"{\\\"colPos\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"},\"newRecord\":{\"header\":\"Let\'s keep in touch\",\"header_link\":\"\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"buttons\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$f679bb65897aed0305a743f1e41c4314:c0db6803ab1ec5f70c36e2a72187867b'),
(116,1712855802,2,'BE',1,0,2,'tx_football_domain_model_link','{\"oldRecord\":{\"title\":\"Get in touch\"},\"newRecord\":{\"title\":\"Contact us\"}}',0,'0400$cca5f24d1351828c696f2fdb2c3e0a76:07d1a6ecacb7e9673f899f1bfdb2043b'),
(117,1712855915,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"subheader\":\"Do you have questions? Would you like to know more?\"},\"newRecord\":{\"subheader\":\"Would you like to know more?\"}}',0,'0400$d50d066638caada06142bd43bd7c5d8e:c0db6803ab1ec5f70c36e2a72187867b'),
(118,1712914801,1,'BE',1,0,17,'pages','{\"doktype\":\"1\",\"slug\":\"\\/privacy-policy\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"categories\":\"0\",\"l10n_diffsource\":\"\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"pid\":1,\"sorting\":64,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Privacy Policy\",\"sys_language_uid\":0,\"crdate\":1712914801,\"t3ver_stage\":0,\"tstamp\":1712914801,\"uid\":17}',0,'0400$7e8ca2e0e57961890cda6b338e06a6a2:dd30e16e220c1cff5911b320aa60dbce'),
(119,1712914814,3,'BE',1,0,17,'pages','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Privacy Policy\",\"pid\":1,\"event_pid\":17,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712914814,\"pid\":1,\"sorting\":1152}}',0,'0400$16346ae14dd0e8183b1d480e5c7fc385:dd30e16e220c1cff5911b320aa60dbce'),
(120,1712914817,3,'BE',1,0,16,'pages','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Search\",\"pid\":1,\"event_pid\":16,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712914817,\"pid\":1,\"sorting\":1088}}',0,'0400$737c6a8354a5b4f00c4449ff420c9927:878fab4218e507eb25dda6ac21dd7ff1'),
(121,1712914825,2,'BE',1,0,17,'pages','{\"oldRecord\":{\"hidden\":1,\"nav_hide\":0,\"fe_group\":\"0\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"nav_hide\":\"1\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$025b4ae20672ef07dbbd976dbeaf60f7:dd30e16e220c1cff5911b320aa60dbce'),
(122,1712914841,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"data_privacy\":\"\"},\"newRecord\":{\"data_privacy\":\"t3:\\/\\/page?uid=17\"}}',0,'0400$8045e901292fffc1c5e159b8be267f7b:e175f7045d7ccbfb26ffcf279422c2e5'),
(123,1712914885,1,'BE',1,0,9,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":17,\"sorting\":256,\"header\":\"Privacy Policy\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;<\\/p>\\r\\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. &nbsp;<\\/p>\\r\\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. &nbsp;<\\/p>\\r\\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. &nbsp;<\\/p>\\r\\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. &nbsp;<\\/p>\\r\\n<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. &nbsp;<\\/p>\\r\\n<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. &nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;<\\/p>\\r\\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. &nbsp;<\\/p>\\r\\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. &nbsp;<\\/p>\\r\\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712914885,\"t3ver_stage\":0,\"tstamp\":1712914885,\"uid\":9}',0,'0400$5dfc1ad8995172108aeb4fcabab8785b:367f4f227870d8e2a11496a182574aa3'),
(124,1712917624,1,'BE',1,0,10,'tt_content','{\"CType\":\"news_teaser\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":56,\"header\":\"News\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712917624,\"t3ver_stage\":0,\"tstamp\":1712917624,\"uid\":10}',0,'0400$7ee4951a8ffab1d0c2e1425ebdf469f0:7ea9bfd0f5c1068d25caf6ccac9d6265'),
(125,1712918263,1,'BE',1,0,11,'tt_content','{\"CType\":\"game_results\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"2\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":16,\"header\":\"\",\"file_link\":\"t3:\\/\\/file?uid=14\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712918263,\"t3ver_stage\":0,\"tstamp\":1712918263,\"uid\":11}',0,'0400$f54009f05e4b2d9aded102dc55cae1a6:7a14c618500ae24604910dfdd2f8ff12'),
(126,1712918322,2,'BE',1,0,11,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"game_results_mode\\\":\\\"\\\",\\\"file_link\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$930bd52d35aade7fce7b6290d46ec4c7:7a14c618500ae24604910dfdd2f8ff12'),
(127,1712918486,2,'BE',1,0,11,'tt_content','{\"oldRecord\":{\"file_link\":\"t3:\\/\\/file?uid=14\"},\"newRecord\":{\"file_link\":\"https:\\/\\/team4.surfcamp.typo3.com\\/fileadmin\\/JSON\\/matches.json\"}}',0,'0400$4d708929e76f548a9bf05841be33f8cc:7a14c618500ae24604910dfdd2f8ff12'),
(128,1712918510,2,'BE',1,0,11,'tt_content','{\"oldRecord\":{\"hidden\":0,\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"game_results_mode\\\":\\\"\\\",\\\"file_link\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"hidden\":\"1\",\"l18n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$8f4dd5013688d126f0dd19a9621619d5:7a14c618500ae24604910dfdd2f8ff12'),
(129,1712922318,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"hidden\":1},\"newRecord\":{\"hidden\":\"0\"}}',0,'0400$db0a49f96c907e6d31ebe3ecd0cc8c00:01dbc21fdb1263685b9147b3b1596ea8'),
(130,1712922329,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"hidden\":0},\"newRecord\":{\"hidden\":\"1\"}}',0,'0400$da1d8640f417901717efb0c4dcaba392:01dbc21fdb1263685b9147b3b1596ea8'),
(131,1712922913,2,'BE',1,0,3,'tt_content','{\"oldRecord\":{\"header\":\"FC Bigfoot\",\"header_layout\":0,\"subheader\":\"\",\"l18n_diffsource\":\"{\\\"colPos\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"},\"newRecord\":{\"header\":\"FC Bigfoot Fuerteventura\",\"header_layout\":\"2\",\"subheader\":\"23 years of passion and dedication\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"button_text\\\":\\\"\\\",\\\"button_link\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$5eebb0e346872b7138950fcd8bd056bd:b92300cfb5d1d3645c9cb212a7f56c1f'),
(132,1712923010,1,'BE',1,0,9,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"15\",\"sys_language_uid\":0,\"crdate\":1712923010,\"t3ver_stage\":0,\"tstamp\":1712923010,\"uid\":9}',0,'0400$27a4125f03f896ef75bd6909f92cae6b:729356755eb8ee035abf6b9b02e20c8f'),
(133,1712923027,2,'BE',1,0,1,'sys_file_reference','{\"oldRecord\":{\"hidden\":0},\"newRecord\":{\"hidden\":\"1\"}}',0,'0400$c60e77b993ad2e842b35f2ba442e5a12:4cf496f597e7b095ce8b755e6cec3c0c'),
(134,1712923027,2,'BE',1,0,9,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$c60e77b993ad2e842b35f2ba442e5a12:729356755eb8ee035abf6b9b02e20c8f'),
(135,1712923130,2,'BE',1,0,9,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$af76cea22ac3283ff94913ce0915fae4:729356755eb8ee035abf6b9b02e20c8f'),
(136,1712923155,2,'BE',1,0,8,'tt_content','{\"oldRecord\":{\"header\":\"Our Biggest Supporters\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"Our biggest supporters\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"sponsors\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$4a9db26c6d2883ab9acd6eb40f129b16:2097d84972a039cb6bfe093b17089287'),
(137,1712928089,2,'BE',1,0,11,'tt_content','{\"oldRecord\":{\"hidden\":1},\"newRecord\":{\"hidden\":\"0\"}}',0,'0400$42442cdb75f308a9c0be7167cdd343c9:7a14c618500ae24604910dfdd2f8ff12'),
(138,1712928099,2,'BE',1,0,11,'tt_content','{\"oldRecord\":{\"hidden\":0},\"newRecord\":{\"hidden\":\"1\"}}',0,'0400$bf2ec6f8c1edd0d2904dd5e9b7846cac:7a14c618500ae24604910dfdd2f8ff12'),
(139,1712929383,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"subheader\":\"Would you like to know more?\"},\"newRecord\":{\"subheader\":\"Game on\"}}',0,'0400$4cde4e95b1bef57c6e0f38a153c2b2bc:c0db6803ab1ec5f70c36e2a72187867b'),
(140,1712929455,2,'BE',1,0,7,'pages','{\"oldRecord\":{\"title\":\"About us\",\"slug\":\"\\/club\\/about\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"},\"newRecord\":{\"title\":\"History\",\"slug\":\"\\/club\\/history\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$ec73cecfe50df3035b154450bbd1f2e7:df50bb24cbce671cf0d61f42fbbef601'),
(141,1712929724,1,'BE',1,0,12,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":7,\"sorting\":256,\"header\":\"From foundation to the regional league\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>FC Bigfoot\'s history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support.<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712929724,\"t3ver_stage\":0,\"tstamp\":1712929724,\"uid\":12}',0,'0400$0ad9057cb1e03dcda42b7bdc32768454:b13bbccfb8e2fc277be02db62485ced6'),
(142,1712929956,1,'BE',1,0,13,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":2,\"sorting\":256,\"header\":\"News about our club\",\"header_link\":\"\",\"subheader\":\"Always be up to date\",\"bodytext\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712929956,\"t3ver_stage\":0,\"tstamp\":1712929956,\"uid\":13}',0,'0400$5c77eea350de87e34091d9abbe76ce13:aa58d78b4f5fe95c0d2d1cb36d041737'),
(143,1712929966,2,'BE',1,0,13,'tt_content','{\"oldRecord\":{\"subheader\":\"Always be up to date\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"subheader\":\"\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$c73ce3411d9d3a0ce4507c157a324c4e:aa58d78b4f5fe95c0d2d1cb36d041737'),
(144,1712930216,2,'BE',1,0,3,'tt_content','{\"oldRecord\":{\"image\":2},\"newRecord\":{\"image\":1}}',0,'0400$d11bdd2a30a44b8e1650eb805c60e75a:b92300cfb5d1d3645c9cb212a7f56c1f'),
(145,1712930216,4,'BE',1,0,1,'sys_file_reference',NULL,0,'0400$d11bdd2a30a44b8e1650eb805c60e75a:4cf496f597e7b095ce8b755e6cec3c0c'),
(146,1712930870,4,'BE',1,0,8,'pages',NULL,0,'0400$0d924679185324ee86bf974bb4f879cb:595375f2fb9f014e091eb08fbc51ec88'),
(147,1712931644,3,'BE',1,0,8,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Our biggest supporters\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712931644,\"pid\":1,\"sorting\":60}}',0,'0400$05329f67951066bb735aa454218e951c:2097d84972a039cb6bfe093b17089287'),
(148,1712931644,2,'BE',1,0,8,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"sponsors\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"colPos\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$a4bdd49e7f5ebb3492f73972d8ffd0f4:2097d84972a039cb6bfe093b17089287'),
(149,1712931730,3,'BE',1,0,8,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Our biggest supporters\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712931730,\"pid\":1,\"sorting\":8}}',0,'0400$1787751039f01ebe56840eb80833c422:2097d84972a039cb6bfe093b17089287'),
(150,1712931730,2,'BE',1,0,8,'tt_content','{\"oldRecord\":{\"colPos\":0},\"newRecord\":{\"colPos\":\"3\"}}',0,'0400$02784efbe4f9298ca9d5d890bd467353:2097d84972a039cb6bfe093b17089287'),
(151,1712931732,3,'BE',1,0,6,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Let\'s keep in touch\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712931732,\"pid\":1,\"sorting\":4}}',0,'0400$7de08a031b4b64f649b0240812618687:c0db6803ab1ec5f70c36e2a72187867b'),
(152,1712931732,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_position\\\":\\\"\\\",\\\"date\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"buttons\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"colPos\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$209e882c21cf8d7099d132becd248892:c0db6803ab1ec5f70c36e2a72187867b'),
(153,1712931747,1,'BE',1,0,14,'tt_content','{\"CType\":\"event_teaser\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":92,\"header\":\"\",\"bodytext\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712931747,\"t3ver_stage\":0,\"tstamp\":1712931747,\"uid\":14}',0,'0400$a8402d675b60a5c55c7643fe331a43a4:338e104baa774eacaec42da729015b5f'),
(154,1712931802,2,'BE',1,0,14,'tt_content','{\"oldRecord\":{\"header\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"Our events - don\'t miss out\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$05a28bedeb57f189ec352fa568e1dd75:338e104baa774eacaec42da729015b5f'),
(155,1712935884,2,'BE',1,0,11,'tt_content','{\"oldRecord\":{\"hidden\":1},\"newRecord\":{\"hidden\":\"0\"}}',0,'0400$ae02343af779b19dbba3bc6d174cc38b:7a14c618500ae24604910dfdd2f8ff12'),
(156,1712936167,3,'BE',1,0,8,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Our biggest supporters\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712936167,\"pid\":1,\"sorting\":2}}',0,'0400$8b04833eb8948701e724736594b3ad42:2097d84972a039cb6bfe093b17089287'),
(157,1712936725,4,'BE',1,0,11,'pages',NULL,0,'0400$f2aa6270839c292c55ad90beb833051e:51bca2bcf14079cc366c99de31802400'),
(158,1712936772,4,'BE',1,0,9,'pages',NULL,0,'0400$de9cbf47e4369d09e6ada1526881e508:c5e7fa6b7b8146bdcdc78407b052e1d7'),
(159,1712938920,1,'BE',1,0,15,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":12,\"sorting\":256,\"header\":\"Anton Korel\",\"header_link\":\"\",\"subheader\":\"Middle field\",\"bodytext\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1712938920,\"t3ver_stage\":0,\"tstamp\":1712938920,\"uid\":15}',0,'0400$8a94a57349c3cba8749c872de8c05d8c:cb118fde3da18e67b21a92b60bb8cbda'),
(160,1712939017,2,'BE',1,0,15,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$ee30a884f20049c9cc740eaee4fd5e96:cb118fde3da18e67b21a92b60bb8cbda'),
(161,1712939017,1,'BE',1,0,10,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":12,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"20\",\"sys_language_uid\":0,\"crdate\":1712939017,\"t3ver_stage\":0,\"tstamp\":1712939017,\"uid\":10}',0,'0400$ee30a884f20049c9cc740eaee4fd5e96:b34a074e38840d41041eaee66c42bb0d'),
(162,1712939017,2,'BE',1,0,15,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$ee30a884f20049c9cc740eaee4fd5e96:cb118fde3da18e67b21a92b60bb8cbda'),
(163,1712940144,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"backend_layout_next_level\":\"\"},\"newRecord\":{\"backend_layout_next_level\":\"pagets__default\"}}',0,'0400$38d989dcec9f1e4283a1185487206e90:e175f7045d7ccbfb26ffcf279422c2e5'),
(164,1712940534,1,'BE',1,0,11,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":12,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"21\",\"sys_language_uid\":0,\"crdate\":1712940534,\"t3ver_stage\":0,\"tstamp\":1712940534,\"uid\":11}',0,'0400$287ad0b5a7d306304c33fce2040152cb:b70904b959c6d327947fc437df028f6f'),
(165,1712940534,4,'BE',1,0,10,'sys_file_reference',NULL,0,'0400$287ad0b5a7d306304c33fce2040152cb:b34a074e38840d41041eaee66c42bb0d'),
(166,1712940617,2,'BE',1,0,15,'tt_content','{\"oldRecord\":{\"assets\":1},\"newRecord\":{\"assets\":0}}',0,'0400$5c2368d7dfe92e296de8f08ef61cb15c:cb118fde3da18e67b21a92b60bb8cbda'),
(167,1712940617,4,'BE',1,0,11,'sys_file_reference',NULL,0,'0400$5c2368d7dfe92e296de8f08ef61cb15c:b70904b959c6d327947fc437df028f6f'),
(168,1712940625,1,'BE',1,0,12,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":12,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"6\",\"sys_language_uid\":0,\"crdate\":1712940625,\"t3ver_stage\":0,\"tstamp\":1712940625,\"uid\":12}',0,'0400$7b16f2d3a0a664c12a5c9aa951bbfa5e:fef2cecc4ff45c64d73fc27195ee5748'),
(169,1712940818,3,'BE',1,0,7,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"[No title]\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0},\"newData\":{\"tstamp\":1712940818,\"pid\":1,\"sorting\":74}}',0,'0400$63af6887922176d374e22a309f0e9479:ea41b626baac59a1fe0716bc344af5d9'),
(170,1712940818,2,'BE',1,0,7,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"colPos\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$0662067d1790c15d3bf9c39af0dfc9d1:ea41b626baac59a1fe0716bc344af5d9'),
(171,1712941158,2,'BE',1,0,7,'tt_content','{\"oldRecord\":{\"header\":\"\",\"bodytext\":\"\",\"imageorient\":0,\"l18n_diffsource\":\"{\\\"colPos\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"},\"newRecord\":{\"header\":\"Your City. Your Club. Your Sport.\",\"bodytext\":\"<p>With 21 teams, we are once again one of the largest clubs in Fuerteventura this season! We have three senior teams in each age group and at least two youth teams in each age group. In total, we have almost 900 members. We would like to thank everyone who has supported us so actively this season.<\\/p>\",\"imageorient\":\"25\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$fe595c904704b70f6eec3bc4f9c428d8:ea41b626baac59a1fe0716bc344af5d9'),
(172,1712941179,1,'BE',1,0,13,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"2\",\"sys_language_uid\":0,\"crdate\":1712941179,\"t3ver_stage\":0,\"tstamp\":1712941179,\"uid\":13}',0,'0400$33e773a2cdd6a4ff19e73157f4d4966d:5e1f4fea56ad8d21a419f2b59b059abf'),
(173,1712941196,2,'BE',1,0,7,'tt_content','{\"oldRecord\":{\"header\":\"Your City. Your Club. Your Sport.\"},\"newRecord\":{\"header\":\"Your City. Your Club.\"}}',0,'0400$baa9b16254ff8470a6ca4af81bcb3aa7:ea41b626baac59a1fe0716bc344af5d9'),
(174,1712941196,2,'BE',1,0,13,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$baa9b16254ff8470a6ca4af81bcb3aa7:5e1f4fea56ad8d21a419f2b59b059abf'),
(175,1712941274,2,'BE',1,0,7,'tt_content','{\"oldRecord\":{\"imageorient\":25},\"newRecord\":{\"imageorient\":\"26\"}}',0,'0400$31da4b506106734f1e8cbfb4a1794d70:ea41b626baac59a1fe0716bc344af5d9'),
(176,1712941278,2,'BE',1,0,13,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$09d6979f5a095d8344f1669cfd7003c8:5e1f4fea56ad8d21a419f2b59b059abf'),
(177,1712942569,2,'BE',1,0,14,'tt_content','{\"oldRecord\":{\"header\":\"Our events - don\'t miss out\"},\"newRecord\":{\"header\":\"Our events \"}}',0,'0400$4128d1dedb734015bcb0d39e7922e045:338e104baa774eacaec42da729015b5f'),
(178,1712942889,1,'BE',1,0,14,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":12,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"2\",\"sys_language_uid\":0,\"crdate\":1712942889,\"t3ver_stage\":0,\"tstamp\":1712942889,\"uid\":14}',0,'0400$68226240d9c5e95d3b5c7b581eac40c9:2207c2b650522ebf0efd90eaad3962af'),
(179,1712942889,4,'BE',1,0,12,'sys_file_reference',NULL,0,'0400$68226240d9c5e95d3b5c7b581eac40c9:fef2cecc4ff45c64d73fc27195ee5748'),
(180,1713626388,2,'BE',1,0,3,'tt_content','{\"oldRecord\":{\"button_text\":\"\",\"button_link\":\"\"},\"newRecord\":{\"button_text\":\"Join today\",\"button_link\":\"t3:\\/\\/page?uid=10\"}}',0,'0400$1fccbee2957f4777a3caccf6c63a222f:b92300cfb5d1d3645c9cb212a7f56c1f'),
(181,1713628641,1,'BE',1,0,16,'tt_content','{\"CType\":\"game_results\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"table\",\"pid\":3,\"sorting\":256,\"header\":\"\",\"file_link\":\"t3:\\/\\/file?uid=14\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1713628641,\"t3ver_stage\":0,\"tstamp\":1713628641,\"uid\":16}',0,'0400$6cb621b3da5b5c53525a322e9758763a:43f02d513e41a72738b96558f7ee9015'),
(182,1713628794,2,'BE',1,0,16,'tt_content','{\"oldRecord\":{\"header\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"Our Game Results\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"game_results_mode\\\":\\\"\\\",\\\"file_link\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$c6fc2d5f086fffac6d968a8f7a2d9267:43f02d513e41a72738b96558f7ee9015'),
(183,1713629097,1,'BE',1,0,17,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":3,\"sorting\":128,\"header\":\"Our Game Results\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1713629097,\"t3ver_stage\":0,\"tstamp\":1713629097,\"uid\":17}',0,'0400$ea3afdf6e875cabcccea7045fe361a5d:017157395cc6da9e5d2911de6dfd4b9e'),
(184,1713630299,1,'BE',1,0,18,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":5,\"sorting\":256,\"header\":\"Our companions and sponsors\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1713630299,\"t3ver_stage\":0,\"tstamp\":1713630299,\"uid\":18}',0,'0400$c41e2bea5daf09fe58b44532325ae760:0a64be1ae1f9096cc345beb76e5e2095'),
(185,1718816365,4,'BE',1,0,14,'sys_file_reference',NULL,0,'0400$b13c33dedf27e892e500a80a9a2b6bd9:2207c2b650522ebf0efd90eaad3962af'),
(186,1718816365,4,'BE',1,0,15,'tt_content',NULL,0,'0400$b13c33dedf27e892e500a80a9a2b6bd9:cb118fde3da18e67b21a92b60bb8cbda'),
(187,1718817390,2,'BE',1,0,12,'tt_content','{\"oldRecord\":{\"bodytext\":\"<p>FC Bigfoot\'s history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support.<\\/p>\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"bodytext\":\"<p>FC Bigfoot\'s history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support.<\\/p>\\r\\n<p>FC Bigfooot is a club at heart with a focus on cohesion and mutual support. The club may only have a comparatively short 23-year history, but it has a lively history with many ups and downs. You can find out more here.<\\/p>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$8a9bb45bd7b8a5ddc98d3648d969133d:b13bbccfb8e2fc277be02db62485ced6'),
(188,1718817402,2,'BE',1,0,12,'tt_content','{\"oldRecord\":{\"bodytext\":\"<p>FC Bigfoot\'s history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support.<\\/p>\\r\\n<p>FC Bigfooot is a club at heart with a focus on cohesion and mutual support. The club may only have a comparatively short 23-year history, but it has a lively history with many ups and downs. You can find out more here.<\\/p>\"},\"newRecord\":{\"bodytext\":\"<p>Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support.<\\/p>\\r\\n<p>FC Bigfooot is a club at heart with a focus on cohesion and mutual support. The club may only have a comparatively short 23-year history, but it has a lively history with many ups and downs. You can find out more here.<\\/p>\"}}',0,'0400$ddcb12d33ce19b0be8770169ca299250:b13bbccfb8e2fc277be02db62485ced6'),
(189,1718817411,2,'BE',1,0,12,'tt_content','{\"oldRecord\":{\"bodytext\":\"<p>Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support.<\\/p>\\r\\n<p>FC Bigfooot is a club at heart with a focus on cohesion and mutual support. The club may only have a comparatively short 23-year history, but it has a lively history with many ups and downs. You can find out more here.<\\/p>\"},\"newRecord\":{\"bodytext\":\"<p>Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support. FC Bigfooot is a club at heart with a focus on cohesion and mutual support. The club may only have a comparatively short 23-year history, but it has a lively history with many ups and downs. You can find out more here.<\\/p>\"}}',0,'0400$97b0fa3f4672cbc004dc40c1b39124db:b13bbccfb8e2fc277be02db62485ced6'),
(190,1718817709,1,'BE',1,0,19,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":7,\"sorting\":512,\"header\":\"2001 - 2004\",\"header_link\":\"\",\"subheader\":\"Our first years\",\"bodytext\":\"<p>FC Bigfoot was established in 2001 and swiftly became a well-known name in the local football community. In its early days, the team had to practice on a worn-out field with barely enough equipment for all the players. Despite these challenges, they showed remarkable persistence.<\\/p>\\r\\n<p>One memorable incident occurred during their first season. In a match against a more experienced team, FC Bigfoot was down by four goals at halftime. Instead of giving up, they rallied together and, with sheer determination and teamwork, managed to tie the game by the final whistle. This game became a turning point for the club, showcasing their spirit and winning the respect of fans and competitors alike. From that day on, FC Bigfoot was known for its fighting spirit.<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718817709,\"t3ver_stage\":0,\"tstamp\":1718817709,\"uid\":19}',0,'0400$65cff80bb6e32b6ea7a0d4b0839f54d8:a3ad11e2f7df6d0ba2d2b3c8402ba49d'),
(191,1718818153,1,'BE',1,0,20,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":7,\"sorting\":768,\"header\":\"2005 - 2018\",\"header_link\":\"\",\"subheader\":\"Growth, growth, growth!\",\"bodytext\":\"<p>FC Bigfoot was able to expand during this era, marking a significant period of growth and development for the club. Beyond competing in the classic league, FC Bigfoot became known for its community-oriented approach. The club organized various local events and initiatives that engaged the community, fostering a strong bond between the club and its supporters.<\\/p>\\r\\n<p>FC Bigfoot also emphasized inclusivity, ensuring that everyone, regardless of gender or background, had the opportunity to be part of the club. This inclusive approach, combined with their community-focused initiatives, solidified FC Bigfoot\\u2019s reputation as a forward-thinking and community-oriented club.<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718818153,\"t3ver_stage\":0,\"tstamp\":1718818153,\"uid\":20}',0,'0400$d79a2c5affdb48a7334e0adf8e600b76:e4fcdfe5be41a63ffdd7ab7b888d9459'),
(192,1718818154,2,'BE',1,0,20,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$4ebdc0cc8e31cc7106ec6cfc98c20da6:e4fcdfe5be41a63ffdd7ab7b888d9459'),
(193,1718818320,1,'BE',1,0,21,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":7,\"sorting\":1024,\"header\":\"2018 - 2024\",\"header_link\":\"\",\"subheader\":\"Becoming a\",\"bodytext\":\"<p>The biggest milestone was reached in 2018 when FC Bigfoot was promoted to the regional league for the first time. This achievement marked a turning point in the club\'s history, showcasing its progress and commitment to excellence. The promotion brought a new level of visibility and prestige, attracting more fans and support from the local community.<\\/p>\\r\\n<p>Since then, FC Bigfoot has continued its success, not only maintaining its status in the regional league but also expanding its influence nationally. The club\'s strategic focus on youth development has been a cornerstone of this growth. By investing in state-of-the-art training facilities and nurturing young talent through comprehensive development programs, FC Bigfoot has established a strong pipeline of skilled players.<\\/p>\\r\\n<p>The club\'s youth academy has produced several standout players who have gone on to achieve success at higher levels, further enhancing the club\'s reputation. Additionally, FC Bigfoot\'s national reach has been bolstered by participating in various high-profile tournaments and forging partnerships with other clubs across the country.<\\/p>\\r\\n<p>Through these efforts, FC Bigfoot has solidified its position as a prominent and influential football club, known for its dedication to both competitive success and community engagement. The club\'s ongoing commitment to youth development and national expansion ensures that its legacy will continue to grow in the years to come.<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718818320,\"t3ver_stage\":0,\"tstamp\":1718818320,\"uid\":21}',0,'0400$c5320cf7b37b7d9add3b167092d5e787:7fd72e21409e45562c51e7581fc2cb0d'),
(194,1718818377,2,'BE',1,0,21,'tt_content','{\"oldRecord\":{\"subheader\":\"Becoming a\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"subheader\":\"Becoming a community\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$c87dda584458dc6257e9165240190780:7fd72e21409e45562c51e7581fc2cb0d'),
(195,1718866561,2,'BE',1,0,21,'tt_content','{\"oldRecord\":{\"bodytext\":\"<p>The biggest milestone was reached in 2018 when FC Bigfoot was promoted to the regional league for the first time. This achievement marked a turning point in the club\'s history, showcasing its progress and commitment to excellence. The promotion brought a new level of visibility and prestige, attracting more fans and support from the local community.<\\/p>\\r\\n<p>Since then, FC Bigfoot has continued its success, not only maintaining its status in the regional league but also expanding its influence nationally. The club\'s strategic focus on youth development has been a cornerstone of this growth. By investing in state-of-the-art training facilities and nurturing young talent through comprehensive development programs, FC Bigfoot has established a strong pipeline of skilled players.<\\/p>\\r\\n<p>The club\'s youth academy has produced several standout players who have gone on to achieve success at higher levels, further enhancing the club\'s reputation. Additionally, FC Bigfoot\'s national reach has been bolstered by participating in various high-profile tournaments and forging partnerships with other clubs across the country.<\\/p>\\r\\n<p>Through these efforts, FC Bigfoot has solidified its position as a prominent and influential football club, known for its dedication to both competitive success and community engagement. The club\'s ongoing commitment to youth development and national expansion ensures that its legacy will continue to grow in the years to come.<\\/p>\"},\"newRecord\":{\"bodytext\":\"<p>The biggest milestone was reached in 2018 when FC Bigfoot was promoted to the regional league for the first time. This achievement marked a turning point in the club\'s history. The promotion brought a new level of visibility and prestige, attracting more fans and support from the local community.<\\/p>\\r\\n<p>Since then, FC Bigfoot has continued its success, not only maintaining its status in the regional league but also expanding its influence nationally. The club\'s strategic focus on youth development has been a cornerstone of this growth. By investing in state-of-the-art training facilities and nurturing young talent through comprehensive development programs, FC Bigfoot has established a strong pipeline of skilled players.<\\/p>\\r\\n<p>FC Bigfoot has solidified its position as a prominent and influential football club, known for its dedication to both competitive success and community engagement. The club\'s ongoing commitment to youth development and national expansion ensures that its legacy will continue to grow in the years to come.<\\/p>\"}}',0,'0400$2ed454e4da783cb70784a6737510fa8b:7fd72e21409e45562c51e7581fc2cb0d'),
(196,1718867329,1,'BE',1,0,22,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"2\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":1,\"header\":\"Our latest Game Results\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718867329,\"t3ver_stage\":0,\"tstamp\":1718867329,\"uid\":22}',0,'0400$bce9fc619e6c4f8f59c0b8d27b2027f2:1a929832156241f61c37ce68bcae4a3c'),
(197,1718870066,1,'BE',1,0,23,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"3\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":0,\"header\":\"Our Core Values\",\"header_link\":\"\",\"subheader\":\"United we stand\",\"bodytext\":\"<p>At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun.<\\/p>\\r\\n<p><strong>Trust and Respect<\\/strong><br \\/>We trust and respect every individual within our club\\u2014players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team.<\\/p>\\r\\n<p><strong>Openness<\\/strong><br \\/>Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication.<\\/p>\\r\\n<p><strong>Sharing<\\/strong><br \\/>Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans.<\\/p>\\r\\n<p><strong>Friendship and Fun<\\/strong><br \\/>Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience.<\\/p>\\r\\n<p>FC Bigfoot is more than a club\\u2014we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated.<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718870066,\"t3ver_stage\":0,\"tstamp\":1718870066,\"uid\":23}',0,'0400$c8cba916ca6d3764e718e10df90fa779:0cf00ee1adffc41f8b3231c0de35256e'),
(198,1718870096,2,'BE',1,0,23,'tt_content','{\"oldRecord\":{\"bodytext\":\"<p>At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun.<\\/p>\\r\\n<p><strong>Trust and Respect<\\/strong><br \\/>We trust and respect every individual within our club\\u2014players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team.<\\/p>\\r\\n<p><strong>Openness<\\/strong><br \\/>Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication.<\\/p>\\r\\n<p><strong>Sharing<\\/strong><br \\/>Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans.<\\/p>\\r\\n<p><strong>Friendship and Fun<\\/strong><br \\/>Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience.<\\/p>\\r\\n<p>FC Bigfoot is more than a club\\u2014we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated.<\\/p>\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"bodytext\":\"<p class=\\\"lead\\\">At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun.<\\/p>\\r\\n<p class=\\\"lead\\\"><strong>Trust and Respect<\\/strong><br \\/>We trust and respect every individual within our club\\u2014players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team.<\\/p>\\r\\n<p class=\\\"lead\\\"><strong>Openness<\\/strong><br \\/>Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication.<\\/p>\\r\\n<p class=\\\"lead\\\"><strong>Sharing<\\/strong><br \\/>Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans.<\\/p>\\r\\n<p class=\\\"lead\\\"><strong>Friendship and Fun<\\/strong><br \\/>Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience.<\\/p>\\r\\n<p class=\\\"lead\\\">FC Bigfoot is more than a club\\u2014we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated.<\\/p>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$083a534b04be2eff3e6c9c69ab1e2fbe:0cf00ee1adffc41f8b3231c0de35256e'),
(199,1718870125,4,'BE',1,0,23,'tt_content',NULL,0,'0400$0af351a4df48183dfb869db6f0817b7e:0cf00ee1adffc41f8b3231c0de35256e'),
(200,1718870173,1,'BE',1,0,24,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":0,\"header\":\"Our Core Values\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun.<\\/p>\\r\\n<p><strong>Trust and Respect<\\/strong><br \\/>We trust and respect every individual within our club\\u2014players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team.<\\/p>\\r\\n<p><strong>Openness<\\/strong><br \\/>Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication.<\\/p>\\r\\n<p><strong>Sharing<\\/strong><br \\/>Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans.<\\/p>\\r\\n<p><strong>Friendship and Fun<\\/strong><br \\/>Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience.<\\/p>\\r\\n<p>FC Bigfoot is more than a club\\u2014we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated.<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718870173,\"t3ver_stage\":0,\"tstamp\":1718870173,\"uid\":24}',0,'0400$86656eef02042d41786a4df80fce4e28:94bb7a1dbcc4ac71f45ee11546313fe2'),
(201,1718870247,3,'BE',1,0,24,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"Our Core Values\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0},\"newData\":{\"tstamp\":1718870247,\"pid\":1,\"sorting\":0}}',0,'0400$e610ee7dff29804f76146a15e32f67cb:94bb7a1dbcc4ac71f45ee11546313fe2'),
(202,1718870247,2,'BE',1,0,24,'tt_content','{\"oldRecord\":{\"colPos\":0,\"l18n_diffsource\":\"\"},\"newRecord\":{\"colPos\":\"3\",\"l18n_diffsource\":\"{\\\"colPos\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$7f15702095292e29ff124f90a6c1e4c1:94bb7a1dbcc4ac71f45ee11546313fe2'),
(203,1718870271,4,'BE',1,0,2,'sys_file_reference',NULL,0,'0400$bba1d2223ce953b76ca66ac11ab50018:814fc0f720dfab882655a795e23a5b66'),
(204,1718870271,4,'BE',1,0,2,'tt_content',NULL,0,'0400$bba1d2223ce953b76ca66ac11ab50018:01dbc21fdb1263685b9147b3b1596ea8'),
(205,1718873192,1,'BE',1,0,25,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":1,\"sorting\":83,\"header\":\"Our Core Values\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun.<\\/p>\\r\\n<p><strong>Trust and Respect<\\/strong><br \\/>We trust and respect every individual within our club\\u2014players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team.<\\/p>\\r\\n<p><strong>Openness<\\/strong><br \\/>Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication.<\\/p>\\r\\n<p><strong>Sharing<\\/strong><br \\/>Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans.<\\/p>\\r\\n<p><strong>Friendship and Fun<\\/strong><br \\/>Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience.<\\/p>\\r\\n<p>FC Bigfoot is more than a club\\u2014we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated.<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718873192,\"t3ver_stage\":0,\"tstamp\":1718873192,\"uid\":25}',0,'0400$02df2cd8b0acd75f96404a10637d537e:581bf77acde559fe457e0d401d2ada7b'),
(206,1718873442,4,'BE',1,0,25,'tt_content',NULL,0,'0400$cd0898ef56e4858dd7d2fc9cf6f856ef:581bf77acde559fe457e0d401d2ada7b'),
(207,1718873894,1,'BE',1,0,26,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":2,\"sorting\":512,\"header\":\"FC Bigfoot\'s 15th Charity Tournament\",\"header_link\":\"\",\"subheader\":\"A Celebration of Soccer and Community\",\"bodytext\":\"<p>FC Bigfoot proudly announces the 15th edition of our charity tournament! This beloved event unites soccer enthusiasts, players, and supporters from across the region for a day filled with thrilling matches and community spirit. For the 15th time, we host a marquee event showcasing local soccer talent and fierce competition. Teams from the region have confirmed their participation, promising an exciting display of sportsmanship and skill.<\\/p>\\r\\n<p><strong>Bringing the Community Together<\\/strong><br \\/>Our charity tournament is more than just a series of soccer matches; it\'s a vibrant gathering point for all soccer fans in the region. It\'s a place where old friends reconnect, new friendships are built, and everyone can share in the collective joy of the sport. Whether you\'re a real soccer fan or someone who enjoys the lively atmosphere, there\'s something for everyone at our event.<\\/p>\\r\\n<p><strong>Enjoy the Day with Family and Friends<\\/strong><br \\/>Beyond the action on the pitch, the tournament offers a perfect setting for families and friends to spend a memorable day together. As the matches unfold, spectators can enjoy a variety of food and beverage options, including the chance to relax and chat over a cold beer. There will be activities for children, ensuring that even the youngest fans have a great time.<\\/p>\\r\\n<p><strong>Supporting a Worthy Cause<\\/strong><br \\/>At its heart, the charity tournament is about giving back to the community. Proceeds from the event will go towards local charities, supporting initiatives that make a real difference in the lives of those in need. By attending and participating, you\'re not only enjoying a fantastic day of soccer but also contributing to a greater cause.<\\/p>\\r\\n<p><strong>Join Us for an Unforgettable Experience<\\/strong><br \\/>Mark your calendars and gather your friends and family for an unforgettable day of soccer, fun, and community spirit. The 15th charity tournament hosted by FC Bigfoot is more than just an event; it\'s a celebration of everything we love about the game and the bonds it creates.<\\/p>\\r\\n<p>We look forward to seeing you there, cheering on your favorite teams, enjoying the festivities, and being part of a tradition that continues to strengthen our community year after year. Let\'s make this 15th edition the best one yet!<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718873894,\"t3ver_stage\":0,\"tstamp\":1718873894,\"uid\":26}',0,'0400$1193b249cfcd473abf8cdb6eaef90523:f6bb218c440a87df0e0eb5986e28af41'),
(208,1718873926,2,'BE',1,0,26,'tt_content','{\"oldRecord\":{\"bodytext\":\"<p>FC Bigfoot proudly announces the 15th edition of our charity tournament! This beloved event unites soccer enthusiasts, players, and supporters from across the region for a day filled with thrilling matches and community spirit. For the 15th time, we host a marquee event showcasing local soccer talent and fierce competition. Teams from the region have confirmed their participation, promising an exciting display of sportsmanship and skill.<\\/p>\\r\\n<p><strong>Bringing the Community Together<\\/strong><br \\/>Our charity tournament is more than just a series of soccer matches; it\'s a vibrant gathering point for all soccer fans in the region. It\'s a place where old friends reconnect, new friendships are built, and everyone can share in the collective joy of the sport. Whether you\'re a real soccer fan or someone who enjoys the lively atmosphere, there\'s something for everyone at our event.<\\/p>\\r\\n<p><strong>Enjoy the Day with Family and Friends<\\/strong><br \\/>Beyond the action on the pitch, the tournament offers a perfect setting for families and friends to spend a memorable day together. As the matches unfold, spectators can enjoy a variety of food and beverage options, including the chance to relax and chat over a cold beer. There will be activities for children, ensuring that even the youngest fans have a great time.<\\/p>\\r\\n<p><strong>Supporting a Worthy Cause<\\/strong><br \\/>At its heart, the charity tournament is about giving back to the community. Proceeds from the event will go towards local charities, supporting initiatives that make a real difference in the lives of those in need. By attending and participating, you\'re not only enjoying a fantastic day of soccer but also contributing to a greater cause.<\\/p>\\r\\n<p><strong>Join Us for an Unforgettable Experience<\\/strong><br \\/>Mark your calendars and gather your friends and family for an unforgettable day of soccer, fun, and community spirit. The 15th charity tournament hosted by FC Bigfoot is more than just an event; it\'s a celebration of everything we love about the game and the bonds it creates.<\\/p>\\r\\n<p>We look forward to seeing you there, cheering on your favorite teams, enjoying the festivities, and being part of a tradition that continues to strengthen our community year after year. Let\'s make this 15th edition the best one yet!<\\/p>\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"bodytext\":\"<p>FC Bigfoot proudly announces the 15th edition of our charity tournament! This beloved event unites soccer enthusiasts, players, and supporters from across the region for a day filled with thrilling matches and community spirit. For the 15th time, we host a marquee event showcasing local soccer talent and fierce competition. Teams from the region have confirmed their participation, promising an exciting display of sportsmanship and skill.<\\/p>\\r\\n<p><strong>Bringing the Community Together<\\/strong><br \\/>Our charity tournament is more than just a series of soccer matches; it\'s a vibrant gathering point for all soccer fans in the region. It\'s a place where old friends reconnect, new friendships are built, and everyone can share in the collective joy of the sport. Whether you\'re a real soccer fan or someone who enjoys the lively atmosphere, there\'s something for everyone at our event. Beyond the action on the pitch, the tournament offers a perfect setting for families and friends to spend a memorable day together. As the matches unfold, spectators can enjoy a variety of food and beverage options, including the chance to relax and chat over a cold beer. There will be activities for children, ensuring that even the youngest fans have a great time.<\\/p>\\r\\n<p><strong>Supporting a Worthy Cause<\\/strong><br \\/>At its heart, the charity tournament is about giving back to the community. Proceeds from the event will go towards local charities, supporting initiatives that make a real difference in the lives of those in need. By attending and participating, you\'re not only enjoying a fantastic day of soccer but also contributing to a greater cause.<br \\/>Mark your calendars and gather your friends and family for an unforgettable day of soccer, fun, and community spirit. The 15th charity tournament hosted by FC Bigfoot is more than just an event; it\'s a celebration of everything we love about the game and the bonds it creates.<\\/p>\\r\\n<p>We look forward to seeing you there, cheering on your favorite teams, enjoying the festivities, and being part of a tradition that continues to strengthen our community year after year. Let\'s make this 15th edition the best one yet!<\\/p>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$26610bbc897f050bc53e0ccacc38bf1e:f6bb218c440a87df0e0eb5986e28af41'),
(209,1718874078,1,'BE',1,0,15,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":2,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"26\",\"sys_language_uid\":0,\"crdate\":1718874078,\"t3ver_stage\":0,\"tstamp\":1718874078,\"uid\":15}',0,'0400$6216714e4ba4bce7e72f30a7b14d50ef:53cbb769126fb106e07a09de5e196b60'),
(210,1718874107,2,'BE',1,0,26,'tt_content','{\"oldRecord\":{\"imageorient\":25},\"newRecord\":{\"imageorient\":\"26\"}}',0,'0400$464d9fad58866b79257ff80e946537b8:f6bb218c440a87df0e0eb5986e28af41'),
(211,1718874107,2,'BE',1,0,15,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$464d9fad58866b79257ff80e946537b8:53cbb769126fb106e07a09de5e196b60'),
(212,1718874189,2,'BE',1,0,26,'tt_content','{\"oldRecord\":{\"assets\":1},\"newRecord\":{\"assets\":0}}',0,'0400$b5fd470a2a0e1d5fbbfec1c389a2aa6f:f6bb218c440a87df0e0eb5986e28af41'),
(213,1718874189,4,'BE',1,0,15,'sys_file_reference',NULL,0,'0400$b5fd470a2a0e1d5fbbfec1c389a2aa6f:53cbb769126fb106e07a09de5e196b60'),
(214,1718874457,1,'BE',1,0,27,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":2,\"sorting\":768,\"header\":\"Get Ready for Another Exciting Match!\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>Mark your calendars for Thursday, April 18, 2024, at 16:30, as FC Bigfoot, currently third in the regional league, takes on our rivals from SurfCamp League. This is a match you won\'t want to miss!<\\/p>\\r\\n<p><strong>Match Details<\\/strong><\\/p>\\r\\n<ul><li>Date and Time: Thursday, April 18, 2024, at 16:30<\\/li><li>Teams: FC Bigfoot vs. SurfCamp League<\\/li><li>Stadium Access: Gates open at 14:30<\\/li><li>Catering: Food and beverages will be available<\\/li><\\/ul>\\r\\n<p><br \\/>Join us for an afternoon of intense competition and cheer on FC Bigfoot as they strive to climb the league standings. Bring your friends and family for a memorable day of soccer excitement!<\\/p>\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718874457,\"t3ver_stage\":0,\"tstamp\":1718874457,\"uid\":27}',0,'0400$c4ad55d8c35a130eee88a406d157267a:9c3671c42eb2c0522de6952ddc52c9a7'),
(215,1718874835,1,'BE',1,0,28,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":2,\"sorting\":1024,\"header\":\"Our New Supporter: TYPO3 Association\",\"header_link\":\"\",\"subheader\":\"A Powerful Partnership\",\"bodytext\":\"<p>We are thrilled to welcome <a href=\\\"https:\\/\\/typo3.org\\/\\\">TYPO3 Association<\\/a> as our newest sponsor! This exciting partnership promises to elevate FC Bigfoot to even greater heights, both on and off the field. With TYPO3 Association\'s support, we look forward to enhancing our club\'s capabilities and achieving new milestones. Stay tuned for the amazing opportunities this collaboration will bring to our team and community.<\\/p>\\r\\n\\r\\n\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718874835,\"t3ver_stage\":0,\"tstamp\":1718874835,\"uid\":28}',0,'0400$e3ac1c9a294cdd4a3c2b578392315949:b5d015227f2b36f7786e2ff963ca9d51'),
(216,1718874847,2,'BE',1,0,28,'tt_content','{\"oldRecord\":{\"header\":\"Our New Supporter: TYPO3 Association\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"Our New Supporter\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$b7fdf8e061bfa5432180b2d38be76006:b5d015227f2b36f7786e2ff963ca9d51'),
(217,1718897025,2,'BE',1,0,17,'tt_content','{\"oldRecord\":{\"bodytext\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"bodytext\":\"<p>Stay updated with the latest scores and outcomes of FC Bigfoot\'s matches. Here, you will find a comprehensive list of our recent game results. Keep checking back for the most current information on our achievements.<\\/p>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$fe021d63530343ee10a40d432c4f4666:017157395cc6da9e5d2911de6dfd4b9e'),
(218,1718897287,1,'BE',1,0,29,'tt_content','{\"CType\":\"textmedia\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"2\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"25\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":10,\"sorting\":256,\"header\":\"Become a Member today\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>Join the FC Bigfoot community by becoming a member today! Our membership program offers a variety of benefits designed to enhance your experience and connection with the club. As a member, you\'ll enjoy exclusive perks, including early access to tickets, discounts on merchandise, and invitations to special events.<\\/p>\\r\\n<p>Membership also provides you with the opportunity to be more involved with the club, from participating in member-only meetings to having a say in club decisions. Whether you\'re a lifelong supporter or new to the FC Bigfoot family, our membership program is a great way to show your support and stay engaged with all the exciting developments at the club.<\\/p>\\r\\n<p>Sign up now and be a part of the FC Bigfoot legacy, contributing to our community. Together, we can achieve great things both on and off the field.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718897287,\"t3ver_stage\":0,\"tstamp\":1718897287,\"uid\":29}',0,'0400$a2a2318373827db6ae87b5cb80a5426e:12090f8e2b698e14ec860eca10ce232c'),
(219,1718913643,2,'BE',1,0,18,'tt_content','{\"oldRecord\":{\"bodytext\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"bodytext\":\"<p>At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club.<\\/p>\\r\\n<p>Our supporters and companions share our vision and commitment to excellence, helping to foster a strong sense of community. Through their involvement, we are able to enhance our facilities, invest in youth development programs, and organize community outreach initiatives that make a positive impact.<\\/p>\\r\\n<p>By partnering with FC Bigfoot, our supporters and companions benefit from increased visibility and association with a club that values openness, teamwork, and community spirit. We are grateful for their support and look forward to continuing our journey together, achieving new heights and celebrating many successes.<\\/p>\\r\\n<p>Thank you to all our supporters and companions for being an integral part of the FC Bigfoot family. Your contributions make a significant difference, and we are proud to stand alongside you.<\\/p>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"header_link\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"assets\\\":\\\"\\\",\\\"imageorient\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$4f3bcfe358e78670d9a6d1345744073b:0a64be1ae1f9096cc345beb76e5e2095'),
(220,1718913729,2,'BE',1,0,18,'tt_content','{\"oldRecord\":{\"bodytext\":\"<p>At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club.<\\/p>\\r\\n<p>Our supporters and companions share our vision and commitment to excellence, helping to foster a strong sense of community. Through their involvement, we are able to enhance our facilities, invest in youth development programs, and organize community outreach initiatives that make a positive impact.<\\/p>\\r\\n<p>By partnering with FC Bigfoot, our supporters and companions benefit from increased visibility and association with a club that values openness, teamwork, and community spirit. We are grateful for their support and look forward to continuing our journey together, achieving new heights and celebrating many successes.<\\/p>\\r\\n<p>Thank you to all our supporters and companions for being an integral part of the FC Bigfoot family. Your contributions make a significant difference, and we are proud to stand alongside you.<\\/p>\"},\"newRecord\":{\"bodytext\":\"<p>At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club. Our supporters and companions share our vision and commitment to excellence, helping to foster a strong sense of community. Through their involvement, we are able to enhance our facilities, invest in youth development programs, and organize community outreach initiatives that make a positive impact.<\\/p>\\r\\n<p>By partnering with FC Bigfoot, our supporters and companions benefit from increased visibility and association with a club that values openness, teamwork, and community spirit. We are grateful for their support and look forward to continuing our journey together, achieving new heights and celebrating many successes.<\\/p>\\r\\n<p>Thank you to all our supporters and companions for being an integral part of the FC Bigfoot family. Your contributions make a significant difference, and we are proud to stand alongside you.<\\/p>\"}}',0,'0400$3edab68b30b55cb6b3e484dc322f38bf:0a64be1ae1f9096cc345beb76e5e2095'),
(221,1718914817,1,'BE',1,0,30,'tt_content','{\"CType\":\"sponsors\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"categories\":\"0\",\"l18n_parent\":0,\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"uploads_description\":0,\"uploads_type\":\"0\",\"game_results_mode\":\"slider\",\"pid\":5,\"sorting\":512,\"header\":\"\",\"linkToTop\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1718914817,\"t3ver_stage\":0,\"tstamp\":1718914817,\"uid\":30}',0,'0400$262dbb1b6207641b0b28d28b153d8ed0:f6d670f6f6a9a0aecc0bb542c370acdf'),
(222,1718914817,1,'BE',1,0,7,'tx_football_domain_model_sponsor','{\"pid\":5,\"sorting\":256,\"title\":\"\",\"url\":\"\",\"crdate\":1718914817,\"tstamp\":1718914817,\"uid\":7}',0,'0400$262dbb1b6207641b0b28d28b153d8ed0:5fc5c64318c341b46a7f237e357c10e2'),
(223,1718914817,1,'BE',1,0,16,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":5,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"33\",\"sys_language_uid\":0,\"crdate\":1718914817,\"t3ver_stage\":0,\"tstamp\":1718914817,\"uid\":16}',0,'0400$262dbb1b6207641b0b28d28b153d8ed0:5a9ade48273ee95d803333aed1c78820'),
(224,1718914866,2,'BE',1,0,30,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"sponsors\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$0c388eb775e312673dd3931c437b1369:f6d670f6f6a9a0aecc0bb542c370acdf'),
(225,1718914866,2,'BE',1,0,7,'tx_football_domain_model_sponsor','{\"oldRecord\":{\"title\":\"\"},\"newRecord\":{\"title\":\"TYPO3\"}}',0,'0400$0c388eb775e312673dd3931c437b1369:5fc5c64318c341b46a7f237e357c10e2'),
(226,1718914866,2,'BE',1,0,16,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$0c388eb775e312673dd3931c437b1369:5a9ade48273ee95d803333aed1c78820'),
(227,1718914901,1,'BE',1,0,8,'tx_football_domain_model_sponsor','{\"pid\":5,\"sorting\":0,\"title\":\"\",\"url\":\"\",\"crdate\":1718914901,\"tstamp\":1718914901,\"uid\":8}',0,'0400$b738be2327a1677d53856aa10e207736:512740b061353daa18dacf019a4f35c3'),
(228,1718914901,1,'BE',1,0,17,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":5,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"30\",\"sys_language_uid\":0,\"crdate\":1718914901,\"t3ver_stage\":0,\"tstamp\":1718914901,\"uid\":17}',0,'0400$b738be2327a1677d53856aa10e207736:78ba90db28917b77e8d54ca398316d0e'),
(229,1718914918,2,'BE',1,0,30,'tt_content','{\"oldRecord\":{\"sponsors\":2},\"newRecord\":{\"sponsors\":1}}',0,'0400$667e5df4d9a3a7c4d6642e9795fc532b:f6d670f6f6a9a0aecc0bb542c370acdf'),
(230,1718914918,2,'BE',1,0,17,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$667e5df4d9a3a7c4d6642e9795fc532b:78ba90db28917b77e8d54ca398316d0e'),
(231,1718914918,4,'BE',1,0,7,'tx_football_domain_model_sponsor',NULL,0,'0400$667e5df4d9a3a7c4d6642e9795fc532b:5fc5c64318c341b46a7f237e357c10e2'),
(232,1718915025,1,'BE',1,0,9,'tx_football_domain_model_sponsor','{\"pid\":5,\"sorting\":0,\"title\":\"\",\"url\":\"\",\"crdate\":1718915025,\"tstamp\":1718915025,\"uid\":9}',0,'0400$878bc15142c1c012d2298199d9dbae65:2b02d61676b947d6c43e268d87b97b61'),
(233,1718915025,1,'BE',1,0,18,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":5,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"33\",\"sys_language_uid\":0,\"crdate\":1718915025,\"t3ver_stage\":0,\"tstamp\":1718915025,\"uid\":18}',0,'0400$878bc15142c1c012d2298199d9dbae65:c9d27ac33ea45c5163a9ef7a25d8e7c7'),
(234,1718915076,1,'BE',1,0,10,'tx_football_domain_model_sponsor','{\"pid\":5,\"sorting\":0,\"title\":\"\",\"url\":\"\",\"crdate\":1718915076,\"tstamp\":1718915076,\"uid\":10}',0,'0400$123d2ec07516c2a8c4d77f6099e0e3e1:1e550a952006a0169f3dd7ea37302951'),
(235,1718915076,1,'BE',1,0,11,'tx_football_domain_model_sponsor','{\"pid\":5,\"sorting\":256,\"title\":\"\",\"url\":\"\",\"crdate\":1718915076,\"tstamp\":1718915076,\"uid\":11}',0,'0400$123d2ec07516c2a8c4d77f6099e0e3e1:b639234c1d7e5f00147caa95eaa9efe8'),
(236,1718915076,1,'BE',1,0,12,'tx_football_domain_model_sponsor','{\"pid\":5,\"sorting\":128,\"title\":\"\",\"url\":\"\",\"crdate\":1718915076,\"tstamp\":1718915076,\"uid\":12}',0,'0400$123d2ec07516c2a8c4d77f6099e0e3e1:99602adc9accb190466742ab7844aac8'),
(237,1718915076,1,'BE',1,0,13,'tx_football_domain_model_sponsor','{\"pid\":5,\"sorting\":64,\"title\":\"\",\"url\":\"\",\"crdate\":1718915076,\"tstamp\":1718915076,\"uid\":13}',0,'0400$123d2ec07516c2a8c4d77f6099e0e3e1:5b299f95bf813b5033c811cc78b1416d'),
(238,1718915076,1,'BE',1,0,19,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":5,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"35\",\"sys_language_uid\":0,\"crdate\":1718915076,\"t3ver_stage\":0,\"tstamp\":1718915076,\"uid\":19}',0,'0400$123d2ec07516c2a8c4d77f6099e0e3e1:7008e0248119dc3a255a0170bf6e9370'),
(239,1718915076,1,'BE',1,0,20,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":5,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"34\",\"sys_language_uid\":0,\"crdate\":1718915076,\"t3ver_stage\":0,\"tstamp\":1718915076,\"uid\":20}',0,'0400$123d2ec07516c2a8c4d77f6099e0e3e1:97d0d1c7a42cd9603b2010379c1e4e4d'),
(240,1718915076,1,'BE',1,0,21,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":5,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"32\",\"sys_language_uid\":0,\"crdate\":1718915076,\"t3ver_stage\":0,\"tstamp\":1718915076,\"uid\":21}',0,'0400$123d2ec07516c2a8c4d77f6099e0e3e1:bd8e6a36b477d61e04d92cfd10d00f96'),
(241,1718915076,1,'BE',1,0,22,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":5,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"31\",\"sys_language_uid\":0,\"crdate\":1718915076,\"t3ver_stage\":0,\"tstamp\":1718915076,\"uid\":22}',0,'0400$123d2ec07516c2a8c4d77f6099e0e3e1:d6a5725e5b31cdd97b9c53c992e81850'),
(242,1718915076,4,'BE',1,0,9,'tx_football_domain_model_sponsor',NULL,0,'0400$123d2ec07516c2a8c4d77f6099e0e3e1:2b02d61676b947d6c43e268d87b97b61'),
(243,1718915307,2,'BE',1,0,8,'tx_football_domain_model_sponsor','{\"oldRecord\":{\"title\":\"\"},\"newRecord\":{\"title\":\"queo\"}}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:512740b061353daa18dacf019a4f35c3'),
(244,1718915307,1,'BE',1,0,14,'tx_football_domain_model_sponsor','{\"pid\":5,\"sorting\":0,\"title\":\"in2code\",\"url\":\"\",\"crdate\":1718915307,\"tstamp\":1718915307,\"uid\":14}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:253fd91fe8fd71af09b9203227e3e19e'),
(245,1718915307,2,'BE',1,0,10,'tx_football_domain_model_sponsor','{\"oldRecord\":{\"title\":\"\"},\"newRecord\":{\"title\":\"TYPO3 Association\"}}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:1e550a952006a0169f3dd7ea37302951'),
(246,1718915307,2,'BE',1,0,11,'tx_football_domain_model_sponsor','{\"oldRecord\":{\"title\":\"\"},\"newRecord\":{\"title\":\"KM2 >>\"}}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:b639234c1d7e5f00147caa95eaa9efe8'),
(247,1718915307,2,'BE',1,0,12,'tx_football_domain_model_sponsor','{\"oldRecord\":{\"title\":\"\"},\"newRecord\":{\"title\":\"DECODE\"}}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:99602adc9accb190466742ab7844aac8'),
(248,1718915307,2,'BE',1,0,13,'tx_football_domain_model_sponsor','{\"oldRecord\":{\"title\":\"\"},\"newRecord\":{\"title\":\"contenance GmbH\"}}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:5b299f95bf813b5033c811cc78b1416d'),
(249,1718915307,1,'BE',1,0,23,'sys_file_reference','{\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"hidden\":\"0\",\"sorting_foreign\":0,\"autoplay\":0,\"pid\":5,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"36\",\"sys_language_uid\":0,\"crdate\":1718915307,\"t3ver_stage\":0,\"tstamp\":1718915307,\"uid\":23}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:a4b81cbb471961a3c12b21861b94f4e1'),
(250,1718915307,2,'BE',1,0,19,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:7008e0248119dc3a255a0170bf6e9370'),
(251,1718915307,2,'BE',1,0,20,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:97d0d1c7a42cd9603b2010379c1e4e4d'),
(252,1718915307,2,'BE',1,0,21,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:bd8e6a36b477d61e04d92cfd10d00f96'),
(253,1718915307,2,'BE',1,0,22,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$38a39cb8b8ca86b4adc66ac6c34d1c65:d6a5725e5b31cdd97b9c53c992e81850');
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_http_report`
--

DROP TABLE IF EXISTS `sys_http_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_http_report` (
  `uuid` varchar(36) NOT NULL,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  `created` int(10) unsigned NOT NULL,
  `changed` int(10) unsigned NOT NULL,
  `type` varchar(32) NOT NULL,
  `scope` varchar(32) NOT NULL,
  `request_time` bigint(20) unsigned NOT NULL,
  `meta` mediumtext DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `summary` varchar(40) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `type_scope` (`type`,`scope`),
  KEY `created` (`created`),
  KEY `changed` (`changed`),
  KEY `request_time` (`request_time`),
  KEY `summary_created` (`summary`,`created`),
  KEY `all_conditions` (`type`,`status`,`scope`,`summary`,`request_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_http_report`
--

LOCK TABLES `sys_http_report` WRITE;
/*!40000 ALTER TABLE `sys_http_report` DISABLE KEYS */;
INSERT INTO `sys_http_report` VALUES
('1e8d672a-6dd9-41db-a162-395732fe8bda',0,1712855548,1712855548,'csp-report','backend',1712855547967158,'{\"addr\":\"83.57.17.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"https:\\/\\/team4.surfcamp.typo3.com\\/typo3\\/module\\/web\\/layout\",\"referrer\":\"https:\\/\\/team4.surfcamp.typo3.com\\/typo3\\/module\\/dashboard\",\"violated-directive\":\"script-src-elem\",\"effective-directive\":\"script-src-elem\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-PzDf3K-xOiVM0n63xMOfqU_ONitDRRbXrsJNzroWYi-2qPE7SUfW4A\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri https:\\/\\/team4.surfcamp.typo3.com\\/typo3\\/@http-reporting?csp=report&requestTime=1712855547967158\",\"disposition\":\"enforce\",\"blocked-uri\":\"inline\",\"line-number\":1,\"column-number\":348,\"source-file\":\"chrome-extension\",\"status-code\":200,\"script-sample\":\";(function o(e,t=!1){const n=\\\"6.0\\\";let r\"}','aa74300609a9f95d03f0201474d27b2e9fddb4b9'),
('84f4626f-4968-4a50-9e5d-d8ffff2df243',0,1712855546,1712855546,'csp-report','backend',1712855545745963,'{\"addr\":\"83.57.17.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"https:\\/\\/team4.surfcamp.typo3.com\\/typo3\\/module\\/dashboard\",\"referrer\":\"https:\\/\\/team4.surfcamp.typo3.com\\/typo3\\/main\",\"violated-directive\":\"script-src-elem\",\"effective-directive\":\"script-src-elem\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-Wvd2mThLM-tYUTrPzekGRIWPjRwfk_OpCwZGsgCO56ygTbOKlu4TxA\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri https:\\/\\/team4.surfcamp.typo3.com\\/typo3\\/@http-reporting?csp=report&requestTime=1712855545745963\",\"disposition\":\"enforce\",\"blocked-uri\":\"inline\",\"line-number\":1,\"column-number\":348,\"source-file\":\"chrome-extension\",\"status-code\":200,\"script-sample\":\";(function o(e,t=!1){const n=\\\"6.0\\\";let r\"}','aa74300609a9f95d03f0201474d27b2e9fddb4b9'),
('e5a20061-6f32-4be4-a294-6582ad004f38',0,1712855550,1712855550,'csp-report','backend',1712855549834307,'{\"addr\":\"83.57.17.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/123.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"https:\\/\\/team4.surfcamp.typo3.com\\/typo3\\/module\\/web\\/layout?id=1\",\"referrer\":\"https:\\/\\/team4.surfcamp.typo3.com\\/typo3\\/module\\/web\\/layout\",\"violated-directive\":\"script-src-elem\",\"effective-directive\":\"script-src-elem\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-GxKkOnF9MYj8JNr2lMM7_eY6DbBi504H13g5hBsEK_CElyo9zeR-5A\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri https:\\/\\/team4.surfcamp.typo3.com\\/typo3\\/@http-reporting?csp=report&requestTime=1712855549834307\",\"disposition\":\"enforce\",\"blocked-uri\":\"inline\",\"line-number\":1,\"column-number\":348,\"source-file\":\"chrome-extension\",\"status-code\":200,\"script-sample\":\";(function o(e,t=!1){const n=\\\"6.0\\\";let r\"}','aa74300609a9f95d03f0201474d27b2e9fddb4b9');
/*!40000 ALTER TABLE `sys_http_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `channel` varchar(20) NOT NULL DEFAULT 'default',
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` varchar(10) NOT NULL DEFAULT 'info',
  `message` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `errorcount` (`tstamp`,`error`),
  KEY `index_channel` (`channel`),
  KEY `index_level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=880 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES
(1,1712495558,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(2,1712499594,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(3,1712499603,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'2a01:599:160:27b:7c67:33ca:7ffe:a984','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(4,1712571344,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(5,1712586847,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(6,1712586881,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(7,1712586908,1,1,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Home\",\"table\":\"pages\",\"uid\":1,\"pageTitle\":\"[root-level]\",\"pid\":0}',0,0,'NEW37596fd4','',0,'','info',NULL,NULL),
(8,1712586908,1,1,0,'site',0,0,'Site configuration \'%s\' was automatically created for new root page (%s).',6,'site',0,'83.57.17.91','[\"autogenerated-1-c4ca4238a0b923820dcc509a6f75849b\",1]',-1,0,'','',0,'','info',NULL,NULL),
(9,1712586908,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"2\"}',1,0,'','',0,'','info',NULL,NULL),
(10,1712586916,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"3\"}',1,0,'','',0,'','info',NULL,NULL),
(11,1712586929,1,1,1,'sys_template',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Template\",\"table\":\"sys_template\",\"uid\":1,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661400abeceb7540714197','',0,'','info',NULL,NULL),
(12,1712586939,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(13,1712589059,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240408151021/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/system-information/render?token=--AnonymizedToken--&skipSessionUpdate=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(14,1712589209,1,2,0,'site',0,0,'Site configuration \'%s\' was updated.',6,'site',0,'83.57.17.91','[\"football\"]',-1,0,'','',0,'','info',NULL,NULL),
(15,1712591327,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(16,1712647019,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(17,1712669257,0,3,0,'',0,3,'Login-attempt from ###IP###, username \'%s\' not found!',255,'user',2,'83.57.17.91','[\"surfcamp\"]',-1,-99,'','',0,'','info',NULL,NULL),
(18,1712669326,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(19,1712672082,1,1,1,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":1,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW66154d473212c536631312','',0,'','info',NULL,NULL),
(20,1712672091,1,2,1,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"FC Bigfoot\",\"table\":\"tt_content\",\"uid\":1,\"history\":\"6\"}',0,0,'','',0,'','info',NULL,NULL),
(21,1712672166,1,3,1,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"FC Bigfoot\",\"table\":\"tt_content\",\"uid\":1,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(22,1712672418,1,2,1,'sys_template',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"sys_template\",\"uid\":1,\"history\":\"8\"}',0,0,'','',0,'','info',NULL,NULL),
(23,1712672677,1,1,2,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"News\",\"table\":\"pages\",\"uid\":2,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW101382f','',0,'','info',NULL,NULL),
(24,1712673349,1,1,3,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Events\",\"table\":\"pages\",\"uid\":3,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW2b430e21','',0,'','info',NULL,NULL),
(25,1712673365,1,1,4,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Club\",\"table\":\"pages\",\"uid\":4,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW29ec2f95','',0,'','info',NULL,NULL),
(26,1712673378,1,1,5,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Sponsors\",\"table\":\"pages\",\"uid\":5,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW34e6d59d','',0,'','info',NULL,NULL),
(27,1712673382,1,4,5,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Sponsors\",\"table\":\"pages\",\"uid\":5,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(28,1712673397,1,1,6,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Contact\",\"table\":\"pages\",\"uid\":6,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW37666b70','',0,'','info',NULL,NULL),
(29,1712673451,1,1,7,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"About\",\"table\":\"pages\",\"uid\":7,\"pageTitle\":\"Club\",\"pid\":4}',4,0,'NEWf915f60','',0,'','info',NULL,NULL),
(30,1712673487,1,1,8,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"As\",\"table\":\"pages\",\"uid\":8,\"pageTitle\":\"Club\",\"pid\":4}',4,0,'NEWc64d34a','',0,'','info',NULL,NULL),
(31,1712673512,1,2,8,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Executive board\",\"table\":\"pages\",\"uid\":8,\"history\":\"17\"}',8,0,'','',0,'','info',NULL,NULL),
(32,1712673540,1,2,7,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"About us\",\"table\":\"pages\",\"uid\":7,\"history\":\"18\"}',7,0,'','',0,'','info',NULL,NULL),
(33,1712674076,1,1,9,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Facility\",\"table\":\"pages\",\"uid\":9,\"pageTitle\":\"Club\",\"pid\":4}',4,0,'NEW1af55a97','',0,'','info',NULL,NULL),
(34,1712674099,1,1,10,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Membership\",\"table\":\"pages\",\"uid\":10,\"pageTitle\":\"Club\",\"pid\":4}',4,0,'NEWc09602d','',0,'','info',NULL,NULL),
(35,1712674580,1,3,1,'sys_template',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"Template\",\"table\":\"sys_template\",\"uid\":1,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(36,1712674582,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(37,1712675411,1,6,0,'',0,0,'Directory \"{identifier}\" created in \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"images_be\",\"destination\":\"\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(38,1712675429,1,1,0,'',0,1,'No file was uploaded',2,'file',0,'83.57.17.91','',-1,0,'','',0,'','info',NULL,NULL),
(39,1712675459,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"dummy_picture_football.jpg\",\"destination\":\"\\/images_be\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(40,1712675930,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"dummy_picture_football_2.jpg\",\"destination\":\"\\/images_be\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(41,1712676081,1,6,0,'',0,0,'Directory \"{identifier}\" created in \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"logos\",\"destination\":\"\\/images_be\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(42,1712676114,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"Retro Vintage Football Club Badge Logo.svg\",\"destination\":\"\\/images_be\\/logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(43,1712676143,1,2,4,'sys_file_metadata',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"sys_file_metadata\",\"uid\":4,\"history\":\"22\"}',0,0,'','',0,'','info',NULL,NULL),
(44,1712676204,1,4,0,'',0,0,'File \"{identifier}\" deleted',2,'file',0,'83.57.17.91','{\"identifier\":\"\\/images_be\\/logos\\/Retro_Vintage_Football_Club_Badge_Logo.svg\"}',-1,0,'','',0,'','info',NULL,NULL),
(45,1712676222,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"FC_Bigfoot_logo_dummy.svg\",\"destination\":\"\\/images_be\\/logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(46,1712676486,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409152719/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(47,1712676486,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409152719/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(48,1712676486,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409152719/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(49,1712676486,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409152719/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(50,1712676486,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409152719/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(51,1712676486,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409152719/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(52,1712676482,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409152719/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/system-information/render?token=--AnonymizedToken--&skipSessionUpdate=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(53,1712676547,1,1,11,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Trainer\",\"table\":\"pages\",\"uid\":11,\"pageTitle\":\"Club\",\"pid\":4}',4,0,'NEW2aa659a1','',0,'','info',NULL,NULL),
(54,1712676850,1,2,3,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":3,\"history\":\"24\"}',3,0,'','',0,'','info',NULL,NULL),
(55,1712676853,1,2,2,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":2,\"history\":\"25\"}',2,0,'','',0,'','info',NULL,NULL),
(56,1712676856,1,2,4,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":4,\"history\":\"26\"}',4,0,'','',0,'','info',NULL,NULL),
(57,1712676897,1,2,7,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":7,\"history\":\"27\"}',7,0,'','',0,'','info',NULL,NULL),
(58,1712676900,1,2,8,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":8,\"history\":\"28\"}',8,0,'','',0,'','info',NULL,NULL),
(59,1712676903,1,2,11,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":11,\"history\":\"29\"}',11,0,'','',0,'','info',NULL,NULL),
(60,1712676905,1,2,9,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":9,\"history\":\"30\"}',9,0,'','',0,'','info',NULL,NULL),
(61,1712676909,1,2,10,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":10,\"history\":\"31\"}',10,0,'','',0,'','info',NULL,NULL),
(62,1712676923,1,2,5,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":5,\"history\":\"32\"}',5,0,'','',0,'','info',NULL,NULL),
(63,1712676929,1,2,6,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":6,\"history\":\"33\"}',6,0,'','',0,'','info',NULL,NULL),
(64,1712677342,1,1,12,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Membership\",\"pid\":10}',10,0,'NEW13b13f22','',0,'','info',NULL,NULL),
(65,1712677360,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) to page \"{pageTitle}\" ({pid})',1,'content',2,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Home\",\"pid\":1}',10,0,'','',0,'','info',NULL,NULL),
(66,1712677360,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) from page \"{pageTitle}\" ({pid})',1,'content',3,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Membership\",\"pid\":10}',1,0,'','',0,'','info',NULL,NULL),
(67,1712677366,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) to page \"{pageTitle}\" ({pid})',1,'content',2,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Membership\",\"pid\":10}',1,0,'','',0,'','info',NULL,NULL),
(68,1712677366,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) from page \"{pageTitle}\" ({pid}))',1,'content',3,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Home\",\"pid\":1}',10,0,'','',0,'','info',NULL,NULL),
(69,1712677389,1,4,12,'pages',0,1,'Attempt to move page \"{title}\" ({uid}) to inside of its own rootline (at page \"{pageTitle}\" ({pid}))',1,'content',10,'83.57.17.91','{\"title\":\"Teams\",\"uid\":12,\"pageTitle\":\"Teams\",\"pid\":12}',10,0,'','',0,'','info',NULL,NULL),
(70,1712677417,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) to page \"{pageTitle}\" ({pid})',1,'content',2,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Home\",\"pid\":1}',10,0,'','',0,'','info',NULL,NULL),
(71,1712677417,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) from page \"{pageTitle}\" ({pid})',1,'content',3,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Membership\",\"pid\":10}',1,0,'','',0,'','info',NULL,NULL),
(72,1712677423,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) to page \"{pageTitle}\" ({pid})',1,'content',2,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Membership\",\"pid\":10}',1,0,'','',0,'','info',NULL,NULL),
(73,1712677423,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) from page \"{pageTitle}\" ({pid}))',1,'content',3,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Home\",\"pid\":1}',10,0,'','',0,'','info',NULL,NULL),
(74,1712677438,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) to page \"{pageTitle}\" ({pid})',1,'content',2,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Home\",\"pid\":1}',10,0,'','',0,'','info',NULL,NULL),
(75,1712677438,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) from page \"{pageTitle}\" ({pid})',1,'content',3,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Membership\",\"pid\":10}',1,0,'','',0,'','info',NULL,NULL),
(76,1712677447,1,4,12,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Teams\",\"table\":\"pages\",\"uid\":12,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(77,1712677463,1,2,12,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":12,\"history\":\"41\"}',12,0,'','',0,'','info',NULL,NULL),
(78,1712677935,1,2,9,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Stadion\",\"table\":\"pages\",\"uid\":9,\"history\":\"42\"}',9,0,'','',0,'','info',NULL,NULL),
(79,1712679149,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409161149/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(80,1712679149,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409161149/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(81,1712679149,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409161149/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(82,1712679149,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409161149/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(83,1712679149,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409161149/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(84,1712679149,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409161149/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(85,1712679228,1,1,2,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":2,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661568cb1b870494522851','',0,'','info',NULL,NULL),
(86,1712679321,1,1,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"FC Bigfoot\",\"table\":\"tt_content\",\"uid\":3,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW66156971b640e576745905','',0,'','info',NULL,NULL),
(87,1712679321,1,1,1,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"dummy_picture_football_2.jpg\",\"table\":\"sys_file_reference\",\"uid\":1,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6615697f44688553761345','',0,'','info',NULL,NULL),
(88,1712679321,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":3,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(89,1712679323,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":3,\"history\":\"46\"}',0,0,'','',0,'','info',NULL,NULL),
(90,1712679323,1,2,1,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":1,\"history\":\"47\"}',0,0,'','',0,'','info',NULL,NULL),
(91,1712679709,1,1,13,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Senior\",\"table\":\"pages\",\"uid\":13,\"pageTitle\":\"Teams\",\"pid\":12}',12,0,'NEWf9a2bfe','',0,'','info',NULL,NULL),
(92,1712679716,1,1,14,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Youth\",\"table\":\"pages\",\"uid\":14,\"pageTitle\":\"Teams\",\"pid\":12}',12,0,'NEW2d7c3287','',0,'','info',NULL,NULL),
(93,1712679728,1,2,13,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":13,\"history\":\"50\"}',13,0,'','',0,'','info',NULL,NULL),
(94,1712679734,1,2,14,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":14,\"history\":\"51\"}',14,0,'','',0,'','info',NULL,NULL),
(95,1712679770,1,1,15,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Contact\",\"table\":\"pages\",\"uid\":15,\"pageTitle\":\"Club\",\"pid\":4}',4,0,'NEW34c72b10','',0,'','info',NULL,NULL),
(96,1712679814,1,2,15,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":15,\"history\":\"53\"}',15,0,'','',0,'','info',NULL,NULL),
(97,1712679820,1,2,15,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":15,\"history\":\"54\"}',15,0,'','',0,'','info',NULL,NULL),
(98,1712679828,1,4,10,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Membership\",\"table\":\"pages\",\"uid\":10,\"pageTitle\":\"Club\",\"pid\":4}',4,0,'','',0,'','info',NULL,NULL),
(99,1712681845,1,2,2,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Player of the month\",\"table\":\"tt_content\",\"uid\":2,\"history\":\"56\"}',0,0,'','',0,'','info',NULL,NULL),
(100,1712681874,1,6,0,'',0,0,'Directory \"{identifier}\" created in \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"players\",\"destination\":\"\\/images_be\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(101,1712681947,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"football_player_dummy.jpg\",\"destination\":\"\\/images_be\\/players\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(102,1712682155,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409170139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(103,1712682155,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409170139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(104,1712682155,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409170139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(105,1712682155,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409170139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(106,1712682155,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409170139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(107,1712682155,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240409170139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(108,1712682806,1,2,2,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Maya Williams\",\"table\":\"tt_content\",\"uid\":2,\"history\":\"57\"}',0,0,'','',0,'','info',NULL,NULL),
(109,1712682806,1,1,2,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"football_player_dummy.jpg\",\"table\":\"sys_file_reference\",\"uid\":2,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661573e6da683980475566','',0,'','info',NULL,NULL),
(110,1712682806,1,2,2,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":2,\"history\":\"59\"}',0,0,'','',0,'','info',NULL,NULL),
(111,1712735623,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(112,1712736846,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(113,1712749802,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410114916/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(114,1712749802,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410114916/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(115,1712749802,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410114916/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(116,1712749802,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410114916/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(117,1712749802,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410114916/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(118,1712749802,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410114916/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(119,1712753719,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410125440/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(120,1712753719,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410125440/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(121,1712753719,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410125440/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(122,1712753719,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410125440/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(123,1712753719,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410125440/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(124,1712753719,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410125440/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(125,1712755281,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(126,1712755323,1,2,2,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"For the third time in a row, our Maya has been voted player of the month. Congratulations Maya!\",\"table\":\"tt_content\",\"uid\":2,\"history\":\"60\"}',0,0,'','',0,'','info',NULL,NULL),
(127,1712755323,1,2,2,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":2,\"history\":\"61\"}',0,0,'','',0,'','info',NULL,NULL),
(128,1712758418,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410141246/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(129,1712758418,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410141246/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(130,1712758418,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410141246/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(131,1712758418,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410141246/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(132,1712758418,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410141246/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(133,1712758418,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410141246/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(134,1712761393,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410150214/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(135,1712761393,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410150214/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(136,1712761393,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410150214/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(137,1712761393,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410150214/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(138,1712761393,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410150214/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(139,1712761393,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410150214/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(140,1712761400,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410150214/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/system-information/render?token=--AnonymizedToken--&skipSessionUpdate=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(141,1712763446,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410153617/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(142,1712763446,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410153617/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(143,1712763446,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410153617/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(144,1712763446,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410153617/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(145,1712763446,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410153617/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(146,1712763446,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410153617/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(147,1712764062,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410154649/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(148,1712764062,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410154649/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(149,1712764062,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410154649/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(150,1712764062,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410154649/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(151,1712764062,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410154649/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(152,1712764062,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410154649/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(153,1712765983,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410161835/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(154,1712765983,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410161835/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(155,1712765983,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410161835/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(156,1712765983,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410161835/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(157,1712765983,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410161835/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(158,1712765983,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240410161835/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(159,1712824677,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(160,1712825506,1,3,13,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"Senior\",\"table\":\"pages\",\"uid\":13,\"pageTitle\":\"Teams\",\"pid\":12}',13,0,'','',0,'','info',NULL,NULL),
(161,1712825510,1,3,14,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"Youth\",\"table\":\"pages\",\"uid\":14,\"pageTitle\":\"Teams\",\"pid\":12}',14,0,'','',0,'','info',NULL,NULL),
(162,1712825525,1,2,12,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Team\",\"table\":\"pages\",\"uid\":12,\"history\":\"64\"}',12,0,'','',0,'','info',NULL,NULL),
(163,1712832111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411104039/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(164,1712832111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411104039/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(165,1712832111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411104039/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(166,1712832111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411104039/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(167,1712832111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411104039/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(168,1712832111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411104039/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(169,1712833937,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111122/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(170,1712833937,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111122/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(171,1712833937,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111122/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(172,1712833937,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111122/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(173,1712833937,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111122/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(174,1712833937,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111122/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(175,1712834244,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111616/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(176,1712834244,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111616/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(177,1712834244,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111616/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(178,1712834244,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111616/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(179,1712834244,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111616/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(180,1712834244,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411111616/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(181,1712835071,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411113018/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(182,1712835071,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411113018/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(183,1712835071,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411113018/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(184,1712835071,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411113018/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(185,1712835071,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411113018/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(186,1712835071,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411113018/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(187,1712842233,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411132922/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(188,1712842233,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411132922/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(189,1712842233,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411132922/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(190,1712842233,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411132922/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(191,1712842233,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411132922/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(192,1712842233,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411132922/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(193,1712842731,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(194,1712846004,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411143231/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(195,1712846004,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411143231/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(196,1712846004,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411143231/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(197,1712846004,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411143231/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(198,1712846004,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411143231/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(199,1712846004,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411143231/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(200,1712846463,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144008/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(201,1712846463,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144008/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(202,1712846463,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144008/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(203,1712846463,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144008/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(204,1712846463,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144008/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(205,1712846463,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144008/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(206,1712846744,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144448/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(207,1712846744,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144448/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(208,1712846744,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144448/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(209,1712846744,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144448/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(210,1712846744,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144448/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(211,1712846744,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411144448/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(212,1712846887,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(213,1712846894,1,1,1,'index_config',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Pages\",\"table\":\"index_config\",\"uid\":1,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6617f827b6a03528818026','',0,'','info',NULL,NULL),
(214,1712846898,1,2,1,'index_config',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"index_config\",\"uid\":1,\"history\":\"66\"}',0,0,'','',0,'','info',NULL,NULL),
(215,1712846912,1,1,2,'index_config',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Content\",\"table\":\"index_config\",\"uid\":2,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6617f8372fd1f470586188','',0,'','info',NULL,NULL),
(216,1712846923,1,2,2,'index_config',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"index_config\",\"uid\":2,\"history\":\"68\"}',0,0,'','',0,'','info',NULL,NULL),
(217,1712846928,1,2,1,'index_config',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"index_config\",\"uid\":1,\"history\":\"69\"}',0,0,'','',0,'','info',NULL,NULL),
(218,1712846928,1,2,2,'index_config',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"index_config\",\"uid\":2,\"history\":\"70\"}',0,0,'','',0,'','info',NULL,NULL),
(219,1712846933,1,2,1,'index_config',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"index_config\",\"uid\":1,\"history\":\"71\"}',0,0,'','',0,'','info',NULL,NULL),
(220,1712846940,1,2,1,'index_config',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"index_config\",\"uid\":1,\"history\":\"72\"}',0,0,'','',0,'','info',NULL,NULL),
(221,1712846952,1,1,16,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Search\",\"table\":\"pages\",\"uid\":16,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW36acef8b','',0,'','info',NULL,NULL),
(222,1712846955,1,4,16,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Search\",\"table\":\"pages\",\"uid\":16,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(223,1712846957,1,2,16,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":16,\"history\":\"75\"}',16,0,'','',0,'','info',NULL,NULL),
(224,1712846967,1,2,16,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":16,\"history\":\"76\"}',16,0,'','',0,'','info',NULL,NULL),
(225,1712847000,1,1,4,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":4,\"pageTitle\":\"Search\",\"pid\":16}',16,0,'NEW6617f88f859f4579107173','',0,'','info',NULL,NULL),
(226,1712847040,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"78\"}',1,0,'','',0,'','info',NULL,NULL),
(227,1712847040,1,1,1,'tx_football_domain_model_link',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_link\",\"uid\":1,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6617f8abc69dd604463024','',0,'','info',NULL,NULL),
(228,1712847040,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"80\"}',1,0,'','',0,'','info',NULL,NULL),
(229,1712847058,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"81\"}',1,0,'','',0,'','info',NULL,NULL),
(230,1712847093,1,2,16,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":16,\"history\":\"82\"}',16,0,'','',0,'','info',NULL,NULL),
(231,1712847095,1,2,16,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":16,\"history\":0}',16,0,'','',0,'','info',NULL,NULL),
(232,1712847095,1,2,16,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":16,\"history\":0}',16,0,'','',0,'','info',NULL,NULL),
(233,1712847113,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"83\"}',1,0,'','',0,'','info',NULL,NULL),
(234,1712847394,1,2,16,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":16,\"history\":\"84\"}',16,0,'','',0,'','info',NULL,NULL),
(235,1712847409,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"pages\"}',-1,0,'','',0,'','info',NULL,NULL),
(236,1712847411,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(237,1712847426,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411145608/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(238,1712847426,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411145608/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(239,1712847426,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411145608/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(240,1712847426,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411145608/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(241,1712847426,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411145608/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(242,1712847426,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411145608/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(243,1712848479,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(244,1712848828,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411151929/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(245,1712848828,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411151929/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(246,1712848828,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411151929/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(247,1712848828,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411151929/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(248,1712848828,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411151929/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(249,1712848828,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411151929/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(250,1712852688,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411162339/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(251,1712852688,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411162339/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(252,1712852688,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411162339/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(253,1712852688,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411162339/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(254,1712852688,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411162339/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(255,1712852688,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411162339/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(256,1712853386,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163533/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(257,1712853386,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163533/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(258,1712853386,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163533/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(259,1712853386,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163533/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(260,1712853386,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163533/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(261,1712853386,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163533/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(262,1712853653,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163954/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(263,1712853653,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163954/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(264,1712853653,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163954/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(265,1712853653,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163954/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(266,1712853653,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163954/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(267,1712853653,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411163954/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(268,1712853802,1,1,5,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":5,\"pageTitle\":\"Contact\",\"pid\":6}',6,0,'NEW661813276d292019553593','',0,'','info',NULL,NULL),
(269,1712853804,1,2,5,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":5,\"history\":\"86\"}',0,0,'','',0,'','info',NULL,NULL),
(270,1712853855,1,2,2,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":2,\"history\":\"87\"}',0,0,'','',0,'','info',NULL,NULL),
(271,1712854050,1,1,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Do you have questions? Would you like to know more? Please contact us \\u2013 we look forward to hearing from you.\",\"table\":\"tt_content\",\"uid\":6,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW66181370a390c517049458','',0,'','info',NULL,NULL),
(272,1712854050,1,1,2,'tx_football_domain_model_link',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Get in touch\",\"table\":\"tx_football_domain_model_link\",\"uid\":2,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661814018e216974965027','',0,'','info',NULL,NULL),
(273,1712854050,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":6,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(274,1712854111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411164736/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(275,1712854111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411164736/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(276,1712854111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411164736/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(277,1712854111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411164736/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(278,1712854111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411164736/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(279,1712854111,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411164736/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(280,1712854106,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411164736/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/icons?token=--AnonymizedToken--&icon=%%5B%%22spinner-circle%%22%%2C%%22small%%22%%2Cnull%%2C%%22default%%22%%2C%%22default%%22%%5D',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(281,1712854105,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411164736/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/system-information/render?token=--AnonymizedToken--&skipSessionUpdate=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(282,1712854119,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411164736/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/record/edit?token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B6%%5D=edit&returnUrl=%%2Ftypo3%%2Fmodule%%2Fweb%%2Flayout%%3Ftoken%%3D--AnonymizedToken--%%26id%%3D1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(283,1712854166,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Do you have questions? Would you like to know more?\",\"table\":\"tt_content\",\"uid\":6,\"history\":\"90\"}',0,0,'','',0,'','info',NULL,NULL),
(284,1712854206,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Please contact us \\u2013 we look forward to hearing from you.\",\"table\":\"tt_content\",\"uid\":6,\"history\":\"91\"}',0,0,'','',0,'','info',NULL,NULL),
(285,1712854283,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"We look forward to hearing from you\",\"table\":\"tt_content\",\"uid\":6,\"history\":\"92\"}',0,0,'','',0,'','info',NULL,NULL),
(286,1712854300,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411165049/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(287,1712854300,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411165049/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(288,1712854300,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411165049/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(289,1712854300,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411165049/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(290,1712854300,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411165049/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(291,1712854300,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411165049/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(292,1712854307,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411165049/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/record/inline/details?token=--AnonymizedToken--',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(293,1712854389,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":6,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(294,1712854389,1,1,3,'tx_football_domain_model_link',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Suscribe\",\"table\":\"tx_football_domain_model_link\",\"uid\":3,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6618153ba377c393733827','',0,'','info',NULL,NULL),
(295,1712854389,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":6,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(296,1712854397,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(297,1712854412,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"94\"}',1,0,'','',0,'','info',NULL,NULL),
(298,1712854424,1,4,3,'tt_content',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"FC Bigfoot\",\"table\":\"tt_content\",\"uid\":3,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(299,1712854424,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":3,\"history\":\"96\"}',0,0,'','',0,'','info',NULL,NULL),
(300,1712854432,1,4,6,'tt_content',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"We look forward to hearing from you\",\"table\":\"tt_content\",\"uid\":6,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(301,1712854432,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":6,\"history\":\"98\"}',0,0,'','',0,'','info',NULL,NULL),
(302,1712854676,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"2.svg\",\"destination\":\"\\/images_be\\/logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(303,1712854676,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"4.svg\",\"destination\":\"\\/images_be\\/logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(304,1712854677,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"3.svg\",\"destination\":\"\\/images_be\\/logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(305,1712854677,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"6.svg\",\"destination\":\"\\/images_be\\/logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(306,1712854677,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"5.svg\",\"destination\":\"\\/images_be\\/logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(307,1712854677,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"1.svg\",\"destination\":\"\\/images_be\\/logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(308,1712854734,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"1.svg\",\"destination\":\"\\/user_upload\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(309,1712854816,1,1,7,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":7,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661817159cff0641993830','',0,'','info',NULL,NULL),
(310,1712854983,1,1,8,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Our Biggest Supporters\",\"table\":\"tt_content\",\"uid\":8,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6618173287ec9185042595','',0,'','info',NULL,NULL),
(311,1712854983,1,1,1,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Luna Media\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":1,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6618173f7c07d212475104','',0,'','info',NULL,NULL),
(312,1712854983,1,1,2,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"MESA\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":2,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6618176cb24cc044442539','',0,'','info',NULL,NULL),
(313,1712854983,1,1,3,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Phoenix Logistics\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":3,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6618179bc67df001700400','',0,'','info',NULL,NULL),
(314,1712854983,1,1,4,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Azul\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":4,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661817a621722457825924','',0,'','info',NULL,NULL),
(315,1712854983,1,1,5,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Walrus\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":5,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661817aea03fe460907899','',0,'','info',NULL,NULL),
(316,1712854983,1,1,6,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":6,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661817b912a8f040038058','',0,'','info',NULL,NULL),
(317,1712854983,1,1,3,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"1.svg\",\"table\":\"sys_file_reference\",\"uid\":3,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6618175a25a9b616793119','',0,'','info',NULL,NULL),
(318,1712854983,1,1,4,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"2.svg\",\"table\":\"sys_file_reference\",\"uid\":4,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661817951b662130974461','',0,'','info',NULL,NULL),
(319,1712854983,1,1,5,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"3.svg\",\"table\":\"sys_file_reference\",\"uid\":5,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661817a01ff96646330462','',0,'','info',NULL,NULL),
(320,1712854983,1,1,6,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"4.svg\",\"table\":\"sys_file_reference\",\"uid\":6,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661817aaae404328851282','',0,'','info',NULL,NULL),
(321,1712854983,1,1,7,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"5.svg\",\"table\":\"sys_file_reference\",\"uid\":7,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661817b2e8fc8872471547','',0,'','info',NULL,NULL),
(322,1712854983,1,1,8,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"6.svg\",\"table\":\"sys_file_reference\",\"uid\":8,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661817c4e12a2089760092','',0,'','info',NULL,NULL),
(323,1712854983,1,2,8,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":8,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(324,1712854983,1,2,1,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":1,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(325,1712854983,1,2,2,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":2,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(326,1712854983,1,2,3,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":3,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(327,1712854983,1,2,4,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":4,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(328,1712854983,1,2,5,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":5,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(329,1712854983,1,2,6,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":6,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(330,1712855043,1,2,6,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Contact Us\",\"table\":\"pages\",\"uid\":6,\"history\":\"113\"}',6,0,'','',0,'','info',NULL,NULL),
(331,1712855305,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170734/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(332,1712855305,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170734/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(333,1712855305,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170734/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(334,1712855305,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170734/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(335,1712855305,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170734/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(336,1712855305,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170734/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(337,1712855368,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(338,1712855371,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":0}',1,0,'','',0,'','info',NULL,NULL),
(339,1712855437,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(340,1712855437,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(341,1712855437,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(342,1712855437,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(343,1712855438,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/record/edit?token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3%%2Fmodule%%2Fweb%%2Flayout%%3Ftoken%%3D--AnonymizedToken--%%26id%%3D1%%26',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(344,1712855437,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(345,1712855437,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(346,1712855435,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/record/edit?token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B8%%5D=edit&returnUrl=%%2Ftypo3%%2Fmodule%%2Fweb%%2Flayout%%3Ftoken%%3D--AnonymizedToken--%%26id%%3D1%%26',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(347,1712855440,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/module/web/layout?token=--AnonymizedToken--&id=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(348,1712855446,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411170946/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/module/web/layout?id=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(349,1712855543,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(350,1712855584,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"114\"}',1,0,'','',0,'','info',NULL,NULL),
(351,1712855589,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":0}',1,0,'','',0,'','info',NULL,NULL),
(352,1712855704,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Let\'s keep in touch\",\"table\":\"tt_content\",\"uid\":6,\"history\":\"115\"}',0,0,'','',0,'','info',NULL,NULL),
(353,1712855802,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":6,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(354,1712855802,1,2,2,'tx_football_domain_model_link',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Contact us\",\"table\":\"tx_football_domain_model_link\",\"uid\":2,\"history\":\"116\"}',0,0,'','',0,'','info',NULL,NULL),
(355,1712855837,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(356,1712855915,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Would you like to know more?\",\"table\":\"tt_content\",\"uid\":6,\"history\":\"117\"}',0,0,'','',0,'','info',NULL,NULL),
(357,1712856590,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(358,1712856596,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411172902/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/main?token=--AnonymizedToken--',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(359,1712856597,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411172902/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(360,1712856597,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411172902/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(361,1712856597,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411172902/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(362,1712856597,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411172902/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(363,1712856597,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411172902/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(364,1712856597,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411172902/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(365,1712856627,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(366,1712856769,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(367,1712856788,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(368,1712856815,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(369,1712856838,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411173306/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(370,1712856838,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411173306/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(371,1712856838,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411173306/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(372,1712856838,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411173306/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(373,1712856838,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411173306/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(374,1712856838,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411173306/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(375,1712856847,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240411173306/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/system-information/render?token=--AnonymizedToken--&skipSessionUpdate=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(376,1712856894,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(377,1712911335,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(378,1712911335,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(379,1712911335,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(380,1712911335,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(381,1712911335,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(382,1712911335,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(383,1712912067,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(384,1712913083,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1633777536: Tried to access a private resource file \"EXT:football/Configuration/Form/FormDefinitions/contactForm.form.yaml\" from fallback compatibility storage. This storage only handles public files. | TYPO3\\CMS\\Core\\Resource\\Exception\\ResourceDoesNotExistException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Resource/ResourceFactory.php in line 307. Requested URL: https://team4.surfcamp.typo3.com/typo3/module/web/FormFormbuilder/FormManager/references?token=--AnonymizedToken--&formPersistenceIdentifier=EXT:football/Configuration/Form/FormDefinitions/contactForm.form.yaml',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(385,1712913093,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1633777536: Tried to access a private resource file \"EXT:football/Configuration/Form/FormDefinitions/contactForm.form.yaml\" from fallback compatibility storage. This storage only handles public files. | TYPO3\\CMS\\Core\\Resource\\Exception\\ResourceDoesNotExistException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Resource/ResourceFactory.php in line 307. Requested URL: https://team4.surfcamp.typo3.com/typo3/module/web/FormFormbuilder/FormManager/references?token=--AnonymizedToken--&formPersistenceIdentifier=EXT:football/Configuration/Form/FormDefinitions/contactForm.form.yaml',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(386,1712914775,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(387,1712914801,1,1,17,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Privacy Policy\",\"table\":\"pages\",\"uid\":17,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW28282b0a','',0,'','info',NULL,NULL),
(388,1712914814,1,4,17,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Privacy Policy\",\"table\":\"pages\",\"uid\":17,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(389,1712914817,1,4,16,'pages',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Search\",\"table\":\"pages\",\"uid\":16,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(390,1712914825,1,2,17,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":17,\"history\":\"121\"}',17,0,'','',0,'','info',NULL,NULL),
(391,1712914841,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"122\"}',1,0,'','',0,'','info',NULL,NULL),
(392,1712914885,1,1,9,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Privacy Policy\",\"table\":\"tt_content\",\"uid\":9,\"pageTitle\":\"Privacy Policy\",\"pid\":17}',17,0,'NEW661901ad345aa959617710','',0,'','info',NULL,NULL),
(393,1712917572,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(394,1712917624,1,1,10,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"News\",\"table\":\"tt_content\",\"uid\":10,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW66190c68163bb916387765','',0,'','info',NULL,NULL),
(395,1712918149,1,6,0,'',0,1,'No name for new folder given',2,'file',0,'83.57.17.91','',-1,0,'','',0,'','info',NULL,NULL),
(396,1712918159,1,6,0,'',0,0,'Directory \"{identifier}\" created in \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"JSON\",\"destination\":\"\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(397,1712918163,1,6,0,'',0,1,'No name for new folder given',2,'file',0,'83.57.17.91','',-1,0,'','',0,'','info',NULL,NULL),
(398,1712918177,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"matches.json\",\"destination\":\"\\/JSON\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(399,1712918263,1,1,11,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":11,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW66190eee0d609452417747','',0,'','info',NULL,NULL),
(400,1712918266,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(401,1712918266,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(402,1712918270,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(403,1712918270,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(404,1712918322,1,2,11,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":11,\"history\":\"126\"}',0,0,'','',0,'','info',NULL,NULL),
(405,1712918325,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(406,1712918325,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(407,1712918336,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(408,1712918336,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(409,1712918379,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(410,1712918379,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(411,1712918380,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(412,1712918380,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(413,1712918422,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(414,1712918422,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(415,1712918460,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(416,1712918461,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(417,1712918461,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(418,1712918486,1,2,11,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":11,\"history\":\"127\"}',0,0,'','',0,'','info',NULL,NULL),
(419,1712918490,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(420,1712918490,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(421,1712918492,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'145.224.124.57','',-1,0,'','',0,'','warning',NULL,NULL),
(422,1712918492,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'145.224.124.57','',-1,0,'','',0,'','error',NULL,NULL),
(423,1712918494,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'145.224.124.57','',-1,0,'','',0,'','warning',NULL,NULL),
(424,1712918494,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'145.224.124.57','',-1,0,'','',0,'','error',NULL,NULL),
(425,1712918505,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'145.224.124.57','',-1,0,'','',0,'','warning',NULL,NULL),
(426,1712918505,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'145.224.124.57','',-1,0,'','',0,'','error',NULL,NULL),
(427,1712918510,1,2,11,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":11,\"history\":\"128\"}',0,0,'','',0,'','info',NULL,NULL),
(428,1712918744,0,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(429,1712918744,0,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(430,1712918744,0,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(431,1712918744,0,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412084104/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(432,1712922318,1,2,2,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":2,\"history\":\"129\"}',0,0,'','',0,'','info',NULL,NULL),
(433,1712922329,1,2,2,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":2,\"history\":\"130\"}',0,0,'','',0,'','info',NULL,NULL),
(434,1712922913,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"FC Bigfoot Fuerteventura\",\"table\":\"tt_content\",\"uid\":3,\"history\":\"131\"}',0,0,'','',0,'','info',NULL,NULL),
(435,1712922960,1,1,0,'',0,1,'No file was uploaded',2,'file',0,'83.57.17.91','',-1,0,'','',0,'','info',NULL,NULL),
(436,1712922999,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"football_field_dummy_picture.jpg\",\"destination\":\"\\/images_be\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(437,1712923010,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":3,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(438,1712923010,1,1,9,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"football_field_dummy_picture.jpg\",\"table\":\"sys_file_reference\",\"uid\":9,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6619217a4776f425510319','',0,'','info',NULL,NULL),
(439,1712923010,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":3,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(440,1712923027,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":3,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(441,1712923027,1,2,1,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":1,\"history\":\"133\"}',0,0,'','',0,'','info',NULL,NULL),
(442,1712923027,1,2,9,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":9,\"history\":\"134\"}',0,0,'','',0,'','info',NULL,NULL),
(443,1712923130,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":3,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(444,1712923130,1,2,9,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":9,\"history\":\"135\"}',0,0,'','',0,'','info',NULL,NULL),
(445,1712923155,1,2,8,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Our biggest supporters\",\"table\":\"tt_content\",\"uid\":8,\"history\":\"136\"}',0,0,'','',0,'','info',NULL,NULL),
(446,1712923863,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"pages\"}',-1,0,'','',0,'','info',NULL,NULL),
(447,1712927629,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412131256/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(448,1712927629,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412131256/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(449,1712927629,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412131256/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(450,1712927629,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412131256/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(451,1712927629,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412131256/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(452,1712927629,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412131256/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(453,1712928089,1,2,11,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":11,\"history\":\"137\"}',0,0,'','',0,'','info',NULL,NULL),
(454,1712928094,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412131256/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 57',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(455,1712928094,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: json_decode(): Argument #1 ($json) must be of type string, false given | TypeError thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412131256/local_packages/football/Classes/DataProcessing/JsonProcessor.php in line 57. Requested URL: https://team4.surfcamp.typo3.com/',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(456,1712928099,1,2,11,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":11,\"history\":\"138\"}',0,0,'','',0,'','info',NULL,NULL),
(457,1712928190,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412132213/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(458,1712928190,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412132213/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(459,1712928190,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412132213/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(460,1712928190,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412132213/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(461,1712928190,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412132213/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(462,1712928190,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412132213/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(463,1712929383,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Game on\",\"table\":\"tt_content\",\"uid\":6,\"history\":\"139\"}',0,0,'','',0,'','info',NULL,NULL),
(464,1712929455,1,2,7,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"History\",\"table\":\"pages\",\"uid\":7,\"history\":\"140\"}',7,0,'','',0,'','info',NULL,NULL),
(465,1712929724,1,1,12,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"From foundation to the regional league\",\"table\":\"tt_content\",\"uid\":12,\"pageTitle\":\"History\",\"pid\":7}',7,0,'NEW66193ab9ba4f2470835822','',0,'','info',NULL,NULL),
(466,1712929956,1,1,13,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"News about our club\",\"table\":\"tt_content\",\"uid\":13,\"pageTitle\":\"News\",\"pid\":2}',2,0,'NEW66193c777b975458170738','',0,'','info',NULL,NULL),
(467,1712929966,1,2,13,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":13,\"history\":\"143\"}',0,0,'','',0,'','info',NULL,NULL),
(468,1712930216,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":3,\"history\":\"144\"}',0,0,'','',0,'','info',NULL,NULL),
(469,1712930216,1,3,1,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"dummy_picture_football_2.jpg\",\"table\":\"sys_file_reference\",\"uid\":1,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(470,1712930265,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(471,1712930334,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412135801/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(472,1712930334,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412135801/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(473,1712930334,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412135801/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(474,1712930334,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412135801/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(475,1712930334,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412135801/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(476,1712930334,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412135801/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(477,1712930345,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412135801/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/system-information/render?token=--AnonymizedToken--&skipSessionUpdate=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(478,1712930345,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412135801/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/icons?token=--AnonymizedToken--&icon=%%5B%%22spinner-circle%%22%%2C%%22small%%22%%2Cnull%%2C%%22default%%22%%2C%%22default%%22%%5D',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(479,1712930870,1,3,8,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"Executive board\",\"table\":\"pages\",\"uid\":8,\"pageTitle\":\"Club\",\"pid\":4}',8,0,'','',0,'','info',NULL,NULL),
(480,1712931057,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(481,1712931085,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(482,1712931128,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"pages\"}',-1,0,'','',0,'','info',NULL,NULL),
(483,1712931495,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412141725/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(484,1712931495,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412141725/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(485,1712931495,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412141725/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(486,1712931495,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412141725/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(487,1712931495,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412141725/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(488,1712931495,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412141725/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(489,1712931565,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(490,1712931644,1,4,8,'tt_content',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Our biggest supporters\",\"table\":\"tt_content\",\"uid\":8,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(491,1712931644,1,2,8,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":8,\"history\":\"148\"}',0,0,'','',0,'','info',NULL,NULL),
(492,1712931730,1,4,8,'tt_content',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Our biggest supporters\",\"table\":\"tt_content\",\"uid\":8,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(493,1712931730,1,2,8,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":8,\"history\":\"150\"}',0,0,'','',0,'','info',NULL,NULL),
(494,1712931732,1,4,6,'tt_content',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Let\'s keep in touch\",\"table\":\"tt_content\",\"uid\":6,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(495,1712931732,1,2,6,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":6,\"history\":\"152\"}',0,0,'','',0,'','info',NULL,NULL),
(496,1712931747,1,1,14,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":14,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW661943a136e62569020283','',0,'','info',NULL,NULL),
(497,1712931802,1,2,14,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Our events - don\'t miss out\",\"table\":\"tt_content\",\"uid\":14,\"history\":\"154\"}',0,0,'','',0,'','info',NULL,NULL),
(498,1712932120,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(499,1712934072,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150007/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(500,1712934072,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150007/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(501,1712934072,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150007/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(502,1712934072,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150007/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(503,1712934072,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150007/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(504,1712934072,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150007/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(505,1712934068,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150007/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/system-information/render?token=--AnonymizedToken--&skipSessionUpdate=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(506,1712934391,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(507,1712934391,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(508,1712934391,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(509,1712934391,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(510,1712934391,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(511,1712934391,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412150537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(512,1712934730,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'83.57.17.91','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(513,1712935833,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(514,1712935833,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(515,1712935833,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(516,1712935833,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(517,1712935833,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(518,1712935833,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(519,1712935840,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/module/web/layout?id=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(520,1712935884,1,2,11,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":11,\"history\":\"155\"}',0,0,'','',0,'','info',NULL,NULL),
(521,1712935887,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(522,1712935908,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(523,1712935910,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(524,1712936167,1,4,8,'tt_content',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"Our biggest supporters\",\"table\":\"tt_content\",\"uid\":8,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(525,1712936170,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(526,1712936725,1,3,11,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"Trainer\",\"table\":\"pages\",\"uid\":11,\"pageTitle\":\"Club\",\"pid\":4}',11,0,'','',0,'','info',NULL,NULL),
(527,1712936755,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"pages\"}',-1,0,'','',0,'','info',NULL,NULL),
(528,1712936757,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(529,1712936763,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412152938/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(530,1712936772,1,3,9,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"Stadion\",\"table\":\"pages\",\"uid\":9,\"pageTitle\":\"Club\",\"pid\":4}',9,0,'','',0,'','info',NULL,NULL),
(531,1712936872,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"pages\"}',-1,0,'','',0,'','info',NULL,NULL),
(532,1712937153,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(533,1712937155,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"pages\"}',-1,0,'','',0,'','info',NULL,NULL),
(534,1712937270,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412155337/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(535,1712937270,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412155337/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(536,1712937270,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412155337/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(537,1712937270,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412155337/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(538,1712937270,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412155337/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(539,1712937270,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412155337/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(540,1712937326,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412155337/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(541,1712937457,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412155337/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(542,1712937471,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412155337/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(543,1712938920,1,1,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"Anton Korel\",\"table\":\"tt_content\",\"uid\":15,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'NEW66195f22ee027443322045','',0,'','info',NULL,NULL),
(544,1712938970,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(545,1712938970,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(546,1712938970,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(547,1712938970,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(548,1712938970,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(549,1712938970,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162139/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(550,1712939004,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"dummy_player_1.jpg\",\"destination\":\"\\/images_be\\/players\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(551,1712939017,1,2,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":15,\"history\":\"160\"}',0,0,'','',0,'','info',NULL,NULL),
(552,1712939017,1,1,10,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"dummy_player_1.jpg\",\"table\":\"sys_file_reference\",\"uid\":10,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'NEW661960072be61202364498','',0,'','info',NULL,NULL),
(553,1712939017,1,2,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":15,\"history\":\"162\"}',0,0,'','',0,'','info',NULL,NULL),
(554,1712939157,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162139/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(555,1712939359,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/system-information/render?token=--AnonymizedToken--&skipSessionUpdate=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(556,1712939361,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(557,1712939361,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(558,1712939361,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(559,1712939361,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(560,1712939361,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(561,1712939361,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(562,1712939369,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/file/exists?token=--AnonymizedToken--&fileName=dummy_player_2.jpg&fileTarget=1%%3A%%2Fimages_be%%2Fplayers%%2F',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(563,1712939370,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/ajax/system-information/render?token=--AnonymizedToken--&skipSessionUpdate=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(564,1712939416,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(565,1712939460,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(566,1712939478,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(567,1712939484,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(568,1712939502,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(569,1712939503,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(570,1712939505,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(571,1712939506,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(572,1712939507,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(573,1712939509,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(574,1712939509,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(575,1712939514,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(576,1712939518,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(577,1712939531,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(578,1712939544,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(579,1712939545,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(580,1712939549,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(581,1712939553,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(582,1712939798,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(583,1712939855,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412162810/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(584,1712939996,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412163844/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(585,1712939996,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412163844/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(586,1712939996,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412163844/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(587,1712939996,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412163844/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(588,1712939996,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412163844/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(589,1712939996,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412163844/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(590,1712940042,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(591,1712940037,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412163844/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(592,1712940076,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(593,1712940117,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(594,1712940117,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(595,1712940117,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(596,1712940117,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(597,1712940117,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(598,1712940117,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(599,1712940126,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/module/web/layout?token=--AnonymizedToken--&id=1',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(600,1712940144,1,2,1,'pages',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"pages\",\"uid\":1,\"history\":\"163\"}',1,0,'','',0,'','info',NULL,NULL),
(601,1712940170,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'145.224.124.57','',-1,0,'','',0,'','warning',NULL,NULL),
(602,1712940532,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'83.57.17.91','{\"identifier\":\"TestJpegDatei.jpg\",\"destination\":\"\\/user_upload\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(603,1712940534,1,2,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":15,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(604,1712940534,1,1,11,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"TestJpegDatei.jpg\",\"table\":\"sys_file_reference\",\"uid\":11,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'NEW661965f5077ea560304909','',0,'','info',NULL,NULL),
(605,1712940534,1,2,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":15,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(606,1712940534,1,3,10,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"dummy_player_1.jpg\",\"table\":\"sys_file_reference\",\"uid\":10,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'','',0,'','info',NULL,NULL),
(607,1712940542,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(608,1712940617,1,2,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":15,\"history\":\"166\"}',0,0,'','',0,'','info',NULL,NULL),
(609,1712940617,1,3,11,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"TestJpegDatei.jpg\",\"table\":\"sys_file_reference\",\"uid\":11,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'','',0,'','info',NULL,NULL),
(610,1712940625,1,2,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":15,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(611,1712940625,1,1,12,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"football_player_dummy.jpg\",\"table\":\"sys_file_reference\",\"uid\":12,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'NEW66196650b60c7839689322','',0,'','info',NULL,NULL),
(612,1712940625,1,2,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":15,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(613,1712940634,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(614,1712940818,1,4,7,'tt_content',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":7,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(615,1712940818,1,2,7,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":7,\"history\":\"170\"}',0,0,'','',0,'','info',NULL,NULL),
(616,1712940900,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(617,1712940924,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(618,1712941158,1,2,7,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Your City. Your Club. Your Sport.\",\"table\":\"tt_content\",\"uid\":7,\"history\":\"171\"}',0,0,'','',0,'','info',NULL,NULL),
(619,1712941162,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(620,1712941179,1,2,7,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":7,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(621,1712941179,1,1,13,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"dummy_picture_football.jpg\",\"table\":\"sys_file_reference\",\"uid\":13,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW66196879e613c502231535','',0,'','info',NULL,NULL),
(622,1712941179,1,2,7,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":7,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(623,1712941182,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(624,1712941196,1,2,7,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Your City. Your Club.\",\"table\":\"tt_content\",\"uid\":7,\"history\":\"173\"}',0,0,'','',0,'','info',NULL,NULL),
(625,1712941196,1,2,13,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":13,\"history\":\"174\"}',0,0,'','',0,'','info',NULL,NULL),
(626,1712941199,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(627,1712941274,1,2,7,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":7,\"history\":\"175\"}',0,0,'','',0,'','info',NULL,NULL),
(628,1712941278,1,2,7,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":7,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(629,1712941278,1,2,13,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":13,\"history\":\"176\"}',0,0,'','',0,'','info',NULL,NULL),
(630,1712941280,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(631,1712941698,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412164102/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(632,1712941888,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171035/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(633,1712941888,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171035/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(634,1712941888,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171035/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(635,1712941888,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171035/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(636,1712941888,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171035/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(637,1712941888,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171035/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(638,1712942032,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171035/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(639,1712942096,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171035/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(640,1712942118,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(641,1712942118,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(642,1712942118,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(643,1712942118,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(644,1712942118,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(645,1712942118,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(646,1712942128,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(647,1712942164,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(648,1712942171,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(649,1712942184,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(650,1712942267,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(651,1712942320,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412171408/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(652,1712942511,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(653,1712942511,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(654,1712942511,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(655,1712942511,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(656,1712942511,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(657,1712942511,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(658,1712942520,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(659,1712942523,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/record/commit?token=--AnonymizedToken--&cacheCmd=all',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(660,1712942525,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/module/web/layout?id=12',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(661,1712942530,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(662,1712942531,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(663,1712942532,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(664,1712942535,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(665,1712942538,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(666,1712942569,1,2,14,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"Our events \",\"table\":\"tt_content\",\"uid\":14,\"history\":\"177\"}',0,0,'','',0,'','info',NULL,NULL),
(667,1712942574,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172041/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(668,1712942576,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(669,1712942595,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(670,1712942597,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(671,1712942604,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172237/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(672,1712942606,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172237/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(673,1712942606,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172237/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(674,1712942606,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172237/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(675,1712942606,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172237/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(676,1712942606,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172237/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(677,1712942606,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172237/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(678,1712942616,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1517949793: Backend access by browser is locked for maintenance. Remove lock by removing the file \"typo3conf/LOCK_BACKEND\" or use CLI-scripts. | TYPO3\\CMS\\Backend\\Exception\\BackendLockedException thrown in file /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172237/vendor/typo3/cms-backend/Classes/Middleware/LockedBackendGuard.php in line 94. Requested URL: https://team4.surfcamp.typo3.com/typo3/record/edit?token=--AnonymizedToken--&edit%%5Btt_content%%5D%%5B14%%5D=edit&returnUrl=/typo3/module/web/layout?token%%3D--AnonymizedToken--%%26id%%3D1%%23element-tt_content-14',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','error',NULL,NULL),
(679,1712942634,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172237/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(680,1712942709,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(681,1712942737,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(682,1712942742,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(683,1712942747,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(684,1712942747,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(685,1712942747,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(686,1712942747,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(687,1712942747,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(688,1712942747,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(689,1712942751,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(690,1712942889,1,2,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":15,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(691,1712942889,1,1,14,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'83.57.17.91','{\"title\":\"dummy_picture_football.jpg\",\"table\":\"sys_file_reference\",\"uid\":14,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'NEW66196f289940f406197188','',0,'','info',NULL,NULL),
(692,1712942889,1,2,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'83.57.17.91','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":15,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(693,1712942889,1,3,12,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'83.57.17.91','{\"title\":\"football_player_dummy.jpg\",\"table\":\"sys_file_reference\",\"uid\":12,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'','',0,'','info',NULL,NULL),
(694,1712942996,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(695,1712943005,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(696,1712943010,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(697,1712943018,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(698,1712943053,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(699,1712943062,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412172457/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(700,1712943071,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(701,1712943080,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(702,1712943080,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(703,1712943080,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(704,1712943080,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(705,1712943080,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(706,1712943080,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(707,1712943174,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(708,1712943174,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'145.224.124.57','',-1,0,'','',0,'','warning',NULL,NULL),
(709,1712943197,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(710,1712943273,1,1,0,'',0,0,'User {username} has cleared the cache (cacheCmd={command})',3,'default',0,'83.57.17.91','{\"username\":\"admin\",\"command\":\"all\"}',-1,0,'','',0,'','info',NULL,NULL),
(711,1712943276,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'83.57.17.91','',-1,0,'','',0,'','warning',NULL,NULL),
(712,1713143312,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2001:9e8:29ba:3d00:5598:d2ef:9ec3:9d3c','',-1,0,'','',0,'','warning',NULL,NULL),
(713,1713251604,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'91.46.186.90','',-1,0,'','',0,'','warning',NULL,NULL),
(714,1713340253,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'89.244.118.148','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(715,1713340379,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'89.244.118.148','',-1,0,'','',0,'','warning',NULL,NULL),
(716,1713340522,1,2,0,'',0,0,'User %s logged out from TYPO3 Backend',255,'user',1,'89.244.118.148','[\"admin\"]',-1,0,'','',0,'','info',NULL,NULL),
(717,1713625911,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','',-1,0,'','',0,'','warning',NULL,NULL),
(718,1713626103,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(719,1713626388,1,2,3,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":3,\"history\":\"180\"}',0,0,'','',0,'','info',NULL,NULL),
(720,1713626391,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','',-1,0,'','',0,'','warning',NULL,NULL),
(721,1713628641,1,1,16,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":16,\"pageTitle\":\"Events\",\"pid\":3}',3,0,'NEW6623e5cdea274439302465','',0,'','info',NULL,NULL),
(722,1713628643,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','',-1,0,'','',0,'','warning',NULL,NULL),
(723,1713628794,1,2,16,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','{\"title\":\"Our Game Results\",\"table\":\"tt_content\",\"uid\":16,\"history\":\"182\"}',0,0,'','',0,'','info',NULL,NULL),
(724,1713628986,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','',-1,0,'','',0,'','warning',NULL,NULL),
(725,1713628992,1,2,16,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":16,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(726,1713628994,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','',-1,0,'','',0,'','warning',NULL,NULL),
(727,1713629097,1,1,17,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','{\"title\":\"Our Game Results\",\"table\":\"tt_content\",\"uid\":17,\"pageTitle\":\"Events\",\"pid\":3}',3,0,'NEW6623e79e6be28895189129','',0,'','info',NULL,NULL),
(728,1713629098,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','',-1,0,'','',0,'','warning',NULL,NULL),
(729,1713630299,1,1,18,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2003:6:31ee:58cc:b18b:d2a2:5ce9:5a11','{\"title\":\"Our companions and sponsors\",\"table\":\"tt_content\",\"uid\":18,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW6623e825a9dde319951973','',0,'','info',NULL,NULL),
(730,1713767891,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2a02:8070:a80:bce0:e8e6:b88f:e8f2:5576','',-1,0,'','',0,'','warning',NULL,NULL),
(731,1713783244,0,3,0,'',0,3,'Login-attempt from ###IP###, username \'%s\', password not accepted!',255,'user',1,'88.133.160.219','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(732,1713783253,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'88.133.160.219','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(733,1713959921,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2a01:c23:8cab:2400:499e:a35c:cc50:73b4','',-1,0,'','',0,'','warning',NULL,NULL),
(734,1714044966,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'2a02:2f0e:802:d500:a1dd:f21:ca82:b01d','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(735,1714365566,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'93.216.107.211','',-1,0,'','',0,'','warning',NULL,NULL),
(736,1714365699,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'93.216.107.211','',-1,0,'','',0,'','warning',NULL,NULL),
(737,1715608591,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'93.255.64.145','',-1,0,'','',0,'','warning',NULL,NULL),
(738,1715609212,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'2a02:2f0e:a03:6700:9465:6934:cf7b:f273','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(739,1715611041,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'93.255.64.145','',-1,0,'','',0,'','warning',NULL,NULL),
(740,1716447530,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.56.123','',-1,0,'','',0,'','warning',NULL,NULL),
(741,1716788868,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240412173020/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'89.244.118.148','',-1,0,'','',0,'','warning',NULL,NULL),
(742,1717682909,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'2a02:2f0e:a03:6700:9ca1:ebbd:8b9a:4b41','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(743,1718175995,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612070537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(744,1718175995,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612070537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(745,1718175995,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612070537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(746,1718175995,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612070537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(747,1718175995,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612070537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(748,1718175995,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612070537/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(749,1718184664,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(750,1718184664,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(751,1718184664,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(752,1718184664,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(753,1718184664,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(754,1718184664,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(755,1718813321,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','',-1,0,'','',0,'','warning',NULL,NULL),
(756,1718813376,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(757,1718816365,1,3,14,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"dummy_picture_football.jpg\",\"table\":\"sys_file_reference\",\"uid\":14,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'','',0,'','info',NULL,NULL),
(758,1718816365,1,3,15,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"Anton Korel\",\"table\":\"tt_content\",\"uid\":15,\"pageTitle\":\"Team\",\"pid\":12}',12,0,'','',0,'','info',NULL,NULL),
(759,1718816477,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','',-1,0,'','',0,'','warning',NULL,NULL),
(760,1718817390,1,2,12,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"FC Bigfoot\'s history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support.\\r\\nFC Bigfooo...\",\"table\":\"tt_content\",\"uid\":12,\"history\":\"187\"}',0,0,'','',0,'','info',NULL,NULL),
(761,1718817402,1,2,12,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support.\\r\\nFC Bigfooot is a cl...\",\"table\":\"tt_content\",\"uid\":12,\"history\":\"188\"}',0,0,'','',0,'','info',NULL,NULL),
(762,1718817411,1,2,12,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support. FC Bigfooot is a clu...\",\"table\":\"tt_content\",\"uid\":12,\"history\":\"189\"}',0,0,'','',0,'','info',NULL,NULL),
(763,1718817709,1,1,19,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"2001 - 2004\",\"table\":\"tt_content\",\"uid\":19,\"pageTitle\":\"History\",\"pid\":7}',7,0,'NEW667312924c520136959069','',0,'','info',NULL,NULL),
(764,1718818153,1,1,20,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"2005 - 2018\",\"table\":\"tt_content\",\"uid\":20,\"pageTitle\":\"History\",\"pid\":7}',7,0,'NEW667314435fd79311034117','',0,'','info',NULL,NULL),
(765,1718818154,1,2,20,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":20,\"history\":\"192\"}',0,0,'','',0,'','info',NULL,NULL),
(766,1718818320,1,1,21,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"2018 - 2024\",\"table\":\"tt_content\",\"uid\":21,\"pageTitle\":\"History\",\"pid\":7}',7,0,'NEW667315bd6b697812543896','',0,'','info',NULL,NULL),
(767,1718818377,1,2,21,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3fe8:c200:4c13:fdaa:ed3c:ea49','{\"title\":\"Becoming a community\",\"table\":\"tt_content\",\"uid\":21,\"history\":\"194\"}',0,0,'','',0,'','info',NULL,NULL),
(768,1718866540,1,1,0,'',0,0,'User %s logged in from ###IP###',255,'user',1,'37.24.55.50','[\"admin\"]',-1,-99,'','',0,'','info',NULL,NULL),
(769,1718866561,1,2,21,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"The biggest milestone was reached in 2018 when FC Bigfoot was promoted to the regional league for the first time. This achievement marked a turning point in the club\'s history. The promotion brought a...\",\"table\":\"tt_content\",\"uid\":21,\"history\":\"195\"}',0,0,'','',0,'','info',NULL,NULL),
(770,1718867329,1,1,22,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'37.24.55.50','{\"title\":\"Our latest Game Results\",\"table\":\"tt_content\",\"uid\":22,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6673d57427f37280261484','',0,'','info',NULL,NULL),
(771,1718867332,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.55.50','',-1,0,'','',0,'','warning',NULL,NULL),
(772,1718870066,1,1,23,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'37.24.55.50','{\"title\":\"Our Core Values\",\"table\":\"tt_content\",\"uid\":23,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6673df1995b23431075219','',0,'','info',NULL,NULL),
(773,1718870067,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.55.50','',-1,0,'','',0,'','warning',NULL,NULL),
(774,1718870096,1,2,23,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, f...\",\"table\":\"tt_content\",\"uid\":23,\"history\":\"198\"}',0,0,'','',0,'','info',NULL,NULL),
(775,1718870098,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.55.50','',-1,0,'','',0,'','warning',NULL,NULL),
(776,1718870125,1,3,23,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'37.24.55.50','{\"title\":\"Our Core Values\",\"table\":\"tt_content\",\"uid\":23,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(777,1718870173,1,1,24,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'37.24.55.50','{\"title\":\"Our Core Values\",\"table\":\"tt_content\",\"uid\":24,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6673e0718ba07602827996','',0,'','info',NULL,NULL),
(778,1718870174,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.55.50','',-1,0,'','',0,'','warning',NULL,NULL),
(779,1718870247,1,4,24,'tt_content',0,0,'Moved record \"{title}\" ({table}:{uid}) on page \"{pageTitle}\" ({pid})',1,'content',4,'37.24.55.50','{\"title\":\"Our Core Values\",\"table\":\"tt_content\",\"uid\":24,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(780,1718870247,1,2,24,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":24,\"history\":\"202\"}',0,0,'','',0,'','info',NULL,NULL),
(781,1718870249,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.55.50','',-1,0,'','',0,'','warning',NULL,NULL),
(782,1718870271,1,3,2,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'37.24.55.50','{\"title\":\"football_player_dummy.jpg\",\"table\":\"sys_file_reference\",\"uid\":2,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(783,1718870271,1,3,2,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'37.24.55.50','{\"title\":\"Player of the month\",\"table\":\"tt_content\",\"uid\":2,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(784,1718873192,1,1,25,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'37.24.55.50','{\"title\":\"Our Core Values\",\"table\":\"tt_content\",\"uid\":25,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'NEW6673ec596ac70087203653','',0,'','info',NULL,NULL),
(785,1718873194,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.55.50','',-1,0,'','',0,'','warning',NULL,NULL),
(786,1718873442,1,3,25,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'37.24.55.50','{\"title\":\"Our Core Values\",\"table\":\"tt_content\",\"uid\":25,\"pageTitle\":\"Home\",\"pid\":1}',1,0,'','',0,'','info',NULL,NULL),
(787,1718873485,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.55.50','',-1,0,'','',0,'','warning',NULL,NULL),
(788,1718873894,1,1,26,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'37.24.55.50','{\"title\":\"FC Bigfoot\'s 15th Charity Tournament\",\"table\":\"tt_content\",\"uid\":26,\"pageTitle\":\"News\",\"pid\":2}',2,0,'NEW6673ee292b9f7855718090','',0,'','info',NULL,NULL),
(789,1718873926,1,2,26,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"FC Bigfoot proudly announces the 15th edition of our charity tournament! This beloved event unites soccer enthusiasts, players, and supporters from across the region for a day filled with thrilling ma...\",\"table\":\"tt_content\",\"uid\":26,\"history\":\"208\"}',0,0,'','',0,'','info',NULL,NULL),
(790,1718873998,1,6,0,'',0,0,'Directory \"{identifier}\" created in \"{destination}\"',2,'file',0,'37.24.55.50','{\"identifier\":\"content_pictures\",\"destination\":\"\\/images_be\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(791,1718874025,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'37.24.55.50','{\"identifier\":\"example_pic_1.jpg\",\"destination\":\"\\/images_be\\/content_pictures\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(792,1718874038,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'37.24.55.50','{\"identifier\":\"example_pic_2.jpg\",\"destination\":\"\\/images_be\\/content_pictures\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(793,1718874049,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'37.24.55.50','{\"identifier\":\"example_pic_3.jpg\",\"destination\":\"\\/images_be\\/content_pictures\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(794,1718874078,1,2,26,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":26,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(795,1718874078,1,1,15,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'37.24.55.50','{\"title\":\"example_pic_1.jpg\",\"table\":\"sys_file_reference\",\"uid\":15,\"pageTitle\":\"News\",\"pid\":2}',2,0,'NEW6673efdc8b4f1789178063','',0,'','info',NULL,NULL),
(796,1718874078,1,2,26,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":26,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(797,1718874107,1,2,26,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":26,\"history\":\"210\"}',0,0,'','',0,'','info',NULL,NULL),
(798,1718874107,1,2,15,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":15,\"history\":\"211\"}',0,0,'','',0,'','info',NULL,NULL),
(799,1718874189,1,2,26,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":26,\"history\":\"212\"}',0,0,'','',0,'','info',NULL,NULL),
(800,1718874189,1,3,15,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'37.24.55.50','{\"title\":\"example_pic_1.jpg\",\"table\":\"sys_file_reference\",\"uid\":15,\"pageTitle\":\"News\",\"pid\":2}',2,0,'','',0,'','info',NULL,NULL),
(801,1718874342,1,2,26,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":26,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(802,1718874457,1,1,27,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'37.24.55.50','{\"title\":\"Get Ready for Another Exciting Match!\",\"table\":\"tt_content\",\"uid\":27,\"pageTitle\":\"News\",\"pid\":2}',2,0,'NEW6673f0ff12462999436968','',0,'','info',NULL,NULL),
(803,1718874835,1,1,28,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'37.24.55.50','{\"title\":\"Our New Supporter: TYPO3 Association\",\"table\":\"tt_content\",\"uid\":28,\"pageTitle\":\"News\",\"pid\":2}',2,0,'NEW6673f1e221ad6817410959','',0,'','info',NULL,NULL),
(804,1718874847,1,2,28,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"Our New Supporter\",\"table\":\"tt_content\",\"uid\":28,\"history\":\"216\"}',0,0,'','',0,'','info',NULL,NULL),
(805,1718875294,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.55.50','',-1,0,'','',0,'','warning',NULL,NULL),
(806,1718897025,1,2,17,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'37.24.55.50','{\"title\":\"Stay updated with the latest scores and outcomes of FC Bigfoot\'s matches. Here, you will find a comprehensive list of our recent game results. Keep checking back for the most current information on ou...\",\"table\":\"tt_content\",\"uid\":17,\"history\":\"217\"}',0,0,'','',0,'','info',NULL,NULL),
(807,1718897027,1,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240612092957/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'37.24.55.50','',-1,0,'','',0,'','warning',NULL,NULL),
(808,1718897287,1,1,29,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'37.24.55.50','{\"title\":\"Become a Member today\",\"table\":\"tt_content\",\"uid\":29,\"pageTitle\":\"Membership\",\"pid\":10}',10,0,'NEW66744997dcbf1572736325','',0,'','info',NULL,NULL),
(809,1718913643,1,2,18,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club.\\r\\nOur supporters and compani...\",\"table\":\"tt_content\",\"uid\":18,\"history\":\"219\"}',0,0,'','',0,'','info',NULL,NULL),
(810,1718913729,1,2,18,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club. Our supporters and companio...\",\"table\":\"tt_content\",\"uid\":18,\"history\":\"220\"}',0,0,'','',0,'','info',NULL,NULL),
(811,1718914434,1,6,0,'',0,0,'Directory \"{identifier}\" created in \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"sponsor_logos\",\"destination\":\"\\/images_be\\/logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(812,1718914452,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"Queo | Dresden_id4yFSB3bK_2.svg\",\"destination\":\"\\/images_be\\/logos\\/sponsor_logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(813,1718914463,1,4,0,'',0,0,'File \"{identifier}\" deleted',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"\\/images_be\\/logos\\/sponsor_logos\\/Queo___Dresden_id4yFSB3bK_2.svg\"}',-1,0,'','',0,'','info',NULL,NULL),
(814,1718914479,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"logo_queo_test.svg\",\"destination\":\"\\/images_be\\/logos\\/sponsor_logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(815,1718914507,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"logo_contenance_test.svg\",\"destination\":\"\\/images_be\\/logos\\/sponsor_logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(816,1718914521,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"logo_decode_test.svg\",\"destination\":\"\\/images_be\\/logos\\/sponsor_logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(817,1718914571,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"TYPO3_logo_test.png\",\"destination\":\"\\/images_be\\/logos\\/sponsor_logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(818,1718914635,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"KM2_logo_test.svg\",\"destination\":\"\\/images_be\\/logos\\/sponsor_logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(819,1718914817,1,1,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748ec318891803582636','',0,'','info',NULL,NULL),
(820,1718914817,1,1,7,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":7,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748ed3a4580840428256','',0,'','info',NULL,NULL),
(821,1718914817,1,1,16,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"TYPO3_logo_test.png\",\"table\":\"sys_file_reference\",\"uid\":16,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748ee26d043478069539','',0,'','info',NULL,NULL),
(822,1718914817,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(823,1718914817,1,2,7,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":7,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(824,1718914866,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":\"224\"}',0,0,'','',0,'','info',NULL,NULL),
(825,1718914866,1,2,7,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"TYPO3\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":7,\"history\":\"225\"}',0,0,'','',0,'','info',NULL,NULL),
(826,1718914866,1,2,16,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":16,\"history\":\"226\"}',0,0,'','',0,'','info',NULL,NULL),
(827,1718914901,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(828,1718914901,1,1,8,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":8,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748f4598f1f624037057','',0,'','info',NULL,NULL),
(829,1718914901,1,1,17,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"logo_queo_test.svg\",\"table\":\"sys_file_reference\",\"uid\":17,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748f4e8d684500960079','',0,'','info',NULL,NULL),
(830,1718914901,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(831,1718914901,1,2,8,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":8,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(832,1718914918,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":\"229\"}',0,0,'','',0,'','info',NULL,NULL),
(833,1718914918,1,2,17,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":17,\"history\":\"230\"}',0,0,'','',0,'','info',NULL,NULL),
(834,1718914918,1,3,7,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":7,\"pageTitle\":\"[root-level]\",\"pid\":null}',0,0,'','',0,'','info',NULL,NULL),
(835,1718914977,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"TYPO3_logo_test_2.svg\",\"destination\":\"\\/images_be\\/logos\\/sponsor_logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(836,1718914999,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"TYPO3_logo_test.png\",\"destination\":\"\\/images_be\\/logos\\/sponsor_logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(837,1718915025,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(838,1718915025,1,1,9,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":9,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748fca02ee3444714941','',0,'','info',NULL,NULL),
(839,1718915025,1,1,18,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"TYPO3_logo_test.png\",\"table\":\"sys_file_reference\",\"uid\":18,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748fcdb0fb1699956306','',0,'','info',NULL,NULL),
(840,1718915025,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(841,1718915025,1,2,9,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":9,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(842,1718915076,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(843,1718915076,1,1,10,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":10,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748fdc9af50655945842','',0,'','info',NULL,NULL),
(844,1718915076,1,1,11,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":11,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748fe994329972653472','',0,'','info',NULL,NULL),
(845,1718915076,1,1,12,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":12,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748ff261470327347559','',0,'','info',NULL,NULL),
(846,1718915076,1,1,13,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":13,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748ffac533f061159295','',0,'','info',NULL,NULL),
(847,1718915076,1,1,19,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"TYPO3_logo_test_2.svg\",\"table\":\"sys_file_reference\",\"uid\":19,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748fe17dca5579095006','',0,'','info',NULL,NULL),
(848,1718915076,1,1,20,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"KM2_logo_test.svg\",\"table\":\"sys_file_reference\",\"uid\":20,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748fee3a662486191406','',0,'','info',NULL,NULL),
(849,1718915076,1,1,21,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"logo_decode_test.svg\",\"table\":\"sys_file_reference\",\"uid\":21,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66748ff61c268972579857','',0,'','info',NULL,NULL),
(850,1718915076,1,1,22,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"logo_contenance_test.svg\",\"table\":\"sys_file_reference\",\"uid\":22,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW667490028ac06633154032','',0,'','info',NULL,NULL),
(851,1718915076,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(852,1718915076,1,2,10,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":10,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(853,1718915076,1,2,11,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":11,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(854,1718915076,1,2,12,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":12,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(855,1718915076,1,2,13,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":13,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(856,1718915076,1,3,9,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was deleted from page \"{pageTitle}\" ({pid})',1,'content',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":9,\"pageTitle\":\"[root-level]\",\"pid\":null}',0,0,'','',0,'','info',NULL,NULL),
(857,1718915178,1,1,0,'',0,0,'Uploading file \"{identifier}\" to \"{destination}\"',2,'file',0,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"identifier\":\"in2code_logo_test.svg\",\"destination\":\"\\/images_be\\/logos\\/sponsor_logos\\/\"}',-1,0,'','',0,'','info',NULL,NULL),
(858,1718915307,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(859,1718915307,1,2,8,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"queo\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":8,\"history\":\"243\"}',0,0,'','',0,'','info',NULL,NULL),
(860,1718915307,1,1,14,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"in2code\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":14,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66749080d7b8c856785004','',0,'','info',NULL,NULL),
(861,1718915307,1,2,10,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"TYPO3 Association\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":10,\"history\":\"245\"}',0,0,'','',0,'','info',NULL,NULL),
(862,1718915307,1,2,11,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"KM2 >>\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":11,\"history\":\"246\"}',0,0,'','',0,'','info',NULL,NULL),
(863,1718915307,1,2,12,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"DECODE\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":12,\"history\":\"247\"}',0,0,'','',0,'','info',NULL,NULL),
(864,1718915307,1,2,13,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"contenance GmbH\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":13,\"history\":\"248\"}',0,0,'','',0,'','info',NULL,NULL),
(865,1718915307,1,1,23,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was inserted on page \"{pageTitle}\" ({pid})',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"in2code_logo_test.svg\",\"table\":\"sys_file_reference\",\"uid\":23,\"pageTitle\":\"Sponsors\",\"pid\":5}',5,0,'NEW66749086726d1452702433','',0,'','info',NULL,NULL),
(866,1718915307,1,2,19,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":19,\"history\":\"250\"}',0,0,'','',0,'','info',NULL,NULL),
(867,1718915307,1,2,20,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":20,\"history\":\"251\"}',0,0,'','',0,'','info',NULL,NULL),
(868,1718915307,1,2,21,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":21,\"history\":\"252\"}',0,0,'','',0,'','info',NULL,NULL),
(869,1718915307,1,2,22,'sys_file_reference',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"N\\/A\",\"table\":\"sys_file_reference\",\"uid\":22,\"history\":\"253\"}',0,0,'','',0,'','info',NULL,NULL),
(870,1718915307,1,2,30,'tt_content',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tt_content\",\"uid\":30,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(871,1718915307,1,2,14,'tx_football_domain_model_sponsor',0,0,'Record \"{title}\" ({table}:{uid}) was updated',1,'content',10,'2a02:3100:3c2c:9100:c927:1002:79f1:c47d','{\"title\":\"[No title]\",\"table\":\"tx_football_domain_model_sponsor\",\"uid\":14,\"history\":0}',0,0,'','',0,'','info',NULL,NULL),
(872,1718950389,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240621061220/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(873,1718950389,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240621061220/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(874,1718950389,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240621061220/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(875,1718950389,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240621061220/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(876,1718950389,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240621061220/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1061',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(877,1718950389,2,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: Undefined array key \"value\" in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240621061220/vendor/typo3/cms-core/Classes/Database/Schema/DefaultTcaSchema.php line 1068',5,'php',0,'','',-1,0,'','',0,'','warning',NULL,NULL),
(878,1719218075,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /srv/vhosts/team4.surfcamp.typo3.com/site/mage/releases/20240621061220/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'95.91.212.179','',-1,0,'','',0,'','warning',NULL,NULL),
(879,1719235026,0,0,0,'',0,2,'Core: Error handler (FE): PHP Warning: file_get_contents(https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json): Failed to open stream: HTTP request failed! HTTP/1.1 401 Unauthorized\r\n in /var/www/html/local_packages/football/Classes/DataProcessing/JsonProcessor.php line 68',5,'php',0,'192.168.32.6','',-1,0,'','',0,'','warning',NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_messenger_messages`
--

DROP TABLE IF EXISTS `sys_messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_messenger_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_name` (`queue_name`),
  KEY `available_at` (`available_at`),
  KEY `delivered_at` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_messenger_messages`
--

LOCK TABLES `sys_messenger_messages` WRITE;
/*!40000 ALTER TABLE `sys_messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES
('022f7f2caf0f785f14df242aa8e9738b','tt_content',8,'sponsors','','','',0,0,'tx_football_domain_model_sponsor',1,''),
('03bded1c4c9399e7da3658e7cb5dad73','sys_file_reference',21,'uid_local','','','',0,0,'sys_file',32,''),
('03e925867c5ac09b11c9c5094df32965','sys_file',35,'storage','','','',0,0,'sys_file_storage',1,''),
('0ad00e77a175a4a5d134cc2b115839fd','sys_file',20,'storage','','','',0,0,'sys_file_storage',1,''),
('0bc75fc48a18f1b7592b49955076fe97','sys_file',6,'storage','','','',0,0,'sys_file_storage',1,''),
('0bf363f198352c1f251386c0a559f6ac','sys_file',3,'metadata','','','',0,0,'sys_file_metadata',3,''),
('0efef118f992891c136761e4b0411f85','pages',1,'data_privacy','','typolink','fbfdb1a9605d5421cf93426fc4857ff7:0',-1,0,'pages',17,''),
('13f0f0c13635842dc740b6661e42710b','tx_football_domain_model_sponsor',6,'image','','','',0,0,'sys_file_reference',8,''),
('1439a6d620086c2eef1eed9d08b6109a','tt_content',30,'sponsors','','','',1,0,'tx_football_domain_model_sponsor',14,''),
('145b8b7e03e349fb2b32fc56656579a5','tx_football_domain_model_sponsor',2,'image','','','',0,0,'sys_file_reference',4,''),
('14f80397928686d5447f685442ef8090','tt_content',30,'sponsors','','','',2,0,'tx_football_domain_model_sponsor',10,''),
('151deed1928f4685d0b95b855f4fb63b','tt_content',6,'buttons','','','',1,0,'tx_football_domain_model_link',3,''),
('15597f65d7df3a40d1e792514c91c69f','sys_file',10,'storage','','','',0,0,'sys_file_storage',1,''),
('1c945e4964de46210b773ad9a49e73f8','tt_content',5,'pi_flexform','sDEF/lDEF/settings.persistenceIdentifier/vDEF/','formPersistenceIdentifier','783cfa6e61d573dd0225bed63521145f',-1,0,'_STRING',0,'EXT:football/Configuration/Form/FormDefinitions/contactForm.form.yaml'),
('1c9b8784c1518ef7b22704c4fc698ca9','sys_file',2,'storage','','','',0,0,'sys_file_storage',1,''),
('1d0c915ba80d50b79070fee03197459d','sys_file',31,'storage','','','',0,0,'sys_file_storage',1,''),
('205ee1e7af4e30938944dda3fc6a9e60','sys_file',13,'storage','','','',0,0,'sys_file_storage',1,''),
('24d47b29aa969cf4db8635e76dd1c386','sys_file',3,'storage','','','',0,0,'sys_file_storage',1,''),
('257f5aa6298ff7205f9e27cafe41c46e','sys_file',28,'storage','','','',0,0,'sys_file_storage',1,''),
('2904d2268da6711d186f124299916387','sys_file',27,'storage','','','',0,0,'sys_file_storage',1,''),
('29d2e61868cd54dde418f7f79b6cd0c4','index_config',1,'alternative_source_pid','','','',0,0,'pages',1,''),
('2ddbbfa18d04c32952fd3815cf7c9839','tt_content',3,'button_link','','typolink','09ebe10f313ce7b33eb83a294c50e8b6:0',-1,0,'pages',10,''),
('3b51db22984841ce720834aa0e18a30a','tx_football_domain_model_sponsor',13,'image','','','',0,0,'sys_file_reference',22,''),
('3f31404ec5501c8c85e19ebb35dd6b20','tx_football_domain_model_sponsor',3,'image','','','',0,0,'sys_file_reference',5,''),
('45491331fdb3cba18904110be4b946ea','sys_file',21,'storage','','','',0,0,'sys_file_storage',1,''),
('4704c6d8c7cef758402b0cd7f77ec6df','tx_football_domain_model_sponsor',10,'image','','','',0,0,'sys_file_reference',19,''),
('472f994b5f596b2cb9075220ba25d61d','tt_content',16,'file_link','','typolink','ec76ee46bc506b37dd85168f6c231904:0',-1,0,'sys_file',14,''),
('4750dd38eb5ff9d98e5df04ea4a442c4','sys_file',32,'storage','','','',0,0,'sys_file_storage',1,''),
('4b5f72f79c4ccc7a1ecb6188f0293792','tt_content',7,'assets','','','',0,0,'sys_file_reference',13,''),
('4d2dfab317596b05adf9ba372a7363c3','tt_content',8,'sponsors','','','',2,0,'tx_football_domain_model_sponsor',3,''),
('56e4e8537bcee3014e2ac130b0b35a42','sys_file',15,'storage','','','',0,0,'sys_file_storage',1,''),
('628c61629f174390b71b92a477f095a1','tt_content',30,'sponsors','','','',5,0,'tx_football_domain_model_sponsor',13,''),
('63cbcd5625ef74e8252c29cc0145c690','sys_file',12,'storage','','','',0,0,'sys_file_storage',1,''),
('64ff7a1526ddd573999762cc183572d6','sys_file_reference',18,'uid_local','','','',0,0,'sys_file',33,''),
('6659df9760c2f8d4b93c771bdf67003d','sys_file',20,'metadata','','','',0,0,'sys_file_metadata',20,''),
('692e129d0a6ae1105f43e3627f14e64d','sys_file',8,'storage','','','',0,0,'sys_file_storage',1,''),
('6de7fbfdf87cd90b8d512692ad834533','sys_file',26,'storage','','','',0,0,'sys_file_storage',1,''),
('71885f231631e39b155d14fac1b50305','sys_file',11,'storage','','','',0,0,'sys_file_storage',1,''),
('73a4ad6c86e15226ae62976172244f26','sys_file',14,'storage','','','',0,0,'sys_file_storage',1,''),
('749b0771828793d3e3eba1372852a7a8','sys_file',2,'metadata','','','',0,0,'sys_file_metadata',2,''),
('7760e93e700888ea91a3548c7f8dc337','sys_file_reference',13,'uid_local','','','',0,0,'sys_file',2,''),
('7917cac95da9f2edf6d31c097dcc89a8','sys_file_reference',19,'uid_local','','','',0,0,'sys_file',35,''),
('791d3f9d43dcbfa78cd49dd8258caa09','sys_file',5,'storage','','','',0,0,'sys_file_storage',1,''),
('7d431e2b7a025e194da7ab3efcb534d5','tt_content',30,'sponsors','','','',3,0,'tx_football_domain_model_sponsor',11,''),
('80897b02d9957e065dc42026f3f04797','tt_content',8,'sponsors','','','',1,0,'tx_football_domain_model_sponsor',2,''),
('81e0651dc4ec39245f0fb2f59cf1f8db','sys_file_reference',8,'uid_local','','','',0,0,'sys_file',10,''),
('8334adcffe6721f981a0b731a1a0ce04','tx_football_domain_model_sponsor',4,'image','','','',0,0,'sys_file_reference',6,''),
('83e547bebf151c6d932f7bdc5487ef64','sys_file',9,'storage','','','',0,0,'sys_file_storage',1,''),
('8511bb6a85444ccb4974f2b255eadfe8','sys_file_reference',9,'uid_local','','','',0,0,'sys_file',15,''),
('856d90bb95ef7ce14472cf652dc47fa0','tt_content',30,'sponsors','','','',0,0,'tx_football_domain_model_sponsor',8,''),
('8e4bf258762f9f0bd114ef88d63565dd','tt_content',6,'buttons','','','',0,0,'tx_football_domain_model_link',2,''),
('93004573d1d006a130ef069b9f27b1f9','sys_file',7,'storage','','','',0,0,'sys_file_storage',1,''),
('9612d6c79da9c76d7049a2a66c026966','tt_content',8,'sponsors','','','',5,0,'tx_football_domain_model_sponsor',6,''),
('99a9c9b515aecd0a94f2648aefbd3426','pages',15,'shortcut','','','',0,0,'pages',6,''),
('99de689fcc8d549c1edc8d615d5e37a0','sys_file_metadata',4,'file','','','',0,0,'sys_file',4,''),
('9cc3f820ab6a69459a9c2fc66a61f092','sys_file',6,'metadata','','','',0,0,'sys_file_metadata',6,''),
('a02cae0e47e2a4d9c4b1bbd06a557372','pages',1,'social','','','',0,0,'tx_football_domain_model_link',1,''),
('a1197f35eb646224ee7b1dcf59275431','sys_file_reference',16,'uid_local','','','',0,0,'sys_file',33,''),
('a1e46773c821e13ad488d005962cf05b','sys_file',30,'storage','','','',0,0,'sys_file_storage',1,''),
('a280975378a4ddcf6d9b186c28b4ff8a','pages',1,'contact','','typolink','1cdacf4e8d8b74db7315935dc8ebff99:0',-1,0,'pages',6,''),
('a39567bfbb967337b9263b0412d8383a','sys_file_reference',5,'uid_local','','','',0,0,'sys_file',9,''),
('a90fdb67b2af976aa9d7e14e1c130a28','tx_football_domain_model_link',2,'url','','typolink','7804c94a06c4b62baf7acda7808e17ef:0',-1,0,'pages',6,''),
('aa69566e83a1ab873fe38082571f5af2','tt_content',3,'image','','','',0,0,'sys_file_reference',9,''),
('b4a2346dceb07f9ba9334056e1d1ef11','sys_file_reference',6,'uid_local','','','',0,0,'sys_file',7,''),
('b6302f5ec2febeb4d6e4e241944be362','sys_file_reference',20,'uid_local','','','',0,0,'sys_file',34,''),
('ba938b204b9f23995baa8521d6d0e89e','tx_football_domain_model_sponsor',12,'image','','','',0,0,'sys_file_reference',21,''),
('c13eec12452d2cd97a1ca7a2cb380e4d','sys_file_reference',23,'uid_local','','','',0,0,'sys_file',36,''),
('c2222db0010322de099cc3187e68e6a7','tt_content',30,'sponsors','','','',4,0,'tx_football_domain_model_sponsor',12,''),
('ca8dc2077a05ac884067f3928b2f4e49','tt_content',8,'sponsors','','','',3,0,'tx_football_domain_model_sponsor',4,''),
('d9ca7c8a3620cad14303b987ae42439b','tt_content',8,'sponsors','','','',4,0,'tx_football_domain_model_sponsor',5,''),
('da95744b84e338aacbfce46d2d437488','sys_file',36,'storage','','','',0,0,'sys_file_storage',1,''),
('e34875ad16da9006119fd47156353a38','sys_file_reference',4,'uid_local','','','',0,0,'sys_file',8,''),
('e5845b1c7e19776b38b79b2750bfb5ea','sys_file_reference',7,'uid_local','','','',0,0,'sys_file',12,''),
('e6ccc3250f998913d3ef2b0fb3020081','tx_football_domain_model_sponsor',1,'image','','','',0,0,'sys_file_reference',3,''),
('e6e600e8237b8a710e488ba6277f01d6','tx_football_domain_model_sponsor',11,'image','','','',0,0,'sys_file_reference',20,''),
('e6ee98e3b8d05b46b08a2f533c34f424','tx_football_domain_model_sponsor',8,'image','','','',0,0,'sys_file_reference',17,''),
('ea71a668dbafc6ba52275b38283711ac','tx_football_domain_model_sponsor',14,'image','','','',0,0,'sys_file_reference',23,''),
('eb2653780c25deadd1ed253485b02dbe','sys_file',33,'storage','','','',0,0,'sys_file_storage',1,''),
('ec6c109ac09eb201f382e69ffe40aecc','sys_file_reference',3,'uid_local','','','',0,0,'sys_file',13,''),
('ee624aa15402a23b446ed1a5b2596ec3','sys_file',26,'metadata','','','',0,0,'sys_file_metadata',26,''),
('f025bb3da59d9894dc8e0e642915ab24','tx_football_domain_model_sponsor',5,'image','','','',0,0,'sys_file_reference',7,''),
('f3761731dfb5a6c0a5d3955ed8d46d1f','tx_football_domain_model_link',3,'url','','typolink','391c7e002e43b9a83bbf2656021c4be7:0',-1,0,'pages',10,''),
('f68c0805e7b937b9dd993024a7e3e74f','sys_file',21,'metadata','','','',0,0,'sys_file_metadata',21,''),
('f8197c702ecdf669e8230c323ae5a358','sys_file_reference',22,'uid_local','','','',0,0,'sys_file',31,''),
('fb149e2ea3ae318985101d54c3757ca8','sys_file',34,'storage','','','',0,0,'sys_file_storage',1,''),
('ff7272d295268dcfcad2c29a9ca4bff8','sys_file_reference',17,'uid_local','','','',0,0,'sys_file',30,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES
(1,'extensionDataImport','typo3/cms-core/ext_tables_static+adt.sql','s:0:\"\";'),
(2,'extensionDataImport','typo3/cms-scheduler/ext_tables_static+adt.sql','s:0:\"\";'),
(3,'extensionDataImport','typo3/cms-extbase/ext_tables_static+adt.sql','s:0:\"\";'),
(4,'extensionDataImport','typo3/cms-fluid/ext_tables_static+adt.sql','s:0:\"\";'),
(5,'extensionDataImport','typo3/cms-install/ext_tables_static+adt.sql','s:0:\"\";'),
(6,'extensionDataImport','typo3/cms-backend/ext_tables_static+adt.sql','s:0:\"\";'),
(7,'extensionDataImport','typo3/cms-frontend/ext_tables_static+adt.sql','s:0:\"\";'),
(8,'extensionDataImport','typo3/cms-dashboard/ext_tables_static+adt.sql','s:0:\"\";'),
(9,'extensionDataImport','typo3/cms-filelist/ext_tables_static+adt.sql','s:0:\"\";'),
(10,'extensionDataImport','typo3/cms-lowlevel/ext_tables_static+adt.sql','s:0:\"\";'),
(11,'extensionDataImport','typo3/cms-form/ext_tables_static+adt.sql','s:0:\"\";'),
(12,'extensionDataImport','typo3/cms-seo/ext_tables_static+adt.sql','s:0:\"\";'),
(13,'extensionDataImport','typo3/cms-setup/ext_tables_static+adt.sql','s:0:\"\";'),
(14,'extensionDataImport','typo3/cms-rte-ckeditor/ext_tables_static+adt.sql','s:0:\"\";'),
(15,'extensionDataImport','typo3/cms-belog/ext_tables_static+adt.sql','s:0:\"\";'),
(16,'extensionDataImport','typo3/cms-beuser/ext_tables_static+adt.sql','s:0:\"\";'),
(17,'extensionDataImport','typo3/cms-extensionmanager/ext_tables_static+adt.sql','s:0:\"\";'),
(18,'extensionDataImport','typo3/cms-filemetadata/ext_tables_static+adt.sql','s:0:\"\";'),
(19,'extensionDataImport','typo3/cms-info/ext_tables_static+adt.sql','s:0:\"\";'),
(20,'extensionDataImport','typo3/cms-tstemplate/ext_tables_static+adt.sql','s:0:\"\";'),
(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendGroupsExplicitAllowDenyMigration','i:1;'),
(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendModulePermissionMigration','i:1;'),
(23,'installUpdate','TYPO3\\CMS\\Extensionmanager\\Updates\\FeLoginModeExtractionUpdate','i:1;'),
(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\IndexedSearchCTypeMigration','i:1;'),
(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateSiteSettingsConfigUpdate','i:1;'),
(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PagesRecyclerDoktypeMigration','i:1;'),
(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileCollectionIdentifierMigration','i:1;'),
(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileMountIdentifierMigration','i:1;'),
(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogSerializationUpdate','i:1;'),
(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysTemplateNoWorkspaceMigration','i:1;'),
(32,'installUpdateRows','rowUpdatersDone','a:1:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\SysRedirectRootPageMoveMigration\";}'),
(34,'extensionDataImport','surfcamp-team4/football/ext_tables_static+adt.sql','s:0:\"\";'),
(35,'extensionDataImport','typo3/cms-indexed-search/ext_tables_static+adt.sql','s:0:\"\";'),
(36,'extensionScannerNotAffected','932da83d688a200c366300752d904773','s:32:\"932da83d688a200c366300752d904773\";'),
(37,'extensionScannerNotAffected','44845e9f43edfe787e293d09d66d8b8c','s:32:\"44845e9f43edfe787e293d09d66d8b8c\";'),
(38,'extensionScannerNotAffected','38354fcab935ef5dee086db0a7770360','s:32:\"38354fcab935ef5dee086db0a7770360\";'),
(39,'extensionScannerNotAffected','544a390bad17591adb404198dbb9d3b6','s:32:\"544a390bad17591adb404198dbb9d3b6\";'),
(40,'extensionScannerNotAffected','e6149f464b533888fda416c97196b480','s:32:\"e6149f464b533888fda416c97196b480\";'),
(41,'extensionScannerNotAffected','7bcf1948811d1042a25e123663ca6fb2','s:32:\"7bcf1948811d1042a25e123663ca6fb2\";'),
(42,'extensionScannerNotAffected','471a2e9555c860e3455df935b2ae267c','s:32:\"471a2e9555c860e3455df935b2ae267c\";'),
(43,'extensionScannerNotAffected','f3a54a6f1d13f03504745af117dcc032','s:32:\"f3a54a6f1d13f03504745af117dcc032\";'),
(44,'extensionScannerNotAffected','2686fc92f56974b8c177b1037edb7802','s:32:\"2686fc92f56974b8c177b1037edb7802\";'),
(45,'extensionScannerNotAffected','b8606ea80291cdb9967ae99134458d6e','s:32:\"b8606ea80291cdb9967ae99134458d6e\";'),
(46,'extensionScannerNotAffected','6b59d48adbb52a285bd6dedd821181fd','s:32:\"6b59d48adbb52a285bd6dedd821181fd\";'),
(47,'extensionScannerNotAffected','3e49e0f18a1d972eb0f0e2d9331c3adc','s:32:\"3e49e0f18a1d972eb0f0e2d9331c3adc\";'),
(48,'extensionScannerNotAffected','5b94ae0411266b07650f0780cda37f4e','s:32:\"5b94ae0411266b07650f0780cda37f4e\";'),
(49,'extensionScannerNotAffected','a859d1492a9608a5b3033ef9386f70cd','s:32:\"a859d1492a9608a5b3033ef9386f70cd\";'),
(50,'extensionScannerNotAffected','d9ab2a929768eef40427dbba78475e0b','s:32:\"d9ab2a929768eef40427dbba78475e0b\";'),
(51,'extensionScannerNotAffected','17b6b7eaebaee383f8aa2c60388a9ba6','s:32:\"17b6b7eaebaee383f8aa2c60388a9ba6\";'),
(52,'extensionScannerNotAffected','7e3a05e76ce4a0a9337876500601bee3','s:32:\"7e3a05e76ce4a0a9337876500601bee3\";'),
(53,'extensionScannerNotAffected','8386a8482642549e47699bb9932c597c','s:32:\"8386a8482642549e47699bb9932c597c\";'),
(54,'extensionScannerNotAffected','21d21b236ac7b67c7db7a19bdab6c8d6','s:32:\"21d21b236ac7b67c7db7a19bdab6c8d6\";'),
(55,'extensionScannerNotAffected','2ec427290f951b808ac206c264b0a8ea','s:32:\"2ec427290f951b808ac206c264b0a8ea\";'),
(56,'extensionScannerNotAffected','abfeef94e8f69dff3c2351e0fb258c64','s:32:\"abfeef94e8f69dff3c2351e0fb258c64\";'),
(57,'extensionScannerNotAffected','1c2f4d48334dfda58273b2d9d4d82771','s:32:\"1c2f4d48334dfda58273b2d9d4d82771\";'),
(58,'extensionScannerNotAffected','9bcb0bd6f5682a33b489eecf20189b91','s:32:\"9bcb0bd6f5682a33b489eecf20189b91\";'),
(59,'extensionScannerNotAffected','9dc6000ae9b28143304b92a50c848724','s:32:\"9dc6000ae9b28143304b92a50c848724\";'),
(60,'extensionScannerNotAffected','df957f25f5fcb2a650be7a902d046d5f','s:32:\"df957f25f5fcb2a650be7a902d046d5f\";'),
(61,'extensionScannerNotAffected','85deaeb5619bf22362f08cb09e680efc','s:32:\"85deaeb5619bf22362f08cb09e680efc\";'),
(62,'extensionScannerNotAffected','d7141cecea6548e7153471910c0c7082','s:32:\"d7141cecea6548e7153471910c0c7082\";'),
(63,'extensionScannerNotAffected','7503bd8caf0b19a150b5986575b0bb11','s:32:\"7503bd8caf0b19a150b5986575b0bb11\";'),
(64,'extensionScannerNotAffected','344a90c7e0053be0c693dff2c8006acf','s:32:\"344a90c7e0053be0c693dff2c8006acf\";'),
(65,'extensionScannerNotAffected','f3e3e87a6287a82abc502befd2ae9262','s:32:\"f3e3e87a6287a82abc502befd2ae9262\";'),
(66,'extensionScannerNotAffected','baff95df5486a50b582fb8385399144b','s:32:\"baff95df5486a50b582fb8385399144b\";'),
(67,'extensionScannerNotAffected','b4627079057045a8a18cc2d5fda26e37','s:32:\"b4627079057045a8a18cc2d5fda26e37\";'),
(68,'extensionScannerNotAffected','87dfebfd4c19f7e4b9b7d35544e59800','s:32:\"87dfebfd4c19f7e4b9b7d35544e59800\";'),
(69,'extensionScannerNotAffected','e26bb24e1af77d41a4b312ed099a8f43','s:32:\"e26bb24e1af77d41a4b312ed099a8f43\";'),
(70,'extensionScannerNotAffected','77e8e8e3edc156701fdf8a421fdd5962','s:32:\"77e8e8e3edc156701fdf8a421fdd5962\";'),
(71,'extensionScannerNotAffected','d678bbe44635ebe8bce726d708c7a80a','s:32:\"d678bbe44635ebe8bce726d708c7a80a\";'),
(72,'extensionScannerNotAffected','ed0b1db5ff7c2db0b25623635acfb661','s:32:\"ed0b1db5ff7c2db0b25623635acfb661\";'),
(73,'extensionScannerNotAffected','1eea68e3ee257d2d55dcf5e34e549f46','s:32:\"1eea68e3ee257d2d55dcf5e34e549f46\";'),
(74,'extensionScannerNotAffected','ba449b0ec547e6799851e556884d3cc9','s:32:\"ba449b0ec547e6799851e556884d3cc9\";'),
(75,'extensionScannerNotAffected','7a63e11c253971e5f20087f46ddaa623','s:32:\"7a63e11c253971e5f20087f46ddaa623\";'),
(76,'extensionScannerNotAffected','625a1f560231b99623efad8e1cfea17d','s:32:\"625a1f560231b99623efad8e1cfea17d\";'),
(77,'extensionScannerNotAffected','8b5ea79532c9c1e51cf74c321d37d44d','s:32:\"8b5ea79532c9c1e51cf74c321d37d44d\";'),
(78,'extensionScannerNotAffected','209c9172fd59c89a350cc212f8ce72ed','s:32:\"209c9172fd59c89a350cc212f8ce72ed\";'),
(79,'extensionScannerNotAffected','c62dc21e825d5deb840b8398aea22364','s:32:\"c62dc21e825d5deb840b8398aea22364\";'),
(80,'extensionScannerNotAffected','d713ed1319435c932ab25edc639efd48','s:32:\"d713ed1319435c932ab25edc639efd48\";'),
(81,'extensionScannerNotAffected','cc33e6442844cdcd7750eeda6cefc5bd','s:32:\"cc33e6442844cdcd7750eeda6cefc5bd\";'),
(82,'extensionScannerNotAffected','7c086c7c671a702bbb19feb4bde0cce5','s:32:\"7c086c7c671a702bbb19feb4bde0cce5\";'),
(83,'extensionScannerNotAffected','ed59921fd9ba21c899a942f0853d0174','s:32:\"ed59921fd9ba21c899a942f0853d0174\";'),
(84,'extensionScannerNotAffected','a2eaa3723e22394abc3a0bdb038a5a2d','s:32:\"a2eaa3723e22394abc3a0bdb038a5a2d\";'),
(85,'extensionScannerNotAffected','81eecacac2cb8e30724923278d989190','s:32:\"81eecacac2cb8e30724923278d989190\";'),
(86,'extensionScannerNotAffected','d0d0ce43c93e0695f3dc5e838a7ca747','s:32:\"d0d0ce43c93e0695f3dc5e838a7ca747\";'),
(87,'extensionScannerNotAffected','f8cbdfdeab6c111e19a8c8fb8eb65917','s:32:\"f8cbdfdeab6c111e19a8c8fb8eb65917\";'),
(88,'extensionScannerNotAffected','d954a4fe5723e5c621c625eb5b71f92d','s:32:\"d954a4fe5723e5c621c625eb5b71f92d\";'),
(89,'extensionScannerNotAffected','ea1663ac3874fc5e253bec05d6dfa3b4','s:32:\"ea1663ac3874fc5e253bec05d6dfa3b4\";'),
(90,'extensionScannerNotAffected','bb4637b93f4402ef10b7a76064db0883','s:32:\"bb4637b93f4402ef10b7a76064db0883\";'),
(91,'extensionScannerNotAffected','4b83ee33ca26099c497aeba5e8245f10','s:32:\"4b83ee33ca26099c497aeba5e8245f10\";'),
(92,'extensionScannerNotAffected','8ca7ad7ba5f06fa9d19bb11d4a5f70cf','s:32:\"8ca7ad7ba5f06fa9d19bb11d4a5f70cf\";'),
(93,'extensionScannerNotAffected','f45c10cdb8a5712c83b848a7862a9e3d','s:32:\"f45c10cdb8a5712c83b848a7862a9e3d\";'),
(94,'extensionScannerNotAffected','67c7049a29339b27471d5659715ab8e5','s:32:\"67c7049a29339b27471d5659715ab8e5\";'),
(95,'extensionScannerNotAffected','4482d00a12b311ae97c2f7daa16ec6d7','s:32:\"4482d00a12b311ae97c2f7daa16ec6d7\";'),
(96,'extensionScannerNotAffected','2238d021491ec2af53e3a289f7557e02','s:32:\"2238d021491ec2af53e3a289f7557e02\";'),
(97,'extensionScannerNotAffected','1e2509809f4302a80d29c09e41a6699f','s:32:\"1e2509809f4302a80d29c09e41a6699f\";'),
(98,'extensionScannerNotAffected','05e8f1efdab167cc5ec7de5b6a9ea39d','s:32:\"05e8f1efdab167cc5ec7de5b6a9ea39d\";'),
(99,'extensionScannerNotAffected','33615382b70df5f5c9188014025efb3b','s:32:\"33615382b70df5f5c9188014025efb3b\";'),
(100,'extensionScannerNotAffected','187ab8962cefdffbb2d741b8b4334bc4','s:32:\"187ab8962cefdffbb2d741b8b4334bc4\";'),
(101,'extensionScannerNotAffected','22c96e35d7df82b64644722ae115d8ef','s:32:\"22c96e35d7df82b64644722ae115d8ef\";'),
(102,'extensionScannerNotAffected','b507d9617d8ab776b739c285ef8f82e1','s:32:\"b507d9617d8ab776b739c285ef8f82e1\";'),
(103,'extensionScannerNotAffected','88d736bac3831b47b9bbfa46f23c0d55','s:32:\"88d736bac3831b47b9bbfa46f23c0d55\";'),
(104,'extensionScannerNotAffected','31488ac80433722392a6f101443e456c','s:32:\"31488ac80433722392a6f101443e456c\";'),
(105,'extensionScannerNotAffected','22429ca46d8b1e925ca537dc189b1f45','s:32:\"22429ca46d8b1e925ca537dc189b1f45\";'),
(106,'extensionScannerNotAffected','91299ca37f2ff269a177dc8997a313a9','s:32:\"91299ca37f2ff269a177dc8997a313a9\";'),
(107,'extensionScannerNotAffected','042610074ad3436e7eefc7bf5c6cc810','s:32:\"042610074ad3436e7eefc7bf5c6cc810\";'),
(108,'extensionScannerNotAffected','5ac57be87683e4c7e1edbb04f004ed02','s:32:\"5ac57be87683e4c7e1edbb04f004ed02\";'),
(109,'extensionScannerNotAffected','a95d350b20474d9e420dfe2b981b26e1','s:32:\"a95d350b20474d9e420dfe2b981b26e1\";'),
(110,'extensionScannerNotAffected','3ca8182b629890f563c3f96af63cc508','s:32:\"3ca8182b629890f563c3f96af63cc508\";'),
(111,'extensionScannerNotAffected','c9ab262630b4a1f349cf2ec45b822cda','s:32:\"c9ab262630b4a1f349cf2ec45b822cda\";'),
(112,'extensionScannerNotAffected','e4513c8aec99e02d734d6c88f0cf5d45','s:32:\"e4513c8aec99e02d734d6c88f0cf5d45\";'),
(113,'extensionScannerNotAffected','c3275b175cc1d3488a5c1febc17e81d3','s:32:\"c3275b175cc1d3488a5c1febc17e81d3\";'),
(114,'extensionScannerNotAffected','9de4b2449f0b5592583a3483442f26fa','s:32:\"9de4b2449f0b5592583a3483442f26fa\";'),
(115,'extensionScannerNotAffected','cc3032da10c33172c022073233fb2073','s:32:\"cc3032da10c33172c022073233fb2073\";'),
(116,'extensionScannerNotAffected','5360dcf47c8467e899195bc2238e3034','s:32:\"5360dcf47c8467e899195bc2238e3034\";'),
(117,'extensionScannerNotAffected','8bdd67afcd45687f5a10912a93993e21','s:32:\"8bdd67afcd45687f5a10912a93993e21\";'),
(118,'extensionScannerNotAffected','c97ef638506e95d3fba0f04850f9b733','s:32:\"c97ef638506e95d3fba0f04850f9b733\";'),
(119,'extensionScannerNotAffected','2f51daeacc3ec70cb1feb4f3473be0f8','s:32:\"2f51daeacc3ec70cb1feb4f3473be0f8\";'),
(120,'extensionScannerNotAffected','8f5fa21fab02544da90f243885c33907','s:32:\"8f5fa21fab02544da90f243885c33907\";'),
(121,'extensionScannerNotAffected','8cb9af86b0f5c3be3f458e2ae616b8d9','s:32:\"8cb9af86b0f5c3be3f458e2ae616b8d9\";'),
(122,'extensionScannerNotAffected','0aa3a077801aeec1378e15f48fd04085','s:32:\"0aa3a077801aeec1378e15f48fd04085\";'),
(123,'extensionScannerNotAffected','343f573ef870e727d900672f5c55b58d','s:32:\"343f573ef870e727d900672f5c55b58d\";'),
(124,'extensionScannerNotAffected','b745a90643fc5296a0b2009f83de8533','s:32:\"b745a90643fc5296a0b2009f83de8533\";'),
(125,'extensionScannerNotAffected','e4582c4edcb5b7f4b9c1b2b09f0de8ac','s:32:\"e4582c4edcb5b7f4b9c1b2b09f0de8ac\";'),
(126,'extensionScannerNotAffected','176228940ec6d0ebf8bd09b17a327eab','s:32:\"176228940ec6d0ebf8bd09b17a327eab\";'),
(127,'extensionScannerNotAffected','7da735b8ec41537724eac26c7e124e8e','s:32:\"7da735b8ec41537724eac26c7e124e8e\";'),
(128,'extensionScannerNotAffected','9c901fade5881d2d6b86cab31374afa2','s:32:\"9c901fade5881d2d6b86cab31374afa2\";'),
(129,'extensionScannerNotAffected','98877f6c0f3d08bab2c8905e658909bd','s:32:\"98877f6c0f3d08bab2c8905e658909bd\";'),
(130,'extensionScannerNotAffected','195568ce7afd80c6e6c54230d28c878e','s:32:\"195568ce7afd80c6e6c54230d28c878e\";'),
(131,'extensionScannerNotAffected','b4b04b96018216823f4ae488ef33f5e2','s:32:\"b4b04b96018216823f4ae488ef33f5e2\";'),
(132,'extensionScannerNotAffected','8ba8c53900fd266b9d2eea5d2746fd53','s:32:\"8ba8c53900fd266b9d2eea5d2746fd53\";'),
(133,'extensionScannerNotAffected','72fbcb357d250400dd199c53e4c9fd2a','s:32:\"72fbcb357d250400dd199c53e4c9fd2a\";'),
(134,'extensionScannerNotAffected','74bb572d676afda82986e28117e7b83a','s:32:\"74bb572d676afda82986e28117e7b83a\";'),
(135,'extensionScannerNotAffected','dc58d384de76019c3b59743f42273d25','s:32:\"dc58d384de76019c3b59743f42273d25\";'),
(136,'extensionScannerNotAffected','23f9c88fbd4fc32a43aa91484c28875d','s:32:\"23f9c88fbd4fc32a43aa91484c28875d\";'),
(137,'extensionScannerNotAffected','553c0d953bed47a2e1fe6df87d91b595','s:32:\"553c0d953bed47a2e1fe6df87d91b595\";'),
(138,'extensionScannerNotAffected','14fd13563d1f17fb4db9cb11864048de','s:32:\"14fd13563d1f17fb4db9cb11864048de\";'),
(139,'extensionScannerNotAffected','0cce48811ea2ce1b1bb690a78b7c1c26','s:32:\"0cce48811ea2ce1b1bb690a78b7c1c26\";'),
(140,'extensionScannerNotAffected','8adb3cad3f824023512c4d59e05018f1','s:32:\"8adb3cad3f824023512c4d59e05018f1\";'),
(141,'extensionScannerNotAffected','f0de3d2d6407343dbdaa2aa46a029589','s:32:\"f0de3d2d6407343dbdaa2aa46a029589\";'),
(142,'extensionScannerNotAffected','94e665a09f15f32a4c8980422a87e8c6','s:32:\"94e665a09f15f32a4c8980422a87e8c6\";'),
(143,'extensionScannerNotAffected','3ed29a6e143843d495b7813535aaed1e','s:32:\"3ed29a6e143843d495b7813535aaed1e\";'),
(144,'extensionScannerNotAffected','f5ce4e049277aa36fc83303bcb6055b1','s:32:\"f5ce4e049277aa36fc83303bcb6055b1\";'),
(145,'extensionScannerNotAffected','dc291f82d5ef4d17dd152bc0035378d7','s:32:\"dc291f82d5ef4d17dd152bc0035378d7\";'),
(146,'extensionScannerNotAffected','ccdc92eac42157b5151a29dd1a631eac','s:32:\"ccdc92eac42157b5151a29dd1a631eac\";'),
(147,'extensionScannerNotAffected','9c169afac1995c48f1d08585420afb2e','s:32:\"9c169afac1995c48f1d08585420afb2e\";'),
(148,'extensionScannerNotAffected','766c7969440bf79b6c81ee839c0e28d2','s:32:\"766c7969440bf79b6c81ee839c0e28d2\";'),
(149,'extensionScannerNotAffected','cf30296fc712c5019f9e41ad7b391d05','s:32:\"cf30296fc712c5019f9e41ad7b391d05\";'),
(150,'extensionScannerNotAffected','63ac38f1ce52667e677c6d3b92d2343d','s:32:\"63ac38f1ce52667e677c6d3b92d2343d\";'),
(151,'extensionScannerNotAffected','738d136046e3786fa7697ed7a9599e75','s:32:\"738d136046e3786fa7697ed7a9599e75\";'),
(152,'extensionScannerNotAffected','1b81d85fca811592b2209249f45e8bf5','s:32:\"1b81d85fca811592b2209249f45e8bf5\";'),
(153,'extensionScannerNotAffected','01877cb58cc6718143d454af0e22e7a1','s:32:\"01877cb58cc6718143d454af0e22e7a1\";'),
(154,'extensionScannerNotAffected','217fe2d7f41bb756e4c408a8d612bd25','s:32:\"217fe2d7f41bb756e4c408a8d612bd25\";'),
(155,'extensionScannerNotAffected','0b6fbaa43e4fa4039c709df5e37cb9ea','s:32:\"0b6fbaa43e4fa4039c709df5e37cb9ea\";'),
(156,'extensionScannerNotAffected','2d8c13760adab1f09bc60cb2e755a702','s:32:\"2d8c13760adab1f09bc60cb2e755a702\";'),
(157,'extensionScannerNotAffected','ab50726177c2478d1c74e36ee28a72a0','s:32:\"ab50726177c2478d1c74e36ee28a72a0\";'),
(158,'extensionScannerNotAffected','9fd8b5ab403710c4f351958450fe16e5','s:32:\"9fd8b5ab403710c4f351958450fe16e5\";'),
(159,'extensionScannerNotAffected','85b0efe4750aedf3673dbdee06fb4659','s:32:\"85b0efe4750aedf3673dbdee06fb4659\";'),
(160,'extensionScannerNotAffected','13c07913127ab79a0b19f2381c27dbc5','s:32:\"13c07913127ab79a0b19f2381c27dbc5\";'),
(161,'extensionScannerNotAffected','12d2cf32eb677dc029d573366841e5be','s:32:\"12d2cf32eb677dc029d573366841e5be\";'),
(162,'extensionScannerNotAffected','dfc3779f5a0b51b95a8de1846b41b4fc','s:32:\"dfc3779f5a0b51b95a8de1846b41b4fc\";'),
(163,'extensionScannerNotAffected','db080fcfa58a6ff0c463a7194a7f2d53','s:32:\"db080fcfa58a6ff0c463a7194a7f2d53\";'),
(164,'extensionScannerNotAffected','1bed3603d8260f87eb3cc32df434a692','s:32:\"1bed3603d8260f87eb3cc32df434a692\";'),
(165,'extensionScannerNotAffected','54a4661a0a79695809480784d49b3fc1','s:32:\"54a4661a0a79695809480784d49b3fc1\";'),
(166,'extensionScannerNotAffected','21c35635e74ebed62378765bb1b32900','s:32:\"21c35635e74ebed62378765bb1b32900\";'),
(167,'extensionScannerNotAffected','19296d69927f13d56b60ba86aed5a51e','s:32:\"19296d69927f13d56b60ba86aed5a51e\";'),
(168,'extensionScannerNotAffected','a56c3d280b72b38afb1ec1102390754c','s:32:\"a56c3d280b72b38afb1ec1102390754c\";'),
(169,'extensionScannerNotAffected','110b117081a2e2d2a876a7f69799060b','s:32:\"110b117081a2e2d2a876a7f69799060b\";'),
(170,'extensionScannerNotAffected','71c476013c0eff29b821b97ebcf22729','s:32:\"71c476013c0eff29b821b97ebcf22729\";'),
(171,'extensionScannerNotAffected','3c47e3798a565d74d9fc990b8093ba50','s:32:\"3c47e3798a565d74d9fc990b8093ba50\";'),
(172,'extensionScannerNotAffected','6de1c713d7186d98adea577a8143421f','s:32:\"6de1c713d7186d98adea577a8143421f\";'),
(173,'extensionScannerNotAffected','c78f015df6e3293142ed4cec1b0f2186','s:32:\"c78f015df6e3293142ed4cec1b0f2186\";'),
(174,'extensionScannerNotAffected','6590b836e87a4be9ea0326c6bebce7b0','s:32:\"6590b836e87a4be9ea0326c6bebce7b0\";'),
(175,'extensionScannerNotAffected','8b1b4c666f981d018261756563fa7a51','s:32:\"8b1b4c666f981d018261756563fa7a51\";'),
(176,'extensionScannerNotAffected','bad8815536fffa9c5b081b6c38c45811','s:32:\"bad8815536fffa9c5b081b6c38c45811\";'),
(177,'extensionScannerNotAffected','c0aa129dac148fa44ab4c912d5b5cfcb','s:32:\"c0aa129dac148fa44ab4c912d5b5cfcb\";'),
(178,'extensionScannerNotAffected','0a02f6c26050f2843e94e6a02c8b9f31','s:32:\"0a02f6c26050f2843e94e6a02c8b9f31\";'),
(179,'extensionScannerNotAffected','09f06ea508acbec6a1d1cfcec1cdc341','s:32:\"09f06ea508acbec6a1d1cfcec1cdc341\";'),
(180,'extensionScannerNotAffected','1cd8ab1c12378c570ec4e66227aff97c','s:32:\"1cd8ab1c12378c570ec4e66227aff97c\";'),
(181,'extensionScannerNotAffected','05bbe791e33558b09f8f30f00155ac37','s:32:\"05bbe791e33558b09f8f30f00155ac37\";'),
(182,'extensionScannerNotAffected','ae49edc5d81324435d65b41a94a45f15','s:32:\"ae49edc5d81324435d65b41a94a45f15\";'),
(183,'extensionScannerNotAffected','e78e0aaec884228c9ddb207dcba3fdcb','s:32:\"e78e0aaec884228c9ddb207dcba3fdcb\";'),
(184,'extensionScannerNotAffected','0cd3cea5ce9cf53bb878d834fe978834','s:32:\"0cd3cea5ce9cf53bb878d834fe978834\";'),
(185,'extensionScannerNotAffected','d0ea2c1615870e16ce17ddd181604a4d','s:32:\"d0ea2c1615870e16ce17ddd181604a4d\";'),
(186,'extensionScannerNotAffected','8ff4781e994ca9651c6c2ca3af9ca1af','s:32:\"8ff4781e994ca9651c6c2ca3af9ca1af\";'),
(187,'extensionScannerNotAffected','e0fe085a6e2f813eb1a580545005811e','s:32:\"e0fe085a6e2f813eb1a580545005811e\";'),
(188,'extensionScannerNotAffected','a3cf1408f6b2c8797d4250c6fc15af28','s:32:\"a3cf1408f6b2c8797d4250c6fc15af28\";'),
(189,'extensionScannerNotAffected','320e9329496f762bc60ab0612f691303','s:32:\"320e9329496f762bc60ab0612f691303\";'),
(190,'extensionScannerNotAffected','edbf3c3ff5463311f0ce6d953638a2c7','s:32:\"edbf3c3ff5463311f0ce6d953638a2c7\";'),
(191,'extensionScannerNotAffected','2e8a3074af7a4856c574ef139fca0953','s:32:\"2e8a3074af7a4856c574ef139fca0953\";'),
(192,'extensionScannerNotAffected','1d4942180d68f2945c11546228dd046b','s:32:\"1d4942180d68f2945c11546228dd046b\";'),
(193,'extensionScannerNotAffected','fcdf9ed05d525c1354d9c5c7ab043c17','s:32:\"fcdf9ed05d525c1354d9c5c7ab043c17\";'),
(194,'extensionScannerNotAffected','9fe7d021d2fa5a417f5e063887ee14c7','s:32:\"9fe7d021d2fa5a417f5e063887ee14c7\";'),
(195,'extensionScannerNotAffected','54b140e518734e045c84661ccf91326b','s:32:\"54b140e518734e045c84661ccf91326b\";'),
(196,'extensionScannerNotAffected','dc86a1c15cb13a0627dcd562712a3493','s:32:\"dc86a1c15cb13a0627dcd562712a3493\";'),
(197,'extensionScannerNotAffected','f93b9500411ad5e214034757a971e09a','s:32:\"f93b9500411ad5e214034757a971e09a\";'),
(198,'extensionScannerNotAffected','759b1697fd3cfc2c866993011cf40bcd','s:32:\"759b1697fd3cfc2c866993011cf40bcd\";'),
(199,'extensionScannerNotAffected','c6f081ec6d0595b63f2c36afcbb06e0a','s:32:\"c6f081ec6d0595b63f2c36afcbb06e0a\";'),
(200,'extensionScannerNotAffected','07dcd6a4ab34b7b776e320d8bf8ff4e1','s:32:\"07dcd6a4ab34b7b776e320d8bf8ff4e1\";'),
(201,'extensionScannerNotAffected','a69448c1b682bf753c4fabfae77e2b03','s:32:\"a69448c1b682bf753c4fabfae77e2b03\";'),
(202,'extensionScannerNotAffected','6763b0d6e9b6bc5ec9e7622ba04761dc','s:32:\"6763b0d6e9b6bc5ec9e7622ba04761dc\";'),
(203,'extensionScannerNotAffected','5f5077001a66e69aea233d3e93d1310a','s:32:\"5f5077001a66e69aea233d3e93d1310a\";'),
(204,'extensionScannerNotAffected','e0127e7c34fa573e3cae3815130f8211','s:32:\"e0127e7c34fa573e3cae3815130f8211\";'),
(205,'extensionScannerNotAffected','7b640070cdb67b65b964fb8008a81670','s:32:\"7b640070cdb67b65b964fb8008a81670\";'),
(206,'extensionScannerNotAffected','0f49206e1150f80bdb80eaa5e4fd2ecf','s:32:\"0f49206e1150f80bdb80eaa5e4fd2ecf\";'),
(207,'extensionScannerNotAffected','8c18585d0c72f55b03906fa74b79e30d','s:32:\"8c18585d0c72f55b03906fa74b79e30d\";'),
(208,'extensionScannerNotAffected','7c4c3a6eb349d033a95e8724b0b725ba','s:32:\"7c4c3a6eb349d033a95e8724b0b725ba\";'),
(209,'extensionScannerNotAffected','4e8f9d2deaef1ad3d7207ea590882a33','s:32:\"4e8f9d2deaef1ad3d7207ea590882a33\";'),
(210,'extensionScannerNotAffected','e3f754d8dad6184cb0ad5b03d686b8cb','s:32:\"e3f754d8dad6184cb0ad5b03d686b8cb\";'),
(211,'extensionScannerNotAffected','6c8b81e030762c668def5fdaad99ab54','s:32:\"6c8b81e030762c668def5fdaad99ab54\";'),
(212,'extensionScannerNotAffected','fb5a3f0af01005c18639082b1a404b69','s:32:\"fb5a3f0af01005c18639082b1a404b69\";'),
(213,'extensionScannerNotAffected','f5fd76fc9907cd3fe609e44a72657f1c','s:32:\"f5fd76fc9907cd3fe609e44a72657f1c\";'),
(214,'extensionScannerNotAffected','0c44bac06883c5ea942a91bc2edacdfb','s:32:\"0c44bac06883c5ea942a91bc2edacdfb\";'),
(215,'extensionScannerNotAffected','6771f198146576fc2a70ce5461728021','s:32:\"6771f198146576fc2a70ce5461728021\";'),
(216,'extensionScannerNotAffected','03ee79ca31203e4b288fa61017b0cb04','s:32:\"03ee79ca31203e4b288fa61017b0cb04\";'),
(217,'extensionScannerNotAffected','b7ef0ef7adc26e716130fb74dee0a4fd','s:32:\"b7ef0ef7adc26e716130fb74dee0a4fd\";'),
(218,'extensionScannerNotAffected','feee31a4f626a6e125a5886c05638641','s:32:\"feee31a4f626a6e125a5886c05638641\";'),
(219,'extensionScannerNotAffected','014e5dcf35c3d6fc8b8a692cbb56e43a','s:32:\"014e5dcf35c3d6fc8b8a692cbb56e43a\";'),
(220,'extensionScannerNotAffected','16be5a40555f720156c6006f34dcfacd','s:32:\"16be5a40555f720156c6006f34dcfacd\";'),
(221,'extensionScannerNotAffected','160b52118d33ad5c149fd859e43ddd70','s:32:\"160b52118d33ad5c149fd859e43ddd70\";'),
(222,'extensionScannerNotAffected','a7056572c1b4cdb727e48c6a28b4e528','s:32:\"a7056572c1b4cdb727e48c6a28b4e528\";'),
(223,'extensionScannerNotAffected','eb6039312047fc7f3b8bd323927ce28e','s:32:\"eb6039312047fc7f3b8bd323927ce28e\";'),
(224,'extensionScannerNotAffected','b0b91dbb7f0f75c6c1d49c32aba9c863','s:32:\"b0b91dbb7f0f75c6c1d49c32aba9c863\";'),
(225,'extensionScannerNotAffected','ecc8d90045bf5b51a4f5087f19e3bb72','s:32:\"ecc8d90045bf5b51a4f5087f19e3bb72\";'),
(226,'extensionScannerNotAffected','5d612a94ffffdcb591692e002ff2ab9f','s:32:\"5d612a94ffffdcb591692e002ff2ab9f\";'),
(227,'extensionScannerNotAffected','c6fbc609b28b5481a761b791cb61da80','s:32:\"c6fbc609b28b5481a761b791cb61da80\";'),
(228,'extensionScannerNotAffected','cb8a107c133de25112085547cb51fee7','s:32:\"cb8a107c133de25112085547cb51fee7\";'),
(229,'extensionScannerNotAffected','da0efe14d3cb2782a53ab02ccc85f5a1','s:32:\"da0efe14d3cb2782a53ab02ccc85f5a1\";'),
(230,'extensionScannerNotAffected','f3a267cb99caea4e72ed6d66bf4e2da8','s:32:\"f3a267cb99caea4e72ed6d66bf4e2da8\";'),
(231,'extensionScannerNotAffected','165330c2d09a53d009204a19b538e568','s:32:\"165330c2d09a53d009204a19b538e568\";'),
(232,'extensionScannerNotAffected','ff1d6d30074b812fe841bb0a198ddfbf','s:32:\"ff1d6d30074b812fe841bb0a198ddfbf\";'),
(233,'extensionScannerNotAffected','9d8da8c7e57a1d109a100f35334b1d47','s:32:\"9d8da8c7e57a1d109a100f35334b1d47\";'),
(234,'extensionScannerNotAffected','d20f8da2eb1cb7a7eca52a145fc787e2','s:32:\"d20f8da2eb1cb7a7eca52a145fc787e2\";'),
(235,'extensionScannerNotAffected','be5e9c098491dac91f80e7a1de064e9d','s:32:\"be5e9c098491dac91f80e7a1de064e9d\";'),
(236,'extensionScannerNotAffected','168ead984b1d1dd9414b43bfb7463383','s:32:\"168ead984b1d1dd9414b43bfb7463383\";'),
(237,'extensionScannerNotAffected','997ee9b6a3dae2a060def0bebcfc9aca','s:32:\"997ee9b6a3dae2a060def0bebcfc9aca\";'),
(238,'extensionScannerNotAffected','b217dc0dcb90dabbe7dfc2923c42de1d','s:32:\"b217dc0dcb90dabbe7dfc2923c42de1d\";'),
(239,'extensionScannerNotAffected','3545b03c4525f913e50a3a7b0141985e','s:32:\"3545b03c4525f913e50a3a7b0141985e\";'),
(240,'extensionScannerNotAffected','0fd17ba5cb2e3410f986a0ef42a7f032','s:32:\"0fd17ba5cb2e3410f986a0ef42a7f032\";'),
(241,'extensionScannerNotAffected','b3eb2f57b7048dc10b06b601afa1a68b','s:32:\"b3eb2f57b7048dc10b06b601afa1a68b\";'),
(242,'extensionScannerNotAffected','c40b044fad095951023985f97183d4e7','s:32:\"c40b044fad095951023985f97183d4e7\";'),
(243,'extensionScannerNotAffected','6bdd13c460d24f22a219d91d121d7fb9','s:32:\"6bdd13c460d24f22a219d91d121d7fb9\";'),
(244,'extensionScannerNotAffected','8c4b22b879db672714ac1690dd2b3237','s:32:\"8c4b22b879db672714ac1690dd2b3237\";'),
(245,'extensionScannerNotAffected','37b4a4b1ccd4f2a7a50c41cd97456b2b','s:32:\"37b4a4b1ccd4f2a7a50c41cd97456b2b\";'),
(246,'extensionScannerNotAffected','fa77b4ee0f04a894e7d389285e5cc8b1','s:32:\"fa77b4ee0f04a894e7d389285e5cc8b1\";'),
(247,'extensionScannerNotAffected','d47cc2621605a6652ab17ed6f239ac9b','s:32:\"d47cc2621605a6652ab17ed6f239ac9b\";'),
(248,'extensionScannerNotAffected','17c5edeb29362e8ea099f7589be67ad4','s:32:\"17c5edeb29362e8ea099f7589be67ad4\";'),
(249,'extensionScannerNotAffected','89b1943128ab1b71dd4983855c5ce1e8','s:32:\"89b1943128ab1b71dd4983855c5ce1e8\";'),
(250,'extensionScannerNotAffected','8160290ad0e0a2b26df443f27751a519','s:32:\"8160290ad0e0a2b26df443f27751a519\";'),
(251,'extensionScannerNotAffected','8e7ba344126721feb3d3b70cb492ae62','s:32:\"8e7ba344126721feb3d3b70cb492ae62\";'),
(252,'extensionScannerNotAffected','901343ea26f5f0d78740ac282171e0ae','s:32:\"901343ea26f5f0d78740ac282171e0ae\";'),
(253,'extensionScannerNotAffected','0161c1715c79c76be4bc0ca57f66ece2','s:32:\"0161c1715c79c76be4bc0ca57f66ece2\";'),
(254,'extensionScannerNotAffected','8889d2cabb7a5d076d15574ffc9f0cf4','s:32:\"8889d2cabb7a5d076d15574ffc9f0cf4\";'),
(255,'extensionScannerNotAffected','1faef6b0562993ec8a054bed2ef2c93d','s:32:\"1faef6b0562993ec8a054bed2ef2c93d\";'),
(256,'extensionScannerNotAffected','a2d416eba69e875edc13e6e37169265d','s:32:\"a2d416eba69e875edc13e6e37169265d\";'),
(257,'extensionScannerNotAffected','7c3dd0ff8c604268a31354f06ee49271','s:32:\"7c3dd0ff8c604268a31354f06ee49271\";'),
(258,'extensionScannerNotAffected','1a768c46e0bc3222ecd5de6fa243e9c3','s:32:\"1a768c46e0bc3222ecd5de6fa243e9c3\";'),
(259,'extensionScannerNotAffected','3c562313c6689bc62fb848b678587f30','s:32:\"3c562313c6689bc62fb848b678587f30\";'),
(260,'extensionScannerNotAffected','9461687a740bf75293500661c28dc086','s:32:\"9461687a740bf75293500661c28dc086\";'),
(261,'extensionScannerNotAffected','8d5d8fc5aaaa63362e0e66645e84cd04','s:32:\"8d5d8fc5aaaa63362e0e66645e84cd04\";'),
(262,'extensionScannerNotAffected','7487ebac255315ebacdc2037d8703830','s:32:\"7487ebac255315ebacdc2037d8703830\";'),
(263,'extensionScannerNotAffected','f347e36ac973787adddfd05fe112ac0c','s:32:\"f347e36ac973787adddfd05fe112ac0c\";'),
(264,'extensionScannerNotAffected','a2c672f1cd58289b62009e699b3fb917','s:32:\"a2c672f1cd58289b62009e699b3fb917\";'),
(265,'extensionScannerNotAffected','f416c9b17936bb2c9f6e525e3a2d10f7','s:32:\"f416c9b17936bb2c9f6e525e3a2d10f7\";'),
(266,'extensionScannerNotAffected','b2184d0767b2c8db68fd1c71e99b09ae','s:32:\"b2184d0767b2c8db68fd1c71e99b09ae\";'),
(267,'extensionScannerNotAffected','6a0bf83873b9e942825b66eafffa5b5e','s:32:\"6a0bf83873b9e942825b66eafffa5b5e\";'),
(268,'extensionScannerNotAffected','fd283cc724be66c8d6bed30408616ec0','s:32:\"fd283cc724be66c8d6bed30408616ec0\";'),
(269,'extensionScannerNotAffected','8eaa532805aebdbb5e995b74d9b09502','s:32:\"8eaa532805aebdbb5e995b74d9b09502\";'),
(270,'extensionScannerNotAffected','c8ae5ce15ce02f46a2c3a036d7073d54','s:32:\"c8ae5ce15ce02f46a2c3a036d7073d54\";'),
(271,'extensionScannerNotAffected','595ba7108ca292dcfe7c3684fd6ea490','s:32:\"595ba7108ca292dcfe7c3684fd6ea490\";'),
(272,'extensionScannerNotAffected','252e11cc4c45060b62906e765a69a9b9','s:32:\"252e11cc4c45060b62906e765a69a9b9\";'),
(273,'extensionScannerNotAffected','b1c85d92f1ac1d25fb0419a7d92bac49','s:32:\"b1c85d92f1ac1d25fb0419a7d92bac49\";'),
(274,'extensionScannerNotAffected','e5bf6cace2a7bd01920f1b9d78fe6af3','s:32:\"e5bf6cace2a7bd01920f1b9d78fe6af3\";'),
(275,'extensionScannerNotAffected','6a69258d7e410abf281bb233ce1661b4','s:32:\"6a69258d7e410abf281bb233ce1661b4\";'),
(276,'extensionScannerNotAffected','10491f982a8c97a285074bafecd4850c','s:32:\"10491f982a8c97a285074bafecd4850c\";'),
(277,'extensionScannerNotAffected','087c7a25d0ebc24b631f0200778af7aa','s:32:\"087c7a25d0ebc24b631f0200778af7aa\";'),
(278,'extensionScannerNotAffected','92bde134c0712419f41b56cf75fade47','s:32:\"92bde134c0712419f41b56cf75fade47\";'),
(279,'extensionScannerNotAffected','35a7e9bd2bb88459c1bc9aefe2efff33','s:32:\"35a7e9bd2bb88459c1bc9aefe2efff33\";'),
(280,'extensionScannerNotAffected','8242a09071390f9b0eee618057a861ba','s:32:\"8242a09071390f9b0eee618057a861ba\";'),
(281,'extensionScannerNotAffected','bb7e90b7b2e103dfc5a434e1d5facd81','s:32:\"bb7e90b7b2e103dfc5a434e1d5facd81\";'),
(282,'extensionScannerNotAffected','38a00c1a79f1521e29c10c43db146e7f','s:32:\"38a00c1a79f1521e29c10c43db146e7f\";'),
(283,'extensionScannerNotAffected','0293b40f4b6581d5b5f657797e02e880','s:32:\"0293b40f4b6581d5b5f657797e02e880\";'),
(284,'extensionScannerNotAffected','6c3cd6027c59bdb765ad671987b71ca1','s:32:\"6c3cd6027c59bdb765ad671987b71ca1\";'),
(285,'extensionScannerNotAffected','3de90c68e822c91f0ded139b68bfe482','s:32:\"3de90c68e822c91f0ded139b68bfe482\";'),
(286,'extensionScannerNotAffected','217b962b55424e8b5905143e5d044a85','s:32:\"217b962b55424e8b5905143e5d044a85\";'),
(287,'extensionScannerNotAffected','49e9b2afd8c29c002992df010f42ed8f','s:32:\"49e9b2afd8c29c002992df010f42ed8f\";'),
(288,'extensionScannerNotAffected','d7b642039705d72c6e28a3a0dbcc3128','s:32:\"d7b642039705d72c6e28a3a0dbcc3128\";'),
(289,'extensionScannerNotAffected','610700d32cc7a4c67695c4628e9d0c68','s:32:\"610700d32cc7a4c67695c4628e9d0c68\";'),
(290,'extensionScannerNotAffected','a53a92fe2d6c98562d32885b77c7c118','s:32:\"a53a92fe2d6c98562d32885b77c7c118\";'),
(291,'extensionScannerNotAffected','fdef8b8e54457e6afb6363b0eccf7ba9','s:32:\"fdef8b8e54457e6afb6363b0eccf7ba9\";'),
(292,'extensionScannerNotAffected','d660c9ab53b9eceb2583ee3d0223edea','s:32:\"d660c9ab53b9eceb2583ee3d0223edea\";'),
(293,'extensionScannerNotAffected','7068e4f7efdaddea25cbb2d7d7c39994','s:32:\"7068e4f7efdaddea25cbb2d7d7c39994\";'),
(294,'extensionScannerNotAffected','6fbf1a0bc13c1f883aa587c45a466e4a','s:32:\"6fbf1a0bc13c1f883aa587c45a466e4a\";'),
(295,'extensionScannerNotAffected','ed983315cf25ac96bd414ffbfed6cf79','s:32:\"ed983315cf25ac96bd414ffbfed6cf79\";'),
(296,'extensionScannerNotAffected','a267e0d6dc4a0385543f7a8b8a2a8ebb','s:32:\"a267e0d6dc4a0385543f7a8b8a2a8ebb\";'),
(297,'extensionScannerNotAffected','fc45009fe1064c751abc7f6037173a10','s:32:\"fc45009fe1064c751abc7f6037173a10\";'),
(298,'extensionScannerNotAffected','533828d0a15378bcdadcff7fe3ad595f','s:32:\"533828d0a15378bcdadcff7fe3ad595f\";'),
(299,'extensionScannerNotAffected','b38fed99897122695e3c7a32c8ca3fb6','s:32:\"b38fed99897122695e3c7a32c8ca3fb6\";'),
(300,'extensionScannerNotAffected','1afb1edc3ae1b1083c09200591d1b929','s:32:\"1afb1edc3ae1b1083c09200591d1b929\";'),
(301,'extensionScannerNotAffected','2690c3f607b061473e9015f09435fc58','s:32:\"2690c3f607b061473e9015f09435fc58\";'),
(302,'extensionScannerNotAffected','c428519a0bdac804eb834fa5f5e48533','s:32:\"c428519a0bdac804eb834fa5f5e48533\";'),
(303,'extensionScannerNotAffected','82a630b895e10045dcc02537ff1dbc0d','s:32:\"82a630b895e10045dcc02537ff1dbc0d\";'),
(304,'extensionScannerNotAffected','1d3586c7e8327fa52cf0d6953eaaf9a9','s:32:\"1d3586c7e8327fa52cf0d6953eaaf9a9\";'),
(305,'extensionScannerNotAffected','335ecc9f4130c3fc4b00e416ae00a608','s:32:\"335ecc9f4130c3fc4b00e416ae00a608\";'),
(306,'extensionScannerNotAffected','13e7127f427e0f21e15ffa5b5796bd14','s:32:\"13e7127f427e0f21e15ffa5b5796bd14\";'),
(307,'extensionScannerNotAffected','b07252d8a7122b98d43cc2a4014d04fb','s:32:\"b07252d8a7122b98d43cc2a4014d04fb\";'),
(308,'extensionScannerNotAffected','d0d23edf6c292c455044e4b156757bce','s:32:\"d0d23edf6c292c455044e4b156757bce\";'),
(309,'extensionScannerNotAffected','d057f8afa511161ac29cc64bf69191dc','s:32:\"d057f8afa511161ac29cc64bf69191dc\";'),
(310,'extensionScannerNotAffected','8159e82a48c8a5304dc727db44cf9ccc','s:32:\"8159e82a48c8a5304dc727db44cf9ccc\";'),
(311,'extensionScannerNotAffected','3584234aa6609e266b4d9dbb2b86d6ae','s:32:\"3584234aa6609e266b4d9dbb2b86d6ae\";'),
(312,'extensionScannerNotAffected','51dee146d4cd05df5ac931c3e6fc2bcb','s:32:\"51dee146d4cd05df5ac931c3e6fc2bcb\";'),
(313,'extensionScannerNotAffected','2cbeb3b086105df5d4ba831d55802395','s:32:\"2cbeb3b086105df5d4ba831d55802395\";'),
(314,'extensionScannerNotAffected','bfba7536729876f96fa044e90261cd6a','s:32:\"bfba7536729876f96fa044e90261cd6a\";'),
(315,'extensionScannerNotAffected','3ffba20946d109ca5f8fcdad0eb7ef9d','s:32:\"3ffba20946d109ca5f8fcdad0eb7ef9d\";'),
(316,'extensionScannerNotAffected','c867e41158524f2425306c52f1344f75','s:32:\"c867e41158524f2425306c52f1344f75\";'),
(317,'extensionScannerNotAffected','2cceb729a693916619e3898a48bb7d7f','s:32:\"2cceb729a693916619e3898a48bb7d7f\";'),
(318,'extensionScannerNotAffected','b9f9b7fd91fee7ac6ec34aeeac8ca018','s:32:\"b9f9b7fd91fee7ac6ec34aeeac8ca018\";'),
(319,'extensionScannerNotAffected','fc0849229ef2b9f0025fc95d61645b4e','s:32:\"fc0849229ef2b9f0025fc95d61645b4e\";'),
(320,'extensionScannerNotAffected','83fd799b47acc1b01dfc15faf495c6fa','s:32:\"83fd799b47acc1b01dfc15faf495c6fa\";'),
(321,'extensionScannerNotAffected','55f49723ea2532b995d6d9aaebdcbd67','s:32:\"55f49723ea2532b995d6d9aaebdcbd67\";'),
(322,'extensionScannerNotAffected','cfcb23aaa05c6c2c9447279702ee60b1','s:32:\"cfcb23aaa05c6c2c9447279702ee60b1\";'),
(323,'extensionScannerNotAffected','bbfe9546564594ee855a227bc3ee4bc0','s:32:\"bbfe9546564594ee855a227bc3ee4bc0\";'),
(324,'extensionScannerNotAffected','644c08fddac592313d084b05773d57a0','s:32:\"644c08fddac592313d084b05773d57a0\";'),
(325,'extensionScannerNotAffected','f801ab642054829ee07b7827c6260c1a','s:32:\"f801ab642054829ee07b7827c6260c1a\";'),
(326,'extensionScannerNotAffected','362eee6e56383d6ee4f61bc84a53412e','s:32:\"362eee6e56383d6ee4f61bc84a53412e\";'),
(327,'extensionScannerNotAffected','7fb6f9460525b3dda81f192a341d39af','s:32:\"7fb6f9460525b3dda81f192a341d39af\";'),
(328,'extensionScannerNotAffected','527f6e433f022b4f9bbfa0696107bba4','s:32:\"527f6e433f022b4f9bbfa0696107bba4\";'),
(329,'extensionScannerNotAffected','29912aad74ac0ac74b563abfa2691046','s:32:\"29912aad74ac0ac74b563abfa2691046\";'),
(330,'extensionScannerNotAffected','fce695ddf31518b64a70a4db5fc7f2b9','s:32:\"fce695ddf31518b64a70a4db5fc7f2b9\";'),
(331,'extensionScannerNotAffected','6f8a563727b06eca78f63f7a4a60e1e5','s:32:\"6f8a563727b06eca78f63f7a4a60e1e5\";'),
(332,'extensionScannerNotAffected','77b498481c54b2bdba2caea86be14528','s:32:\"77b498481c54b2bdba2caea86be14528\";'),
(333,'extensionScannerNotAffected','7b080cc6b1c75d4f0250d21d0347a5e4','s:32:\"7b080cc6b1c75d4f0250d21d0347a5e4\";'),
(334,'extensionScannerNotAffected','d8ca805203b2e45899537e7780032ff8','s:32:\"d8ca805203b2e45899537e7780032ff8\";'),
(335,'extensionScannerNotAffected','4b8eab6dc6925a8361432070110460ff','s:32:\"4b8eab6dc6925a8361432070110460ff\";'),
(336,'extensionScannerNotAffected','73c26732718e840a0c3a13f510f694ec','s:32:\"73c26732718e840a0c3a13f510f694ec\";'),
(337,'extensionScannerNotAffected','7ef2b99923b54ba86061deb6092e67c8','s:32:\"7ef2b99923b54ba86061deb6092e67c8\";'),
(338,'extensionScannerNotAffected','a4cfe53b75527725ffe8b9c303441ffd','s:32:\"a4cfe53b75527725ffe8b9c303441ffd\";'),
(339,'extensionScannerNotAffected','ead9f6ff892cd928e4937d19b36272ec','s:32:\"ead9f6ff892cd928e4937d19b36272ec\";'),
(340,'extensionScannerNotAffected','e71d3f59519be4cb6df58929f0436275','s:32:\"e71d3f59519be4cb6df58929f0436275\";'),
(341,'extensionScannerNotAffected','a32ab65f5492301a7bfef920ee30e237','s:32:\"a32ab65f5492301a7bfef920ee30e237\";'),
(342,'extensionScannerNotAffected','715138a5b463064e31a081aedb900026','s:32:\"715138a5b463064e31a081aedb900026\";'),
(343,'extensionScannerNotAffected','6f5d8526244b83ae2759751e8bf436a7','s:32:\"6f5d8526244b83ae2759751e8bf436a7\";'),
(344,'extensionScannerNotAffected','7b13ac9c4bdb0c699cc2c9271f75aa1d','s:32:\"7b13ac9c4bdb0c699cc2c9271f75aa1d\";'),
(345,'extensionScannerNotAffected','a2513e917270e1444cb272b38569011c','s:32:\"a2513e917270e1444cb272b38569011c\";'),
(346,'extensionScannerNotAffected','af518efa7bcec68d4ef3e89361f5b070','s:32:\"af518efa7bcec68d4ef3e89361f5b070\";'),
(347,'extensionScannerNotAffected','849409f5781ae37108ac498323e0b786','s:32:\"849409f5781ae37108ac498323e0b786\";'),
(348,'extensionScannerNotAffected','c07befd21624591e3f814d5401a30ab5','s:32:\"c07befd21624591e3f814d5401a30ab5\";'),
(349,'extensionScannerNotAffected','7d7372a93db8f0ae259ae77372cfbcd6','s:32:\"7d7372a93db8f0ae259ae77372cfbcd6\";'),
(350,'extensionScannerNotAffected','6d29b1ad49f8ecc3fecbea36a67859ec','s:32:\"6d29b1ad49f8ecc3fecbea36a67859ec\";'),
(351,'extensionScannerNotAffected','116f6fea622aa1d03d3ee1a0aa976765','s:32:\"116f6fea622aa1d03d3ee1a0aa976765\";'),
(352,'extensionScannerNotAffected','cb228474381c9bad647a56a5fa5c81e6','s:32:\"cb228474381c9bad647a56a5fa5c81e6\";'),
(353,'extensionScannerNotAffected','0df982270c206f486f2f7c6854a6f99f','s:32:\"0df982270c206f486f2f7c6854a6f99f\";'),
(354,'extensionScannerNotAffected','e0e6fa9bfc877ecd4b4c21cab0063fc3','s:32:\"e0e6fa9bfc877ecd4b4c21cab0063fc3\";'),
(355,'extensionScannerNotAffected','16693438f698c4c62a0b084e48d45bba','s:32:\"16693438f698c4c62a0b084e48d45bba\";'),
(356,'extensionScannerNotAffected','09d5425f8dcc500277411b9bd0d5fbb7','s:32:\"09d5425f8dcc500277411b9bd0d5fbb7\";'),
(357,'extensionScannerNotAffected','0638957df2121314be77233a34bd138e','s:32:\"0638957df2121314be77233a34bd138e\";'),
(358,'extensionScannerNotAffected','a3204ad427a5493624561fdca88f3994','s:32:\"a3204ad427a5493624561fdca88f3994\";'),
(359,'extensionScannerNotAffected','9f89c82b6e0b431c04b87e4e229769d3','s:32:\"9f89c82b6e0b431c04b87e4e229769d3\";'),
(360,'extensionScannerNotAffected','3295a8a4fb1c867e34d1fe5e59850e3b','s:32:\"3295a8a4fb1c867e34d1fe5e59850e3b\";'),
(361,'extensionScannerNotAffected','669243de0464324ebcdf223492862f8e','s:32:\"669243de0464324ebcdf223492862f8e\";'),
(362,'extensionScannerNotAffected','d4c7b89fac340cb568aeec849a9351a7','s:32:\"d4c7b89fac340cb568aeec849a9351a7\";'),
(363,'extensionScannerNotAffected','f3433235666f9f90138a5cc9c8b41965','s:32:\"f3433235666f9f90138a5cc9c8b41965\";'),
(364,'extensionScannerNotAffected','efae40738a60a8456a1b3948da8cfccc','s:32:\"efae40738a60a8456a1b3948da8cfccc\";'),
(365,'extensionScannerNotAffected','45d4bb180e30ef974e9b4e584836d78c','s:32:\"45d4bb180e30ef974e9b4e584836d78c\";'),
(366,'extensionScannerNotAffected','afce2ed8b41decf309b87a6fba363309','s:32:\"afce2ed8b41decf309b87a6fba363309\";'),
(367,'extensionScannerNotAffected','60b2c243b6ca4e013f444d7e2d62611f','s:32:\"60b2c243b6ca4e013f444d7e2d62611f\";'),
(368,'extensionScannerNotAffected','75c72558f548655ad173eac504ed7c83','s:32:\"75c72558f548655ad173eac504ed7c83\";'),
(369,'extensionScannerNotAffected','18f664c8c929b1cdb4418781aeda7af0','s:32:\"18f664c8c929b1cdb4418781aeda7af0\";'),
(370,'extensionScannerNotAffected','7131beea634942741f92e9601786da79','s:32:\"7131beea634942741f92e9601786da79\";'),
(371,'extensionScannerNotAffected','adb5167fdb6a60c96ea7233ccbd0a630','s:32:\"adb5167fdb6a60c96ea7233ccbd0a630\";'),
(372,'extensionScannerNotAffected','2fab8c2a8303d0a8114f19c44e1fa845','s:32:\"2fab8c2a8303d0a8114f19c44e1fa845\";'),
(373,'extensionScannerNotAffected','4521d52bf6b6f35d7aab6ee189f024ac','s:32:\"4521d52bf6b6f35d7aab6ee189f024ac\";'),
(374,'extensionScannerNotAffected','c99d2df025ecc1582a7049e9be6e6405','s:32:\"c99d2df025ecc1582a7049e9be6e6405\";'),
(375,'extensionScannerNotAffected','72e33b0cd5ea51707ee9f2a87a066ebb','s:32:\"72e33b0cd5ea51707ee9f2a87a066ebb\";'),
(376,'extensionScannerNotAffected','1b838cb5afa8a8747d5f8c32197f797f','s:32:\"1b838cb5afa8a8747d5f8c32197f797f\";'),
(377,'extensionScannerNotAffected','0fb4f18818f682b6f570133d077c792f','s:32:\"0fb4f18818f682b6f570133d077c792f\";'),
(378,'extensionScannerNotAffected','0899a3301413807e5bb8d7431a92b042','s:32:\"0899a3301413807e5bb8d7431a92b042\";'),
(379,'extensionScannerNotAffected','3c18b48efafd3165cff971d467d727a5','s:32:\"3c18b48efafd3165cff971d467d727a5\";'),
(380,'extensionScannerNotAffected','b9d9a059308b72188e7509b43b846547','s:32:\"b9d9a059308b72188e7509b43b846547\";'),
(381,'extensionScannerNotAffected','3e4178c5b2bcbd76797b85cbb7cb0ecb','s:32:\"3e4178c5b2bcbd76797b85cbb7cb0ecb\";'),
(382,'extensionScannerNotAffected','9869b0cc809f66493dccd791ca3525cd','s:32:\"9869b0cc809f66493dccd791ca3525cd\";'),
(383,'extensionScannerNotAffected','8f45ae1aaba029344a202292be5330e6','s:32:\"8f45ae1aaba029344a202292be5330e6\";'),
(384,'extensionScannerNotAffected','f91b97a15f215c9e427638d785caf933','s:32:\"f91b97a15f215c9e427638d785caf933\";'),
(385,'extensionScannerNotAffected','bc81bd413ec79a3bd71c16ea1afd3115','s:32:\"bc81bd413ec79a3bd71c16ea1afd3115\";'),
(386,'extensionScannerNotAffected','ffba01881f59bda8b8095ca54ecf72a3','s:32:\"ffba01881f59bda8b8095ca54ecf72a3\";'),
(387,'extensionScannerNotAffected','1bcca5208a568bb7d212ab2ba8f53264','s:32:\"1bcca5208a568bb7d212ab2ba8f53264\";'),
(388,'extensionScannerNotAffected','b664fdd3c37899aed1984ad83d8e840c','s:32:\"b664fdd3c37899aed1984ad83d8e840c\";'),
(389,'extensionScannerNotAffected','da91a8846d40aa2a08537f88cbf9d67b','s:32:\"da91a8846d40aa2a08537f88cbf9d67b\";'),
(390,'extensionScannerNotAffected','7b3bdad6f4a6f29903ca75c1d78c9045','s:32:\"7b3bdad6f4a6f29903ca75c1d78c9045\";'),
(391,'extensionScannerNotAffected','a33b9f4dd4f5da96a4c5c2a674102c42','s:32:\"a33b9f4dd4f5da96a4c5c2a674102c42\";'),
(392,'extensionScannerNotAffected','865bb7d2bc4f13fa6270bfc21095c96b','s:32:\"865bb7d2bc4f13fa6270bfc21095c96b\";'),
(393,'extensionScannerNotAffected','836cf172821154f36eb8d943f494c416','s:32:\"836cf172821154f36eb8d943f494c416\";'),
(394,'extensionScannerNotAffected','17b21fc59b86e89433bd8cf6e3af0b9c','s:32:\"17b21fc59b86e89433bd8cf6e3af0b9c\";'),
(395,'extensionScannerNotAffected','e33ea194d97ec367bdab714ff02be462','s:32:\"e33ea194d97ec367bdab714ff02be462\";'),
(396,'extensionScannerNotAffected','113e37a399eca4d97593a5c63758bd90','s:32:\"113e37a399eca4d97593a5c63758bd90\";'),
(397,'extensionScannerNotAffected','2f4ef542b7e12539f1c858bf142c4c1c','s:32:\"2f4ef542b7e12539f1c858bf142c4c1c\";'),
(398,'extensionScannerNotAffected','4346f09e5036ab5e9b0bbcd39d796e31','s:32:\"4346f09e5036ab5e9b0bbcd39d796e31\";'),
(399,'extensionScannerNotAffected','192975d53cd934a17614d613115fc5f0','s:32:\"192975d53cd934a17614d613115fc5f0\";'),
(400,'extensionScannerNotAffected','338425e76cbfa9ab68fa513a4f9a8da8','s:32:\"338425e76cbfa9ab68fa513a4f9a8da8\";'),
(401,'extensionScannerNotAffected','b8e3638d5f10b52a6383642591e0389b','s:32:\"b8e3638d5f10b52a6383642591e0389b\";'),
(402,'extensionScannerNotAffected','2f24b3647e448d26dd247b6f84ee1622','s:32:\"2f24b3647e448d26dd247b6f84ee1622\";'),
(403,'extensionScannerNotAffected','85191e2718f47805bca9eaca48df37f7','s:32:\"85191e2718f47805bca9eaca48df37f7\";'),
(404,'extensionScannerNotAffected','8bb3f19abdcc30cd9803055ed60ed696','s:32:\"8bb3f19abdcc30cd9803055ed60ed696\";'),
(405,'extensionScannerNotAffected','de4f78129ccd0ff356b1decf529cdb97','s:32:\"de4f78129ccd0ff356b1decf529cdb97\";'),
(406,'extensionScannerNotAffected','cb3b34610c5a08d40e9bb6b9934f4281','s:32:\"cb3b34610c5a08d40e9bb6b9934f4281\";'),
(407,'extensionScannerNotAffected','6998fe944bf6376b184805ed00e16784','s:32:\"6998fe944bf6376b184805ed00e16784\";'),
(408,'extensionScannerNotAffected','898c41fd59415c24ecfa193e8ff8c13d','s:32:\"898c41fd59415c24ecfa193e8ff8c13d\";'),
(409,'extensionScannerNotAffected','0a7d587bcf91e38382ac8bb270dae721','s:32:\"0a7d587bcf91e38382ac8bb270dae721\";'),
(410,'extensionScannerNotAffected','8bea9d810503cbeafd3ec1eeb5889b29','s:32:\"8bea9d810503cbeafd3ec1eeb5889b29\";'),
(411,'extensionScannerNotAffected','c80e4f8f0f7311133c8bbaca3d457b73','s:32:\"c80e4f8f0f7311133c8bbaca3d457b73\";'),
(412,'extensionScannerNotAffected','e6259480e6f36dc930821269d1a589ae','s:32:\"e6259480e6f36dc930821269d1a589ae\";'),
(413,'extensionScannerNotAffected','2aeb71d4f4a8eaed62c29ed45953210e','s:32:\"2aeb71d4f4a8eaed62c29ed45953210e\";'),
(414,'extensionScannerNotAffected','737e9b4d966382ffda13162e4faebf5e','s:32:\"737e9b4d966382ffda13162e4faebf5e\";'),
(415,'extensionScannerNotAffected','b09ec2731f29170c2f0f5609153f6ebe','s:32:\"b09ec2731f29170c2f0f5609153f6ebe\";'),
(416,'extensionScannerNotAffected','b70d7d6c6305141700464904600fc232','s:32:\"b70d7d6c6305141700464904600fc232\";'),
(417,'extensionScannerNotAffected','2c6025c21906acd5224231278951a73c','s:32:\"2c6025c21906acd5224231278951a73c\";'),
(418,'extensionScannerNotAffected','1dbe8708a0f10bd80e34c0e75e68b1fd','s:32:\"1dbe8708a0f10bd80e34c0e75e68b1fd\";'),
(419,'extensionScannerNotAffected','17b2a3df8ff87d4e93d7cb8eb2b772e9','s:32:\"17b2a3df8ff87d4e93d7cb8eb2b772e9\";'),
(420,'extensionScannerNotAffected','59f26cab8fae72894d4867b334d914b0','s:32:\"59f26cab8fae72894d4867b334d914b0\";'),
(421,'extensionScannerNotAffected','3fe70aa1f2c5e78750cbdefd56447f3c','s:32:\"3fe70aa1f2c5e78750cbdefd56447f3c\";'),
(422,'extensionScannerNotAffected','9866b0b48efd56e4845f5ee54a15178e','s:32:\"9866b0b48efd56e4845f5ee54a15178e\";'),
(423,'extensionScannerNotAffected','324e28d10fd1d464bc8145e775dda6ae','s:32:\"324e28d10fd1d464bc8145e775dda6ae\";'),
(424,'extensionScannerNotAffected','7e75dac7391b40c952a673633b06fdf7','s:32:\"7e75dac7391b40c952a673633b06fdf7\";'),
(425,'extensionScannerNotAffected','ade09d1df6614f6ab7469887f5d2d248','s:32:\"ade09d1df6614f6ab7469887f5d2d248\";'),
(426,'extensionScannerNotAffected','9eb6e6bad95bc6e4eab2d956f7a4b4cc','s:32:\"9eb6e6bad95bc6e4eab2d956f7a4b4cc\";'),
(427,'extensionScannerNotAffected','2824b8876243a2d39c2a6837ca996e2a','s:32:\"2824b8876243a2d39c2a6837ca996e2a\";'),
(428,'extensionScannerNotAffected','9af17b92bffa30bac327e0abc02ca7cd','s:32:\"9af17b92bffa30bac327e0abc02ca7cd\";'),
(429,'extensionScannerNotAffected','a1bcabf0b593700aa64f6318b676eff6','s:32:\"a1bcabf0b593700aa64f6318b676eff6\";'),
(430,'extensionScannerNotAffected','6fa734df2c37c25dc45e90aaa43bfb65','s:32:\"6fa734df2c37c25dc45e90aaa43bfb65\";'),
(431,'extensionScannerNotAffected','72fda82a23e71be951eb74b45e7554d2','s:32:\"72fda82a23e71be951eb74b45e7554d2\";'),
(432,'extensionScannerNotAffected','dffce21225dad8ce1b65ee0e8263be81','s:32:\"dffce21225dad8ce1b65ee0e8263be81\";'),
(433,'extensionScannerNotAffected','cd41e90753126eec12c9636b476d88e7','s:32:\"cd41e90753126eec12c9636b476d88e7\";'),
(434,'extensionScannerNotAffected','adfee89e126e184e8813de4f39fab1c5','s:32:\"adfee89e126e184e8813de4f39fab1c5\";'),
(435,'extensionScannerNotAffected','c24e64dd41653a2e9a868e8109b6b147','s:32:\"c24e64dd41653a2e9a868e8109b6b147\";'),
(436,'extensionScannerNotAffected','29712ea43695726083dc6e584b8d60e0','s:32:\"29712ea43695726083dc6e584b8d60e0\";'),
(437,'extensionScannerNotAffected','03de9ca8bbc14087b7c1162d2dc52e60','s:32:\"03de9ca8bbc14087b7c1162d2dc52e60\";'),
(438,'extensionScannerNotAffected','978ff1694d45ae7f44e5a722b7d2e55c','s:32:\"978ff1694d45ae7f44e5a722b7d2e55c\";'),
(439,'extensionScannerNotAffected','901b046f2f3e2e11c62aba8796519ce5','s:32:\"901b046f2f3e2e11c62aba8796519ce5\";'),
(440,'extensionScannerNotAffected','b8a3dd16c50900e2cc8b40820434f2ae','s:32:\"b8a3dd16c50900e2cc8b40820434f2ae\";'),
(441,'extensionScannerNotAffected','656e61809df77ecc5e2220f8a4347592','s:32:\"656e61809df77ecc5e2220f8a4347592\";'),
(442,'extensionScannerNotAffected','c8d1e5441746f98d3f4cd8c849074a3a','s:32:\"c8d1e5441746f98d3f4cd8c849074a3a\";'),
(443,'extensionScannerNotAffected','93f74314a7066b051e1d83e3dd733a33','s:32:\"93f74314a7066b051e1d83e3dd733a33\";'),
(444,'extensionScannerNotAffected','c52adb99d279c9666ca8c51668c0113a','s:32:\"c52adb99d279c9666ca8c51668c0113a\";'),
(445,'extensionScannerNotAffected','9d60023a1b37d58846a3be27f251525a','s:32:\"9d60023a1b37d58846a3be27f251525a\";'),
(446,'extensionScannerNotAffected','831f4a7d18da28c75a830a043e65cba4','s:32:\"831f4a7d18da28c75a830a043e65cba4\";'),
(447,'extensionScannerNotAffected','e61b68730e65cf79a056e6b7d819c3e4','s:32:\"e61b68730e65cf79a056e6b7d819c3e4\";'),
(448,'extensionScannerNotAffected','a33da759ec561e643defefd6b4bcf2d1','s:32:\"a33da759ec561e643defefd6b4bcf2d1\";'),
(449,'extensionScannerNotAffected','042b43f1a41d463fc66f87bb7d3c025d','s:32:\"042b43f1a41d463fc66f87bb7d3c025d\";'),
(450,'extensionScannerNotAffected','c7643b45e2f487f25df1095352d1ef7e','s:32:\"c7643b45e2f487f25df1095352d1ef7e\";'),
(451,'extensionScannerNotAffected','49f447a62e18c63be95dcc01c6d1e2f9','s:32:\"49f447a62e18c63be95dcc01c6d1e2f9\";'),
(452,'extensionScannerNotAffected','b91b2b4623c120fab01a667de59284ba','s:32:\"b91b2b4623c120fab01a667de59284ba\";'),
(453,'extensionScannerNotAffected','2a21dfb910b0197f7e9ee1db20c3d4b0','s:32:\"2a21dfb910b0197f7e9ee1db20c3d4b0\";'),
(454,'extensionScannerNotAffected','0ae6af38db04e308633f22fe4596eec2','s:32:\"0ae6af38db04e308633f22fe4596eec2\";'),
(455,'extensionScannerNotAffected','d261cc4b37ad3f36c83f7b473b55dd88','s:32:\"d261cc4b37ad3f36c83f7b473b55dd88\";'),
(456,'extensionScannerNotAffected','2cf816e0b8e50e2f3e5e7eb40f67c132','s:32:\"2cf816e0b8e50e2f3e5e7eb40f67c132\";'),
(457,'extensionScannerNotAffected','09c6814742d5bb7d5a748ef5a4089ddb','s:32:\"09c6814742d5bb7d5a748ef5a4089ddb\";'),
(458,'extensionScannerNotAffected','675285ebee0c5ec12a12d3fc47c49295','s:32:\"675285ebee0c5ec12a12d3fc47c49295\";'),
(459,'extensionScannerNotAffected','94d622430052cdd9c191e9b0b19a9183','s:32:\"94d622430052cdd9c191e9b0b19a9183\";'),
(460,'extensionScannerNotAffected','e02ee17355544956c1b440ebc7c31e52','s:32:\"e02ee17355544956c1b440ebc7c31e52\";'),
(461,'extensionScannerNotAffected','e4f2c6d1922d2627d8fed9eb1d1bd6a9','s:32:\"e4f2c6d1922d2627d8fed9eb1d1bd6a9\";'),
(462,'extensionScannerNotAffected','c3a19e22b1c71f7c205ed828323acee6','s:32:\"c3a19e22b1c71f7c205ed828323acee6\";'),
(463,'extensionScannerNotAffected','612f66bdaff2a0c79d56f62427ac86a5','s:32:\"612f66bdaff2a0c79d56f62427ac86a5\";'),
(464,'extensionScannerNotAffected','664a00e40d5dc2ada505d372e51da548','s:32:\"664a00e40d5dc2ada505d372e51da548\";'),
(465,'extensionScannerNotAffected','325c378e72f38fdb63f4f91dcd96c592','s:32:\"325c378e72f38fdb63f4f91dcd96c592\";'),
(466,'extensionScannerNotAffected','dce850875fee7e962b9fa8362128198c','s:32:\"dce850875fee7e962b9fa8362128198c\";'),
(467,'extensionScannerNotAffected','c8b7a92decf311190d9387a5addee1cb','s:32:\"c8b7a92decf311190d9387a5addee1cb\";'),
(468,'extensionScannerNotAffected','d98f05cc99c52f6074f1a0a3abf98839','s:32:\"d98f05cc99c52f6074f1a0a3abf98839\";'),
(469,'extensionScannerNotAffected','c51f9f9e45dbe281253cbb3ac610ea1c','s:32:\"c51f9f9e45dbe281253cbb3ac610ea1c\";'),
(470,'extensionScannerNotAffected','cc7ad8adf91c644ea382c9c51516b3fa','s:32:\"cc7ad8adf91c644ea382c9c51516b3fa\";'),
(471,'extensionScannerNotAffected','ece644a91f129823e4c857dd77cc4395','s:32:\"ece644a91f129823e4c857dd77cc4395\";'),
(472,'extensionScannerNotAffected','eecaf769c516ed6fbe11db875b400811','s:32:\"eecaf769c516ed6fbe11db875b400811\";'),
(473,'extensionScannerNotAffected','3bc8e120c758e3da09a9dc81d4ae0d51','s:32:\"3bc8e120c758e3da09a9dc81d4ae0d51\";'),
(474,'extensionScannerNotAffected','cefbb114c68a88bb29828ffc06a04034','s:32:\"cefbb114c68a88bb29828ffc06a04034\";'),
(475,'extensionScannerNotAffected','fcd3514ed97d0835ac0f55f7c158a543','s:32:\"fcd3514ed97d0835ac0f55f7c158a543\";'),
(476,'extensionScannerNotAffected','17ed004d9c9f385f3653ec9d7f5fbc15','s:32:\"17ed004d9c9f385f3653ec9d7f5fbc15\";'),
(477,'extensionScannerNotAffected','3114b8eeb71be49a590bd6784bd15a0e','s:32:\"3114b8eeb71be49a590bd6784bd15a0e\";'),
(478,'extensionScannerNotAffected','8294b4cc69a497f910866a9a61e339f8','s:32:\"8294b4cc69a497f910866a9a61e339f8\";'),
(479,'extensionScannerNotAffected','cab8d8be06c83f47666588b2e3660ed6','s:32:\"cab8d8be06c83f47666588b2e3660ed6\";'),
(480,'extensionScannerNotAffected','62de2ac7df8c1fe341f1027ec0e38526','s:32:\"62de2ac7df8c1fe341f1027ec0e38526\";'),
(481,'extensionScannerNotAffected','c55844aee0265aab6c151649fd67032c','s:32:\"c55844aee0265aab6c151649fd67032c\";'),
(482,'extensionScannerNotAffected','0a23db6521838f9b09b3efb11ef8aced','s:32:\"0a23db6521838f9b09b3efb11ef8aced\";'),
(483,'extensionScannerNotAffected','c501d57e9a176ed9fc6f3307d32e12d5','s:32:\"c501d57e9a176ed9fc6f3307d32e12d5\";'),
(484,'extensionScannerNotAffected','63af69bbb7a7f4ccdf55a5ac11b5fd5e','s:32:\"63af69bbb7a7f4ccdf55a5ac11b5fd5e\";'),
(485,'extensionScannerNotAffected','8916783a67bf8ec0e11ade6fe13053db','s:32:\"8916783a67bf8ec0e11ade6fe13053db\";'),
(486,'extensionScannerNotAffected','f63d2605734bb5e743c0733c886b7629','s:32:\"f63d2605734bb5e743c0733c886b7629\";'),
(487,'extensionScannerNotAffected','4ceff2c8329b556a5666a295c595030a','s:32:\"4ceff2c8329b556a5666a295c595030a\";'),
(488,'extensionScannerNotAffected','8295930012adc503f8acb1a91ae8f7e9','s:32:\"8295930012adc503f8acb1a91ae8f7e9\";'),
(489,'extensionScannerNotAffected','2668cf088b13caa173eb198d33d7cda4','s:32:\"2668cf088b13caa173eb198d33d7cda4\";'),
(490,'extensionScannerNotAffected','ba2ae313d3c0aa6f517ac36faef8a242','s:32:\"ba2ae313d3c0aa6f517ac36faef8a242\";'),
(491,'extensionScannerNotAffected','04e1be3a57a91b322483d6016d75bee2','s:32:\"04e1be3a57a91b322483d6016d75bee2\";'),
(492,'extensionScannerNotAffected','1b6dd8ac61ab0d5a37c6c76742b412dc','s:32:\"1b6dd8ac61ab0d5a37c6c76742b412dc\";'),
(493,'extensionScannerNotAffected','9886bc3921cbde67d0f86a4cbcd3d6ab','s:32:\"9886bc3921cbde67d0f86a4cbcd3d6ab\";'),
(494,'extensionScannerNotAffected','1422bec9f8bbb27eeede573b31e65c6a','s:32:\"1422bec9f8bbb27eeede573b31e65c6a\";'),
(495,'extensionScannerNotAffected','5d754ca0288ee2174388230e92b91ead','s:32:\"5d754ca0288ee2174388230e92b91ead\";'),
(496,'extensionScannerNotAffected','400915f740ff0d95c494ec029d4fa99e','s:32:\"400915f740ff0d95c494ec029d4fa99e\";'),
(497,'extensionScannerNotAffected','915f89ba7007d23066d966232ddaf5c9','s:32:\"915f89ba7007d23066d966232ddaf5c9\";'),
(498,'extensionScannerNotAffected','32fc67ae898b1adaf51f37eea233c631','s:32:\"32fc67ae898b1adaf51f37eea233c631\";'),
(499,'extensionScannerNotAffected','091e5b4094bc3130d41a5582b291912a','s:32:\"091e5b4094bc3130d41a5582b291912a\";'),
(500,'extensionScannerNotAffected','f37b07ef576c54a9f4c89c9e5b4025fe','s:32:\"f37b07ef576c54a9f4c89c9e5b4025fe\";'),
(501,'extensionScannerNotAffected','14be0a015f1bef748eae080c2b57aba7','s:32:\"14be0a015f1bef748eae080c2b57aba7\";'),
(502,'extensionScannerNotAffected','e5f98248a9e22264708a39db4329ebc4','s:32:\"e5f98248a9e22264708a39db4329ebc4\";'),
(503,'extensionScannerNotAffected','c92b7e9375d5d210c3abcbe52307f5c3','s:32:\"c92b7e9375d5d210c3abcbe52307f5c3\";'),
(504,'extensionScannerNotAffected','54ffc49091b69458321d4b670d5a384d','s:32:\"54ffc49091b69458321d4b670d5a384d\";'),
(505,'extensionScannerNotAffected','6a1dab4cfe161a408ebe380094c04000','s:32:\"6a1dab4cfe161a408ebe380094c04000\";'),
(506,'extensionScannerNotAffected','743f1789098f2c75437e5c3a93e9f5cf','s:32:\"743f1789098f2c75437e5c3a93e9f5cf\";'),
(507,'extensionScannerNotAffected','e88e9e27dab577f87d38f63c24bfe01d','s:32:\"e88e9e27dab577f87d38f63c24bfe01d\";'),
(508,'extensionScannerNotAffected','38af711de1842099efa03bb1b1d04a51','s:32:\"38af711de1842099efa03bb1b1d04a51\";'),
(509,'extensionScannerNotAffected','680b0fe8152a292d916e4329e58fcdcc','s:32:\"680b0fe8152a292d916e4329e58fcdcc\";'),
(510,'extensionScannerNotAffected','9c4f56051dc7c5ffecf6c0e5ea995028','s:32:\"9c4f56051dc7c5ffecf6c0e5ea995028\";'),
(511,'extensionScannerNotAffected','22e17d683c48685fc8a7184252fc2485','s:32:\"22e17d683c48685fc8a7184252fc2485\";'),
(512,'extensionScannerNotAffected','43ec24ad0c3b73b7aef27e6cba9ce4c7','s:32:\"43ec24ad0c3b73b7aef27e6cba9ce4c7\";'),
(513,'extensionScannerNotAffected','f92caf92ac4069d38ca1db6c0400a259','s:32:\"f92caf92ac4069d38ca1db6c0400a259\";'),
(514,'extensionScannerNotAffected','e5fb8959e90ef8f85797eac0c831db45','s:32:\"e5fb8959e90ef8f85797eac0c831db45\";'),
(515,'extensionScannerNotAffected','a458c39dd7c35c469051c0832f87c40a','s:32:\"a458c39dd7c35c469051c0832f87c40a\";'),
(516,'extensionScannerNotAffected','355ca000e0f66c61fd554241cb95b202','s:32:\"355ca000e0f66c61fd554241cb95b202\";'),
(517,'extensionScannerNotAffected','1fab2904a16a5857dcb58251137d1628','s:32:\"1fab2904a16a5857dcb58251137d1628\";'),
(518,'extensionScannerNotAffected','8bd94ed0ef4d4449d731396d3eca2950','s:32:\"8bd94ed0ef4d4449d731396d3eca2950\";'),
(519,'extensionScannerNotAffected','f942095aff6efa110444fc2d6aa72a19','s:32:\"f942095aff6efa110444fc2d6aa72a19\";'),
(520,'extensionScannerNotAffected','30a11b57255b9e69def26e40e51a2692','s:32:\"30a11b57255b9e69def26e40e51a2692\";'),
(521,'extensionScannerNotAffected','39b05c57979e382cc79298e1fc2f1413','s:32:\"39b05c57979e382cc79298e1fc2f1413\";'),
(522,'extensionScannerNotAffected','e0bdc5e387014314b68c8459edfdc092','s:32:\"e0bdc5e387014314b68c8459edfdc092\";'),
(523,'extensionScannerNotAffected','7a9d2755e712863f5b21964b8875296f','s:32:\"7a9d2755e712863f5b21964b8875296f\";'),
(524,'extensionScannerNotAffected','aa061d6fd6844d166886a02468a2c8c7','s:32:\"aa061d6fd6844d166886a02468a2c8c7\";'),
(525,'extensionScannerNotAffected','0ae318dfe4b78d7da63e3794ab200db2','s:32:\"0ae318dfe4b78d7da63e3794ab200db2\";'),
(526,'extensionScannerNotAffected','1e29f401ebde3aa98a5baacfd54c947e','s:32:\"1e29f401ebde3aa98a5baacfd54c947e\";'),
(527,'extensionScannerNotAffected','67cc8ccda99af7f5b4c650ebc9cf0118','s:32:\"67cc8ccda99af7f5b4c650ebc9cf0118\";'),
(528,'extensionScannerNotAffected','ce689b3c60bc6af2962c1033fa6fcfcd','s:32:\"ce689b3c60bc6af2962c1033fa6fcfcd\";'),
(529,'extensionScannerNotAffected','d4ecb764ccfaaad1965aa3de4c1538ec','s:32:\"d4ecb764ccfaaad1965aa3de4c1538ec\";'),
(530,'extensionScannerNotAffected','2d41669f9c242cb93b89b0954adbe1a7','s:32:\"2d41669f9c242cb93b89b0954adbe1a7\";'),
(531,'extensionScannerNotAffected','a3fcdb0b710f4434650f1e23238726b9','s:32:\"a3fcdb0b710f4434650f1e23238726b9\";'),
(532,'extensionScannerNotAffected','ce1cc4420d0a93076afd4ac6a4483def','s:32:\"ce1cc4420d0a93076afd4ac6a4483def\";'),
(533,'extensionScannerNotAffected','eb0a78da21fe6370103f94f71ded3af0','s:32:\"eb0a78da21fe6370103f94f71ded3af0\";'),
(534,'extensionScannerNotAffected','d7c5e769cde14fb4dfd385967d36975a','s:32:\"d7c5e769cde14fb4dfd385967d36975a\";'),
(535,'extensionScannerNotAffected','d5360c9d1e21fdeda265108180abac53','s:32:\"d5360c9d1e21fdeda265108180abac53\";'),
(536,'extensionScannerNotAffected','6b3ac9fb900b2e53de8248364574e48f','s:32:\"6b3ac9fb900b2e53de8248364574e48f\";'),
(537,'core','formProtectionSessionToken:1','s:64:\"710632cc95dbc9acadc9e1da098d9e3ae2368806f9da9a0356437dda6ba9755b\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `basedOn` longtext DEFAULT NULL,
  `constants` longtext DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `include_static_file` longtext DEFAULT NULL,
  `static_file_mode` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES
(1,1,1712674580,1712586929,1,1,0,0,256,'','Template',0,0,0,'','','','EXT:football/Configuration/TypoScript',0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `selected_categories` longtext DEFAULT NULL,
  `date` bigint(20) NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `pages` longtext DEFAULT NULL,
  `file_collections` longtext DEFAULT NULL,
  `records` longtext DEFAULT NULL,
  `pi_flexform` longtext DEFAULT NULL,
  `bodytext` longtext DEFAULT NULL,
  `header_link` varchar(2048) NOT NULL DEFAULT '',
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `CType` varchar(255) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `bullets_type` int(10) unsigned NOT NULL DEFAULT 0,
  `header_layout` int(10) unsigned NOT NULL DEFAULT 0,
  `header_position` varchar(255) NOT NULL DEFAULT '',
  `imageorient` int(10) unsigned NOT NULL DEFAULT 0,
  `imagecols` int(10) unsigned NOT NULL DEFAULT 0,
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` int(10) unsigned NOT NULL DEFAULT 0,
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_delimiter` int(10) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` int(10) unsigned NOT NULL DEFAULT 0,
  `table_header_position` int(10) unsigned NOT NULL DEFAULT 0,
  `uploads_type` int(10) unsigned NOT NULL DEFAULT 0,
  `button_text` varchar(255) NOT NULL DEFAULT '',
  `button_link` varchar(2048) NOT NULL DEFAULT '',
  `sponsors` int(10) unsigned NOT NULL DEFAULT 0,
  `file_link` varchar(2048) NOT NULL DEFAULT '',
  `game_results_mode` varchar(255) NOT NULL DEFAULT '',
  `buttons` int(10) unsigned NOT NULL DEFAULT 0,
  `persons` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES
(1,1,1712672166,1712672082,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'FC Bigfoot','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'',0,0,'header',0,'','',0,0,'',0,2,0,0,'','','','','',124,0,0,0,'','',0,'','',0,0),
(2,1,1718870271,1712679228,1,1,0,0,'',256,'',0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'Player of the month','default',0,'Maya Williams','','','',NULL,0,NULL,0,0,1,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>For the third time in a row, our Maya has been voted player of the month. Congratulations Maya!</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','',0,0),
(3,1,1713626388,1712679321,0,0,0,0,'',128,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"image\":\"\",\"button_text\":\"\",\"button_link\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'FC Bigfoot Fuerteventura','default',1,'23 years of passion and dedication','','','',NULL,0,NULL,0,1,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'',0,0,'hero',0,'','',0,2,'',0,2,0,0,'','','','','',124,0,0,0,'Join today','t3://page?uid=10',0,'','',0,0),
(4,16,1712847000,1712847000,0,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'',0,0,'indexedsearch_pi2',0,'','',0,2,'',0,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(5,6,1712853804,1712853802,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">EXT:football/Configuration/Form/FormDefinitions/contactForm.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'',0,0,'form_formframework',0,'','',0,2,'',0,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(6,1,1712931732,1712854050,0,0,0,0,'',4,'',0,0,0,0,NULL,'{\"colPos\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,'Let\'s keep in touch','default',3,'Game on','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'',0,0,'cta',0,'','',0,2,'',0,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',2,0),
(7,1,1712941278,1712854816,0,0,0,0,'',74,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'Your City. Your Club.','default',0,'','','','',NULL,0,NULL,0,0,1,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>With 21 teams, we are once again one of the largest clubs in Fuerteventura this season! We have three senior teams in each age group and at least two youth teams in each age group. In total, we have almost 900 members. We would like to thank everyone who has supported us so actively this season.</p>','',0,0,'textmedia',0,'','',0,2,'',26,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(8,1,1712936167,1712854983,0,0,0,0,'',2,'',0,0,0,0,NULL,'{\"colPos\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,'Our biggest supporters','default',3,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'',0,0,'sponsors',0,'','',0,0,'',0,2,0,0,'','','','','',124,0,0,0,'','',6,'','slider',0,0),
(9,17,1712914885,1712914885,0,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'Privacy Policy','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;</p>\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. &nbsp;</p>\r\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. &nbsp;</p>\r\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. &nbsp;</p>\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. &nbsp;</p>\r\n<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. &nbsp;</p>\r\n<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. &nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;</p>\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. &nbsp;</p>\r\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. &nbsp;</p>\r\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(10,1,1712917624,1712917624,0,0,0,0,'',56,'',0,0,0,0,NULL,'',0,0,0,0,'News','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'',0,0,'news_teaser',0,'','',0,2,'',0,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(11,1,1712935884,1712918263,0,0,0,0,'',16,'',0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'','default',2,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'',0,0,'game_results',0,'','',0,0,'',0,2,0,0,'','','','','',124,0,0,0,'','',0,'https://team4.surfcamp.typo3.com/fileadmin/JSON/matches.json','slider',0,0),
(12,7,1718817411,1712929724,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'From foundation to the regional league','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support. FC Bigfooot is a club at heart with a focus on cohesion and mutual support. The club may only have a comparatively short 23-year history, but it has a lively history with many ups and downs. You can find out more here.</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(13,2,1712929966,1712929956,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'News about our club','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(14,1,1712942569,1712931747,0,0,0,0,'',92,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"bodytext\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'Our events ','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'','',0,0,'event_teaser',0,'','',0,2,'',0,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(15,12,1718816365,1712938920,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'Anton Korel','default',0,'Middle field','','','',NULL,0,NULL,0,0,1,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(16,3,1713628992,1713628641,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"game_results_mode\":\"\",\"file_link\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'Our Game Results','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'',0,0,'game_results',0,'','',0,0,'',0,2,0,0,'','','','','',124,0,0,0,'','',0,'t3://file?uid=14','table',0,0),
(17,3,1718897025,1713629097,0,0,0,0,'',128,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'Our Game Results','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>Stay updated with the latest scores and outcomes of FC Bigfoot\'s matches. Here, you will find a comprehensive list of our recent game results. Keep checking back for the most current information on our achievements.</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(18,5,1718913729,1713630299,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'Our companions and sponsors','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club. Our supporters and companions share our vision and commitment to excellence, helping to foster a strong sense of community. Through their involvement, we are able to enhance our facilities, invest in youth development programs, and organize community outreach initiatives that make a positive impact.</p>\r\n<p>By partnering with FC Bigfoot, our supporters and companions benefit from increased visibility and association with a club that values openness, teamwork, and community spirit. We are grateful for their support and look forward to continuing our journey together, achieving new heights and celebrating many successes.</p>\r\n<p>Thank you to all our supporters and companions for being an integral part of the FC Bigfoot family. Your contributions make a significant difference, and we are proud to stand alongside you.</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(19,7,1718817709,1718817709,0,0,0,0,'',512,'',0,0,0,0,NULL,'',0,0,0,0,'2001 - 2004','default',0,'Our first years','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>FC Bigfoot was established in 2001 and swiftly became a well-known name in the local football community. In its early days, the team had to practice on a worn-out field with barely enough equipment for all the players. Despite these challenges, they showed remarkable persistence.</p>\r\n<p>One memorable incident occurred during their first season. In a match against a more experienced team, FC Bigfoot was down by four goals at halftime. Instead of giving up, they rallied together and, with sheer determination and teamwork, managed to tie the game by the final whistle. This game became a turning point for the club, showcasing their spirit and winning the respect of fans and competitors alike. From that day on, FC Bigfoot was known for its fighting spirit.</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(20,7,1718818154,1718818153,0,0,0,0,'',768,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'2005 - 2018','default',0,'Growth, growth, growth!','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>FC Bigfoot was able to expand during this era, marking a significant period of growth and development for the club. Beyond competing in the classic league, FC Bigfoot became known for its community-oriented approach. The club organized various local events and initiatives that engaged the community, fostering a strong bond between the club and its supporters.</p>\r\n<p>FC Bigfoot also emphasized inclusivity, ensuring that everyone, regardless of gender or background, had the opportunity to be part of the club. This inclusive approach, combined with their community-focused initiatives, solidified FC Bigfoot’s reputation as a forward-thinking and community-oriented club.</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(21,7,1718866561,1718818320,0,0,0,0,'',1024,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'2018 - 2024','default',0,'Becoming a community','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>The biggest milestone was reached in 2018 when FC Bigfoot was promoted to the regional league for the first time. This achievement marked a turning point in the club\'s history. The promotion brought a new level of visibility and prestige, attracting more fans and support from the local community.</p>\r\n<p>Since then, FC Bigfoot has continued its success, not only maintaining its status in the regional league but also expanding its influence nationally. The club\'s strategic focus on youth development has been a cornerstone of this growth. By investing in state-of-the-art training facilities and nurturing young talent through comprehensive development programs, FC Bigfoot has established a strong pipeline of skilled players.</p>\r\n<p>FC Bigfoot has solidified its position as a prominent and influential football club, known for its dedication to both competitive success and community engagement. The club\'s ongoing commitment to youth development and national expansion ensures that its legacy will continue to grow in the years to come.</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(22,1,1718867329,1718867329,0,0,0,0,'',1,'',0,0,0,0,NULL,'',0,0,0,0,'Our latest Game Results','default',2,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(23,1,1718870125,1718870066,1,0,0,0,'',0,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'Our Core Values','default',3,'United we stand','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p class=\"lead\">At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun.</p>\r\n<p class=\"lead\"><strong>Trust and Respect</strong><br />We trust and respect every individual within our club—players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team.</p>\r\n<p class=\"lead\"><strong>Openness</strong><br />Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication.</p>\r\n<p class=\"lead\"><strong>Sharing</strong><br />Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans.</p>\r\n<p class=\"lead\"><strong>Friendship and Fun</strong><br />Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience.</p>\r\n<p class=\"lead\">FC Bigfoot is more than a club—we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated.</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(24,1,1718870247,1718870173,0,0,0,0,'',0,'',0,0,0,0,NULL,'{\"colPos\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,'Our Core Values','default',3,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun.</p>\r\n<p><strong>Trust and Respect</strong><br />We trust and respect every individual within our club—players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team.</p>\r\n<p><strong>Openness</strong><br />Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication.</p>\r\n<p><strong>Sharing</strong><br />Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans.</p>\r\n<p><strong>Friendship and Fun</strong><br />Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience.</p>\r\n<p>FC Bigfoot is more than a club—we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated.</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(25,1,1718873442,1718873192,1,0,0,0,'',83,'',0,0,0,0,NULL,'',0,0,0,0,'Our Core Values','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun.</p>\r\n<p><strong>Trust and Respect</strong><br />We trust and respect every individual within our club—players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team.</p>\r\n<p><strong>Openness</strong><br />Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication.</p>\r\n<p><strong>Sharing</strong><br />Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans.</p>\r\n<p><strong>Friendship and Fun</strong><br />Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience.</p>\r\n<p>FC Bigfoot is more than a club—we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated.</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(26,2,1718874342,1718873894,0,0,0,0,'',512,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'FC Bigfoot\'s 15th Charity Tournament','default',0,'A Celebration of Soccer and Community','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>FC Bigfoot proudly announces the 15th edition of our charity tournament! This beloved event unites soccer enthusiasts, players, and supporters from across the region for a day filled with thrilling matches and community spirit. For the 15th time, we host a marquee event showcasing local soccer talent and fierce competition. Teams from the region have confirmed their participation, promising an exciting display of sportsmanship and skill.</p>\r\n<p><strong>Bringing the Community Together</strong><br />Our charity tournament is more than just a series of soccer matches; it\'s a vibrant gathering point for all soccer fans in the region. It\'s a place where old friends reconnect, new friendships are built, and everyone can share in the collective joy of the sport. Whether you\'re a real soccer fan or someone who enjoys the lively atmosphere, there\'s something for everyone at our event. Beyond the action on the pitch, the tournament offers a perfect setting for families and friends to spend a memorable day together. As the matches unfold, spectators can enjoy a variety of food and beverage options, including the chance to relax and chat over a cold beer. There will be activities for children, ensuring that even the youngest fans have a great time.</p>\r\n<p><strong>Supporting a Worthy Cause</strong><br />At its heart, the charity tournament is about giving back to the community. Proceeds from the event will go towards local charities, supporting initiatives that make a real difference in the lives of those in need. By attending and participating, you\'re not only enjoying a fantastic day of soccer but also contributing to a greater cause.<br />Mark your calendars and gather your friends and family for an unforgettable day of soccer, fun, and community spirit. The 15th charity tournament hosted by FC Bigfoot is more than just an event; it\'s a celebration of everything we love about the game and the bonds it creates.</p>\r\n<p>We look forward to seeing you there, cheering on your favorite teams, enjoying the festivities, and being part of a tradition that continues to strengthen our community year after year. Let\'s make this 15th edition the best one yet!</p>','',0,0,'textmedia',0,'','',0,2,'',26,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(27,2,1718874457,1718874457,0,0,0,0,'',768,'',0,0,0,0,NULL,'',0,0,0,0,'Get Ready for Another Exciting Match!','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>Mark your calendars for Thursday, April 18, 2024, at 16:30, as FC Bigfoot, currently third in the regional league, takes on our rivals from SurfCamp League. This is a match you won\'t want to miss!</p>\r\n<p><strong>Match Details</strong></p>\r\n<ul><li>Date and Time: Thursday, April 18, 2024, at 16:30</li><li>Teams: FC Bigfoot vs. SurfCamp League</li><li>Stadium Access: Gates open at 14:30</li><li>Catering: Food and beverages will be available</li></ul>\r\n<p><br />Join us for an afternoon of intense competition and cheer on FC Bigfoot as they strive to climb the league standings. Bring your friends and family for a memorable day of soccer excitement!</p>','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(28,2,1718874847,1718874835,0,0,0,0,'',1024,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imageorient\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'Our New Supporter','default',0,'A Powerful Partnership','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>We are thrilled to welcome <a href=\"https://typo3.org/\">TYPO3 Association</a> as our newest sponsor! This exciting partnership promises to elevate FC Bigfoot to even greater heights, both on and off the field. With TYPO3 Association\'s support, we look forward to enhancing our club\'s capabilities and achieving new milestones. Stay tuned for the amazing opportunities this collaboration will bring to our team and community.</p>\r\n\r\n','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(29,10,1718897287,1718897287,0,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'Become a Member today','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,'<p>Join the FC Bigfoot community by becoming a member today! Our membership program offers a variety of benefits designed to enhance your experience and connection with the club. As a member, you\'ll enjoy exclusive perks, including early access to tickets, discounts on merchandise, and invitations to special events.</p>\r\n<p>Membership also provides you with the opportunity to be more involved with the club, from participating in member-only meetings to having a say in club decisions. Whether you\'re a lifelong supporter or new to the FC Bigfoot family, our membership program is a great way to show your support and stay engaged with all the exciting developments at the club.</p>\r\n<p>Sign up now and be a part of the FC Bigfoot legacy, contributing to our community. Together, we can achieve great things both on and off the field.</p>\r\n\r\n\r\n\r\n','',0,0,'textmedia',0,'','',0,2,'',25,2,0,0,'','','','','',124,0,0,0,'','',0,'','slider',0,0),
(30,5,1718915307,1718914817,0,0,0,0,'',512,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"sponsors\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'','default',0,'','','','',NULL,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'',0,0,'sponsors',0,'','',0,0,'',0,2,0,0,'','','','','',124,0,0,0,'','',6,'','slider',0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) NOT NULL DEFAULT 1,
  `remote` varchar(100) NOT NULL DEFAULT 'ter',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) NOT NULL DEFAULT '',
  `serialized_dependencies` mediumtext DEFAULT NULL,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  `documentation_link` varchar(2048) DEFAULT NULL,
  `distribution_image` varchar(255) DEFAULT NULL,
  `distribution_welcome_image` varchar(255) DEFAULT NULL,
  `last_updated` bigint(20) NOT NULL DEFAULT 0,
  `current_version` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `update_comment` longtext DEFAULT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`remote`),
  KEY `index_extrepo` (`extension_key`,`remote`),
  KEY `index_versionrepo` (`integer_version`,`remote`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_football_domain_model_link`
--

DROP TABLE IF EXISTS `tx_football_domain_model_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_football_domain_model_link` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(2048) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `title` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_football_domain_model_link`
--

LOCK TABLES `tx_football_domain_model_link` WRITE;
/*!40000 ALTER TABLE `tx_football_domain_model_link` DISABLE KEYS */;
INSERT INTO `tx_football_domain_model_link` VALUES
(1,1,1712940144,1712847040,1,1,'pages','https://www.instagram.com/typo3_official/ _blank','instagram',NULL),
(2,1,1712929383,1712854050,1,6,'tt_content','t3://page?uid=6','','Contact us'),
(3,1,1712929383,1712854389,2,6,'tt_content','t3://page?uid=10','','Suscribe');
/*!40000 ALTER TABLE `tx_football_domain_model_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_football_domain_model_person`
--

DROP TABLE IF EXISTS `tx_football_domain_model_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_football_domain_model_person` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `name` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_football_domain_model_person`
--

LOCK TABLES `tx_football_domain_model_person` WRITE;
/*!40000 ALTER TABLE `tx_football_domain_model_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_football_domain_model_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_football_domain_model_sponsor`
--

DROP TABLE IF EXISTS `tx_football_domain_model_sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_football_domain_model_sponsor` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `title` longtext DEFAULT NULL,
  `url` varchar(2048) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_football_domain_model_sponsor`
--

LOCK TABLES `tx_football_domain_model_sponsor` WRITE;
/*!40000 ALTER TABLE `tx_football_domain_model_sponsor` DISABLE KEYS */;
INSERT INTO `tx_football_domain_model_sponsor` VALUES
(1,1,1712923155,1712854983,1,8,'tt_content',1,'Luna Media',''),
(2,1,1712923155,1712854983,2,8,'tt_content',1,'MESA',''),
(3,1,1712923155,1712854983,3,8,'tt_content',1,'Phoenix Logistics',''),
(4,1,1712923155,1712854983,4,8,'tt_content',1,'Azul',''),
(5,1,1712923155,1712854983,5,8,'tt_content',1,'Walrus',''),
(6,1,1712923155,1712854983,6,8,'tt_content',1,'',''),
(8,5,1718915307,1718914901,1,30,'tt_content',1,'queo',''),
(10,5,1718915307,1718915076,3,30,'tt_content',1,'TYPO3 Association',''),
(11,5,1718915307,1718915076,4,30,'tt_content',1,'KM2 >>',''),
(12,5,1718915307,1718915076,5,30,'tt_content',1,'DECODE',''),
(13,5,1718915307,1718915076,6,30,'tt_content',1,'contenance GmbH',''),
(14,5,1718915307,1718915307,2,30,'tt_content',1,'in2code','');
/*!40000 ALTER TABLE `tx_football_domain_model_sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_failure` text DEFAULT NULL,
  `lastexecution_context` varchar(3) NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob DEFAULT NULL,
  `serialized_executions` mediumblob DEFAULT NULL,
  `task_group` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24 13:17:58
