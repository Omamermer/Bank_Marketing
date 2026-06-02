-- Consulta 1: Tasa de conversión global y volumen captado
-- Queremos saber qué porcentaje de clientes totales dijeron que "SÍ" al depósito y cuánto dinero suman sus balances (potencial dinero captado por el banco)

SELECT
	COUNT(*) AS Total_Clientes_Contactados,
	SUM(CASE WHEN deposit = "yes" THEN 1 ELSE 0 END) AS Clientes_Ganados,
	ROUND((SUM(CASE WHEN deposit = "yes" THEN 1 ELSE 0 END) / COUNT(*)) * 100,2) AS Tasa_Conversion_Global,
	SUM(CASE WHEN  deposit = "yes" THEN balance ELSE 0 END) AS Balance_Total_Captado
FROM bank_marketing b