USE BD_Grupo7_C2

/*FUNCIONES*/

--Funcion Edad
CREATE function edad_jugador(@fecha_nacimiento date)
RETURNS int
as
BEGIN
declare @edad int
set @edad = DATEDIFF(YEAR,@fecha_nacimiento,GETDATE())
RETURN @edad
END
----------------------------------------------------------------------------------------------------
/*PROCEDIMIENTOS*/


----------------------------------------------------------------------------------------------------
/*TRIGGERS*/

--Trigger de actualizacion de valor_actual de un jugador al realizar una transferencia
CREATE TRIGGER TG1_act_valor_jugador
ON inf_transf_detalle
AFTER INSERT
AS
BEGIN
	DECLARE @nuevo_valor float;
	SET @nuevo_valor = (SELECT valor_transf FROM inserted);
	
	UPDATE jugador SET valor_actual = @nuevo_valor
	WHERE (SELECT nro_jugador FROM inserted) = jugador.nro_jugador
END

-------------------------------------------------------------------------------------------------------
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(3,1)
INSERT INTO inf_transf_detalle(nro_informe,nro_club,nro_jugador,valor_transf) VALUES(1,3,1,15500000)
-------------------------------------------------------------------------------------------------------
/*VISTAS*/


-------------------------------------------------------------------------------------------------------
/*TRANSACCIONES*/


-------------------------------------------------------------------------------------------------------


















--Trigger para copiar datos insertados en tabla transf detalle a la tabla club_jugador
--------------------------------------------------------------------------------------
CREATE TRIGGER TG1_transf_jugador
ON inf_transf_detalle
AFTER INSERT
AS
BEGIN
	DECLARE @nuevo_club int,@nuevo_jugador int;
	SET @nuevo_club = (SELECT nro_club FROM inserted);
	SET @nuevo_jugador = (SELECT nro_jugador FROM inserted);
	
	INSERT INTO club_jugador(nro_club,nro_jugador) VALUES (@nuevo_club,@nuevo_jugador);
END

--PRUEBA
INSERT INTO inf_transf_detalle(nro_informe,nro_club,nro_jugador,valor_transf) VALUES(1,5,5,2000000)



