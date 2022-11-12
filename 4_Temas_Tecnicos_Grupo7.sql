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
CREATE PROCEDURE actualizar_fecha_hasta_jugador()
AS
BEGIN
	DECLARE @nuevo_club int, @nuevo_jugador int, @viejo_club int
	SET @viejo_club = (SELECT nro_club FROM club_jugador
						WHERE nro_club = (SELECT nro_club FROM inserted))
						
	SET @nuevo_club = (SELECT nro_club FROM inserted);
	SET @nuevo_jugador = (SELECT nro_jugador FROM inserted);
	
	INSERT INTO club_jugador(nro_club,nro_jugador) VALUES (@nuevo_club,@nuevo_jugador)
	INSERT INTO inf_transf_detalle(nro_informe,nro_club,nro_jugador,valor_transf) VALUES ()
	
	UPDATE club_jugador 
		SET fecha_hasta = GETDATE()
		WHERE nro_club = @viejo_club AND nro_jugador = @nuevo_jugador
		
END
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
INSERT INTO club_jugador(nro_club,nro_jugador) VALUES(3,2)
INSERT INTO inf_transf_detalle(nro_informe,nro_club,nro_jugador,valor_transf) VALUES(1,3,2,155555555)

SELECT cj.nro_club,j.nombre ,cj.nro_jugador,j.valor_actual 
FROM club_jugador cj
INNER JOIN jugador j ON j.nro_jugador = cj.nro_jugador
ORDER BY cj.nro_jugador
-------------------------------------------------------------------------------------------------------
/*VISTAS*/


-------------------------------------------------------------------------------------------------------
/*TRANSACCIONES*/


-------------------------------------------------------------------------------------------------------
--Trigger para copiar datos insertados en tabla transf detalle a la tabla club_jugador
--------------------------------------------------------------------------------------
CREATE TRIGGER TG2_transf_jugador
ON inf_transf_detalle
FOR INSERT
AS
BEGIN
	DECLARE @nuevo_club int,@nuevo_jugador int;
	SET @nuevo_club = (SELECT nro_club FROM inserted);
	SET @nuevo_jugador = (SELECT nro_jugador FROM inserted);
	
	INSERT INTO club_jugador(nro_club,nro_jugador) VALUES (@nuevo_club,@nuevo_jugador);
END
-------------------------------------------------------------------------------------------------
--PRUEBA
INSERT INTO inf_transf_detalle(nro_informe,nro_club,nro_jugador,valor_transf) VALUES(1,3,5,5500)

SELECT *
FROM club_jugador
-------------------------------------------------------------------------------------------------