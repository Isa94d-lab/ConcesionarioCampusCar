-- Crear la base de datos
CREATE DATABASE ConcesionarioCampusCar;
USE ConcesionarioCampusCar;

-- Tabla Concesionario
CREATE TABLE Concesionario (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR() NOT NULL,
    Direccion VARCHAR() NOT NULL
);

-- Tabla Vendedores
CREATE TABLE Vendedores (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR() NOT NULL,
    Fecha_ingreso DATE NOT NULL,
    Tipo_transaccion ENUM('Venta', 'Mantenimiento') NOT NULL,
    Id_concesionario INTEGER,
    FOREIGN KEY (Id_concesionario) REFERENCES Concesionario(Id)
);

-- Tabla Clientes
CREATE TABLE Clientes (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR() NOT NULL,
    Telefono VARCHAR(),
    Email VARCHAR(),
    Direccion VARCHAR()
);

-- Tabla Venta
CREATE TABLE Venta (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Id_vendedor INTEGER,
    Id_cliente INTEGER,
    Fecha DATE NOT NULL,
    FOREIGN KEY (Id_vendedor) REFERENCES Vendedores(Id),
    FOREIGN KEY (Id_cliente) REFERENCES Clientes(Id)
);

-- Tabla Vehiculos
CREATE TABLE Vehiculos (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Marca VARCHAR() NOT NULL,
    Modelo VARCHAR() NOT NULL,
    Year INTEGER NOT NULL,
    VIN VARCHAR() UNIQUE NOT NULL,
    Precio DECIMAL() NOT NULL,
    Color VARCHAR(),
    Tipo_combustible ENUM('Gasolina', 'Diesel', 'Electrico') NOT NULL,
    Estado ENUM('Nuevo', 'Usado') NOT NULL,
    Disponibilidad ENUM('Disponible', 'Vendido') NOT NULL
);

-- Tabla DetalleVenta
CREATE TABLE DetalleVenta (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Id_venta INTEGER,
    Id_vehiculo INTEGER,
    Tipo_pago ENUM('Efectivo', 'Tarjeta', 'Transferencia') NOT NULL,
    Total_pagar DECIMAL() NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (Id_venta) REFERENCES Venta(Id),
    FOREIGN KEY (Id_vehiculo) REFERENCES Vehiculos(Id)
);

-- Tabla Mantenimiento
CREATE TABLE Mantenimiento (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Id_vehiculo INTEGER,
    FOREIGN KEY (Id_vehiculo) REFERENCES Vehiculos(Id)
);

-- Tabla DetalleMantenimiento
CREATE TABLE DetalleMantenimiento (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Id_mantenimiento INTEGER,
    Id_servicios INTEGER,
    Cantidad INTEGER NOT NULL,
    Subtotal DECIMAL() NOT NULL,
    FOREIGN KEY (Id_mantenimiento) REFERENCES Mantenimiento(Id),
    FOREIGN KEY (Id_servicios) REFERENCES Servicios(Id)
);

-- Tabla Servicios
CREATE TABLE Servicios (
    Id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR() NOT NULL,
    Descripcion VARCHAR(),
    Precio DECIMAL() NOT NULL,
    Duracion INTEGER NOT NULL
);