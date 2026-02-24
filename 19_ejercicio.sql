-- Ejercicio 19
-- Producto más vendido en cantidad (unidades)

SELECT p.nombre, SUM(dv.cantidad) AS total_unidades_vendidas
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY dv.id_producto
ORDER BY total_unidades_vendidas DESC
LIMIT 1;