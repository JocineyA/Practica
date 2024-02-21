DROP DATABASE IF EXISTS ventas_libros;
CREATE DATABASE IF NOT EXISTS ventas_libros;

-- Seleccionar la base de datos
USE ventas_libros;

-- Crear la tabla de clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    genero VARCHAR(255)
);

-- Crear la tabla de libros
CREATE TABLE libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    tipo INT,
    precio DECIMAL(10, 2)
);

-- Insertar tipos de libros y sus precios
INSERT INTO libros (tipo, titulo, precio) VALUES
    (1, 'Ficción', 90.00),
    (2, 'Novelas', 100.00),
    (3, 'Cuentos', 80.00),
    (4, 'Física Cuántica', 150.00);

-- Crear la tabla de ventas
CREATE TABLE IF NOT EXISTS ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    libro_titulo VARCHAR(255),
    libro_cantidad INT,
    libro_tipo INT,
    importe_bruto DECIMAL(10, 2),
    monto_descuento DECIMAL(10, 2),
    importe_neto DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (libro_tipo) REFERENCES libros(id) 
) 


