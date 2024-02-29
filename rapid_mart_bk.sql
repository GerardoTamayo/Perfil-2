-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: rapid_mart
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_categorias`
--

DROP TABLE IF EXISTS `tb_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categorias` (
  `id_categoria` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorias`
--

LOCK TABLES `tb_categorias` WRITE;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` VALUES ('fb212bdf-d691-11ee-949d-b0227ad7f7cf','Tecnología'),('fb21546d-d691-11ee-949d-b0227ad7f7cf','Ropa'),('fb215527-d691-11ee-949d-b0227ad7f7cf','Hogar'),('fb21555d-d691-11ee-949d-b0227ad7f7cf','Deportes'),('fb21558e-d691-11ee-949d-b0227ad7f7cf','Juguetes'),('fb2155bb-d691-11ee-949d-b0227ad7f7cf','Libros'),('fb2155e5-d691-11ee-949d-b0227ad7f7cf','Alimentos'),('fb215611-d691-11ee-949d-b0227ad7f7cf','Belleza'),('fb21563d-d691-11ee-949d-b0227ad7f7cf','Salud'),('fb2157e5-d691-11ee-949d-b0227ad7f7cf','Música');
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_inventarios`
--

DROP TABLE IF EXISTS `tb_inventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_inventarios` (
  `id_inventario` varchar(36) NOT NULL DEFAULT uuid(),
  `id_producto` varchar(36) NOT NULL,
  `cantidad_disponible` int(11) NOT NULL,
  `fecha_ingreso` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id_inventario`),
  KEY `fk_id_producto` (`id_producto`),
  CONSTRAINT `fk_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_inventarios`
--

LOCK TABLES `tb_inventarios` WRITE;
/*!40000 ALTER TABLE `tb_inventarios` DISABLE KEYS */;
INSERT INTO `tb_inventarios` VALUES ('9a8957d6-d697-11ee-949d-b0227ad7f7cf','3ee7f813-d694-11ee-949d-b0227ad7f7cf',10,'2024-02-28 18:15:11'),('9a898998-d697-11ee-949d-b0227ad7f7cf','3ee82f57-d694-11ee-949d-b0227ad7f7cf',20,'2024-02-28 18:15:11'),('9a898ab9-d697-11ee-949d-b0227ad7f7cf','3ee830b6-d694-11ee-949d-b0227ad7f7cf',5,'2024-02-28 18:15:11'),('9a898b2e-d697-11ee-949d-b0227ad7f7cf','3ee831c6-d694-11ee-949d-b0227ad7f7cf',15,'2024-02-28 18:15:11'),('9a898b9b-d697-11ee-949d-b0227ad7f7cf','3ee89397-d694-11ee-949d-b0227ad7f7cf',25,'2024-02-28 18:15:11'),('9a898bfe-d697-11ee-949d-b0227ad7f7cf','3ee894ac-d694-11ee-949d-b0227ad7f7cf',30,'2024-02-28 18:15:11'),('9a898c9e-d697-11ee-949d-b0227ad7f7cf','3ee89564-d694-11ee-949d-b0227ad7f7cf',100,'2024-02-28 18:15:11'),('9a898d1e-d697-11ee-949d-b0227ad7f7cf','3ee8961c-d694-11ee-949d-b0227ad7f7cf',50,'2024-02-28 18:15:11'),('9a898e21-d697-11ee-949d-b0227ad7f7cf','3ee89771-d694-11ee-949d-b0227ad7f7cf',20,'2024-02-28 18:15:11'),('9a89ec36-d697-11ee-949d-b0227ad7f7cf','3ee8982c-d694-11ee-949d-b0227ad7f7cf',15,'2024-02-28 18:15:11');
/*!40000 ALTER TABLE `tb_inventarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualiza_cantidad_disponible AFTER INSERT ON tb_inventarios FOR EACH ROW
BEGIN
  DECLARE total INT;
  SET total = (SELECT SUM(cantidad_disponible) FROM tb_inventarios WHERE id_producto = NEW.id_producto);
  UPDATE tb_productos SET cantidad_disponible = total WHERE id_producto = NEW.id_producto;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_movimientos_inventarios`
--

DROP TABLE IF EXISTS `tb_movimientos_inventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_movimientos_inventarios` (
  `id_movimiento_inventario` varchar(36) NOT NULL DEFAULT uuid(),
  `id_inventario` varchar(36) NOT NULL,
  `tipo_movimiento` enum('Entrada','Salida') NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_movimiento` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id_movimiento_inventario`),
  KEY `fk_id_inventario` (`id_inventario`),
  CONSTRAINT `fk_id_inventario` FOREIGN KEY (`id_inventario`) REFERENCES `tb_inventarios` (`id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientos_inventarios`
--

LOCK TABLES `tb_movimientos_inventarios` WRITE;
/*!40000 ALTER TABLE `tb_movimientos_inventarios` DISABLE KEYS */;
INSERT INTO `tb_movimientos_inventarios` VALUES ('e046a84e-d697-11ee-949d-b0227ad7f7cf','9a8957d6-d697-11ee-949d-b0227ad7f7cf','Entrada',5,'2024-02-28 18:17:08'),('e046dc1e-d697-11ee-949d-b0227ad7f7cf','9a898998-d697-11ee-949d-b0227ad7f7cf','Salida',3,'2024-02-28 18:17:08'),('e046dd18-d697-11ee-949d-b0227ad7f7cf','9a898ab9-d697-11ee-949d-b0227ad7f7cf','Entrada',10,'2024-02-28 18:17:08'),('e046dd8c-d697-11ee-949d-b0227ad7f7cf','9a898b2e-d697-11ee-949d-b0227ad7f7cf','Salida',2,'2024-02-28 18:17:08'),('e046ddfd-d697-11ee-949d-b0227ad7f7cf','9a898b9b-d697-11ee-949d-b0227ad7f7cf','Entrada',15,'2024-02-28 18:17:08'),('e046de6a-d697-11ee-949d-b0227ad7f7cf','9a898bfe-d697-11ee-949d-b0227ad7f7cf','Salida',1,'2024-02-28 18:17:08'),('e046df1d-d697-11ee-949d-b0227ad7f7cf','9a898c9e-d697-11ee-949d-b0227ad7f7cf','Entrada',20,'2024-02-28 18:17:08'),('e046df9c-d697-11ee-949d-b0227ad7f7cf','9a898d1e-d697-11ee-949d-b0227ad7f7cf','Salida',4,'2024-02-28 18:17:08'),('e046e009-d697-11ee-949d-b0227ad7f7cf','9a898e21-d697-11ee-949d-b0227ad7f7cf','Entrada',25,'2024-02-28 18:17:08'),('e046e074-d697-11ee-949d-b0227ad7f7cf','9a89ec36-d697-11ee-949d-b0227ad7f7cf','Salida',5,'2024-02-28 18:17:08');
/*!40000 ALTER TABLE `tb_movimientos_inventarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productos` (
  `id_producto` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion_producto` varchar(255) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `id_categoria` varchar(36) NOT NULL,
  `id_proveedor` varchar(36) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_id_categoria` (`id_categoria`),
  KEY `fk_id_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categorias` (`id_categoria`),
  CONSTRAINT `fk_id_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `tb_proveedores` (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` VALUES ('3ee7f813-d694-11ee-949d-b0227ad7f7cf','Smartphone X','Smartphone de última generación con cámara de 108MP',1000.00,'fb212bdf-d691-11ee-949d-b0227ad7f7cf','fd54646f-d691-11ee-949d-b0227ad7f7cf'),('3ee82f57-d694-11ee-949d-b0227ad7f7cf','Camisa casual','Camisa de algodón para hombre',25.00,'fb21546d-d691-11ee-949d-b0227ad7f7cf','fd5477a5-d691-11ee-949d-b0227ad7f7cf'),('3ee830b6-d694-11ee-949d-b0227ad7f7cf','Juego de sábanas','Juego de sábanas de algodón tamaño queen',50.00,'fb215527-d691-11ee-949d-b0227ad7f7cf','fd547861-d691-11ee-949d-b0227ad7f7cf'),('3ee831c6-d694-11ee-949d-b0227ad7f7cf','Balón de fútbol','Balón de fútbol profesional talla 5',30.00,'fb215527-d691-11ee-949d-b0227ad7f7cf','fd547898-d691-11ee-949d-b0227ad7f7cf'),('3ee89397-d694-11ee-949d-b0227ad7f7cf','Muñeca de trapo','Muñeca de trapo con vestido de flores',20.00,'fb21555d-d691-11ee-949d-b0227ad7f7cf','fd5478c5-d691-11ee-949d-b0227ad7f7cf'),('3ee894ac-d694-11ee-949d-b0227ad7f7cf','Libro de Harry Potter','Libro de Harry Potter y la piedra filosofal',20.00,'fb21558e-d691-11ee-949d-b0227ad7f7cf','fd5478f2-d691-11ee-949d-b0227ad7f7cf'),('3ee89564-d694-11ee-949d-b0227ad7f7cf','Leche descremada','Leche descremada de 1 litro',2.50,'fb2155bb-d691-11ee-949d-b0227ad7f7cf','fd547924-d691-11ee-949d-b0227ad7f7cf'),('3ee8961c-d694-11ee-949d-b0227ad7f7cf','Crema facial hidratante','Crema facial hidratante para todo tipo de piel',15.00,'fb2155e5-d691-11ee-949d-b0227ad7f7cf','fd547951-d691-11ee-949d-b0227ad7f7cf'),('3ee89771-d694-11ee-949d-b0227ad7f7cf','Vitamina C','Vitamina C en cápsulas de 1000mg',10.00,'fb215611-d691-11ee-949d-b0227ad7f7cf','fd54798d-d691-11ee-949d-b0227ad7f7cf'),('3ee8982c-d694-11ee-949d-b0227ad7f7cf','Audífonos inalámbricos','Audífonos inalámbricos con Bluetooth',50.00,'fb2157e5-d691-11ee-949d-b0227ad7f7cf','fd5479ba-d691-11ee-949d-b0227ad7f7cf');
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_proveedores`
--

DROP TABLE IF EXISTS `tb_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_proveedores` (
  `id_proveedor` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre_proveedor` varchar(50) NOT NULL,
  `direccion_proveedor` varchar(50) NOT NULL,
  `telefono_proveedor` varchar(10) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_proveedores`
--

LOCK TABLES `tb_proveedores` WRITE;
/*!40000 ALTER TABLE `tb_proveedores` DISABLE KEYS */;
INSERT INTO `tb_proveedores` VALUES ('fd54646f-d691-11ee-949d-b0227ad7f7cf','TecnoShop','Calle del Sol 123','1234-5678'),('fd5477a5-d691-11ee-949d-b0227ad7f7cf','RopaMax','Avenida Central 456','2345-6789'),('fd547861-d691-11ee-949d-b0227ad7f7cf','HogarFeliz','Calle Mayor 789','3456-7890'),('fd547898-d691-11ee-949d-b0227ad7f7cf','DeportesTotal','Callejón Deportivo 1011','4567-8901'),('fd5478c5-d691-11ee-949d-b0227ad7f7cf','Juguetería Divertida','Calle de la Alegría 1213','5678-9012'),('fd5478f2-d691-11ee-949d-b0227ad7f7cf','Librería El Pensador','Calle del Saber 1415','6789-0123'),('fd547924-d691-11ee-949d-b0227ad7f7cf','Supermercado El Granero','Calle de la Abundancia 1617','7890-1234'),('fd547951-d691-11ee-949d-b0227ad7f7cf','Belleza Natural','Calle de la Armonía 1819','8901-2345'),('fd54798d-d691-11ee-949d-b0227ad7f7cf','Farmacia Saludable','Calle del Bienestar 2021','9012-3456'),('fd5479ba-d691-11ee-949d-b0227ad7f7cf','Música y Sonido','Calle de la Melodía 2223','0123-4567');
/*!40000 ALTER TABLE `tb_proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 19:23:31
