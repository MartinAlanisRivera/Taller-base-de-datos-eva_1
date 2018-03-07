Select *
from Ciudad;

Select*
from clientes;

Select *
from direccion;

Select *
from empleados;

Select *
from inventario;

Select *
from productos;

Select *
from proveedor ;

Select *
from ventas;

Select *
from proveedor_has_productos;

Select *
from ventas_has_clientes;

Select *
from ventas_has_clientes_has_productos;

Select no_venta,empleados_no_emepleado /* numero 4*/
from ventas;

Select no_venta,empleados_no_emepleado  /*numero 5 */
from ventas
Order by no_venta DESC;


Select p.clave_producto, p.descripcion, i.existencia, i.inv_min, i.inv_max /*numero 6 */
from inventario i, productos p
Where i.productos_clave_producto=p.clave_producto;

Select max(no_venta),clientes_no_cliente /*numero 7 */
from  ventas
Where no_venta=clientes_no_cliente;


Select max(clientes_no_cliente) /*numero 8 */
from ventas
where fecha>='2017-01-01'
and fecha<= '2017-06-01';

Select sum(v.no_venta*p.precio_vta) As Volumen_de_Ventas /*numero 9 */
from ventas v, productos p;

Select avg(no_venta) /*numero 10 */
from ventas;

Select avg(no_venta),empleados_no_emepleado /*numero 11 */
from ventas
Group by empleados_no_emepleado;

Select avg(no_venta),clientes_no_cliente /*numero 12 */
from ventas
Group by clientes_no_cliente;

Select count(*)  /*numero 13 */
from ventas
where productos_clave_producto<=3;

Select max(productos_clave_producto) /*numero 13 pero por la clave del producto */
from ventas; 

Select precio,no_proveedor /*numero 14 */
from proveedor 
Group by precio Asc;

Select i.existencia, i.inv_min,i.inv_max /*numero 15 */
from inventario i
where i.inv_max=i.inv_max;