
/*Nombre: Josue Alix, Matricula: 17-MIIN-1-145, Seccion: 0541*/

USE [master]
GO
/****** Object:  Database [Sistema de control de salida del almacen de Fruteria La Natural]    Script Date: 8/13/2018 3:52:03 AM ******/
CREATE DATABASE [Sistema de control de salida del almacen de Fruteria La Natural]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sistema de control de salida del almacen de Fruteria La Natural', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Sistema de control de salida del almacen de Fruteria La Natural.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sistema de control de salida del almacen de Fruteria La Natural_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Sistema de control de salida del almacen de Fruteria La Natural_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sistema de control de salida del almacen de Fruteria La Natural].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET  MULTI_USER 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET QUERY_STORE = OFF
GO
USE [Sistema de control de salida del almacen de Fruteria La Natural]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Sistema de control de salida del almacen de Fruteria La Natural]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 8/13/2018 3:52:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 8/13/2018 3:52:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](150) NULL,
	[Telefono] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conduce de Salida]    Script Date: 8/13/2018 3:52:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conduce de Salida](
	[Conduce_SalidaID] [int] NOT NULL,
	[ClienteID] [int] NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Conduce de Salida] PRIMARY KEY CLUSTERED 
(
	[Conduce_SalidaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles]    Script Date: 8/13/2018 3:52:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles](
	[DetalleID] [int] NOT NULL,
	[Conduce_SalidaID] [int] NULL,
	[ProductoID] [int] NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_Detalles] PRIMARY KEY CLUSTERED 
(
	[DetalleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 8/13/2018 3:52:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Precio] [int] NULL,
	[CategoriaID] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (1, N'Derivado de freza', N'Barril de extracto de freza para preparación de postres')
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (2, N'Derivado de kiwi', N'Barril de extracto de kiwi para preparación de postres')
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (3, N'Derivado de banana', N'Barril de extracto de banana para preparación de postres')
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (4, N'Derivado de arandano', N'Barril de extracto de arándano para preparación de postres')
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (5, N'Derivado de manzana', N'Barril de extracto de manzana para preparación de postres')
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (6, N'Derivado de frambuesa', N'Barril de extracto de frambuesa para preparación de postres')
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (7, N'Derivado de limon', N'Barril de extracto de limón para preparación de postres')
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (8, N'Derivado de piña', N'Barril de extracto de piña para preparación de postres')
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (9, N'Derivado de cereza', N'Barril de extracto de cereza para preparación de postres')
INSERT [dbo].[Categorias] ([CategoriaID], [Nombre], [Descripcion]) VALUES (10, N'Derivado de naranja ', N'Barril de extracto de naranja para preparación de postres')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (1, N'Dulceria La Famosa', N'	AV. 20 DE NOVIEMBRE NO. 1121', N'809-555-5555', N'Dulceriafamosa@gamil.com')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (2, N'Fruteria Sam', N'	CALLE ALDAMA NO. 144-A', N'829-555-5555 ', N'Fruteriasam@gamil.com')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (3, N'Dulceria La Fiesta', N'CALLE MELCHOR OCAMPO NO. 635', N'809-444-4444', N'Dulceriaiesta@gamil.com')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (4, N'Fruteria del prado', N'AV. 20 DE NOVIEMBRE NO. 933', N'809-545-5555', N'Fruteriaprado@gamil.com')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (5, N'Dulceria Las Rosas', N'CALLE ALDAMA NO.70', N'809-555-5755', N'Dulceriaosas@gamil.com')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (6, N'Fruteria los Hermanos', N'AV. INDEPENDENCIA NO. 701', N'809-675-5555', N'Fruteriaermanos@gamil.com')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (7, N'Dulceria Del Mar', N'INDEPENDENCIA NO. 241', N'849-555-5555', N'Dulceriamar@gamil.com')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (8, N'Fruteria los primos', N'AV. INDEPENDENCIA NO 117', N'829-444-5555', N'Fruteriaprimos@gamil.com')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (9, N'Dulceria La Cuchara', N'MATAMOROS NO. 325', N'809-555-7755', N'Dulceriauchara@gamil.com')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono], [Email]) VALUES (10, N'Dulceria El Cucharon', N'AV. INDEPENDENCIA NO.725', N'809-555-6655', N'Dulceriucharon@gamil.com')
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (1, 1, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (2, 2, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (3, 3, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (4, 4, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (5, 5, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (6, 6, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (7, 7, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (8, 8, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (9, 9, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Conduce de Salida] ([Conduce_SalidaID], [ClienteID], [Fecha]) VALUES (10, 10, CAST(N'2018-08-13' AS Date))
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (1, 1, 1, 3)
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (2, 2, 2, 7)
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (3, 3, 3, 2)
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (4, 4, 4, 9)
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (5, 5, 5, 4)
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (6, 6, 6, 8)
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (7, 7, 7, 6)
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (8, 8, 8, 6)
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (9, 9, 9, 4)
INSERT [dbo].[Detalles] ([DetalleID], [Conduce_SalidaID], [ProductoID], [Cantidad]) VALUES (10, 10, 10, 2)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (1, N'Extracto de freza', 10000, 1)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (2, N'Extracto de kiwi', 25000, 2)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (3, N'Extracto de banana', 7000, 3)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (4, N'Extracto de arandano', 16000, 4)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (5, N'Extracto de manzana', 9000, 5)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (6, N'Extracto de frambuesa', 18000, 6)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (7, N'Extracto de limon', 21000, 7)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (8, N'Extracto de piña', 22000, 8)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (9, N'Extracto de cereza', 25000, 9)
INSERT [dbo].[Productos] ([ProductoID], [Nombre], [Precio], [CategoriaID]) VALUES (10, N'Extracto de naranja ', 9500, 10)
ALTER TABLE [dbo].[Conduce de Salida]  WITH CHECK ADD  CONSTRAINT [FK_Conduce de Salida_Clientes] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
ALTER TABLE [dbo].[Conduce de Salida] CHECK CONSTRAINT [FK_Conduce de Salida_Clientes]
GO
ALTER TABLE [dbo].[Detalles]  WITH CHECK ADD  CONSTRAINT [FK_Detalles_Conduce de Salida] FOREIGN KEY([Conduce_SalidaID])
REFERENCES [dbo].[Conduce de Salida] ([Conduce_SalidaID])
GO
ALTER TABLE [dbo].[Detalles] CHECK CONSTRAINT [FK_Detalles_Conduce de Salida]
GO
ALTER TABLE [dbo].[Detalles]  WITH CHECK ADD  CONSTRAINT [FK_Detalles_Productos] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[Detalles] CHECK CONSTRAINT [FK_Detalles_Productos]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categorias] ([CategoriaID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]
GO
USE [master]
GO
ALTER DATABASE [Sistema de control de salida del almacen de Fruteria La Natural] SET  READ_WRITE 
GO
