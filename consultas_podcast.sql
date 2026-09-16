-- Qué podcasts se ha descargado un cliente específico

SELECT 
    u.nombre AS usuario,
    p.titulo AS podcast,
    p.duracion_min,
    d.fecha_descarga
FROM descargas d
JOIN usuario u ON d.idusuario = u.idusuario
JOIN podcast p ON d.idpodcast = p.idpodcast
WHERE u.nombre = 'Laura Gómez'
ORDER BY d.fecha_descarga DESC;

-- Listado completo de descargas con usuario y podcast

SELECT 
    d.iddescargas,
    u.nombre AS usuario,
    u.email,
    p.titulo AS podcast,
    d.fecha_descarga
FROM descargas d
JOIN usuario u ON d.idusuario = u.idusuario
JOIN podcast p ON d.idpodcast = p.idpodcast
ORDER BY d.fecha_descarga DESC;

-- Podcasts más descargados

SELECT 
    p.titulo,
    COUNT(d.idpodcast) AS total_descargas
FROM podcast p
LEFT JOIN descargas d ON p.idpodcast = d.idpodcast
GROUP BY p.idpodcast, p.titulo
ORDER BY total_descargas DESC;

-- Minutos totales escuchados por cada usuario

SELECT 
    u.nombre,
    COUNT(d.idpodcast) AS total_podcasts_descargados,
    COALESCE(SUM(p.duracion_min), 0) AS minutos_totales
FROM usuario u
LEFT JOIN descargas d ON u.idusuario = d.idusuario
LEFT JOIN podcast p ON d.idpodcast = p.idpodcast
GROUP BY u.idusuario, u.nombre
ORDER BY minutos_totales DESC;