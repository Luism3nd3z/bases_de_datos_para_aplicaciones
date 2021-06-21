SELECT  
clientes.nombre,clientes.primer_apellido,clientes.segundo_apellido , MAX(detalle_ventas.total_x_producto)
AS maximo FROM clientes JOIN ventas ON clientes.id_cliente = ventas.id_cliente JOIN detalle_ventas ON ventas.id_venta = detalle_ventas.id_venta;



