DROP DATABASE IF EXISTS people_friends;
CREATE DATABASE people_friends;
USE people_friends;

DROP TABLE IF EXISTS animal;
CREATE TABLE animal (
	id SERIAL PRIMARY KEY,
	human_friends_id BIGINT UNSIGNED NOT NULL UNIQUE,
	vyuchnie_zivotvie_id BIGINT UNSIGNED NOT NULL UNIQUE
);


DROP TABLE IF EXISTS human_friends;
CREATE TABLE human_friends(
	id SERIAL PRIMARY KEY,
	animal_id BIGINT UNSIGNED NOT NULL UNIQUE
);

ALTER TABLE human_friends ADD CONSTRAINT fk_animal_id
	FOREIGN KEY (animal_id) REFERENCES  animal(human_friends_id) ON UPDATE CASCADE ON DELETE CASCADE;


DROP TABLE IF EXISTS vyuchnie_zivotvie;
CREATE TABLE vyuchnie_zivotvie(
	id SERIAL PRIMARY KEY,
	animal_id BIGINT UNSIGNED NOT NULL UNIQUE,
	FOREIGN KEY (animal_id) REFERENCES animal(vyuchnie_zivotvie_id) ON UPDATE CASCADE ON DELETE CASCADE
);



DROP TABLE IF EXISTS cat;
CREATE TABLE cat (
	-- id SERIAL PRIMARY KEY,
	cat_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	name VARCHAR(100),
	dete_of_bitrh DATE,
	comands TEXT,
	create_date DATETIME DEFAULT NOW(),
	update_date DATETIME ON UPDATE NOW(), -- CURRENT_TIMESTAM
	PRIMARY KEY (cat_id)
);


DROP TABLE IF EXISTS dog;
CREATE TABLE dog (
	dog_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	name VARCHAR(100),
	dete_of_bitrh DATE,
	comands TEXT,
	create_date DATETIME DEFAULT NOW(),
	update_date DATETIME ON UPDATE NOW(),  -- CURRENT_TIMESTAMP
	PRIMARY KEY (dog_id)	
);


DROP TABLE IF EXISTS hamster;
CREATE TABLE hamster (
	hamster_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	name VARCHAR(100),
	dete_of_bitrh DATE,
	comands TEXT,
	create_date DATETIME DEFAULT NOW(),
	update_date DATETIME ON UPDATE NOW(),  -- CURRENT_TIMESTAMP
	PRIMARY KEY (hamster_id)
);


DROP TABLE IF EXISTS horse;
CREATE TABLE horse (
	horse_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	name VARCHAR(100),
	dete_of_bitrh DATE,
	comands TEXT,
	create_date DATETIME DEFAULT NOW(),
	update_date DATETIME ON UPDATE NOW(),  -- CURRENT_TIMESTAMP
	PRIMARY KEY (horse_id)
);


DROP TABLE IF EXISTS camel;
CREATE TABLE camel (
	camel_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	name VARCHAR(100),
	dete_of_bitrh DATE,
	comands TEXT,
	create_date DATETIME DEFAULT NOW(),
	update_date DATETIME ON UPDATE NOW(),  -- CURRENT_TIMESTAMP
	PRIMARY KEY (camel_id)
);


DROP TABLE IF EXISTS donkey;

CREATE TABLE donkey (
	donkey_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	name VARCHAR(100),
	dete_of_bitrh DATE,
	comands TEXT,
	create_date DATETIME DEFAULT NOW(),
	update_date DATETIME ON UPDATE NOW(),  -- CURRENT_TIMESTAMP
	PRIMARY KEY (donkey_id)
);

/*
ALTER TABLE human_friends ADD CONSTRAINT fk_human_friends_id
	FOREIGN KEY (id) REFERENCES cat(cat_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (id) REFERENCES dog(dog_id) ON UPDATE CASCADE ON DELETE CASCADE;
*/

INSERT INTO cat
(name, dete_of_bitrh, comands)
VALUES
	('barsik', '2021-01-01', 'мяу-мяу'),
	('tom', '2019-12-10', 'мяу-мяу'),
	('moris', '2020-02-02', 'мяу-мяу'),
	('bobi', '2022-03-03', 'мяу-мяу'),
	('tomas', '2018-05-05', 'мяу-мяу');

