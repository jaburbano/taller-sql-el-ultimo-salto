-- Ejercicio 25
-- Cliente que compró la mayor variedad de productos diferentes

SELECT 
    c.nombre,
    COUNT(DISTINCT dv.id_producto) AS variedad_productos
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
GROUP BY c.id_cliente
ORDER BY variedad_productos DESC
LIMIT 1;