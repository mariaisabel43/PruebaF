USE [Tarjetas]
GO

Create procedure [dbo].[ObTarjeta](
	@Foto varchar(100),
	@Banco varchar (250),
	@Emisor varchar (250),
	@Nombre varchar (350),
	@Apellido varchar (350),
	@NTarjeta int,
	@CodigoS int,
	@FExpiracion Datetime
	)
	AS
BEGIN
	insert into Tarjeta(Foto, Banco, Emisor, Nombre, Apellido, NTarjeta, CodigoS, FExpiracion) 
	 values (@Foto, @Banco, @Emisor, @Nombre, @Apellido, @NTarjeta, @CodigoS, @FExpiracion)
end