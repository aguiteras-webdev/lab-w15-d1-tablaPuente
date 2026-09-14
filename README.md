tabla-puente
Es posible, y muchas veces necesario, crear una tabla-puente que nos permita registrar una relación entre tablas. Un ejemplo típico sería la relación entre un cliente y los productos que compra. ¿Cómo evitamos que cuando vuelva a comprar se mezclen losprductos antiguos comprados con los nuevos? ¿Cómo podemos mantener un registro de lo que ha comprado cada vez? La solución sería crear una tabla-puente, la tabla pedidos. Un cliente puede tener muchos pedidos, y cada pedido puede contener diversos productos. Por tanto, pedidos contiene una clave foránea que se conecta con la clave primaria de clientes. Y, al mismo tiempo, la clave foránea de productos se conecta con la clave primaria de pedidos.

*** exportar/ importar BD También vemos cómo exportar o importar BD y/o su código generativo.

LABS 1- Desde cero, genera tres tablas para el podcast: usuario, descargas, podcast. Puedes generarlas desde el modelo visual EER o desde el interface habitual de WorkBench. La tabla de descargas debe guardar su momento de descarga como dato. (current_timestamp) Cómo las relacionas? Inserta registros en todas las tablas. Qué problemas encuentras? Luego, prueba a hacer consultas multi-tabla, del tipo: qué podcast se ha descargado tal cliente? Puede hacerse en grupo. Tened paciencia y realizad pruebas de ensayo y error. Al final todo sale  ;-)

2- EXTRA: *** exportar/ importar BD: TABLA EMPLEADOS (1) - discoduroderoer

Ves­ a la web: https://www.discoduroderoer.es/ejercicios-propuestos-y-resueltos-de-consultas-mysql-empleados-y-departamentos/
importa a workbench en primer lugar la base de datos propuesta, en este enlace: https://github.com/DiscoDurodeRoer/scripts-bd/blob/master/mysql/empleados_departamentos/empleados_departamentos_mysql.sql (también puedes hacer copiar y pegar el texto sql directamente en la parte SQL Queries). Cuando veas que funciona, realiza los siguientes ejercicios (hay soluciones en la web):
seguidos: del 1 al 18
sueltos: 24,25, 27, 28, 31 NOTA: si deseas probar otros ejercicios, para seleccionar una tabla de otra base de datos, se expresa con la bd.tabla, ejemplo:  empleados.comisionE
