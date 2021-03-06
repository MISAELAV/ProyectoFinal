USE [master]
GO
/****** Object:  Database [Modelo_Manufactura]    Script Date: 5/4/2021 8:52:36 PM ******/
CREATE DATABASE [Modelo_Manufactura]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Modelo_Manufactura', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\Modelo_Manufactura.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Modelo_Manufactura_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\Modelo_Manufactura_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Modelo_Manufactura] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Modelo_Manufactura].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Modelo_Manufactura] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET ARITHABORT OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Modelo_Manufactura] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Modelo_Manufactura] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Modelo_Manufactura] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Modelo_Manufactura] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Modelo_Manufactura] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Modelo_Manufactura] SET  MULTI_USER 
GO
ALTER DATABASE [Modelo_Manufactura] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Modelo_Manufactura] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Modelo_Manufactura] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Modelo_Manufactura] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Modelo_Manufactura] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Modelo_Manufactura]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 5/4/2021 8:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [char](1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 5/4/2021 8:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteId] [int] IDENTITY(1,1) NOT NULL,
	[NombreCompañia] [varchar](50) NULL,
	[Dirreción] [varchar](255) NULL,
	[Telefono] [decimal](11, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetallesOrdenes]    Script Date: 5/4/2021 8:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesOrdenes](
	[OrdenId] [int] IDENTITY(1,1) NOT NULL,
	[ProductoId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrdenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 5/4/2021 8:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[PRIMER_NOMBRE] [varchar](50) NOT NULL,
	[PRIMER_APELLIDO] [varchar](50) NOT NULL,
	[EDAD] [varchar](3) NULL,
	[FECHANACIMIENTO] [date] NOT NULL,
	[ACTIVO] [bit] NULL,
	[TELEFONO] [decimal](11, 0) NULL,
	[SALARIO] [decimal](11, 2) NULL,
 CONSTRAINT [PK__Empleado__958BE910668D3EDB] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ordenes]    Script Date: 5/4/2021 8:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordenes](
	[OrdenId] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[FechaOrden] [date] NOT NULL,
	[CodigoOrden] [decimal](4, 0) NOT NULL,
	[Estatu] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrdenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 5/4/2021 8:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Categoria] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 0) NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK__Producto__A430AEA3E0842F83] PRIMARY KEY CLUSTERED 
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (1, N'A', N'ROJO')
INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (2, N'B', N'VERDE')
INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (3, N'C', N'AZUL')
INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (4, N'D', N'NEGRO')
INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (5, N'E', N'GRISS')
INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (6, N'F', N'VIOLETA')
INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (10, N'I', N'AMARILLO')
INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (11, N'J', N'MARRON')
INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (12, N'K', N'NEGRO')
INSERT [dbo].[Categorias] ([CategoriaId], [Nombre], [Descripcion]) VALUES (13, N'L', N'VERDE')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (1, N'SIGNALRD', N'Carretera Sanchez', CAST(8095316343 AS Decimal(11, 0)))
INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (2, N'KFC', N'Autopista Duarte', CAST(8099576666 AS Decimal(11, 0)))
INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (3, N'LM', N'San Cristobal', CAST(8099573333 AS Decimal(11, 0)))
INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (4, N'JJ', N'Bani', CAST(8099573334 AS Decimal(11, 0)))
INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (5, N'Car', N'San Juan', CAST(809957335 AS Decimal(11, 0)))
INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (6, N'CabreraT', N'San Cristobal', CAST(8099573337 AS Decimal(11, 0)))
INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (7, N'Fruit', N'Santo Domingo', CAST(8099573338 AS Decimal(11, 0)))
INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (8, N'MM', N'San Cristobal', CAST(8099576833 AS Decimal(11, 0)))
INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (9, N'TYCL', N'Santo Domingo', CAST(8099579339 AS Decimal(11, 0)))
INSERT [dbo].[Clientes] ([ClienteId], [NombreCompañia], [Dirreción], [Telefono]) VALUES (10, N'Pan P', N'San Juan', CAST(8099578669 AS Decimal(11, 0)))
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[DetallesOrdenes] ON 

