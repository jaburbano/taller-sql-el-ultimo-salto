-- Ejercicio 10
-- Muestra todos los clientes de género "F"
-- ordenados por fecha de nacimiento (más viejitas primero)

SELECT nombre, correo, fecha_nacimiento
FROM clientes
WHERE genero = 'F'
ORDER BY fecha_nacimiento ASC;