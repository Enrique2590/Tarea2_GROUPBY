Utilizando la base de datos dvdrental en PostgreSQL correspondiente a la base de un negocio de rentas de peliculas para el cual se comparten las siguientes consultas:

1. ¿Hay clientes que hicieron más de una renta en un solo día? Si es así, ¿quiénes son y cuántas rentas registraron en qué días?
2. ¿Cuántas transacciones de renta se registraron en total por mes y país del cliente?
3. ¿Cuál es el monto total pagado, desagregado por año-mes (de pago), empleado que registró el pago y sucursal a la que pertenece? Las columnas del resultado son “Año-Mes”, “Código de Empleado” (que sería la llave primaria de la tabla Staff), “Nombre Completo del Empleado”, “Ciudad de la Sucursal” y “Monto Total Pagado”.
4. Se muestra el número total de rentas registradas por mes. Incluida también en el mismo resultado el monto total pagado que corresponde a las rentas de cada línea del resultado.