INSERT [dbo].[DetallesOrdenes] ([OrdenId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (4, 1, 100, CAST(55 AS Decimal(18, 0)))
INSERT [dbo].[DetallesOrdenes] ([OrdenId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (5, 2, 200, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[DetallesOrdenes] ([OrdenId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (6, 3, 300, CAST(55 AS Decimal(18, 0)))
INSERT [dbo].[DetallesOrdenes] ([OrdenId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (7, 4, 400, CAST(55 AS Decimal(18, 0)))
INSERT [dbo].[DetallesOrdenes] ([OrdenId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (8, 5, 500, CAST(60 AS Decimal(18, 0)))
INSERT [dbo].[DetallesOrdenes] ([OrdenId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (9, 6, 400, CAST(75 AS Decimal(18, 0)))
INSERT [dbo].[DetallesOrdenes] ([OrdenId], [ProductoId], [Cantidad], [PrecioUnitario]) VALUES (10, 12, 600, CAST(55 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DetallesOrdenes] OFF
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (3, N'MANUEL', N'MANZANILLO', N'25', CAST(N'1996-05-06' AS Date), 1, CAST(8095316343 AS Decimal(11, 0)), CAST(12200.00 AS Decimal(11, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (4, N'MIGUEL', N'GUZMAN', N'24', CAST(N'1996-01-10' AS Date), 1, CAST(8295662424 AS Decimal(11, 0)), CAST(4500.00 AS Decimal(11, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (5, N'EXKAINY', N'GERONIMO', N'26', CAST(N'1995-02-06' AS Date), 1, CAST(5495178668 AS Decimal(11, 0)), CAST(9000.00 AS Decimal(11, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (6, N'JUAN', N'PALOTE', N'28', CAST(N'1993-08-06' AS Date), 1, CAST(8495678891 AS Decimal(11, 0)), CAST(6750.00 AS Decimal(11, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (7, N'PEDRO', N'PAUL', N'30', CAST(N'1990-10-06' AS Date), 1, CAST(8295316343 AS Decimal(11, 0)), CAST(8750.00 AS Decimal(11, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (8, N'MARIA', N'HOLD', N'29', CAST(N'1992-05-07' AS Date), 1, CAST(8099576636 AS Decimal(11, 0)), CAST(9800.00 AS Decimal(11, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (9, N'TAILON', N'GLASS', N'30', CAST(N'1990-07-08' AS Date), 1, CAST(8296515236 AS Decimal(11, 0)), CAST(6870.00 AS Decimal(11, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (10, N'JOEL', N'PERDOMO', N'24', CAST(N'1996-08-10' AS Date), 1, CAST(8496197723 AS Decimal(11, 0)), CAST(7850.00 AS Decimal(11, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (11, N'JUAN', N'HERNANDEZ', N'27', CAST(N'1993-05-02' AS Date), 1, CAST(8496245563 AS Decimal(11, 0)), CAST(6580.00 AS Decimal(11, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [PRIMER_NOMBRE], [PRIMER_APELLIDO], [EDAD], [FECHANACIMIENTO], [ACTIVO], [TELEFONO], [SALARIO]) VALUES (12, N'HOLS', N'PUL', N'28', CAST(N'1993-09-09' AS Date), 1, CAST(8099576453 AS Decimal(11, 0)), CAST(7820.00 AS Decimal(11, 2)))
SET IDENTITY_INSERT [dbo].[Empleados] OFF
SET IDENTITY_INSERT [dbo].[Ordenes] ON 

INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (1, 1, 3, CAST(N'2021-05-06' AS Date), CAST(101 AS Decimal(4, 0)), N'PROCESS   ')
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (2, 2, 4, CAST(N'2021-05-07' AS Date), CAST(102 AS Decimal(4, 0)), N'PROCESS   ')
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (3, 3, 5, CAST(N'2021-05-08' AS Date), CAST(103 AS Decimal(4, 0)), N'PROCESS   ')
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (4, 4, 6, CAST(N'2021-05-09' AS Date), CAST(104 AS Decimal(4, 0)), N'PROCESS   ')
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (5, 5, 7, CAST(N'2021-05-10' AS Date), CAST(105 AS Decimal(4, 0)), N'PROCESS   ')
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (6, 6, 8, CAST(N'2021-05-11' AS Date), CAST(106 AS Decimal(4, 0)), N'PROCESS   ')
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (7, 7, 9, CAST(N'2021-05-12' AS Date), CAST(107 AS Decimal(4, 0)), N'PROCESS   ')
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (8, 8, 10, CAST(N'2021-05-13' AS Date), CAST(108 AS Decimal(4, 0)), N'PROCESS   ')
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (9, 9, 11, CAST(N'2021-05-14' AS Date), CAST(109 AS Decimal(4, 0)), N'PROCESS   ')
INSERT [dbo].[Ordenes] ([OrdenId], [ClienteId], [EmpleadoId], [FechaOrden], [CodigoOrden], [Estatu]) VALUES (10, 10, 12, CAST(N'2021-05-15' AS Date), CAST(110 AS Decimal(4, 0)), N'PROCESS   ')
SET IDENTITY_INSERT [dbo].[Ordenes] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (1, N'AB', 1, CAST(55 AS Decimal(18, 0)), 100)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (2, N'AC', 2, CAST(50 AS Decimal(18, 0)), 200)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (3, N'AD', 3, CAST(55 AS Decimal(18, 0)), 300)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (4, N'AE', 4, CAST(55 AS Decimal(18, 0)), 400)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (5, N'AF', 5, CAST(60 AS Decimal(18, 0)), 500)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (6, N'AI', 6, CAST(75 AS Decimal(18, 0)), 400)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (11, N'AJ', 10, CAST(55 AS Decimal(18, 0)), 600)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (12, N'AR', 11, CAST(50 AS Decimal(18, 0)), 400)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (13, N'AS', 12, CAST(55 AS Decimal(18, 0)), 300)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Categoria], [PrecioUnitario], [Cantidad]) VALUES (14, N'AL', 13, CAST(60 AS Decimal(18, 0)), 500)
SET IDENTITY_INSERT [dbo].[Productos] OFF
ALTER TABLE [dbo].[DetallesOrdenes]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOrdenes_Ordenes] FOREIGN KEY([OrdenId])
REFERENCES [dbo].[Ordenes] ([OrdenId])
GO
ALTER TABLE [dbo].[DetallesOrdenes] CHECK CONSTRAINT [FK_DetallesOrdenes_Ordenes]
GO
ALTER TABLE [dbo].[DetallesOrdenes]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOrdenes_Productos] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([ProductoId])
GO
ALTER TABLE [dbo].[DetallesOrdenes] CHECK CONSTRAINT [FK_DetallesOrdenes_Productos]
GO
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_Empleados] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([ClienteId])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_Empleados]
GO
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_Empleados1] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_Empleados1]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Productos] FOREIGN KEY([Categoria])
REFERENCES [dbo].[Categorias] ([CategoriaId])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Productos]
GO
USE [master]
GO
ALTER DATABASE [Modelo_Manufactura] SET  READ_WRITE 
GO
