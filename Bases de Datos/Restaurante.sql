Create Table Cliente 
(
IdCliente INT PRIMARY KEY auto_increment,
TipoDeDocumento VARCHAR(50) NOT NULL,
NombreCliente VARCHAR(150) NOT NULL,
Direccion VARCHAR(150) NOT NULL,
Telefono NUMERIC(10,0)
);
