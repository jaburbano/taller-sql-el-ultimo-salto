-- Ejercicio 20
-- Ingreso total, unidades vendidas y ticket promedio por categoría

SELECT 
    p.categoria,
    SUM(dv.cantidad * dv.precio_unitario) AS ingreso_total,
    SUM(dv.cantidad) AS unidades_vendidas,
    AVG(dv.precio_unitario * dv.cantidad) AS ticket_promedio
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY p.categoria;