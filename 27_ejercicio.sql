-- Ejercicio 27
-- Diferencia entre el mes con mayor ingreso y el menor en 2025

WITH ingresos_por_mes AS (
    SELECT 
        strftime('%m', fecha_venta) AS mes,
        SUM(total_venta) AS ingreso_total
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY mes
)

SELECT 
    MAX(ingreso_total) - MIN(ingreso_total) AS diferencia_ingresos
FROM ingresos_por_mes;