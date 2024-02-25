 CREATE SCHEMA `tienda_zapatillas`;
 USE `tienda_zapatillas`;
   
 CREATE TABLE Zapatillas (
	id_zapatilla INT AUTO_INCREMENT,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_zapatilla)
    );
-- Tabla Clientes -- 
CREATE TABLE Clientes (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(45) NOT NULL,
    numero_telefono INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45),
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL
);

-- Tabla Empleados -- 
CREATE TABLE Empleados (
	id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT,
    fecha_incorporacion DATE NOT NULL
);

-- Tabla Facturas -- 
CREATE TABLE Facturas (
	id_factura INT AUTO_INCREMENT PRIMARY KEY,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
	id_zapatilla INT NOT NULL,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
	CONSTRAINT fk_zapatilla FOREIGN KEY (id_zapatilla) REFERENCES Zapatillas(id_zapatilla),
	CONSTRAINT fk_empleado FOREIGN KEY (id_empleado) REFERENCES Empleados (id_empleado),
	CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
);

