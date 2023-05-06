Use BaSingSe;

Insert into Cliente (TipoDeDocumento, NombreCliente, Direccion,Telefono)
SELECT 'Cedula de ciudadania', 'Juan David Rodriguez Gonzales', 'Carrera 18a #4-17 sur', 3114563291 UNION ALL
SELECT 'Pasaporte', 'Daniela Malaver Neira', 'Calle 6 sur #23-44', 3214392564 UNION ALL
SELECT 'Tarjeta de Identidad','Juan Jose Pelaez Rojas','Carrera 136 #45-32',3012437954 UNION ALL
SELECT 'Cedula de ciudadania','Jose Alejandro Arevalo Parga','Carrera 45 #132-23',3012415900 UNION ALL
SELECT 'Tarjeta de Identidad','Maria Jose Ramirez Arevalo','Carrera 17a #34c-32 sur',3004618071 UNION ALL
SELECT 'Cedula de ciudadania','Mateo Alfonos Barragan','Carrera 14 #1c-67',3023324561 UNION ALL
SELECT 'Cedula de ciudadania','Marianela Rodriguez Lozano','Carrera 22 #3-46 sur', 3114653219 UNION ALL
SELECT 'Cedula de ciudadania','Catalina Blanco Velasco','Diagonal 36 sur #25-61', 3045264884 UNION ALL
SELECT 'Cedula de ciudadania','Beatriz Eugenia Gomez Giraldo','Carrera 18 #6-27 sur', 3118362190 UNION ALL
SELECT 'Cedula de extranjeria','Manuel Alberto Ramirez Valencia','Carrera 10 #59-45', 3115962192;
Select*from Cliente;

INSERT INTO Categoria (Pais,Promocion,Descuento)
SELECT 'Japon','2x1 en todas las bebidas', 0.5 UNION ALL
SELECT 'China','Invita a tu pareja y recibe el 20% de descuento',0.2 UNION ALL
SELECT 'Taiwan','Trae a tu familia y recibe un descuento de 10% en todos los postres',0.1 UNION ALL
SELECT 'China','3x2 en cajas de arroz chino',0.25 UNION ALL
SELECT 'Bangladesh','2x1 en cocteles un viernes al mes', 0.5 UNION ALL
SELECT 'Japon','Pide un ramen en Japones y recibe 5% de descuento', 0.05 UNION ALL
SELECT 'Hong Kong','Ven disfrazado en Halloweeen y recibe 2x1 en bebidas alcoholicas (solo mayores de edad)',0.5 UNION ALL
SELECT 'China','All you can eat un domingo al mes',0.4 UNION ALL
SELECT 'Corea','Pide un Bingsu en coreano y recibe 15% de descuento',0.15 UNION ALL
SELECT 'Japon','Bandeja de rollo de Sushi en promocion',0.3 ;
Select*from Categoria;

INSERT INTO TipoProducto (NombreProducto, Descripcion)
SELECT 'Sake','Bebida' UNION ALL
SELECT 'Pollo Bong bao','Plato fuerte' UNION ALL
SELECT 'Douhua','Postre' UNION ALL
SELECT 'Arroz chino','Plato fuerte' UNION ALL
SELECT 'Negreni','Coctel' UNION ALL
SELECT 'Ramen','Entrada' UNION ALL
SELECT 'Foko','Bebida alcoholica'UNION ALL
SELECT 'Jiaozi','PLato fuerte' UNION ALL
SELECT 'Bingsu','Postre' UNION ALL
SELECT 'Rollos de Sushi','Plato fuerte';
Select*from TipoProducto;

