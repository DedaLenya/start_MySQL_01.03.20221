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
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `things_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  PRIMARY KEY (`things_id`,`users_id`),
  KEY `fk_likes_things1_idx` (`things_id`),
  KEY `fk_likes_users1_idx` (`users_id`),
  CONSTRAINT `fk_likes_things1` FOREIGN KEY (`things_id`) REFERENCES `things` (`id`),
  CONSTRAINT `fk_likes_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (5,323),(5,500),(5,585),(5,638),(6,159),(11,120),(12,465),(13,801),(14,598),(18,310),(18,705),(19,788),(21,599),(25,205),(30,369),(30,911),(31,910),(33,405),(33,505),(33,889),(38,237),(38,967),(42,848),(50,547),(50,744),(51,531),(54,68),(54,594),(56,152),(56,705),(60,22),(61,554),(63,99),(63,334),(64,539),(69,522),(70,363),(75,4),(77,372),(79,377),(81,3),(81,591),(82,133),(82,264),(82,878),(85,158),(85,986),(88,815),(88,902),(89,235),(91,472),(97,951),(98,756),(98,827),(102,199),(102,771),(104,442),(104,753),(108,789),(110,379),(111,190),(111,996),(112,207),(113,382),(116,383),(116,724),(118,589),(123,392),(125,893),(127,474),(130,228),(131,246),(133,623),(133,676),(134,581),(135,55),(135,675),(135,677),(135,749),(136,265),(138,745),(140,374),(140,698),(141,674),(143,265),(144,311),(146,270),(146,598),(151,524),(151,884),(151,898),(153,893),(156,428),(157,400),(162,168),(165,586),(169,285),(169,368),(172,175),(175,417),(175,905),(176,609),(177,8),(181,10),(181,157),(185,995),(186,56),(186,213),(186,256),(186,734),(188,966),(191,83),(191,528),(191,845),(192,671),(193,838),(200,205),(201,509),(210,740),(211,969),(213,468),(213,665),(213,939),(216,121),(218,600),(219,533),(222,395),(222,865),(226,886),(228,475),(228,592),(234,931),(237,941),(238,242),(246,134),(247,850),(249,427),(249,615),(252,257),(256,357),(256,582),(260,314),(260,875),(264,787),(267,503),(276,587),(279,304),(280,915),(283,127),(287,364),(292,141),(293,814),(294,108),(294,736),(296,757),(303,10),(312,590),(313,746),(314,989),(315,774),(317,104),(317,165),(322,817),(324,721),(324,855),(326,456),(326,765),(328,342),(334,16),(334,447),(335,480),(336,920),(338,162),(338,893),(339,496),(340,566),(343,276),(345,139),(345,326),(348,114),(349,657),(353,266),(354,522),(357,732),(359,225),(363,976),(364,907),(368,429),(369,356),(370,519),(370,547),(371,82),(373,392),(376,757),(381,122),(382,505),(382,765),(384,582),(385,664),(389,444),(390,170),(391,558),(392,394),(392,453),(392,485),(395,37),(397,214),(398,589),(402,567),(403,239),(408,102),(410,629),(411,27),(412,501),(414,728),(415,943),(416,517),(416,580),(416,752),(419,812),(422,343),(425,597),(428,359),(429,902),(430,519),(433,264),(439,519),(441,78),(442,296),(442,654),(444,757),(445,386),(448,416),(453,468),(454,548),(454,574),(455,453),(455,591),(459,426),(462,85),(462,455),(464,310),(464,653),(465,54),(465,216),(469,150),(473,84),(473,360),(473,525),(473,623),(474,360),(477,461),(478,479),(479,309),(485,937),(488,647),(490,33),(490,302),(491,30),(492,88),(493,267),(493,587),(497,445),(500,901),(502,172),(506,497),(506,677),(506,932),(508,666),(509,124),(511,165),(512,456),(518,930),(520,984),(521,190),(523,79),(523,821),(526,860),(528,680),(530,262),(530,396),(530,838),(532,637),(534,293),(535,717),(539,814),(540,389),(543,18),(547,149),(548,191),(549,866),(550,598),(555,203),(559,566),(562,314),(567,521),(571,99),(575,831),(575,861),(579,186),(584,525),(584,691),(584,826),(586,273),(587,647),(590,658),(590,662),(591,70),(594,249),(595,618),(596,155),(596,762),(597,843),(599,132),(600,11),(600,498),(601,428),(601,723),(601,739),(602,874),(603,111),(606,68),(606,636),(607,453),(607,808),(608,122),(608,129),(611,342),(611,847),(612,494),(612,999),(615,452),(619,479),(620,142),(620,410),(620,885),(621,180),(623,207),(624,454),(627,677),(639,153),(639,417),(650,482),(653,677),(658,838),(659,91),(662,699),(663,137),(664,224),(666,420),(673,345),(674,418),(679,789),(685,256),(686,87),(687,169),(689,656),(689,843),(690,604),(691,639),(693,115),(693,340),(696,413),(696,686),(697,977),(700,710),(703,629),(706,652),(707,136),(710,953),(714,789),(715,533),(716,456),(724,296),(727,171),(727,957),(728,351),(729,851),(731,108),(731,744),(732,127),(733,159),(735,363),(736,177),(737,878),(738,689),(739,295),(742,883),(744,382),(745,645),(747,627),(748,766),(752,107),(753,647),(754,637),(756,454),(756,716),(757,754),(764,188),(767,309),(767,375),(768,53),(773,645),(776,928),(777,170),(781,849),(783,833),(785,846),(794,306),(794,334),(794,874),(795,64),(795,370),(797,96),(797,197),(798,76),(799,539),(800,249),(800,598),(802,154),(804,756),(817,34),(819,739),(820,339),(822,525),(823,5),(824,925),(825,495),(825,716),(825,899),(825,985),(826,565),(834,975),(836,997),(837,975),(838,39),(839,959),(840,834),(841,207),(841,547),(843,770),(845,714),(848,552),(851,66),(852,587),(856,464),(856,806),(859,42),(860,383),(860,988),(861,945),(863,261),(864,480),(865,924),(868,61),(868,117),(870,319),(875,507),(880,843),(884,459),(885,842),(886,230),(886,883),(887,653),(893,501),(897,298),(898,556),(900,839),(903,415),(904,69),(908,615),(909,429),(911,547),(912,93),(912,173),(918,310),(920,284),(920,300),(920,375),(921,275),(921,547),(921,738),(922,312),(923,485),(924,588),(924,624),(925,849),(926,1),(926,747),(928,288),(930,331),(931,74),(933,142),(941,135),(943,178),(944,899),(946,66),(946,880),(947,108),(947,902),(948,432),(948,631),(950,343),(952,814),(953,67),(953,850),(955,164),(958,3),(958,714),(959,521),(959,594),(959,718),(961,456),(961,581),(962,954),(964,82),(965,390),(973,517),(977,789),(984,429),(988,651),(992,341),(993,189),(996,986),(997,93),(997,288),(997,857),(1003,614),(1005,292),(1005,790),(1007,612),(1008,387),(1013,13),(1014,537),(1017,16),(1018,962),(1019,736),(1020,1000),(1022,239),(1022,376),(1022,655),(1024,614),(1025,340),(1025,386),(1025,830),(1027,486),(1028,452),(1028,831),(1031,596),(1032,266),(1033,242),(1038,251),(1040,26),(1040,925),(1047,106),(1048,400),(1049,705),(1051,545),(1052,523),(1053,118),(1053,503),(1054,355),(1055,654),(1057,985),(1058,334),(1071,7),(1072,645),(1074,118),(1076,341),(1081,897),(1083,264),(1083,395),(1083,615),(1085,153),(1087,587),(1090,329),(1093,384),(1093,428),(1095,198),(1096,354),(1097,909),(1098,352),(1098,559),(1099,998),(1101,380),(1102,723),(1105,259),(1106,452),(1106,730),(1110,378),(1113,645),(1115,727),(1117,401),(1118,586),(1119,403),(1120,749),(1123,858),(1124,903),(1129,928),(1130,509),(1131,313),(1132,580),(1133,549),(1137,338),(1139,484),(1140,130),(1142,494),(1144,350),(1144,650),(1146,270),(1147,145),(1148,486),(1148,502),(1148,734),(1154,736),(1155,497),(1156,112),(1157,764),(1158,227),(1158,557),(1158,612),(1164,723),(1166,202),(1166,852),(1167,311),(1169,410),(1169,603),(1171,657),(1177,824),(1179,149),(1180,75),(1181,940),(1186,957),(1189,59),(1193,147),(1194,468),(1195,175),(1198,668),(1201,237),(1202,329),(1204,408),(1207,154),(1207,574),(1210,174),(1210,403),(1213,550),(1215,6),(1218,368),(1219,309),(1219,437),(1221,571),(1223,97),(1223,439),(1226,738),(1228,149),(1228,889),(1230,52),(1230,480),(1230,953),(1233,174),(1233,483),(1235,869),(1241,259),(1243,922),(1244,5),(1245,275),(1246,856),(1247,862),(1247,913),(1249,424),(1249,702),(1256,638),(1261,741),(1263,685),(1263,816),(1266,903),(1271,164),(1272,212),(1280,844),(1281,529),(1286,203),(1291,157),(1291,896),(1292,602),(1293,724),(1294,158),(1294,329),(1296,128),(1303,525),(1310,438),(1314,988),(1315,682),(1320,232),(1323,63),(1325,24),(1327,385),(1327,894),(1333,370),(1333,582),(1334,938),(1336,625),(1338,200),(1339,433),(1340,253),(1344,267),(1348,361),(1351,200),(1352,129),(1353,67),(1353,178),(1353,541),(1353,700),(1357,115),(1358,596),(1361,427),(1362,555),(1363,802),(1365,217),(1366,919),(1367,190),(1367,545),(1371,298),(1372,328),(1374,324),(1376,478),(1376,820),(1377,972),(1378,398),(1379,470),(1381,189),(1384,667),(1387,139),(1391,741),(1392,557),(1394,652),(1397,269),(1399,950),(1400,79),(1401,91),(1408,454),(1408,976),(1413,85),(1413,328),(1413,798),(1414,97),(1414,924),(1416,657),(1421,253),(1421,491),(1421,866),(1425,175),(1425,297),(1426,713),(1428,22),(1431,854),(1432,271),(1433,981),(1435,601),(1436,710),(1440,59),(1442,487),(1443,612),(1444,289),(1444,464),(1445,954),(1446,652),(1449,690),(1450,629),(1453,224),(1453,998),(1455,591),(1457,389),(1458,33),(1458,221),(1461,993),(1463,426),(1463,755),(1471,806),(1474,864),(1475,736),(1475,771),(1477,894),(1478,506),(1480,30),(1480,177),(1482,439),(1483,60),(1488,876),(1489,181),(1494,402),(1497,762),(1506,675),(1507,627),(1507,881),(1510,431),(1515,437),(1515,683),(1519,809),(1520,284),(1521,728),(1523,370),(1523,459),(1528,933),(1529,178),(1529,612),(1531,36),(1531,735),(1535,846),(1539,291),(1542,810),(1543,762),(1544,977),(1547,992),(1549,75),(1549,643),(1556,865),(1557,50),(1558,393),(1559,374),(1564,737),(1571,415),(1571,576),(1573,774),(1573,941),(1574,865),(1580,378),(1580,542),(1580,623),(1581,264),(1583,886),(1585,764),(1588,820),(1590,7),(1591,251),(1596,757),(1597,743),(1601,436),(1601,476),(1601,503),(1603,82),(1605,229),(1608,87),(1611,872),(1616,494),(1616,807),(1619,262),(1621,770),(1622,75),(1624,387),(1625,895),(1626,529),(1627,625),(1629,308),(1629,495),(1634,393),(1636,646),(1638,842),(1639,650),(1640,453),(1642,405),(1644,727),(1647,282),(1650,589),(1651,113),(1652,459),(1656,553),(1659,249),(1661,571),(1665,860),(1668,224),(1671,117),(1674,445),(1675,773),(1677,214),(1678,609),(1680,30),(1680,575),(1682,991),(1684,63),(1684,848),(1685,770),(1688,780),(1690,338),(1692,717),(1695,553),(1697,238),(1699,126),(1704,580),(1706,65),(1706,213),(1706,519),(1708,780),(1712,943),(1714,67),(1715,7),(1715,831),(1721,377),(1723,730),(1723,851),(1724,224),(1733,930),(1736,132),(1736,201),(1739,252),(1746,265),(1747,367),(1748,364),(1752,413),(1754,834),(1755,409),(1763,440),(1763,674),(1765,315),(1766,162),(1769,472),(1771,375),(1772,924),(1776,67),(1776,182),(1776,487),(1778,542),(1781,747),(1782,29),(1783,739),(1789,320),(1790,741),(1795,205),(1797,588),(1799,215),(1800,220),(1803,632),(1809,959),(1811,133),(1813,655),(1813,779),(1818,29),(1818,133),(1821,539),(1823,917),(1825,386),(1825,629),(1831,883),(1832,464),(1832,989),(1837,824),(1838,46),(1845,685),(1847,76),(1849,559),(1852,132),(1853,139),(1854,550),(1855,906),(1856,542),(1865,888),(1866,989),(1869,546),(1870,267),(1870,957),(1871,625),(1872,442),(1874,56),(1874,712),(1875,131),(1881,166),(1882,274),(1882,852),(1888,352),(1893,613),(1893,873),(1895,518),(1896,293),(1896,698),(1897,617),(1897,925),(1900,372),(1901,533),(1902,97),(1909,548),(1912,106),(1914,508),(1915,753),(1915,993),(1916,389),(1924,161),(1925,227),(1926,873),(1927,394),(1928,128),(1928,962),(1931,919),(1932,353),(1935,771),(1936,264),(1936,569),(1937,251),(1938,236),(1941,544),(1948,770),(1948,891),(1950,237),(1958,594),(1958,991),(1959,240),(1960,114),(1960,203),(1960,508),(1962,600),(1963,475),(1968,478),(1969,447),(1972,108),(1972,386),(1973,355),(1983,827),(1984,847),(1985,961),(1987,745),(1992,903),(1994,319),(1994,600),(1996,110),(1997,45),(1999,424),(1999,646),(2001,77),(2001,589),(2003,15),(2004,65),(2009,773),(2011,712),(2012,235),(2013,592),(2014,45),(2014,339),(2023,617),(2023,789),(2024,203),(2027,564),(2036,697),(2037,666),(2043,957),(2048,99),(2051,176),(2054,25),(2054,283),(2056,70),(2060,147),(2064,457),(2067,145),(2067,815),(2068,165),(2068,631),(2069,699),(2071,368),(2071,372),(2072,893),(2075,535),(2076,26),(2078,665),(2078,678),(2082,868),(2085,583),(2087,658),(2089,744),(2089,752),(2090,760),(2092,722),(2093,206),(2095,436),(2096,236),(2100,949),(2101,837),(2102,145),(2102,150),(2105,519),(2107,295),(2110,94),(2111,585),(2112,620),(2112,741),(2113,584),(2113,924),(2115,39),(2118,840),(2126,865),(2127,894),(2128,577),(2131,401),(2131,837),(2133,324),(2137,197),(2137,778),(2138,967),(2142,224),(2143,307),(2143,627),(2145,322),(2147,392),(2149,739),(2152,274),(2152,582),(2153,376),(2156,186),(2156,799),(2158,749),(2159,971),(2160,782),(2162,892),(2174,331),(2175,171),(2177,180),(2177,226),(2180,260),(2182,93),(2185,954),(2186,970),(2188,938),(2190,958),(2191,144),(2192,364),(2194,478),(2195,207),(2198,690),(2199,790),(2203,557),(2205,64),(2212,540),(2214,943),(2216,340),(2217,270),(2220,543),(2220,869),(2225,110),(2225,459),(2225,874),(2227,364),(2230,900),(2231,619),(2233,772),(2234,273),(2234,943),(2238,777),(2239,379),(2242,766),(2243,356),(2245,92),(2251,94),(2251,385),(2261,454),(2261,505),(2264,597),(2272,394),(2278,319),(2281,80),(2281,234),(2295,405),(2295,674),(2297,116),(2298,381),(2304,531),(2305,535),(2306,815),(2309,401),(2309,633),(2311,918),(2314,990),(2318,287),(2321,102),(2321,404),(2326,441),(2326,985),(2328,786),(2331,29),(2332,762),(2334,313),(2335,837),(2339,45),(2340,242),(2341,242),(2343,295),(2344,227),(2357,61),(2359,113),(2359,737),(2360,506),(2361,231),(2361,679),(2366,217),(2367,289),(2369,217),(2371,598),(2375,545),(2381,633),(2382,850),(2383,746),(2384,126),(2385,618),(2385,979),(2386,856),(2388,597),(2389,357),(2392,152),(2397,482),(2398,453),(2400,413),(2400,585),(2403,953),(2405,157),(2406,142),(2409,40),(2415,287),(2416,196),(2416,544),(2418,105),(2418,190),(2418,229),(2422,387),(2429,551),(2430,580),(2433,569),(2437,290),(2437,523),(2441,143),(2443,830),(2443,978),(2444,683),(2446,517),(2446,629),(2447,820),(2448,461),(2450,459),(2454,484),(2458,728),(2459,967),(2462,475),(2462,981),(2463,342),(2463,601),(2465,287),(2466,2),(2467,169),(2467,385),(2468,970),(2469,609),(2473,854),(2478,53),(2482,751),(2483,444),(2484,416),(2485,510),(2489,620),(2490,301),(2491,648),(2492,180),(2497,314),(2498,489),(2499,465),(2501,158),(2501,237),(2502,495),(2502,726),(2502,878),(2503,873),(2507,217),(2510,465),(2517,333),(2518,793),(2521,290),(2521,845),(2522,479),(2523,175),(2523,736),(2524,17),(2525,226),(2527,1),(2527,748),(2532,766),(2532,861),(2542,175),(2544,487),(2546,398),(2549,487),(2550,127),(2550,830),(2553,725),(2556,700),(2561,976),(2564,818),(2565,646),(2566,104),(2566,851),(2569,861),(2570,162),(2572,469),(2572,545),(2574,259),(2575,25),(2577,113),(2578,735),(2583,112),(2584,720),(2584,940),(2586,806),(2587,495),(2591,813),(2593,165),(2593,929),(2601,294),(2601,756),(2602,553),(2604,945),(2607,295),(2608,119),(2608,889),(2613,580),(2618,704),(2618,855),(2625,576),(2636,591),(2639,107),(2639,220),(2639,887),(2640,972),(2642,400),(2644,689),(2644,727),(2647,911),(2650,710),(2651,438),(2654,933),(2655,922),(2658,713),(2663,934),(2669,214),(2671,87),(2674,11),(2679,618),(2680,7),(2680,265),(2683,27),(2685,424),(2688,169),(2693,603),(2693,966),(2694,936),(2695,817),(2701,93),(2702,30),(2703,558),(2703,657),(2704,581),(2705,248),(2706,913),(2708,377),(2710,899),(2715,131),(2716,53),(2716,300),(2717,23),(2717,463),(2718,18),(2718,22),(2718,90),(2719,342),(2720,961),(2724,377),(2726,647),(2729,605),(2734,98),(2734,179),(2734,436),(2734,461),(2735,775),(2741,559),(2743,919),(2753,850),(2754,315),(2754,722),(2755,467),(2758,293),(2761,869),(2762,108),(2763,782),(2763,891),(2766,592),(2767,709),(2769,290),(2769,836),(2770,711),(2770,960),(2771,713),(2773,428),(2777,692),(2779,137),(2781,175),(2781,631),(2782,68),(2791,508),(2793,783),(2794,755),(2796,274),(2801,208),(2801,794),(2802,8),(2806,397),(2812,317),(2815,420),(2816,788),(2817,437),(2818,321),(2819,448),(2819,457),(2824,748),(2824,789),(2830,334),(2833,694),(2835,172),(2837,342),(2837,707),(2840,734),(2843,415),(2849,886),(2850,113),(2850,351),(2850,459),(2851,280),(2852,320),(2854,576),(2861,661),(2868,605),(2869,974),(2871,8),(2871,584),(2874,185),(2874,623),(2875,617),(2881,59),(2881,498),(2886,600),(2887,266),(2888,650),(2889,950),(2894,62),(2894,219),(2894,969),(2895,357),(2896,692),(2897,633),(2897,733),(2902,863),(2905,327),(2906,430),(2909,73),(2909,919),(2910,725),(2914,527),(2915,638),(2918,974),(2922,262),(2924,149),(2926,473),(2926,766),(2927,350),(2929,330),(2929,549),(2930,194),(2930,986),(2934,250),(2935,978),(2936,456),(2937,652),(2937,863),(2939,445),(2939,860),(2942,740),(2946,161),(2949,630),(2950,779),(2955,601),(2956,278),(2957,261),(2959,393),(2962,503),(2966,960),(2975,972),(2977,942),(2978,779),(2979,415),(2980,190),(2981,531),(2982,318),(2984,465),(2985,434),(2986,698),(2991,462),(2992,390),(2996,963),(2998,789),(3006,146),(3006,269),(3006,674),(3008,636),(3009,574),(3012,32),(3012,678),(3016,60),(3017,730),(3021,464),(3022,916),(3024,329),(3024,916),(3025,411),(3030,97),(3033,442),(3033,623),(3033,729),(3036,540),(3036,922),(3038,654),(3041,636),(3044,373),(3044,661),(3047,574),(3050,468),(3050,710),(3052,459),(3054,784),(3057,327),(3059,225),(3062,60),(3064,790),(3067,377),(3067,433),(3067,915),(3069,436),(3077,940),(3079,380),(3081,825),(3082,308),(3086,539),(3087,976),(3088,802),(3094,493),(3104,564),(3104,816),(3106,588),(3107,233),(3107,427),(3109,394),(3111,999),(3118,834),(3121,148),(3124,491),(3127,452),(3127,958),(3132,254),(3132,366),(3132,687),(3135,832),(3138,285),(3138,840),(3140,277),(3140,344),(3140,664),(3142,243),(3143,424),(3145,772),(3146,737),(3146,851),(3149,54),(3153,521),(3154,136),(3155,180),(3155,856),(3156,760),(3156,965),(3159,788),(3168,75),(3171,220),(3171,531),(3175,171),(3175,653),(3176,608),(3177,211),(3178,21),(3182,101),(3185,792),(3187,214),(3187,609),(3188,369),(3189,700),(3191,770),(3191,826),(3193,567),(3194,344),(3196,372),(3199,505),(3201,625),(3206,930),(3207,717),(3211,64),(3211,460),(3213,875),(3215,657),(3217,9),(3218,418),(3219,581),(3224,702),(3225,607),(3232,455),(3235,944),(3236,251),(3238,222),(3241,148),(3244,517),(3244,845),(3245,841),(3250,314),(3250,792),(3251,883),(3252,506),(3253,178),(3262,681),(3265,655),(3266,455),(3269,920),(3270,953),(3271,963),(3272,895),(3275,473),(3279,6),(3279,339),(3283,790),(3288,400),(3288,706),(3289,594),(3290,982),(3291,870),(3300,327),(3301,5),(3302,267),(3310,280),(3313,272),(3315,613),(3319,206),(3322,737),(3325,10),(3327,28),(3328,900),(3329,710),(3332,589),(3332,723),(3332,916),(3333,509),(3333,560),(3333,662),(3338,911),(3341,140),(3341,768),(3343,481),(3350,895),(3354,376),(3357,995),(3364,695),(3365,928),(3365,980),(3368,618),(3375,307),(3375,397),(3377,230),(3381,658),(3385,370),(3385,435),(3386,236),(3387,926),(3389,724),(3390,277),(3390,924),(3392,627),(3392,693),(3392,845),(3393,679),(3394,457),(3396,210),(3396,480),(3398,810),(3404,629),(3404,720),(3404,815),(3406,944),(3407,179),(3407,683),(3412,48),(3415,185),(3415,366),(3419,475),(3419,532),(3420,304),(3424,453),(3424,851),(3426,570),(3428,76),(3428,237),(3431,158),(3432,289),(3434,240),(3434,881),(3435,558),(3437,668),(3441,508),(3441,638),(3442,852),(3443,754),(3444,207),(3444,308),(3444,374),(3445,961),(3446,350),(3447,68),(3447,578),(3454,780),(3455,456),(3456,108),(3457,690),(3462,440),(3465,925),(3471,297),(3472,69),(3472,666),(3478,949),(3485,388),(3485,930),(3488,383),(3488,987),(3488,998),(3494,254),(3494,707),(3495,326),(3496,239),(3500,739),(3500,949),(3503,874),(3507,297),(3510,59),(3511,358),(3518,266),(3518,815),(3519,446),(3519,561),(3520,47),(3523,135),(3526,762),(3527,775),(3534,762),(3535,966),(3545,991),(3546,138),(3551,165),(3551,539),(3553,988),(3555,206),(3557,6),(3559,494),(3559,545),(3560,205),(3561,687),(3564,4),(3564,333),(3565,66),(3565,324),(3565,405),(3566,114),(3566,759),(3567,415),(3569,670),(3569,796),(3570,933),(3572,527),(3575,941),(3578,837),(3579,276),(3581,572),(3582,852),(3582,978),(3583,616),(3588,759),(3591,325),(3592,448),(3595,390),(3597,200),(3605,826),(3605,856),(3607,310),(3609,681),(3609,990),(3616,577),(3619,697),(3620,527),(3620,727),(3623,795),(3625,315),(3625,428),(3626,41),(3629,421),(3629,846),(3631,835),(3634,299),(3639,689),(3640,244),(3642,128),(3643,674),(3644,694),(3646,154),(3654,876),(3656,824),(3656,975),(3659,501),(3661,521),(3662,188),(3663,445),(3665,802),(3672,319),(3672,968),(3674,612),(3675,952),(3677,442),(3684,358),(3686,275),(3687,365),(3687,961),(3689,774),(3690,730),(3692,822),(3693,317),(3697,902),(3698,699),(3700,398),(3701,195),(3701,334),(3703,381),(3705,884),(3707,125),(3707,175),(3708,122),(3710,321),(3710,569),(3710,795),(3710,979),(3711,154),(3714,368),(3715,404),(3716,415),(3724,975),(3727,268),(3727,523),(3732,527),(3737,79),(3737,580),(3738,132),(3739,776),(3741,68),(3743,697),(3744,323),(3746,825),(3750,730),(3750,940),(3754,206),(3755,856),(3756,828),(3757,881),(3757,956),(3758,244),(3760,126),(3762,600),(3768,544),(3771,186),(3772,872),(3773,254),(3779,63),(3779,337),(3781,472),(3786,235),(3786,892),(3788,331),(3798,352),(3799,138),(3800,940),(3802,67),(3802,932),(3804,437),(3806,622),(3810,503),(3816,492),(3818,592),(3826,931),(3829,83),(3829,193),(3831,718),(3832,546),(3835,564),(3837,472),(3838,185),(3842,313),(3851,624),(3852,12),(3854,16),(3856,285),(3859,148),(3862,177),(3864,137),(3865,81),(3865,330),(3869,755),(3869,757),(3870,983),(3873,432),(3875,502),(3876,37),(3876,667),(3876,756),(3876,870),(3877,341),(3881,445),(3881,449),(3883,217),(3884,496),(3886,456),(3887,320),(3888,390),(3890,675),(3891,2),(3891,267),(3891,919),(3893,365),(3895,471),(3896,709),(3897,706),(3897,982),(3898,72),(3899,177),(3901,334),(3902,490),(3905,681),(3906,418),(3909,499),(3911,639),(3912,741),(3912,798),(3914,372),(3918,514),(3920,455),(3920,837),(3921,974),(3925,867),(3925,954),(3926,807),(3928,320),(3928,486),(3930,106),(3931,944),(3935,193),(3935,568),(3936,75),(3937,123),(3937,303),(3937,912),(3939,331),(3945,15),(3946,942),(3947,472),(3950,800),(3953,349),(3955,901),(3957,905),(3959,599),(3959,612),(3961,130),(3962,213),(3968,24),(3968,378),(3969,711),(3971,675),(3975,214),(3975,408),(3976,756),(3978,401),(3978,595),(3978,608),(3979,6),(3981,19),(3981,748),(3982,141),(3988,438),(3989,683),(3992,39),(3995,186),(3995,455),(3997,482),(4000,929);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 22:37:32
