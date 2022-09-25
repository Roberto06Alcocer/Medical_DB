CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    PRIMARY KEY (id)
);

INSERT INTO user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) values ('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) values ('Nicolas', 36, 'nico@gmail.com');
INSERT INTO user (name, edad, email) values ('Chanchito', 7, 'chanchito@gmail.com');

SELECT * FROM user;
SELECT * FROM user limit 1;
SELECT * FROM user WHERE edad > 15;
SELECT * FROM user WHERE edad >= 15;
SELECT * FROM user WHERE edad > 20 AND email = 'nico@gmail.com';
SELECT * FROM user WHERE edad > 20 OR email = 'layla@gmail.com';
SELECT * FROM user WHERE email != 'layla@gmail.com';
SELECT * FROM user WHERE edad between 15 AND 30;
SELECT * FROM user WHERE email like '%@gmail';
SELECT * FROM user WHERE email like 'oscar%';

SELECT * FROM user ORDER BY edad asc;
SELECT * FROM user ORDER BY edad desc;

SELECT max(edad)  AS MAYOR FROM user;
SELECT min(edad)  AS MAYOR FROM user;

SELECT id, name FROM user;
SELECT id, name as chanchito FROM user;
