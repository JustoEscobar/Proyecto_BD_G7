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


--Mostrar todos los clubes en los que estuvo X jugador y con sus fechas
--Mostrar los jugadores sin representantes
--Mostrar los representantes sin jugadores
--Mostrar cuantos representantes tiene cada jugador
--Mostrar cuantos clubes estuvo cada jugador
--Buscar transferencias por temporadas: ejemplo Temporada 20/21
--Cuantos clubes hay por liga

