DROP DATABASE BaSingSe;
CREATE database BaSingSe;
USE BaSingSe;

Create Table Cliente 
(
IdCliente INT PRIMARY KEY auto_increment,
TipoDeDocumento VARCHAR(50) NOT NULL,
NombreCliente VARCHAR(150) NOT NULL,
Direccion VARCHAR(150) NOT NULL,
Telefono NUMERIC(10,0)
);

Create Table Categoria
(
IdCategoria INT PRIMARY KEY auto_increment,
Pais VARCHAR(100) NOT NULL,
Promocion VARCHAR(100) NOT NULL,
Descuento DECIMAL (20,3) NOT NULL
);

Create table TipoProducto
(
IdTipoProducto INT PRIMARY KEY auto_increment,
NombreProducto VARCHAR(50) NOT NULL,
Descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE Inventario
(
IdInventario INT PRIMARY KEY NOT NULL auto_increment,
Lote VARCHAR(100) NOT NULL,
FechaDeIngreso DATETIME NOT NULL,
Cantidad INT NOT NULL,
PrecioCompra DOUBLE NOT NULL,
FechaDeVencimiento DATE NOT NULL
);

CREATE TABLE Proveedores
(
IdProveedores INT PRIMARY KEY auto_increment,
NombreProveedores VARCHAR(100) NOT NULL,
TelefonoProveedores VARCHAR(50) NOT NULL,
Direccion VARCHAR(100) NOT NULL,
Flete DOUBLE NOT NULL
);

CREATE TABLE Plato
(
IdPlato INT PRIMARY KEY auto_increment,
NombrePlato VARCHAR(100) NOT NULL,
Precio DOUBLE NOT NULL,
IdTipoProducto INT,
IdCategoria INT,
IdInventario INT,
foreign key (IdTipoProducto) references TipoProducto(IdTipoProducto),
foreign key (IdCategoria) references Categoria(IdCategoria),
foreign key (IdInventario) references Inventario (IdInventario)
);

CREATE TABLE Factura
(
IdFactura INT PRIMARY KEY auto_increment,
Fecha DATETIME NOT NULL,
CantidadDeProductos INT NOT NULL,
CostoPorProducto DOUBLE NOT NULL,
CostoTotal DOUBLE NOT NULL,
IdPlato INT,
IdCliente INT,
foreign key (IdPlato) references Plato(IdPlato),
foreign key (IdCliente) references Cliente(IdCliente)
);

CREATE TABLE InventarioDeProveedor
(
IdInventarioDeProveedor INT PRIMARY KEY auto_increment,
IdInventario INT,
IdProveedores INT,
foreign key (IdInventario) references Inventario(IdInventario),
foreign key (IdProveedores) references Proveedores(IdProveedores)
);








