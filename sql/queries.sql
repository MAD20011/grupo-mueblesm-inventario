
-- CONSULTAS DE EJEMPLO PARA REPORTES

-- 1. Ventas totales por país
SELECT pais, SUM(cantidad * precio) AS total_ventas
FROM ventas
GROUP BY pais;

-- 2. Productos más vendidos por país
SELECT pais, nombre_producto, SUM(cantidad) AS total_vendido
FROM ventas
GROUP BY pais, nombre_producto
ORDER BY total_vendido DESC;

-- 3. Stock total por país y almacén
SELECT pais, almacen, SUM(stock) AS total_stock
FROM inventario
GROUP BY pais, almacen;

-- 4. Relación ventas vs inventario por producto
SELECT 
    v.id_producto,
    v.nombre_producto,
    SUM(v.cantidad) AS ventas_totales,
    i.stock AS inventario_disponible
FROM ventas v
JOIN inventario i ON v.id_producto = i.id_producto AND v.pais = i.pais
GROUP BY v.id_producto, v.nombre_producto, i.stock;