Insert into Inventario (Lote, FechaDeIngreso, Cantidad, PrecioCompra, FechaDeVencimiento)
SELECT 100,'2023-04-01 6:00:00',1, 1857900, '2024-05-01' UNION ALL
SELECT 101,'2023-04-01 6:23:00',5,356000,'2025-04-30' UNION ALL
SELECT 102,'2023-04-03 5:00:00',4,876400,'2023-10-31' UNION ALL
SELECT 103,'2023-04-03 18:05:00',7,969900,'2023-11-14' UNION ALL
SELECT 104,'2023-04-04 4:35:00',10,1346900,'2026-01-21' UNION ALL
SELECT 105,'2023-04-04 8:00:00',80,1800000,'2023-06-18' UNION ALL
SELECT 106,'2023-04-06 5:30:00',10,3956000,'2023-09-12' UNION ALL
SELECT 107,'2023-04-06 9:00:00',4,734500,'2024-04-11' UNION ALL
SELECT 108,'2023-04-10 4:50:00',12,1430900,'2024-04-26' UNION ALL
SELECT 109,'2023-04-11 13:40:00',43,5578000,'2023-07-30';
SELECT*FROM Inventario;

INSERT INTO Proveedores (NombreProveedores, TelefonoProveedores, Direccion, Flete)
SELECT 'Best choice',3248351290,'Calle 10 # 5-51', 34000 UNION ALL
SELECT 'Oriental market',3012853976,'Calle 16 # 3-28',20000 UNION ALL
SELECT 'Pacific',3025641978,'Calle 53 No 10-60',50000 UNION ALL
SELECT 'Global gourmet',3220965417,'Avenida Calle 26 No 59-51',15000 UNION ALL
SELECT 'Hakuzai',3041563298,'Calle 19 # 80A-40',18000 UNION ALL
SELECT 'Yasai',3271496787,'Carrera  21 # 17 -63',44000 UNION ALL
SELECT 'Delica',3116351946,'Avenida 3 norte # 50N-20',35000 UNION ALL
SELECT 'Makro',3005647128,'Carrera 11 # 41-13',25000 UNION ALL
SELECT 'Jetro',3024726389,'Avenida 1 # 28-57',54000 UNION ALL
SELECT 'Jumbo',3096544329,'Calle 22 # 13 – A 88',18000 UNION ALL
SELECT 'Ancla y viento',3546271887,'Calle 5 # 4-48',25000;
Select*from Proveedores;

INSERT INTO Plato (NombrePlato, Precio, IdTipoProducto, IdCategoria, IdInventario)
SELECT 'BaSingSake',18000,1,1,3 UNION ALL
SELECT 'Bong Boom',30000,2,2,4 UNION ALL
SELECT 'Dou',22000,3,3,5 UNION ALL
SELECT 'Arroz BaSing',24000,4,4,10 UNION ALL
SELECT 'Arroz Ba Sing Familiar',70000,4,4,10 UNION ALL
SELECT 'Ba Sing Ramen',23000,6,6,3 UNION ALL
SELECT 'Ba Foko',18000,7,8,5 UNION ALL
SELECT 'Ba Jianozi',23000,8,8,3 UNION ALL
SELECT 'Ba Bingsu',19000,9,9,1 UNION ALL
SELECT 'Ba Sushi Rollo',25000,10,10,9 UNION ALL
SELECT 'Ba Sushi Rollo familiar',90000,10,10,6;
Select*From Plato;

INSERT INTO Factura (Fecha, IdPlato, CantidadDeProductos, CostoPorProducto, CostoTotal, IdCliente)
SELECT '2023-04-12 12:00:00',2,1,30000,30000,5 UNION ALL
SELECT '2023-04-12 13:00:00',3,2,22000,44000,3 UNION ALL
SELECT '2023-04-13 12:21:00',11,2,90000,180000,5 UNION ALL
SELECT '2023-04-13 13:45:00',6,3,23000,69000,9 UNION ALL
SELECT '2023-04-13 14:36:00',7,1,18000,18000,7 UNION ALL
SELECT '2023-04-13 14:36:00',10,1,25000,25000,7 UNION ALL
SELECT '2023-04-14 11:50:00',9,2,19000,38000,1;
SELECT*FROM FACTURA;

INSERT INTO InventarioDeProveedor (IdInventario, IdProveedores)
SELECT 3,4 UNION ALL
SELECT 8,4 UNION ALL
SELECT 3,7 UNION ALL
SELECT 1,9 UNION ALL
SELECT 2,5 UNION ALL
SELECT 3,8 UNION ALL
SELECT 1,4 UNION ALL
SELECT 2,7;
SELECT*FROM InventarioDeProveedor;
