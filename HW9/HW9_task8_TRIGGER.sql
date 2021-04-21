/*
8.В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
Допустимо присутствие обоих полей или одно из них. Ситуация, 
когда оба поля принимают неопределенное значение NULL неприемлема. 
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
При попытке присвоить полям NULL-значение необходимо отменить операцию.
*/


USE shop;
 
DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  desсription TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

DROP TRIGGER if exists check_name_desсription_on_products_insert;

DELIMITER //

CREATE TRIGGER check_name_desсription_on_products_insert
    BEFORE INSERT
    ON products
    FOR EACH ROW
BEGIN
    IF NEW.name IS NULL AND NEW.desсription IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'При попытке присвоить полям NULL-значение необходимо отменить операцию';
    END IF;

END //

DELIMITER ;


DROP TRIGGER if exists check_name_desсription_on_products_update;

DELIMITER //

CREATE TRIGGER check_name_desсription_on_products_update
    BEFORE UPDATE
    ON products
    FOR EACH ROW
BEGIN
    IF NEW.name IS NULL AND NEW.desсription IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'При попытке присвоить полям NULL-значение необходимо отменить операцию';
    END IF;

END //

DELIMITER ;


INSERT INTO products
  (name, desсription, price, catalog_id)
VALUES
  (NULL , 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  (NULL , NULL , 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2),
  ('MSI B250M', 'Материнская плата MSI B250M, B250, Socket 1151, DDR4, mATX', 4060.00, DEFAULT);

SELECT * FROM products;     

 
   