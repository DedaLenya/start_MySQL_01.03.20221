/*Task8 Агрегация данных 
Подсчитайте произведение чисел в столбце таблицы.
*/


DROP DATABASE IF EXISTS shop;

CREATE DATABASE shop;

USE shop;

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO `storehouses_products` (`storehouse_id`,`product_id`,`value`,`created_at`,`updated_at`) VALUES ("59038",100,40,"2020-09-08 01:47:30","2020-06-26 01:54:53"),("95728",101,0,"2020-07-16 00:22:44","2021-01-13 22:45:38"),("20604",102,65,"2020-06-25 22:30:48","2021-06-06 16:06:05"),("77526",103,53,"2021-04-06 03:19:13","2021-07-30 00:31:00"),("38954",104,75,"2021-05-02 12:19:28","2021-04-05 21:59:55"),("25243",105,76,"2021-06-15 06:45:32","2021-04-21 01:32:13"),("21102",106,37,"2021-04-28 01:50:18","2020-07-22 10:32:40"),("38539",107,7,"2022-01-26 20:56:23","2022-03-21 19:33:20"),("75146",108,3,"2021-08-22 20:38:40","2021-01-27 01:41:30"),("52810",109,0,"2020-07-19 12:29:13","2022-03-16 17:25:32");

-- SELECT value FROM storehouses_products sp ;

SELECT EXP(SUM(LOG(value))) FROM storehouses_products sp ;