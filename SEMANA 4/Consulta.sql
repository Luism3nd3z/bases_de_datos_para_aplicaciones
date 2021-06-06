
USE tienda_acme;
CREATE TABLE proveedores(
id_proveedor int NOT NULL PRIMARY KEY AUTO_INCREMENT,
proveedor VARCHAR(100) NOT NULL,
nombre_contacto VARCHAR(100) NOT NULL,
telefono_contacto VARCHAR(50) NOT NULL,
email_contacto  VARCHAR(50) NOT NULL,
fecha_actualizacion TIMESTAMP NOT null
)ENGINE=INNODB;

CREATE TABLE direcciones_proveedores (
id_direccion int NOT NULL PRIMARY KEY AUTO_INCREMENT,
calle VARCHAR(100) NOT NULL,
colonia VARCHAR(100) NOT NULL,
cp VARCHAR(50) NOT NULL,
municipio VARCHAR(50) NOT NULL,
pais VARCHAR(50) NOT NULL,
no_exterior VARCHAR(50) NOT NULL,
no_interior  VARCHAR(50) NOT NULL,
fecha_actualizacion TIMESTAMP NOT NULL,
id_proveedor  int NOT NULL,
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
)ENGINE=INNODB;
