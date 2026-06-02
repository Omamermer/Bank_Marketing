USE bank_marketing;
CREATE TABLE bank_marketing (
    age INT, -- Edad
    job VARCHAR(50), -- Puesto de trabajo
    marital VARCHAR(30), -- Estado Civil
    education VARCHAR(50), -- Nivel Educativo
    default_status VARCHAR(10), -- ¿Tiene impagos?
    balance INT, -- Saldo medio anual en cuenta bancaria
    housing VARCHAR(10), -- ¿Tiene hipoteca activa?
    loan VARCHAR(10), -- ¿Tiene préstamo personal activo?
    contact VARCHAR(30), -- Canal de comunicación
    day INT, -- Día del mes que se contacto
    month VARCHAR(10), -- Mes del año que se contacto
    duration INT, -- Duración de la llamada
    campaign INT, -- Nº total de veces que se ha contactado con el cliente
    pdays INT, -- Días transcurridos desde que se le contacto en una campaña anterior (-1 significa que nunca antes se le contacto)
    previous INT, -- Nº de veces que se contacto con el cliente antes de la campaña
    poutcome VARCHAR(30), -- Resultado de la campaña anterior
    deposit VARCHAR(10) -- LA CLAVE: indica si el cliente finalmente acepto y abrio el depóstio a plazo fijo
)