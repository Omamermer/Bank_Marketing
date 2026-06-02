-- Consulta 2: Éxito de la campaña según el perfil laboral y nivel de estudios
-- ¿A qué tipo de profesionales les interesa más este producto financiero? Esto ayuda al banco a no perder tiempo llamando a perfiles equivocados.

SELECT 
	b.job AS Puesto_de_trabajo,
	b.education AS nivel_estudios,
	COUNT(*) AS Total_contactos,
	SUM(CASE WHEN deposit = "yes" THEN 1 ELSE 0 END) AS Exitos,
	ROUND((SUM(CASE WHEN deposit = "yes" THEN 1 ELSE 0 END) / COUNT(*)) * 100,2) AS Tasa_Exito_Perfil
FROM bank_marketing b
GROUP BY b.job, b.education
HAVING total_contactos >50
ORDER BY tasa_exito_Perfil DESC 