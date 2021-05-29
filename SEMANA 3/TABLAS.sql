

CREATE TABLE direcciones(
id_direccion int NOT NULL PRIMARY KEY AUTO_INCREMENT,
calle VARCHAR(100) NOT NULL,
colonia VARCHAR(100) NOT NULL,
cp VARCHAR(50) NOT NULL,
estado VARCHAR(50) NOT NULL,
municipio VARCHAR(50) NOT NULL,
pais VARCHAR(50) NOT NULL,
fecha_actualizacion TIMESTAMP NOT null
)ENGINE=INNODB;

CREATE TABLE clientes(
id_cliente int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
fecha_actualizacion TIMESTAMP NOT NULL,
id_direccion int NOT NULL,
FOREIGN KEY (id_direccion) REFERENCES direcciones(id_direccion)
)ENGINE=INNODB;