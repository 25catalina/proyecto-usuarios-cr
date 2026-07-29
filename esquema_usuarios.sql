-- Esquema de la base de datos para el proyecto Usuarios CR
-- Nimbus Retail Corp - Módulo de gestión de usuarios

CREATE DATABASE IF NOT EXISTS esquema_usuarios;
USE esquema_usuarios;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL,
    edad INT,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Datos de ejemplo (opcional, para probar el listado desde el inicio)
INSERT INTO usuarios (nombre, apellido, correo, edad) VALUES
('Ana', 'Torres', 'ana.torres@example.com', 28),
('Bruno', 'Gimenez', 'bruno.gimenez@example.com', 34);
