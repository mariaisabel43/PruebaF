USE [Tarjetas]

CREATE PROCEDURE [dbo].[spTarjeta]
AS
BEGIN
	SELECT 
		Foto,
		Banco,
		Emisor,
		Nombre,
		Apellido,
		NTarjeta,
		CodigoS,
		FExpiracion
	FROM Tarjeta
END