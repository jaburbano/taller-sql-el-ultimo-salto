-- Ejercicio 2
-- Enlista todos los productos de la categoría "Paracaídas"
-- ordenados de mayor a menor precio

SELECT nombre, precio
FROM productos
WHERE categoria = 'Paracaídas'
ORDER BY precio DESC;