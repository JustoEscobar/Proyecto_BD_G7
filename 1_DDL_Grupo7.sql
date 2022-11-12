CREATE DATABASE BD_Grupo7_C2

go
-------------------
if object_id('inf_transf_detalle') is not null DROP TABLE inf_transf_detalle
go
---------------------
if object_id('inf_transf_cabecera') is not null DROP TABLE inf_transf_cabecera
go
---------------------
if object_id('club_jugador') is not null DROP TABLE club_jugador
go
---------------------
if object_id('club') is not null DROP TABLE club
go
---------------------
if object_id('jugador_representante') is not null DROP TABLE jugador_representante
go
---------------------
if object_id('jugador') is not null DROP TABLE jugador
go
---------------------
if object_id('representante') is not null DROP TABLE representante
go
---------------------
if object_id('responsable') is not null DROP TABLE responsable
go
---------------------
if object_id('liga') is not null DROP TABLE liga
go
---------------------
if object_id('estado_jugador') is not null DROP TABLE estado_jugador
go
---------------------
if object_id('tipo_posicion') is not null DROP TABLE tipo_posicion
go
---------------------
if object_id('temporada') is not null DROP TABLE temporada
go
---------------------

USE BD_Grupo7_C2

--POSICION DEL JUGADOR
CREATE TABLE tipo_posicion(

	cod_tipo_posicion int IDENTITY(1,1) NOT NULL,
	descripcion varchar(20) NOT NULL,
	CONSTRAINT PK_tipo_posicion PRIMARY KEY(cod_tipo_posicion)
)

--ESTADO DEL JUGADOR
CREATE TABLE estado_jugador(

	cod_estado int IDENTITY(1,1) NOT NULL,
	descripcion varchar(20) NOT NULL,
	CONSTRAINT PK_estado_jugador PRIMARY KEY(cod_estado)
)

--TEMPORADA 
CREATE TABLE temporada(

	nro_temporada int IDENTITY(1,1) NOT NULL,
	descripcion varchar(20) NOT NULL,
	CONSTRAINT PK_temporada PRIMARY KEY(nro_temporada)
)

--LIGA 
CREATE TABLE liga(

	cod_liga int IDENTITY(1,1) NOT NULL,
	nombre varchar(30) NOT NULL,
	cant_fechas int NOT NULL,
	CONSTRAINT PK_liga PRIMARY KEY(cod_liga)
)

--REPRESENTANTE
CREATE TABLE representante(

	dni int NOT NULL,
	nombre varchar(30) NOT NULL,
	apellido varchar(30) NOT NULL,
	domicilio varchar(200) NOT NULL,
	telefono varchar(20) NOT NULL,
	correo varchar(50) NOT NULL,
	CONSTRAINT PK_representante PRIMARY KEY(dni)
)

--RESPONSABLE
CREATE TABLE responsable(

	dni_responsable int NOT NULL,
	nombre varchar(30) NOT NULL,
	apellido varchar(30) NOT NULL,
	telefono varchar(20) NOT NULL,
	correo varchar(50) NOT NULL,
	CONSTRAINT PK_responsable PRIMARY KEY(dni_responsable)
)

--JUGADOR
CREATE TABLE jugador(

	nro_jugador int IDENTITY(1,1) NOT NULL,
	dni int NOT NULL,
	nombre varchar(30) NOT NULL,
	apellido varchar(30) NOT NULL,
	fecha_nac date NOT NULL,
	nacionalidad varchar(30) NOT NULL,
	altura float NOT NULL,
	pie_habil varchar(20) NOT NULL,
	valor_actual float NOT NULL,
	cod_estado int NOT NULL,
	cod_tipo_posicion int NOT NULL,

	CONSTRAINT PK_jugador PRIMARY KEY(nro_jugador),
	CONSTRAINT FK_jugador_estado FOREIGN KEY(cod_estado) REFERENCES estado_jugador(cod_estado),
	CONSTRAINT FK_jugador_tipo_posicion FOREIGN KEY(cod_tipo_posicion) REFERENCES tipo_posicion(cod_tipo_posicion),
	CONSTRAINT UQ_dni UNIQUE(dni),
	CONSTRAINT CK_fecha_nac CHECK(DATEDIFF (YEAR,fecha_nac,GETDATE()) BETWEEN 16 AND 50), 
	CONSTRAINT CK_altura CHECK(altura>=1.50 AND altura<=2.10),
	CONSTRAINT CK_valor_actual CHECK(valor_actual>=0)
)

