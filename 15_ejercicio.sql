-- Ejercicio 15
-- ¿Cuál es el accesorio más barato disponible?

SELECT nombre, precio
FROM productos
WHERE categoria = 'Accesorios'
AND precio = (
    SELECT MIN(precio)
    FROM productos
    WHERE categoria = 'Accesorios'
);