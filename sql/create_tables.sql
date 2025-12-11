-- SQL para crear tablas en SAP HANA Cloud

 INVENTARIO Y VENTAS

CREATE TABLE ventas (
    id_venta INTEGER,
    fecha DATE,
    pais NVARCHAR(10),
    almacen NVARCHAR(30),
    id_producto INTEGER,
    nombre_producto NVARCHAR(100),
    cantidad INTEGER,
    precio DECIMAL(10,2)
);

CREATE TABLE inventario (
    id_inventario INTEGER,
    fecha DATE,
    pais NVARCHAR(10),
    almacen NVARCHAR(30),
    id_producto INTEGER,
    stock INTEGER
);
