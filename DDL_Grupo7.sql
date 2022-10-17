--CREATE DATABASE BD_Grupo7_C2

USE BD_Grupo7_C2

CREATE TABLE tipo_posicion(
cod_tipo_posicion int IDENTITY(1,1) NOT NULL,
descripcion varchar(20) NOT NULL,
CONSTRAINT PK_tipo_posicion PRIMARY KEY(cod_tipo_posicion)
)

CREATE TABLE estado_jugador(
cod_estado int IDENTITY(1,1) NOT NULL,
descripcion varchar(20) NOT NULL,
CONSTRAINT PK_estado_jugador PRIMARY KEY(cod_estado)
)

CREATE TABLE temporada(
nro_temporada int IDENTITY(1,1) NOT NULL,
descripcion varchar(20) NOT NULL,
CONSTRAINT PK_temporada PRIMARY KEY(nro_temporada)
)

CREATE TABLE liga(
cod_liga int IDENTITY(1,1) NOT NULL,
nombre varchar(30) NOT NULL,
cant_fechas int NOT NULL,
CONSTRAINT PK_liga PRIMARY KEY(cod_liga)
)

CREATE TABLE representante(
dni int NOT NULL,
nombre varchar(30) NOT NULL,
apellido varchar(30) NOT NULL,
domicilio varchar(200) NOT NULL,
telefono varchar(20) NOT NULL,
correo varchar(50) NOT NULL,
CONSTRAINT PK_representante PRIMARY KEY(dni)
)

CREATE TABLE responsable(
dni_responsable int NOT NULL,
nombre varchar(30) NOT NULL,
apellido varchar(30) NOT NULL,
telefono varchar(20) NOT NULL,
correo varchar(50) NOT NULL,
CONSTRAINT PK_responsable PRIMARY KEY(dni_responsable)
)

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
--diferencia entre año actual y año fecha nacimiento ingresada sea mayor o igual a 16--
CONSTRAINT CK_fecha_nac_menor CHECK(DATEDIFF (YEAR,fecha_nac,GETDATE()) >= 16),
--edad ingresada sea menor a 50 años--
CONSTRAINT CK_fecha_nac_mayor CHECK(DATEDIFF (YEAR,fecha_nac,GETDATE()) <= 50), 
CONSTRAINT CK_altura CHECK(altura>1.50 AND altura<=2.10),
CONSTRAINT CK_valor_actual CHECK(valor_actual>=0)
)

CREATE TABLE jugador_representante(
nro_jugador int NOT NULL,
dni_representante int NOT NULL,
CONSTRAINT PK_jugador_representante PRIMARY KEY(nro_jugador, dni_representante),
CONSTRAINT FK_jugador_representante_jugador FOREIGN KEY(nro_jugador) REFERENCES jugador(nro_jugador),
CONSTRAINT FK_jugador_representante_representante FOREIGN KEY(dni_representante) REFERENCES representante(dni),
)

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
--año fundacion sea menor al actual
CONSTRAINT CK_año_fund CHECK(año_fund < YEAR(GETDATE()))
)

CREATE TABLE club_jugador(
nro_jugador int NOT NULL,
nro_club int NOT NULL,
fecha_desde date NOT NULL,
fecha_hasta date, 
CONSTRAINT PK_club_jugador PRIMARY KEY(nro_club, nro_jugador),
CONSTRAINT FK_club_jugador_jugador FOREIGN KEY(nro_jugador) REFERENCES jugador(nro_jugador),
CONSTRAINT FK_club_jugador_club FOREIGN KEY(nro_club) REFERENCES club(nro_club),
--agregar 
--CONSTRAINT CK_fecha_desde
--CONSTRAINT CK_fecha_hasta 
)


CREATE TABLE inf_transf_cabecera(
nro_informe int IDENTITY(1,1) NOT NULL,
nro_temporada int NOT NULL,
CONSTRAINT PK_inf_transf_cabecera PRIMARY KEY(nro_informe),
CONSTRAINT FK_inf_transf_cabecera FOREIGN KEY(nro_temporada) REFERENCES temporada(nro_temporada),
)

CREATE TABLE inf_transf_detalle(
nro_informe int NOT NULL,
nro_informe_detalle int IDENTITY(1,1) NOT NULL,
fecha_transf date NOT NULL DEFAULT(GETDATE()),
nro_club int NOT NULL,
nro_jugador int NOT NULL,
valor_transf float NOT NULL,
CONSTRAINT PK_inf_transf_detalle PRIMARY KEY(nro_informe, nro_informe_detalle),
CONSTRAINT FK_inf_transf_detalle_club_jugador FOREIGN KEY(nro_club, nro_jugador) REFERENCES club_jugador(nro_club, nro_jugador),
--tomar fecha actual por defecto a la fecha de una transferencia--
--CONSTRAINT DF_fecha_transf DEFAULT GETDATE() FOR fecha_transf,
CONSTRAINT CK_valor_transf CHECK(valor_transf>=0)  
)

----------------------------------------------------------------------------------------------------------------------------------
--LA FECHA DESDE EN LA QUE UN JUGADOR ESTA EN UN CLUB
--ES LA FECHA DE TRANSFERENCIA Y LA FECHA HASTA 
--QUEDA EN NULO HASTA QUE SE VAYA A OTRO EQUIPO

--prueba--
--declare @FechaInicial Date = '2022/01/01'
--declare @Fechafinal Date = '1998/01/01'

--select DATEDIFF (YEAR,fecha_nac ,GETDATE())  as resultado

--Sacar tabla categoria club
--Pensar si agregar tabla paises para la nacionalidad de los jugadores
--Direccion del club (provincia,ciudad) o direccion completa en campo libre
--El domicilio del representante es alpedo

--Ver tema de:
--Triggers
--Transacciones
--Vistas
--Permisos