/*
Task7. Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
*/

USE shop;

DROP FUNCTION IF EXISTS hello;

DELIMITER //

create function hello() returns varchar(20)

    reads sql data
begin
    DECLARE greeting varchar(20);
    DECLARE t TIME;
    set t = TIME(NOW());
    IF t >= TIME('06:00') and t < TIME('12:00') THEN
        SET greeting = 'Доброе утро';
    ELSEIF t >= TIME('12:00') and t < TIME('18:00') THEN
        SET greeting = 'Добрый день';
    ELSEIF t >= TIME('18:00') and t < TIME('23:59') THEN
        SET greeting = 'Добрый вечер';
    ELSEIF t >= TIME('00:00') and t < TIME('06:00') THEN
        SET greeting = 'Доброй ночи';
    END IF;

    return greeting;
end //

DELIMITER ;

SELECT hello();
