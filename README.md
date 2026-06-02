# Análisis de Campañas de Marketing Bancario 📊

## 📋 Descripción del Proyecto
Este proyecto de análisis de datos tiene como objetivo evaluar y optimizar el rendimiento de las campañas de marketing directo de una entidad financiera para la captación de depósitos a plazo fijo. A través de este análisis, se identifican los perfiles de clientes más receptivos y se evalúa cómo influyen sus cargas financieras actuales en la toma de decisiones.

El proyecto simula un flujo de trabajo profesional dividido en dos fases estratégicas:
1. **Extracción y Análisis Exploratorio (EDA):** Procesamiento de datos y cálculo de métricas de negocio mediante consultas avanzadas en **SQL (MySQL / HeidiSQL)**.
2. **Modelado y Visualización Ejecutiva:** Diseño de un cuadro de mando interactivo de alto impacto utilizando **Power BI**, aplicando buenas prácticas de UI/UX y diseño orientado a la toma de decisiones.

---

## 🗄️ Fase 1: Extracción y Validación de Datos (SQL)

Antes de realizar cualquier desarrollo visual, se importó el dataset plano en una base de datos local para realizar un control de calidad y extraer los primeros *insights* directamente desde el motor de base de datos.

### 🔍 Métricas Clave Validadas:
*   **Volumen de Control:** Validación de la muestra total analizada ($11.162$ clientes) y de la tasa de conversión global de la campaña (47%).
*   --dax
*   SELECT
	COUNT(*) AS Total_Clientes_Contactados,
	SUM(CASE WHEN deposit = "yes" THEN 1 ELSE 0 END) AS Clientes_Ganados,
	ROUND((SUM(CASE WHEN deposit = "yes" THEN 1 ELSE 0 END) / COUNT(*)) * 100,2) AS Tasa_Conversion_Global,
	SUM(CASE WHEN  deposit = "yes" THEN balance ELSE 0 END) AS Balance_Total_Captado
FROM bank_marketing b
*   **Análisis de Perfiles (`job`):** Segmentación exhaustiva para calcular el porcentaje de éxito por profesión, identificando que los **Estudiantes (75%)** y los **Jubilados (66%)** son los perfiles con mayor intención de contratación.
*   **Cruces de Endeudamiento:** Extracción de datos cruzando variables de riesgo crediticio para aislar comportamientos de compra.

> 💡 *Puedes consultar el script con la lógica de negocio y las consultas estructuradas en: [`01_SQL_Analysis/bank_marketing_queries.sql`](./01_SQL_Analysis/bank_marketing_queries.sql).*

---

## 📊 Fase 2: Cuadro de Mando Ejecutivo (Power BI)

Para la fase de visualización, se optó por una arquitectura de **Tabla Plana** debido al volumen controlado del dataset, priorizando la agilidad en el cálculo de medidas dinámicas DAX y garantizando una interactividad del 100% para el usuario final.

### 📸 Vista del Dashboard
![Dashboard de Marketing Bancario](./02_Power_BI_Dashboard/dashboard_screenshot.png)

### 🎨 Decisiones de Diseño UI/UX y Estructura:
*   **Enfoque Corporativo:** Paleta de colores basada en una gama de azules financieros sobre fondo limpio para transmitir rigor, seriedad y facilitar la lectura en entornos ejecutivos.
*   **Resumen en Tarjetas KPI (Fila Superior):** Acceso inmediato a las métricas agregadas esenciales (`Total Clientes`, `Clientes Éxito`, `Tasa de Éxito` y `Balance Total Captado`) para que el usuario entienda la situación del negocio en menos de 3 segundos.
*   **Gráfico de Barras Horizontales (Centro):** Muestra el ranking de tasa de éxito por profesión ordenado de mayor a menor, permitiendo identificar nichos de mercado instantáneamente.
*   **Gráfico de Columnas Agrupadas (Inferior Derecha):** Sustitución de matrices numéricas complejas por un cruce visual directo entre `Housing` (Hipoteca) y `Loan` (Préstamo). Permite asimilar de un vistazo que la ausencia de deudas eleva el éxito al **60%**, mientras que las cargas financieras lastran la conversión.
*   **Barra Lateral de Filtros Avanzados:** Inclusión de segmentadores interactivos por *Educación* y *Estado Civil* para que las áreas de negocio exploren microsegmentos en tiempo real.

---

## 🎯 Conclusiones y Recomendaciones de Negocio
1. **Foco en Segmentos Libres de Carga:** El equipo de marketing debe priorizar los esfuerzos de captación en perfiles sin pasivos financieros vigentes, dado que su propensión al ahorro a plazo fijo es drásticamente superior.
2. **Campañas Especializadas:** Diseñar productos específicos con canales de comunicación adaptados para *Estudiantes* y *Jubilados*, los dos vectores con mayor tasa de conversión relativa del dataset.

---

## 🛠️ Tecnologías Utilizadas
*   **SQL (MySQL)** - Extracción, filtrado y validación de reglas de negocio.
*   **HeidiSQL** - Entorno de desarrollo para la gestión de consultas.
*   **Power BI Desktop** - Modelado de datos, DAX y diseño de interfaz de usuario.
*   **Markdown** - Documentación del proyecto.
