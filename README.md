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

El modelo logico nos permite definir las claves principales junto con las foraneas para una mejor coneccion del codigo