INSERT INTO dog 
(name, dete_of_bitrh, comands)
VALUES 
	('tusik', '2021-01-01', 'гав-гав'),
	('sharik', '2019-12-10', 'гав-гав'),
    ('rigik', '2020-02-02', 'гав-гав'),
    ('fred', '2022-03-03', 'гав-гав'),
    ('barsik', '2018-05-05', 'гав-гав');

INSERT INTO hamster 
(name, dete_of_bitrh, comands)
VALUES 
	('ssss', '2000-01-01', 'ору как хомяк'),
	('dfdf', '2019-12-10', 'ору как хомяк'),
    ('asew', '1980-03-02', 'ору как хомяк'),
    ('cvbg', '2022-09-03', 'ору как хомяк'),
    ('azxs', '2003-05-05', 'ору как хомяк');
   
INSERT INTO horse 
(name, dete_of_bitrh, comands)
VALUES 
	('ssss', '2000-01-01', 'и го го'),
	('dfdf', '2019-12-10', 'и го го'),
    ('asew', '1980-03-02', 'и го го'),
    ('cvbg', '2022-09-03', 'и го го'),
    ('azxs', '2003-05-05', 'и го го');
   
INSERT INTO camel 
(name, dete_of_bitrh, comands)
VALUES 
	('ssss', '2000-01-01', 'ору как верблюд'),
	('dfdf', '2019-12-10', 'ору как верблюд'),
    ('asew', '1980-03-02', 'ору как верблюд'),
    ('cvbg', '2022-09-03', 'ору как верблюд'),
    ('azxs', '2003-05-05', 'ору как верблюд');
   
   
INSERT INTO donkey 
(name, dete_of_bitrh, comands)
VALUES 
	('ssss', '2000-01-01', 'иа иа иа'),
	('dfdf', '2019-12-10', 'иа иа иа'),
    ('asew', '1988-11-02', 'иа иа иа'),
    ('cvbg', '2022-09-03', 'иа иа иа'),
    ('azxs', '2003-05-05', 'иа иа иа');

TRUNCATE camel;


   
--  объединить таблицы лошади и ослы в одну таблицу.
/*
SELECT * 
FROM horse h
JOIN donkey d
ON h.horse_id = d.donkey_id;
*/

INSERT INTO horse (name, dete_of_bitrh, comands) 
SELECT name, dete_of_bitrh, comands
FROM donkey;

-- Создать новую таблицу “молодые животные”, в которую попадут все животные старше 1 года, но младше 3 лет и 
-- в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице.


CREATE TABLE young_animals AS
SELECT *, 
FLOOR(YEAR(NOW()) - YEAR(dete_of_bitrh)) - 1 AS age_in_years,
MONTH(NOW()) - MONTH(dete_of_bitrh) AS age_in_months
FROM cat c 
UNION dog d 
WHERE
    YEAR(dete_of_bitrh) BETWEEN YEAR(NOW()) - 2 AND YEAR(NOW())
;

DROP TABLE IF EXISTS young_animals;
CREATE TABLE young_animals (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name CHAR(30),
    dete_of_bitrh DATE,
    comands TEXT,
    age TEXT
);
/*
DELIMITER $$
CREATE FUNCTION age_animal (date_b DATE)
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE res TEXT DEFAULT '';
	SET res = CONCAT(
            TIMESTAMPDIFF(YEAR, date_b, CURDATE()),
            ' years ',
            TIMESTAMPDIFF(MONTH, date_b, CURDATE()) % 12,
            ' month'
        );
	RETURN res;
END $$
DELIMITER ;
*/


INSERT INTO young_animals (name, dete_of_bitrh, comands, age)
SELECT name, dete_of_bitrh, comands, age_animal(dete_of_bitrh)
FROM cat
WHERE TIMESTAMPDIFF(YEAR, dete_of_bitrh, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT name, dete_of_bitrh, comands, age_animal(dete_of_bitrh)
FROM dog
WHERE TIMESTAMPDIFF(YEAR, dete_of_bitrh, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT name, dete_of_bitrh, comands, age_animal(dete_of_bitrh)
FROM hamster
WHERE TIMESTAMPDIFF(YEAR, dete_of_bitrh, CURDATE()) BETWEEN 1 AND 3
UNION ALL
SELECT name, dete_of_bitrh, comands, age_animal(dete_of_bitrh)
FROM horse
WHERE TIMESTAMPDIFF(YEAR, dete_of_bitrh, CURDATE()) BETWEEN 1 AND 3;











   
    