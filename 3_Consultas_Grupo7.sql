USE BD_Grupo7_C2

--CONSULTAS

SELECT COUNT(*) as 'Cantidad de club' FROM club
SELECT COUNT(*) as 'Cantidad de club_jugador' FROM club_jugador
SELECT COUNT(*) as 'Cantidad de estado_jugador' FROM estado_jugador
SELECT COUNT(*) as 'Cantidad de inf_transf_cabecera' FROM inf_transf_cabecera
SELECT COUNT(*) as 'Cantidad de inf_transf_detalle' FROM inf_transf_detalle
SELECT COUNT(*) as 'Cantidad de Jugadores' FROM jugador
SELECT COUNT(*) as 'Cantidad de Jugador_Representante' FROM jugador_representante
SELECT COUNT(*) as 'Cantidad de Liga' FROM liga
SELECT COUNT(*) as 'Cantidad de Representantes' FROM representante
SELECT COUNT(*) as 'Cantidad de Responsables' FROM responsable
SELECT COUNT(*) as 'Cantidad de Temporadas' FROM temporada
SELECT COUNT(*) as 'Cantidad de Posiciones' FROM tipo_posicion

---------------------------------------------------
--Cuantos jugadores libres,con contrato y a prestamo hay?
SELECT ej.descripcion as 'Estado',COUNT(*) as 'Cantidad'
FROM jugador j
INNER JOIN estado_jugador ej ON ej.cod_estado = j.cod_estado
GROUP BY j.cod_estado,ej.descripcion

--Cantidad de jugadores por tipo de posicion?
SELECT tp.descripcion,COUNT(*) as 'Cantidad'
FROM jugador j
INNER JOIN tipo_posicion tp ON tp.cod_tipo_posicion = j.cod_tipo_posicion
GROUP BY tp.cod_tipo_posicion, tp.descripcion

--Jugador con clubes
SELECT j.nombre 'Jugador',c.nombre as 'Club'
FROM club_jugador cj
INNER JOIN club c ON c.nro_club = cj.nro_club
INNER JOIN jugador j ON j.nro_jugador = cj.nro_jugador

--Jugadores sin club
SELECT j.nombre as 'Nombre Jugador', c.nombre as 'Club' 
FROM jugador j  
LEFT JOIN club_jugador cj ON cj.nro_jugador = j.nro_jugador
LEFT JOIN club c ON c.nro_club= cj.nro_club
WHERE c.nro_club is NULL

--Mostrar los jugadores sin representantes
SELECT *
FROM jugador j
LEFT JOIN jugador_representante jr ON jr.nro_jugador = j.nro_jugador
WHERE j.nro_jugador is NULL

--Mostrar los representantes sin jugadores
SELECT *
FROM representante r
LEFT JOIN jugador_representante jr ON jr.dni_representante = r.dni
WHERE r.dni is NULL

--Mostrar cuantos representantes tiene cada jugador, mostrar el nombre del rep
SELECT (r.nombre+' '+r.apellido) as 'Representante', COUNT(jr.nro_jugador) as 'Cantidad de jugadores'
FROM jugador j
INNER JOIN jugador_representante jr ON jr.nro_jugador = j.nro_jugador
INNER JOIN representante r ON jr.dni_representante = r.dni
GROUP BY r.dni,r.nombre,r.apellido

--Mostrar cuantos clubes estuvo cada jugador
SELECT (j.nombre+' '+j.apellido) as 'Jugador',COUNT(cj.nro_club) as 'Cantidad de clubes'
FROM club_jugador cj 
INNER JOIN jugador j ON cj.nro_jugador = j.nro_jugador
GROUP BY j.apellido,j.nombre
ORDER BY COUNT(cj.nro_club) DESC

--Buscar transferencias por temporadas: ejemplo Temporada 2010/2011
SELECT *
FROM inf_transf_cabecera ic
INNER JOIN inf_transf_detalle id ON id.nro_informe = ic.nro_informe
INNER JOIN temporada t ON t.nro_temporada = ic.nro_temporada
WHERE t.descripcion LIKE '%2010/2011'

--Cuantos clubes hay por liga
SELECT l.nombre as 'Liga', COUNT(c.nro_club) as 'Cantidad de clubes'
FROM liga l
INNER JOIN club c ON c.cod_liga = l.cod_liga
GROUP BY l.nombre,l.cod_liga

--Ficha tecnica de operacion
SELECT (j.nombre+''+j.apellido) as 'Jugador',tp.descripcion 'Posicion',DATEDIFF(YEAR,fecha_nac,GETDATE()) as 'Edad',j.pie_habil as 'Pie Habil',j.altura as 'Altura',('$'+CAST(id.valor_transf as varchar(250))) as 'Precio operacion', id.fecha_transf as 'Fecha', c.nombre as 'Club', ej.descripcion 'Tipo Operacion'
FROM inf_transf_detalle id
INNER JOIN club_jugador cj ON cj.nro_club = id.nro_club AND cj.nro_jugador = id.nro_jugador
INNER JOIN club c ON cj.nro_club = c.nro_club
INNER JOIN jugador j ON cj.nro_jugador = j.nro_jugador
INNER JOIN tipo_posicion tp ON tp.cod_tipo_posicion = j.cod_tipo_posicion
INNER JOIN estado_jugador ej ON ej.cod_estado = j.cod_estado