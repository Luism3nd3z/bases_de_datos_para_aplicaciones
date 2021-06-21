USE tienda_acme;
CREATE TABLE clientes(
id_cliente int NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(30) NOT NULL,
email VARCHAR(100) NOT NULL,
fecha_actualizacion TIMESTAMP NOT NULL
)ENGINE=INNODB;

CREATE TABLE productos(
id_producto int NOT NULL PRIMARY KEY,
nombre_producto VARCHAR(50) NOT NULL,
descripcion VARCHAR(4000) NOT NULL,
precio_unitario float NOT NULL,
existencias int NOT NULL
)ENGINE=INNODB;

CREATE TABLE ventas(
id_venta int NOT NULL PRIMARY KEY,
fecha_venta TIMESTAMP,
total_venta VARCHAR(50),
id_cliente INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=INNODB;

CREATE TABLE  detalle_ventas(
id_detalle_venta INT NOT NULL PRIMARY KEY,
cantidad_producto VARCHAR(50) NOT NULL,
precio VARCHAR(50) NOT NULL,
total_x_producto  float GENERATED ALWAYS AS (cantidad_producto * precio),
id_venta INT NOT NULL,
id_producto int NOT NULL,
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto) 
)ENGINE=INNODB;





INSERT INTO productos
 VALUES(1,"computadora","windows","7903",2),
(2,"teclado","translucido","1040",5),
(3,"mouse","negro","8130",9);


INSERT INTO clientes
  VALUES (1,"Luis","Contreras","Mendez","7758320481 ","MEndez@Angel.com"," 2020-04-21 07-31-52"),
  (2,"laura","tenorio","garcia"," 7759320192 ","mattis.ornare.lectus@tincidunttempus.net"," 2021-07-15 14-50-08 "),
  (3,"hugo","sanchez","Perez"," 7759302740 ","sit@diamnunc.ca","2021-05-12 17-25-13 ");
  

INSERT INTO ventas
 VALUES (1,"2021-08-11 17-21-12",123,1),
(2,"2021-08-11 17-35-11",817,1),
(3,"2020-04-20 09-32-18",726,2),
(4,"2020-04-20 08-32-18",281,1),
(5,"2020-04-20 06-32-18",456,3),
(6,"2020-04-20 06-32-18",741,2),
(7,"2020-04-20 06-32-18",456,1),
(8,"2020-04-20 12-32-18",741,3),
(9,"2020-04-20 11-32-18",852,1),
(10,"2020-04-20 01-32-18",789,2);



















