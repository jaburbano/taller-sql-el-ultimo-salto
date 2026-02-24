-- Ejercicio 21
-- Clientes que han usado el cupón "ULTIMO_SUSPIRO" al menos 3 veces

SELECT 
    c.nombre,
    COUNT(*) AS veces_usado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE v.cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY c.id_cliente
HAVING COUNT(*) >= 3;