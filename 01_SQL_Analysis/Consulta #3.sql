-- Consulta 3: El impacto de tener deudas (Hipoteca o Préstamo) en la decisión
-- Queremos comprobar si los clientes que ya tienen una hipoteca (housing) o un préstamo personal (loan) están menos dispuestos a abrir un depósito a plazo fijo.

SELECT
	housing AS tiene_hipoteca,
	loan AS tiene_prestaamo,
	COUNT(*) AS total_contactos,
	ROUND((SUM(CASE WHEN b.deposit = "yes" THEN 1 ELSE 0 END) / COUNT(*)) * 100,2) AS Tasa_conversion
FROM bank_marketing b
GROUP BY housing, loan
ORDER BY Tasa_conversion DESC;