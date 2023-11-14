--Esta base de datos fue inspirada por Yelein Dominguez de Darien--
CREATE DATABASE Yelein;
USE Yelein

CREATE TABLE [dbo].[Ventas](
	[IDVenta] [int] NOT NULL,
	[CodSucursal] [char](3) NULL,
	[Sucursal] [varchar](50) NULL,
	[CodVendedor] [int] NULL,
	[NomVendedor] [varchar](100) NULL,
	[CodCliente] [int] NULL,
	[NomCliente] [varchar](100) NULL,
	[CodProducto] [int] NULL,
	[DescProducto] [varchar](255) NULL,
	[CantidadVendida] [int] NULL,
	[MontoUnitario] [decimal](10, 2) NULL,
	[DirecciónEntrega] [varchar](max) NULL,
	[FechaVenta] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

--Ejecutar la tabla del profe--
--Tablas relacional--

CREATE TABLE Sucursales(
    CodSucursal char(3) not null PRIMARY KEY,
    Sucursal varchar(255)
);


drop table Sucursales



CREATE TABLE Vendedores(
    CodVendedor int not null PRIMARY KEY,
    NomVendedor varchar(255),
);

CREATE TABLE Clientes(
    CodCliente int not null PRIMARY KEY,
    NomCliente varchar(255),
);

CREATE TABLE Productos(
    CodProducto int not null PRIMARY KEY,
    DescProducto int,
);

 

--Despues de agregar las 4 tablas, rocedes insertar el alter table--

alter table [dbo].[Ventas]
ADD CONSTRAINT Fk_Ventas_CodVenta
FOREIGN KEY ([CodSucursal]) references Sucursales([CodSucursal])



alter table [dbo].[Ventas]
ADD CONSTRAINT Fk_Vendedores_CodVendedores
FOREIGN KEY ([CodVendedor]) references Vendedores([CodVendedor])


alter table [dbo].[Ventas]
ADD CONSTRAINT Fk_Clientes_CodCliente
FOREIGN KEY ([CodCliente]) references Clientes([CodCliente])


alter table [dbo].[Ventas]
ADD CONSTRAINT Fk_Productos_CodProducto
FOREIGN KEY ([CodProducto]) references Productos([CodProducto])