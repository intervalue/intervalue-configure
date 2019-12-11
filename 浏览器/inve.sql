-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: inve
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.16.04.2-log

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
-- Table structure for table `t_accounts_messages`
--

DROP TABLE IF EXISTS `t_accounts_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_accounts_messages` (
  `creation_date_day` varchar(20) NOT NULL,
  `messageTotal` bigint(255) DEFAULT NULL,
  `accountsTotal` bigint(20) DEFAULT NULL,
  `creation_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`creation_date_day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_addresses`
--

DROP TABLE IF EXISTS `t_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_addresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_timeMessage`
--

DROP TABLE IF EXISTS `t_timeMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_timeMessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `runTime` varchar(255) DEFAULT NULL,
  `shardNumber` int(11) DEFAULT NULL,
  `tps` varchar(255) DEFAULT NULL,
  `userCount` varchar(255) DEFAULT NULL,
  `creation_date_day` varchar(20) DEFAULT NULL,
  `creation_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_timemessage`
--

DROP TABLE IF EXISTS `t_timemessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_timemessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `runTime` varchar(255) DEFAULT NULL,
  `shardNumber` int(11) DEFAULT NULL,
  `tps` varchar(255) DEFAULT NULL,
  `userCount` varchar(255) DEFAULT NULL,
  `creation_date_day` varchar(20) DEFAULT NULL,
  `creation_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_token_info`
--

DROP TABLE IF EXISTS `t_token_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_token_info` (
  `address` varchar(255) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `totalSupply` varchar(255) DEFAULT NULL,
  `decimals` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_transactions_0`
--

DROP TABLE IF EXISTS `t_transactions_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_transactions_0` (
  `hash` varchar(255) NOT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `fee` bigint(20) DEFAULT NULL,
  `addressFrom` varchar(32) DEFAULT NULL,
  `addressTo` char(33) DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `amount_point` bigint(20) DEFAULT NULL,
  `fee_point` bigint(20) DEFAULT NULL,
  `creation_date` varchar(20) DEFAULT NULL,
  `type` int(20) DEFAULT NULL,
  `snapVersion` int(20) DEFAULT NULL,
  `nrgPrice` int(20) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `contractAddress` varchar(255) DEFAULT NULL,
  `tokenName` varchar(255) DEFAULT NULL,
  `tokenSymbol` varchar(255) DEFAULT NULL,
  `tokenDecimals` varchar(255) DEFAULT NULL,
  `tokenTotalsupply` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT '0' COMMENT '是否为INVE代币',
  `message` longtext,
  `eHash` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `lastIdx` int(11) DEFAULT NULL,
  `isStable` int(11) DEFAULT NULL,
  `isValid` int(11) DEFAULT NULL,
  `executionResult` longtext,
  `error` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hash`),
  KEY `address` (`addressFrom`,`addressTo`),
  KEY `index_name` (`creation_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_transactions_index`
--

DROP TABLE IF EXISTS `t_transactions_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_transactions_index` (
  `address` varchar(255) NOT NULL,
  `tableIndex` bigint(255) DEFAULT NULL,
  `offset` bigint(255) DEFAULT NULL,
  `sysTableIndex` bigint(20) DEFAULT '0',
  `sysOffset` bigint(20) DEFAULT '0',
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-11  1:07:05
