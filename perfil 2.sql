DROP DATABASE IF EXISTS rapid_mart;
CREATE DATABASE rapid_mart;

USE rapid_mart;

CREATE TABLE tb_categorias (
  id_categoria VARCHAR(36) PRIMARY KEY,
  nombre_categoria VARCHAR(50) NOT NULL
);

CREATE TABLE tb_proveedores (
  id_proveedor VARCHAR(36) PRIMARY KEY,
  nombre_proveedor VARCHAR(50) NOT NULL,
  direccion_proveedor VARCHAR(50) NOT NULL,
  telefono_proveedor VARCHAR(10) NOT NULL
);

CREATE TABLE tb_productos (
  id_producto VARCHAR(36) PRIMARY KEY,
  nombre_producto VARCHAR(50) NOT NULL,
  descripcion_producto VARCHAR(255) NOT NULL,
  precio_unitario DECIMAL(10,2) NOT NULL,
  id_categoria VARCHAR(36) NOT NULL,
  id_proveedor VARCHAR(36) NOT NULL
);


CREATE TABLE tb_inventarios (
  id_inventario VARCHAR(36) PRIMARY KEY,
  id_producto VARCHAR(36) NOT NULL,
  cantidad_disponible INT NOT NULL,
  fecha_ingreso DATETIME DEFAULT NOW()
);


CREATE TABLE tb_movimientos_inventarios (
  id_movimiento_inventario VARCHAR(36) PRIMARY KEY,
  id_inventario VARCHAR(36) NOT NULL,
  tipo_movimiento ENUM('Entrada', 'Salida') NOT NULL,
  cantidad INT NOT NULL,
  fecha_movimiento DATETIME DEFAULT NOW()
);

ALTER TABLE tb_productos ADD CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id_categoria);
  
ALTER TABLE tb_productos ADD CONSTRAINT fk_id_proveedor FOREIGN KEY (id_proveedor) REFERENCES tb_proveedores (id_proveedor);
  
ALTER TABLE tb_inventarios ADD CONSTRAINT fk_id_producto FOREIGN KEY (id_producto) REFERENCES tb_productos (id_producto);

ALTER TABLE tb_movimientos_inventarios ADD CONSTRAINT fk_id_inventario FOREIGN KEY (id_inventario) REFERENCES tb_inventarios (id_inventario);

ALTER TABLE tb_productos MODIFY id_producto VARCHAR(36) DEFAULT (UUID());
ALTER TABLE tb_categorias MODIFY id_categoria VARCHAR(36) DEFAULT (UUID());
ALTER TABLE tb_proveedores MODIFY id_proveedor VARCHAR(36) DEFAULT (UUID());
ALTER TABLE tb_inventarios MODIFY id_inventario VARCHAR(36) DEFAULT (UUID());
ALTER TABLE tb_movimientos_inventarios MODIFY id_movimiento_inventario VARCHAR(36) DEFAULT (UUID());


INSERT INTO tb_categorias (nombre_categoria) VALUES
('Tecnología'),
('Ropa'),
('Hogar'),
('Deportes'),
('Juguetes'),
('Libros'),
('Alimentos'),
('Belleza'),
('Salud'),
('Música');

INSERT INTO tb_proveedores (nombre_proveedor, direccion_proveedor, telefono_proveedor) VALUES
('TecnoShop', 'Calle del Sol 123', '1234-5678'),
('RopaMax', 'Avenida Central 456', '2345-6789'),
('HogarFeliz', 'Calle Mayor 789', '3456-7890'),
('DeportesTotal', 'Callejón Deportivo 1011', '4567-8901'),
('Juguetería Divertida', 'Calle de la Alegría 1213', '5678-9012'),
('Librería El Pensador', 'Calle del Saber 1415', '6789-0123'),
('Supermercado El Granero', 'Calle de la Abundancia 1617', '7890-1234'),
('Belleza Natural', 'Calle de la Armonía 1819', '8901-2345'),
('Farmacia Saludable', 'Calle del Bienestar 2021', '9012-3456'),
('Música y Sonido', 'Calle de la Melodía 2223', '0123-4567');

