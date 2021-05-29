
SELECT * FROM clientes;

SELECT clientes.nombre, clientes.primer_apellido, clientes.segundo_apellido, clientes.email, direcciones.calle, direcciones.cp
FROM clientes, direcciones
WHERE clientes.id_direccion = direcciones.id_direccion;

CREATE VIEW clientes_direcciones AS 
SELECT clientes.nombre, clientes.primer_apellido, clientes.segundo_apellido, clientes.email, direcciones.calle, direcciones.cp
FROM clientes,direcciones
WHERE clientes.id_direccion = direcciones.id_direccion;



