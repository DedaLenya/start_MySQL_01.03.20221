DROP DATABASE IF EXISTS test1;
CREATE DATABASE test1 DEFAULT CHARACTER SET 'utf8';
USE test1;


DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  from_ VARCHAR(255), -- eng
  to_ VARCHAR(255) -- eng
) ;


INSERT INTO `flights` (`from_`,`to_`) 
	VALUES ('Tirupati','Terni'),
	('Georgia','Tournefeuille'),
	('St. Thomas','Caramanico Terme'),	
	('Merbes-Sainte-Marie','Magdeburg'),
	('Akhisar','Amelia'),
	('São Luís','Sellia Marina');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL NOT NULL NOT NULL PRIMARY KEY AUTO_INCREMENT,
  label VARCHAR(255), -- eng
  name VARCHAR(255) -- RUS
) ;

INSERT INTO `cities` (`label`,`name`) 
	VALUES ('Tirupati','Тирупати'),
	('Georgia','Георгия'),
	('St. Thomas','Томас'),	
	('Merbes-Sainte-Marie','Мербес'),
	('Amelia','Амелия'),
	('Sellia Marina','Селлиа');


SELECT * FROM cities ;
   
/*   
   Task3
Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
Поля from, to и label содержат английские названия городов, поле name — русское. 
Выведите список рейсов flights с русскими названиями городов.

		*/

SELECT  f.id, c1.name, c2.name
from flights f
         LEFT JOIN cities c1 on f.`from_` = c1.label
         LEFT JOIN cities c2 on f.`to_` = c2.label
ORDER BY f.id;



        

 
   