--JUGADOR_REPRESENTANTE
CREATE TABLE jugador_representante(

	nro_jugador int NOT NULL,
	dni_representante int NOT NULL,
	CONSTRAINT PK_jugador_representante PRIMARY KEY(nro_jugador, dni_representante),
	CONSTRAINT FK_jugador_representante_jugador FOREIGN KEY(nro_jugador) REFERENCES jugador(nro_jugador),
	CONSTRAINT FK_jugador_representante_representante FOREIGN KEY(dni_representante) REFERENCES representante(dni),
)

--CLUB
CREATE TABLE club(

	nro_club int IDENTITY(1,1) NOT NULL,
	nombre varchar(30) NOT NULL,
	año_fund int NOT NULL,
	direccion varchar(200) NOT NULL,
	cod_liga int NOT NULL,
	dni_responsable int NOT NULL,
	CONSTRAINT PK_club PRIMARY KEY(nro_club),
	CONSTRAINT FK_club_liga FOREIGN KEY(cod_liga) REFERENCES liga(cod_liga),
	CONSTRAINT FK_club_responsable FOREIGN KEY(dni_responsable) REFERENCES responsable(dni_responsable),
	CONSTRAINT CK_año_fund CHECK(año_fund < YEAR(GETDATE()))
)

--CLUB_JUGADOR
CREATE TABLE club_jugador(

	nro_jugador int NOT NULL,
	nro_club int NOT NULL,
	fecha_desde date NOT NULL DEFAULT(GETDATE()),
	fecha_hasta date, 
	CONSTRAINT PK_club_jugador PRIMARY KEY(nro_club, nro_jugador),
	CONSTRAINT FK_club_jugador_jugador FOREIGN KEY(nro_jugador) REFERENCES jugador(nro_jugador),
	CONSTRAINT FK_club_jugador_club FOREIGN KEY(nro_club) REFERENCES club(nro_club)
	
	--Fecha desde es igual a la fecha que se encuetra en la fecha de la transferencia
	--CONSTRAINT DF_fecha_desde DEFAULT GETDATE() FOR fecha_desde,
	--Chequear que el año de la fecha desde sea 1 año posterior al actual
	--CONSTRAINT CK_fecha_hasta CHECK ((YEAR(fecha_desde)) <= (YEAR(GETDATE())) + 1)
	)

--CABECERA DE LAS TRANSFERENCIAS
CREATE TABLE inf_transf_cabecera(

	nro_informe int IDENTITY(1,1) NOT NULL,
	nro_temporada int NOT NULL,
	CONSTRAINT PK_inf_transf_cabecera PRIMARY KEY(nro_informe),
	CONSTRAINT FK_inf_transf_cabecera FOREIGN KEY(nro_temporada) REFERENCES temporada(nro_temporada),
)

--DETALLE DE LAS TRANSFERENCIAS
CREATE TABLE inf_transf_detalle(

	nro_informe int NOT NULL,
	nro_informe_detalle int IDENTITY(1,1) NOT NULL,
	fecha_transf date NOT NULL DEFAULT(GETDATE()),
	nro_club int NOT NULL,
	nro_jugador int NOT NULL,
	valor_transf float NOT NULL,
	CONSTRAINT PK_inf_transf_detalle PRIMARY KEY(nro_informe, nro_informe_detalle),
	CONSTRAINT FK_inf_transf_detalle_club_jugador FOREIGN KEY(nro_club, nro_jugador) REFERENCES club_jugador(nro_club, nro_jugador),
	--CONSTRAINT DF_fecha_transf DEFAULT GETDATE() FOR fecha_transf,
	CONSTRAINT CK_valor_transf CHECK(valor_transf>=0)  
)

