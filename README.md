# ConcesionarioCampusCar

## Modelo Conceptual 📌

<img src="https://github.com/user-attachments/assets/96a2e75b-244f-49b1-bfb4-718dcf8d538e">

En este modelo definimos las clases que contendran los atributos en el futuro modelo logico, Se aprecian las relaciones que hay entre si...

### Concesionario -> Vehiculos
Una relacion de uno a muchos. El concesionario puede contener multiples vehiculos pero, el vehiculo no puede pertenecer a muchos conseionarios
Los vehiculos se encuenran intrensecamente ligados al concesioanrio ya que se nececita un lugar que contendra los vehiculos 
### Concesionario -> Vendedores
Una relacion de uno a muchos. EL concesionario puede tener a su cargo multiples vendedores pero los vendedores no pueden pertenecer a MULTIPLES consesionarios 
### Vendedores -> Venta
Una relacion de uno a muchos. Los vendedores pueden realizar multiples ventas pero una misma venta no puede tener muchos vendedores
### Venta -> DetalleVenta 
Una relacion de uno a muchos. Los datos de la venta pueden pertenecer al detalleVenta pero el detalleVenta no puede 
### Cliente -> Venta 
Una relacion de uno a muchos. Un cliente puede realizar varias ventas en cambio, la venta solo puede pertenecer a un cliente
### Vehiculos -> DetalleVenta
Una relacion de uno a muchos. Los vehiculos pueden pertencer a muchos detalleVenta pero un detalleVenta NO puede pertenecer a varios vehiculos ya que es exclusivo por cada uno

## Modelo Logico 📌
<img src="https://github.com/user-attachments/assets/e44a0b95-0df3-4295-9742-f50fd29cab37">

Este modelo logico muestra como se organizan los datos de la base de datos para manejar las ventas y servicios de mantenimiento de vehiculos. Aqui se definen las claves primarias para identificar cada registro y las claves foraneas que conectan las tablas entre si.

Las tablas que forman parte del modelo son:

**Clientes:** Guarda los datos de los clientes como nombre, telefono y direccion.

**Vendedores:** Almacena la info de los vendedores, su fecha de ingreso y tipo de transaccion.

**Vehiculos:** Contiene los detalles de los carros, como marca, modelo, tipo de combustible, precio y si estan disponibles.

**Venta:** Registra las compras hechas por los clientes, indicando quien vendio y que cliente compro.

**DetalleVenta:** Guarda los detalles de la venta, como el tipo de pago, la fecha y el total a pagar.

**Mantenimiento:** Permite registrar cuando un vehiculo necesita mantenimiento.

**DetalleMantenimiento:** Muestra que servicios se aplicaron al vehiculo y cuanto cuestan.

**Servicios:** Describe los servicios que se ofrecen, como plomeria, pintura o revisiones mecanicas.

## Modelo Fiscico 📌
<img src="https://github.com/user-attachments/assets/e618c7d0-fced-4a24-8955-85690e690611">

El modelo fisico establece los tipos de datos de los atributos de manera detallada

Las tablas tienen los siguientes tipos de datos:

**INTEGER:** Para guardar numeros enteros como IDs, cantidades o telefonos.

**VARCHAR:** Para textos como nombres, direcciones o descripciones.

**DATE:** Para fechas como la de ingreso o venta.

**ENUM:** Para opciones predefinidas como el tipo de pago o el tipo de combustible.

**DECIMAL:** Para precios y totales que llevan decimales.
