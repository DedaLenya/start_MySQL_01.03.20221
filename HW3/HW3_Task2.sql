DROP DATABASE IF EXISTS vk;

CREATE DATABASE vk;

USE vk;

SHOW tables;

/*
 * Многострочный комментарий
 */

CREATE TABLE users (
  id bigint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name varchar(145) NOT NULL,
  last_name varchar(145) NOT NULL,
  email varchar(145) NOT NULL,
  phone varchar(11) NOT NULL,
  password_hash char(65) DEFAULT NULL,
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,  
  UNIQUE KEY email_unique (email),
  UNIQUE KEY phone_unique (phone),
  CONSTRAINT phone_check CHECK (regexp_like(phone,_utf8mb4'^[0-9]{11}$'))
);


-- ALTER TABLE users ADD COLUMN passport_number VARCHAR(10); -- добавляем колонку. альтер это изменить таблицу, эдд колумн добавить колонку
-- 
-- ALTER TABLE users MODIFY COLUMN passport_number VARCHAR(20); -- модифи это изменить колонку
-- 
-- ALTER TABLE users RENAME COLUMN passport_number TO passport;
-- 
-- ALTER TABLE users ADD UNIQUE KEY passport_unique (passport);
-- 
-- ALTER TABLE users DROP INDEX passport_unique;
-- 
-- ALTER TABLE users DROP COLUMN passport;


SELECT * FROM users;

DESCRIBE users; -- описание таблицы

-- 1:1 связь один к одному

CREATE TABLE profiles (
  user_id bigint UNSIGNED NOT NULL,
  gender enum('f','m','x') NOT NULL,
  birthday date NOT NULL,
  photo_id bigint UNSIGNED DEFAULT NULL,
  user_status varchar(30) DEFAULT NULL,
  city varchar(130) DEFAULT NULL,
  country varchar(130) DEFAULT NULL,
  UNIQUE KEY fk_profiles_users_to_idx (user_id),
  UNIQUE KEY photo_id (photo_id),
  
  CONSTRAINT fk_profiles_users FOREIGN KEY (user_id) REFERENCES users (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DESCRIBE profiles;


-- n:m многие ко многим

CREATE TABLE messages (
  id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  from_user_id bigint UNSIGNED  NOT NULL,
  to_user_id bigint UNSIGNED  NOT NULL,
  txt text NOT NULL,
  is_delivered boolean DEFAULT FALSE ,
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  INDEX fk_messages_from_user_idx (from_user_id),
  INDEX fk_messages_to_user_idx (to_user_id),
  CONSTRAINT fk_messages_users_1 FOREIGN KEY (from_user_id) REFERENCES users (id),
  CONSTRAINT fk_messages_users_2 FOREIGN KEY (to_user_id) REFERENCES users (id)
);



DESCRIBE messages;


-- n:m

CREATE TABLE friend_requests (
  from_user_id bigint UNSIGNED NOT NULL,
  to_user_id bigint UNSIGNED NOT NULL,
  accepted boolean DEFAULT FALSE,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (from_user_id, to_user_id),
  INDEX  fk_friend_requests_from_user_idx (from_user_id),
  INDEX  fk_friend_requests_to_user_idx (to_user_id),
  CONSTRAINT fk_friend_requests_users_1 FOREIGN KEY (from_user_id) REFERENCES users (id),
  CONSTRAINT fk_friend_requests_users_2 FOREIGN KEY (to_user_id) REFERENCES users (id),
  CONSTRAINT sender_not_reciever_check CHECK ((from_user_id <> to_user_id))
) ;



CREATE TABLE communities (
  id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(145) NOT NULL,
  description varchar(245) DEFAULT NULL,
  admin_id bigint UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_communities_users_admin_idx (admin_id),
  CONSTRAINT fk_communities_users FOREIGN KEY (admin_id) REFERENCES users (id)
) ENGINE=InnoDB;

DESCRIBE communities ;

-- n:m
-- Таблица связи пользователей и сообществ
CREATE TABLE communities_users (
  community_id bigint UNSIGNED NOT NULL,
  user_id bigint UNSIGNED NOT NULL,
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (community_id, user_id),
  INDEX  fk_communities_users_comm_idx (community_id),
  INDEX  fk_communities_users_users_idx (user_id),
  CONSTRAINT fk_communities_users_comm FOREIGN KEY (community_id) REFERENCES communities (id),
  CONSTRAINT fk_communities_users_users FOREIGN KEY (user_id) REFERENCES users (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DESCRIBE communities_users ;

CREATE TABLE media_types (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(45) NOT NULL, -- фото музыка документы
  PRIMARY KEY (id)
  -- UNIQUE KEY name (name)
  );

DESCRIBE media_types ;

SHOW CREATE TABLE media_types ; -- команда покажет как создавалась таблица

-- 1:n один к многим

CREATE TABLE media (
  id bigint UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id bigint UNSIGNED NOT NULL,
  media_types_id int UNSIGNED NOT NULL, -- фото
  file_name varchar(245) DEFAULT NULL COMMENT '/files/folder/img.png',
  file_size bigint DEFAULT NULL,
  created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX  fk_media_media_types_idx  (media_types_id),
  INDEX  fk_media_users_idx (user_id),
  CONSTRAINT fk_media_users FOREIGN KEY (user_id) REFERENCES users (id),
  CONSTRAINT fk_media_media_types FOREIGN KEY (media_types_id) REFERENCES media_types (id)
  
);

DESCRIBE media ; -- описание таблицы

-- HW3_Task2

/*2.	Придумать 2-3 таблицы для БД vk, которую мы создали на занятии (с перечнем полей, указанием индексов и внешних ключей). Прислать результат в виде скрипта *.sql.
Возможные таблицы:
a. Посты пользователя
b. Лайки на посты пользователей, лайки на медиафайлы
c. Черный список
d. Школы, университеты для профиля пользователя
e. Чаты (на несколько пользователей)
f. Посты в сообществе */

-- создадим таблицу на написание поста, где поле "что нового:"
-- создадим таблицу "лайки"

CREATE TABLE new_post_user (
	id bigint UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	from_user_id bigint UNSIGNED NOT NULL ,
	visible_all boolean DEFAULT TRUE,
	txt_post text NOT NULL,
	media_id int UNSIGNED DEFAULT NULL, 
	created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
	INDEX  fk_new_post_user_media_idx  (media_id),
	INDEX  fk_new_post_user_idx (from_user_id),
    CONSTRAINT fk_new_post_user_users FOREIGN KEY (from_user_id) REFERENCES users (id)    
);
 
DESCRIBE new_post_user ;

CREATE TABLE likes (	
	users_id int UNSIGNED NOT NULL,
	media_id int UNSIGNED NULL DEFAULT NULL,
	new_post_user_id int UNSIGNED NULL DEFAULT NULL,
	created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	INDEX fk_likes_users_idx (users_id),
	INDEX fk_likes_media_idx (media_id),
	INDEX fk_likes_new_post_user_idx (new_post_user_id),
	CONSTRAINT fk_likes_users FOREIGN KEY (users_id) REFERENCES users (id),
	CONSTRAINT fk_likes_media FOREIGN KEY (media_id) REFERENCES media (id),
	CONSTRAINT fk_likes_new_post FOREIGN KEY (new_post_user_id) REFERENCES new_post_user (id)
);



