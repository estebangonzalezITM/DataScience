CREATE DATABASE IF NOT EXISTS Suscripciones_DB;
USE Suscripciones_DB;

CREATE TABLE IF NOT EXISTS Suscripciones (    
Fecha DATE,    
Cliente VARCHAR(100) NOT NULL,    
Idioma VARCHAR(50) NOT NULL,    
Nivel VARCHAR (50) NOT NULL,    
Suscripcion VARCHAR (50) NOT NULL,    
Precio DECIMAL(10,1) NOT NULL,    
Descuento INT NOT NULL,    
PrecioFinal DECIMAL(10,1) NOT NULL);

INSERT INTO Suscripciones (Fecha,Cliente,Idioma,Nivel,Suscripcion,Precio,Descuento,PrecioFinal) VALUES
('2018-06-25', 'Pedro', 'Inglés', 'Intermedio', 'Mensual', 7, 0, 7),
('2018-06-25', 'Pedro', 'Chino', 'Principiante', 'Mensual', 9, 0, 9),
('2018-07-01', 'Aurelia', 'Francés', 'Avanzado', 'Anual', 8, 25, 6),
('2018-07-03', 'Federico', 'Inglés', 'Intermedio', 'Trimestral', 7, 10, 6.3),
('2018-07-05', 'Mariana', 'Alemán', 'Principiante', 'Mensual', 10, 0, 10),
('2018-07-10', 'Roberto', 'Japonés', 'Intermedio', 'Anual', 12, 15, 10.2),
('2018-07-12', 'Lucía', 'Italiano', 'Avanzado', 'Trimestral', 8.5, 0, 8.5),
('2018-07-15', 'Carlos', 'Portugués', 'Principiante', 'Mensual', 6, 50, 3),
('2018-07-20', 'Elena', 'Ruso', 'Intermedio', 'Anual', 15, 20, 12),
('2018-07-22', 'Miguel', 'Inglés', 'Avanzado', 'Trimestral', 7, 5, 6.6),
('2018-08-01', 'Sofía', 'Coreano', 'Principiante', 'Anual', 15.0, 10, 13.5),
('2018-08-05', 'Andrés', 'Francés', 'Intermedio', 'Mensual', 8.0, 0, 8.0),
('2018-08-12', 'Valeria', 'Árabe', 'Principiante', 'Trimestral', 11.5, 20, 9.2),
('2018-08-15', 'Javier', 'Inglés', 'Avanzado', 'Anual', 7.5, 30, 5.2),
('2018-08-20', 'Beatriz', 'Holandés', 'Intermedio', 'Mensual', 9.0, 5, 8.5);

SELECT * FROM Suscripciones;


CREATE TABLE IF NOT EXISTS Tabla_Clientes (
ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
Cliente VARCHAR(100) NOT NULL
);

INSERT INTO Tabla_Clientes (Cliente) 
SELECT DISTINCT Cliente
FROM Suscripciones;

INSERT INTO Tabla_Clientes (Cliente) 
SELECT DISTINCT Cliente
FROM Suscripciones;

SELECT * FROM Tabla_Clientes;

