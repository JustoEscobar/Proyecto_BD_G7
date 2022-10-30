USE BD_Grupo7_C2
--Funciones (agregar en las reestricciones del DML y probar insertando datos)

--Funcion Edad
CREATE function edad_jugador(@fecha_nacimiento date)
RETURNS int
as
BEGIN
declare @edad int
set @edad = DATEDIFF(YEAR,@fecha_nacimiento,GETDATE())
RETURN @edad
END

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
----------------------------------------------------------------------------------------------------

--Trigger de actualizacion de valor_actual de un jugador al realizar una transferencia

--Vistas (guardar consultas complejas en una vista)