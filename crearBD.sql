
--create 
-- database BDLuckyCotizaciones
--go
--use BDLuckyCotizaciones
--go 
 
--drop table det_coti_ciudades;
--drop table det_ciudad_articulo;
--drop table tbl_cliente;
--drop table tbl_ciudades;
--drop table tbl_articulos;


--go;
create    table det_ciudad_articulo (
nIdDetCiuArt int not null identity primary key,
nIdDetCoti int,
nIdArticulo int, --foreign key  references tbl_articulos(nIdArticulo),
nImporte decimal
)
 


create table tbl_cliente( 
nIdCliente int identity not null  primary key,
sRuc char(11),
sRazonSocial varchar(100),
nEstado int
) 


create  table tbl_ciudades(
nIdCiudad int identity not null  primary key,
sCiudad varchar(100),
nEstado int
) 


create table tbl_articulos(
nIdArticulo int identity not null  primary key,
sNombreArticulo varchar(100)
) 

 create table tbl_cotizacion(
nIdCotizacion int identity not null primary key,
sTitulo varchar(100), 
dFechaInicio varchar(8),
dFechaFin varchar(8),
nIdCliente int foreign key references tbl_cliente(nIdCliente),  --(fk) 
nEstado int,
nAprobacion int ,
nSubtotal decimal,
nFee decimal,
nTotal decimal,
) 

create   table det_coti_ciudades(
nIdDetCoti int ,
nIdCotizacion int,
nIdCiudad int foreign key references tbl_ciudades(nIdCiudad),
nSubTotal decimal
) 


--""n - campos numericos
--s - campos varchar
--d - date / datetime"