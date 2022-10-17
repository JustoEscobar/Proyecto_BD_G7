USE BD_Grupo7_C2

BEGIN TRANSACTION

--TIPO POSICION
INSERT INTO tipo_posicion(descripcion) VALUES('Portero')
INSERT INTO tipo_posicion(descripcion) VALUES('Lateral Izquierdo')
INSERT INTO tipo_posicion(descripcion) VALUES('Lateral Derecho')
INSERT INTO tipo_posicion(descripcion) VALUES('Defensa Central')
INSERT INTO tipo_posicion(descripcion) VALUES('Medio Defensivo')
INSERT INTO tipo_posicion(descripcion) VALUES('Medio Ofensivo')
INSERT INTO tipo_posicion(descripcion) VALUES('Medio Izquierdo')
INSERT INTO tipo_posicion(descripcion) VALUES('Medio Derecho')
INSERT INTO tipo_posicion(descripcion) VALUES('Exterior Izquierdo')
INSERT INTO tipo_posicion(descripcion) VALUES('Exterior Derecho')
INSERT INTO tipo_posicion(descripcion) VALUES('Mediapunta')
INSERT INTO tipo_posicion(descripcion) VALUES('Delantero Derecho')
INSERT INTO tipo_posicion(descripcion) VALUES('Delantero Izquierdo')
INSERT INTO tipo_posicion(descripcion) VALUES('Delantero Centro')

--ESTADO_JUGADOR

INSERT INTO estado_jugador(descripcion) VALUES('Libre')
INSERT INTO estado_jugador(descripcion) VALUES('Contrato')
INSERT INTO estado_jugador(descripcion) VALUES('Prestamo')


--TEMPORADA
INSERT INTO temporada(descripcion) VALUES('Temporada 2010/2011')
INSERT INTO temporada(descripcion) VALUES('Temporada 2011/2012')
INSERT INTO temporada(descripcion) VALUES('Temporada 2012/2013')
INSERT INTO temporada(descripcion) VALUES('Temporada 2013/2014')
INSERT INTO temporada(descripcion) VALUES('Temporada 2014/2015')
INSERT INTO temporada(descripcion) VALUES('Temporada 2015/2016')
INSERT INTO temporada(descripcion) VALUES('Temporada 2016/2017')
INSERT INTO temporada(descripcion) VALUES('Temporada 2017/2018')
INSERT INTO temporada(descripcion) VALUES('Temporada 2018/2019')
INSERT INTO temporada(descripcion) VALUES('Temporada 2019/2020')
INSERT INTO temporada(descripcion) VALUES('Temporada 2020/2021')
INSERT INTO temporada(descripcion) VALUES('Temporada 2021/2022')

--LIGA
INSERT INTO liga(nombre, cant_fechas) VALUES('Primera A', 27)
INSERT INTO liga(nombre, cant_fechas) VALUES('Primera B', 38)
INSERT INTO liga(nombre, cant_fechas) VALUES('Primera C', 28)
INSERT INTO liga(nombre, cant_fechas) VALUES('Metropolitana B', 35)
INSERT INTO liga(nombre, cant_fechas) VALUES('Federal A', 30)
INSERT INTO liga(nombre, cant_fechas) VALUES('Federal B', 32)
INSERT INTO liga(nombre, cant_fechas) VALUES('Federal C', 36)

--REPRESENTANTE
INSERT INTO representante(dni,nombre,apellido,domicilio,telefono,correo) VALUES(41249166,'Justo Daniel','Escobar','Paraguay 505, dpto 21','3777689096','justoescobar3@gmail.com')

--RESPONSABLE
INSERT INTO responsable(dni_responsable,nombre,apellido,telefono,correo) VALUES()

--JUGADOR
INSERT INTO jugador(dni,nombre,apellido,fecha_nac,nacionalidad,altura,pie_habil,valor_actual,cod_estado,cod_tipo_posicion) VALUES()

--JUGADOR_REPRESENTANTE
INSERT INTO jugador_representante(dni_representante,nro_jugador) VALUES()

--CLUB
INSERT INTO club(nombre,año_fund,direccion,cod_liga,dni_responsable) VALUES ()

--CLUB_JUGADOR
INSERT INTO club_jugador(nro_club,nro_jugador,fecha_desde,fecha_hasta) VALUES()

--INF_TRANSF_CABECERA
INSERT INTO inf_transf_cabecera(nro_temporada) VALUES()

--INF_TRANSF_DETALLE
INSERT INTO inf_transf_detalle(nro_informe,nro_informe_detalle, nro_club,nro_jugador,fecha_transf,valor_transf) VALUES()



--COMMIT TRANSACTION
--ROLLBACK TRANSACTION