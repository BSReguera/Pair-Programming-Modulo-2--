-- Pair programming SQL- Modificación e inserción de datos

-- Uso de tabla:
USE `tienda_zapatillas`;

-- 1. Correccion de errores de las tablas: 
ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL,
ADD COLUMN talla INT NOT NULL;

ALTER TABLE empleados
MODIFY COLUMN salario FLOAT;

ALTER TABLE clientes
DROP COLUMN pais;

ALTER TABLE facturas
ADD COLUMN total FLOAT;

-- 2. Insertar datos en nuestra BBDD:
INSERT INTO zapatillas (id_zapatilla,modelo, color, marca, talla)
VALUES (1 ,'XQYUN','Negro','Nike',42),
(2,'UOPMN','Rosas','Nike', 39),
(3,'OPNYT','Verdes','Adidas',35);

INSERT INTO empleados (id_empleado,nombre,tienda,salario, fecha_incorporacion)
VALUES (1,'Laura','Alcobendas',25.987,'2010-09-03'),
(2,'Maria','Sevilla',NULL,'2001-04-11'),
(3,'Ester','Oviedo',30165.98,'2000-11-29');

INSERT INTO clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES (1, 'Monica', 1234567289, 'monica@email.com', 'Calle Felicidad', 'Móstoles', 'Madrid', '28176'),
(2,'Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona','12346'),
(3, 'Carmen', 298463759, 'carmen@email.com', 'Calle del Color' , 'Vigo' , 'Pontevedra' , '23456');

INSERT INTO facturas (id_factura, numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
VALUES (1, 123, '2001-12-11', 1, 2, 1, 54.98),
(2, 1234, '2005-05-23', 1, 1, 3, 89.91),
(3, 12345, '2015-09-18', 2, 3, 3, 76.23);

-- 3. Corrección de errores en la inserción de datos
UPDATE zapatillas
SET color = 'Amarillo'
WHERE color = 'Rosas';

UPDATE empleados
SET tienda = 'A Coruña'
WHERE nombre = 'Laura';

UPDATE clientes
SET numero_telefono = '123456728'
WHERE numero_telefono = '1234567289';

UPDATE facturas
SET total = '89,91'
WHERE id_cliente = 2;
