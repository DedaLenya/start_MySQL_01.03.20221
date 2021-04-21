-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: example
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `things_tags`
--

DROP TABLE IF EXISTS `things_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `things_tags` (
  `tags_id` int unsigned NOT NULL,
  `things_id` int unsigned NOT NULL,
  PRIMARY KEY (`tags_id`,`things_id`),
  KEY `fk_things_tags_tags1_idx` (`tags_id`),
  KEY `fk_things_tags_things1_idx` (`things_id`),
  CONSTRAINT `fk_things_tags_tags1` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `fk_things_tags_things1` FOREIGN KEY (`things_id`) REFERENCES `things` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `things_tags`
--

LOCK TABLES `things_tags` WRITE;
/*!40000 ALTER TABLE `things_tags` DISABLE KEYS */;
INSERT INTO `things_tags` VALUES (1,1326),(1,1459),(1,1561),(1,1594),(1,1710),(1,1964),(1,2238),(1,2739),(1,3502),(1,3748),(1,3885),(2,537),(2,858),(2,1142),(2,1361),(2,1598),(2,2588),(2,2729),(2,3361),(3,19),(3,142),(3,1682),(3,2459),(3,3095),(3,3190),(4,320),(4,1129),(4,1196),(4,1366),(4,1405),(4,1668),(4,2160),(4,2468),(4,2759),(4,3004),(4,3279),(4,3475),(4,3772),(5,81),(5,1066),(5,1518),(5,2378),(5,2454),(5,2474),(5,3095),(5,3308),(5,3509),(6,1780),(6,1929),(7,405),(7,721),(7,829),(7,1729),(7,2563),(7,3628),(7,3728),(8,203),(8,1500),(8,1512),(8,2489),(8,2646),(8,2825),(8,3653),(8,3721),(9,503),(9,780),(9,1141),(9,1230),(9,2382),(9,3258),(9,3412),(10,236),(10,466),(10,2862),(11,1181),(11,1647),(11,1691),(11,2597),(11,3037),(11,3091),(11,3235),(11,3250),(11,3293),(11,3408),(11,3591),(11,3809),(11,3886),(11,3942),(12,1941),(12,2386),(12,3336),(12,3515),(12,3754),(12,3933),(13,142),(13,229),(13,2326),(13,2579),(14,1289),(14,1549),(14,2073),(14,2200),(14,3992),(15,1165),(15,1488),(15,1672),(15,1817),(15,3235),(16,1130),(16,1804),(16,3746),(17,19),(17,909),(17,1337),(17,1461),(17,2374),(17,2894),(18,1),(18,2351),(18,3866),(19,671),(19,907),(19,1424),(19,1557),(19,2165),(19,2283),(19,3137),(20,300),(20,1868),(20,2664),(20,3051),(20,3219),(20,3387),(21,1511),(21,1624),(21,2250),(21,2287),(21,2305),(21,2330),(21,2452),(21,2782),(21,2790),(21,2879),(21,3055),(21,3356),(21,3401),(21,3410),(21,3473),(21,3522),(22,81),(22,213),(22,952),(22,1271),(22,1824),(22,1843),(22,1928),(22,2209),(22,2651),(22,3556),(22,3703),(23,752),(23,1044),(23,3761),(23,3896),(24,810),(24,830),(24,1689),(24,1765),(24,2267),(24,2327),(24,2508),(24,3003),(24,3448),(24,3460),(25,387),(25,540),(25,1325),(25,1418),(25,1900),(25,2931),(25,3635),(26,101),(26,823),(26,1273),(26,1409),(26,3120),(27,1645),(27,1660),(27,1782),(27,2685),(27,3325),(27,3532),(27,3837),(28,1516),(28,2453),(28,2948),(28,3735),(29,100),(29,223),(29,1366),(29,2052),(29,3212),(30,3980),(31,180),(31,757),(31,1232),(31,1497),(31,2067),(31,3146),(31,3797),(32,35),(32,414),(32,673),(32,1773),(32,3356),(33,964),(33,1416),(33,3047),(33,3351),(33,3490),(33,3521),(34,991),(34,1343),(34,1694),(34,3456),(35,596),(35,1237),(35,1261),(35,1519),(35,1790),(35,3202),(35,3898),(36,15),(36,1155),(36,1470),(36,1476),(36,2018),(36,2036),(36,2437),(36,2876),(36,3359),(37,953),(37,1562),(37,2257),(37,2558),(37,3700),(38,112),(38,722),(38,1582),(38,1691),(38,2961),(38,3290),(38,3767),(38,3848),(38,3871),(39,1001),(39,2158),(39,2470),(40,50),(40,2877),(40,3285),(40,3458),(40,3508),(41,446),(41,601),(41,646),(41,789),(41,2417),(41,2459),(41,3550),(41,3834),(41,3970),(42,881),(42,1262),(42,1499),(42,2041),(42,2339),(42,2499),(42,3018),(42,3079),(42,3345),(42,3397),(43,1034),(43,1557),(43,1655),(43,2983),(43,3932),(44,229),(44,599),(44,1883),(44,2430),(44,3744),(45,550),(45,767),(45,2026),(45,3630),(46,309),(46,1495),(46,1679),(46,3113),(46,3392),(46,3710),(46,3911),(47,1204),(47,1312),(47,1623),(47,3345),(47,3409),(47,3866),(48,12),(48,623),(48,1415),(48,1955),(48,2677),(49,322),(49,390),(49,1638),(49,1969),(49,2360),(49,2386),(49,2399),(49,3559),(49,3905),(49,3990),(50,1007),(50,1137),(50,1385),(50,2946),(50,3295),(51,452),(51,902),(51,1011),(51,1317),(51,1919),(51,2096),(51,3465),(51,3598),(51,3733),(52,334),(52,428),(52,474),(52,977),(52,2102),(52,3731),(52,3989),(53,271),(53,317),(53,823),(53,1079),(53,1406),(53,1542),(53,1701),(53,1718),(53,2309),(53,3459),(53,3630),(54,481),(54,812),(54,889),(54,1860),(54,1911),(54,3323),(54,3637),(54,3897),(55,207),(55,1900),(55,2462),(55,3069),(55,3643),(56,357),(56,773),(56,983),(56,1534),(56,1787),(56,2129),(56,2457),(56,2713),(56,3093),(57,92),(57,185),(57,937),(57,998),(57,1007),(57,1756),(57,2815),(57,3081),(57,3395),(57,3440),(57,3534),(58,690),(58,1092),(58,1124),(58,1518),(58,2853),(59,36),(59,323),(59,587),(59,1597),(59,2129),(59,2887),(59,3286),(59,3364),(60,103),(60,703),(60,1647),(60,2085),(60,2482),(60,2559),(60,2646),(60,2797),(60,3185),(60,3762),(61,1515),(61,2429),(61,2761),(61,3233),(61,3428),(61,3963),(62,633),(62,824),(62,978),(62,1136),(62,1188),(62,1190),(62,1317),(62,1546),(62,1635),(62,2899),(62,3195),(62,3377),(63,275),(63,1692),(63,2447),(63,2529),(63,2579),(63,2958),(63,3357),(63,3402),(63,3852),(64,27),(64,521),(64,926),(64,1140),(64,1375),(64,2335),(64,2346),(64,2956),(64,2990),(64,3645),(65,754),(65,841),(65,1021),(65,1757),(65,2269),(65,2838),(65,3642),(65,3984),(66,737),(66,2349),(66,3256),(67,215),(67,463),(67,1009),(67,2772),(67,3382),(67,3783),(68,361),(68,598),(68,1053),(68,1308),(68,1826),(68,1929),(68,2214),(68,2277),(68,2564),(68,3930),(69,220),(69,738),(69,1111),(69,1677),(69,2360),(70,268),(70,410),(70,580),(70,1088),(70,1138),(70,2371),(70,2404),(70,3124),(70,3528),(70,3738),(70,3817),(71,900),(71,1898),(71,3898),(72,20),(72,360),(72,755),(72,1541),(72,2153),(72,3369),(72,3601),(72,3675),(73,902),(73,1690),(73,3548),(74,112),(74,212),(74,761),(74,945),(74,1136),(74,1794),(74,1946),(74,2063),(74,3570),(74,3914),(75,35),(75,353),(75,513),(75,717),(75,1129),(75,1308),(75,2208),(75,2937),(75,3223),(75,3389),(75,3526),(75,3540),(75,3672),(76,751),(76,1120),(76,2428),(76,3219),(76,3488),(77,114),(77,195),(77,643),(77,769),(77,840),(77,892),(77,2535),(77,2560),(77,2640),(77,3598),(78,658),(78,1623),(78,1804),(78,2209),(78,2522),(78,3167),(78,3766),(79,1196),(79,1241),(79,1254),(79,2643),(79,3032),(79,3768),(79,3903),(79,3967),(80,1843),(80,2548),(80,2770),(80,3159),(80,3228),(80,3549),(81,788),(81,792),(81,1067),(81,1304),(81,1786),(81,1895),(81,1952),(81,3121),(81,3835),(82,381),(82,920),(82,1036),(82,2282),(82,3054),(82,3062),(82,3290),(83,655),(83,703),(83,789),(83,808),(83,1041),(83,2164),(84,184),(84,234),(84,2084),(84,2443),(84,3281),(84,3650),(84,3891),(85,159),(85,365),(85,1464),(85,1585),(85,1621),(85,2442),(85,3536),(85,3880),(86,17),(86,279),(86,475),(86,672),(86,2682),(86,3785),(87,636),(87,1340),(87,1686),(87,2088),(87,3144),(88,149),(88,587),(88,1291),(88,1483),(88,1802),(88,2593),(88,3197),(88,3565),(88,3581),(89,496),(89,1162),(89,1312),(89,2545),(89,3126),(89,3419),(90,15),(90,957),(90,1491),(90,1847),(90,2194),(90,3348),(90,3771),(91,43),(91,2338),(91,2645),(91,3036),(91,3578),(92,1212),(92,1789),(92,2443),(92,2549),(92,2955),(92,3180),(92,3476),(93,1635),(93,1892),(93,3746),(94,53),(94,233),(94,290),(94,1151),(94,3212),(94,3801),(94,3889),(95,413),(95,1240),(95,1491),(95,2117),(96,658),(96,1113),(96,1341),(96,1869),(96,2228),(96,2361),(96,2582),(97,2175),(97,2536),(97,2837),(97,3210),(97,3804),(97,3901),(98,305),(98,503),(98,552),(98,1852),(98,1873),(98,2186),(98,2266),(98,2364),(98,3049),(98,3262),(98,3275),(98,3647),(99,801),(99,1564),(99,1844),(99,2462),(99,2825),(99,3098),(100,852),(100,861),(100,1629),(100,1713),(100,2072),(100,2380),(100,2933),(100,3494);
/*!40000 ALTER TABLE `things_tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 22:47:56
