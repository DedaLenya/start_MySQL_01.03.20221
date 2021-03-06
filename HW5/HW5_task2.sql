/*Task2.	Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них 
долгое время помещались значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.*/

DROP DATABASE IF EXISTS shop;

CREATE DATABASE shop;

USE shop;


DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at varchar(145) NOT NULL, -- из примера
  updated_at varchar(145) NOT NULL -- из примера
) COMMENT = 'Покупатели';



INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES

  ('Геннадий', '1990-10-05', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Наталья', '1984-11-12', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Александр', '1985-05-20', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Сергей', '1988-02-14', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Иван', '1998-01-12', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Мария', '1992-08-29', '20.10.2017 8:10', '20.10.2017 8:10');
  

 -- mysql> SELECT DATE_FORMAT('2003-10-03',GET_FORMAT(DATE,'EUR'));
 
UPDATE users
SET created_at = STR_TO_DATE(created_at, "%d.%m.%Y %k:%i"),
    updated_at = STR_TO_DATE(updated_at , "%d.%m.%Y %k:%i");

ALTER TABLE users
MODIFY COLUMN created_at DATETIME, MODIFY COLUMN updated_at  DATETIME;

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Проверка', '1111-10-05', '2021.03.26 10:12', '2021.03.26 9:11');


SELECT * FROM users u2 ;

