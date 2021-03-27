/*Task7 Агрегация данных 
2.	Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/

DROP DATABASE IF EXISTS shop;

CREATE DATABASE shop;

USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
  
SELECT DAYNAME(DATE_ADD(DATE_ADD(MAKEDATE(YEAR(NOW()), 1), 
INTERVAL (MONTH(birthday_at))-1 MONTH), 
INTERVAL (DAY(birthday_at))-1 DAY)) as 'day', COUNT(id) as 'count'
FROM users
GROUP BY DAYNAME(DATE_ADD(DATE_ADD(MAKEDATE(YEAR(NOW()), 1), 
INTERVAL (MONTH(birthday_at))-1 MONTH), INTERVAL (DAY(birthday_at))-1 DAY));