INSERT INTO tb_productos (nombre_producto, descripcion_producto, precio_unitario, id_categoria, id_proveedor) VALUES
('Smartphone X', 'Smartphone de última generación con cámara de 108MP', 1000.00, 'fb212bdf-d691-11ee-949d-b0227ad7f7cf', 'fd54646f-d691-11ee-949d-b0227ad7f7cf'),
('Camisa casual', 'Camisa de algodón para hombre', 25.00, 'fb21546d-d691-11ee-949d-b0227ad7f7cf', 'fd5477a5-d691-11ee-949d-b0227ad7f7cf'),
('Juego de sábanas', 'Juego de sábanas de algodón tamaño queen', 50.00, 'fb215527-d691-11ee-949d-b0227ad7f7cf', 'fd547861-d691-11ee-949d-b0227ad7f7cf'),
('Balón de fútbol', 'Balón de fútbol profesional talla 5', 30.00, 'fb215527-d691-11ee-949d-b0227ad7f7cf', 'fd547898-d691-11ee-949d-b0227ad7f7cf'),
('Muñeca de trapo', 'Muñeca de trapo con vestido de flores', 20.00, 'fb21555d-d691-11ee-949d-b0227ad7f7cf', 'fd5478c5-d691-11ee-949d-b0227ad7f7cf'),
('Libro de Harry Potter', 'Libro de Harry Potter y la piedra filosofal', 20.00, 'fb21558e-d691-11ee-949d-b0227ad7f7cf', 'fd5478f2-d691-11ee-949d-b0227ad7f7cf'),
('Leche descremada', 'Leche descremada de 1 litro', 2.50, 'fb2155bb-d691-11ee-949d-b0227ad7f7cf', 'fd547924-d691-11ee-949d-b0227ad7f7cf'),
('Crema facial hidratante', 'Crema facial hidratante para todo tipo de piel', 15.00, 'fb2155e5-d691-11ee-949d-b0227ad7f7cf', 'fd547951-d691-11ee-949d-b0227ad7f7cf'),
('Vitamina C', 'Vitamina C en cápsulas de 1000mg', 10.00, 'fb215611-d691-11ee-949d-b0227ad7f7cf', 'fd54798d-d691-11ee-949d-b0227ad7f7cf'),
('Audífonos inalámbricos', 'Audífonos inalámbricos con Bluetooth', 50.00, 'fb2157e5-d691-11ee-949d-b0227ad7f7cf', 'fd5479ba-d691-11ee-949d-b0227ad7f7cf');

SELECT * FROM tb_inventarios;


INSERT INTO tb_inventarios (id_producto, cantidad_disponible) VALUES
('3ee7f813-d694-11ee-949d-b0227ad7f7cf', 10),
('3ee82f57-d694-11ee-949d-b0227ad7f7cf', 20),
('3ee830b6-d694-11ee-949d-b0227ad7f7cf', 5),
('3ee831c6-d694-11ee-949d-b0227ad7f7cf', 15),
('3ee89397-d694-11ee-949d-b0227ad7f7cf', 25),
('3ee894ac-d694-11ee-949d-b0227ad7f7cf', 30),
('3ee89564-d694-11ee-949d-b0227ad7f7cf', 100),
('3ee8961c-d694-11ee-949d-b0227ad7f7cf', 50),
('3ee89771-d694-11ee-949d-b0227ad7f7cf', 20),
('3ee8982c-d694-11ee-949d-b0227ad7f7cf', 15);

INSERT INTO tb_movimientos_inventarios (id_inventario, tipo_movimiento, cantidad) VALUES
('9a8957d6-d697-11ee-949d-b0227ad7f7cf', 'Entrada', 5),
('9a898998-d697-11ee-949d-b0227ad7f7cf', 'Salida', 3),
('9a898ab9-d697-11ee-949d-b0227ad7f7cf', 'Entrada', 10),
('9a898b2e-d697-11ee-949d-b0227ad7f7cf', 'Salida', 2),
('9a898b9b-d697-11ee-949d-b0227ad7f7cf', 'Entrada', 15),
('9a898bfe-d697-11ee-949d-b0227ad7f7cf', 'Salida', 1),
('9a898c9e-d697-11ee-949d-b0227ad7f7cf', 'Entrada', 20),
('9a898d1e-d697-11ee-949d-b0227ad7f7cf', 'Salida', 4),
('9a898e21-d697-11ee-949d-b0227ad7f7cf', 'Entrada', 25),
('9a89ec36-d697-11ee-949d-b0227ad7f7cf', 'Salida', 5);



DELIMITER //
CREATE TRIGGER actualiza_cantidad_disponible AFTER INSERT ON tb_inventarios FOR EACH ROW
BEGIN
  DECLARE total INT;
  SET total = (SELECT SUM(cantidad_disponible) FROM tb_inventarios WHERE id_producto = NEW.id_producto);
  UPDATE tb_productos SET cantidad_disponible = total WHERE id_producto = NEW.id_producto;
END //
DELIMITER ;

