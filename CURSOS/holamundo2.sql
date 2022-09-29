CREATE database holamundo;
SHOW databases;
use holamundo;
CREATE TABLE Animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);

-- INSERT INTO Animales (tipo, estado) values ('chancito', 'feliz');
-- Esta linea no será ejecutada

ALTER TABLE Animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE Animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO Animales (tipo, estado) values ('chancito', 'feliz');
INSERT INTO Animales (tipo, estado) values ('dragon', 'feliz');
INSERT INTO Animales (tipo, estado) values ('felipe', 'triste');

SELECT * FROM Animales;
SELECT * FROM Animales  WHERE id=1;
SELECT * FROM Animales WHERE estado = 'feliz' AND tipo = 'felipe';

UPDATE Animales SET estado = 'feliz' WHERE id = 3;

DELETE FROM Animales WHERE estado = 'feliz';
DELETE FROM Animales WHERE id = 3;
SELECT * FROM Animales;

UPDATE Animales SET estado = 'triste' WHERE id = 2;