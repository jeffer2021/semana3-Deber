USE [master]
GO
/****** Object:  Database [BANCOPICHINCHA.S,A ]    Script Date: 28/01/2020 18:26:38 ******/
CREATE DATABASE [BANCOPICHINCHA.S,A ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BANCOPICHINCHA.S,A', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BANCOPICHINCHA.S,A .mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BANCOPICHINCHA.S,A _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BANCOPICHINCHA.S,A _log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BANCOPICHINCHA.S,A ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET ARITHABORT OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET RECOVERY FULL 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET  MULTI_USER 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BANCOPICHINCHA.S,A ', N'ON'
GO
USE [BANCOPICHINCHA.S,A ]
GO
/****** Object:  Table [dbo].[BANCA MOVIL]    Script Date: 28/01/2020 18:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANCA MOVIL](
	[bmovil_codigo] [numeric](18, 0) NOT NULL,
	[bmovil_cliente] [nchar](70) NULL,
	[bmovil_celular] [numeric](18, 0) NULL,
	[bmovil_transacciones] [numeric](18, 0) NULL,
	[bmovil_dia_mes_año] [datetime2](7) NULL,
	[bmovil_destinoprovincia] [nchar](70) NULL,
	[bmovil_cantidadtransacciones] [numeric](18, 0) NULL,
	[bmovil_entidad/persona] [nchar](70) NULL,
	[bmovil_correoelectronico] [nchar](70) NULL,
 CONSTRAINT [PK_BANCA MOVIL] PRIMARY KEY CLUSTERED 
(
	[bmovil_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CARGOS ALTOS COLABORADOR]    Script Date: 28/01/2020 18:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGOS ALTOS COLABORADOR](
	[colabo_alto_codigo] [numeric](18, 0) NOT NULL,
	[colabo_alto_ejecutivo] [nchar](70) NULL,
	[colabo_alto_gerente_general] [nchar](70) NULL,
	[colabo_alto_financiero_general] [nchar](70) NULL,
	[colabo_alto_vicepresidente_operaciones_tecnologicas] [nchar](70) NULL,
	[colabo_alto_vicepresidente_recursos_humanos] [nchar](70) NULL,
	[colabo_alto_auditor_general] [nchar](70) NULL,
	[colabo_alto_vicepresidente_legal_complice] [nchar](70) NULL,
	[colabo_alto_gerente_transformacion_digital] [nchar](70) NULL,
	[colabo_alto_matriz_banco] [nchar](70) NULL,
 CONSTRAINT [PK_CARGOS ALTOS COLABORADOR] PRIMARY KEY CLUSTERED 
(
	[colabo_alto_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLIENTESDELAEMPRESA]    Script Date: 28/01/2020 18:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTESDELAEMPRESA](
	[cli_codigo] [numeric](18, 0) NOT NULL,
	[cli_nombres] [nchar](70) NULL,
	[cli_apellidos] [nchar](70) NULL,
	[cli_edad] [numeric](18, 0) NULL,
	[cli_sexo] [nchar](70) NULL,
	[cli_telefono] [numeric](18, 0) NULL,
	[cli_direccion] [nchar](70) NULL,
	[cli_provincia] [nchar](70) NULL,
	[cli_cedula/pasaporte] [numeric](18, 0) NULL,
	[cli_estadocivil] [nchar](70) NULL,
	[cli_ocupacion] [nchar](70) NULL,
	[cli_lugar_de_trabajo] [nchar](70) NULL,
	[cli_organizaciondetrabajo] [nchar](70) NULL,
 CONSTRAINT [PK_CLIENTESDELAEMPRESA] PRIMARY KEY CLUSTERED 
(
	[cli_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COLABORADOR_DE_LA_EMPRESA]    Script Date: 28/01/2020 18:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COLABORADOR_DE_LA_EMPRESA](
	[colabo_codigo] [numeric](18, 0) NOT NULL,
	[colabo_nombre] [nchar](70) NULL,
	[colabo_apellido] [nchar](70) NULL,
	[colabo_edad] [numeric](18, 0) NULL,
	[colabo_sexo] [nchar](30) NULL,
	[colabo_cedula/pasaporte] [numeric](18, 0) NULL,
	[colabo_telefono] [numeric](18, 0) NULL,
	[colabo_direccion] [nchar](100) NULL,
	[colabo_ciudad] [nchar](70) NULL,
	[colabo_sucursal] [nchar](70) NULL,
	[colabo_oficina] [nchar](70) NULL,
 CONSTRAINT [PK_COLABORADOR_DE_LA_EMPRESA] PRIMARY KEY CLUSTERED 
(
	[colabo_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUENTAS]    Script Date: 28/01/2020 18:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUENTAS](
	[cuen_codigo] [numeric](18, 0) NOT NULL,
	[cuen_ahorro] [numeric](18, 0) NULL,
	[cuen_corriente] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_CUENTAS] PRIMARY KEY CLUSTERED 
(
	[cuen_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SUCURSALESDELAEMPRESA]    Script Date: 28/01/2020 18:26:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUCURSALESDELAEMPRESA](
	[sucur_codigo] [numeric](18, 0) NOT NULL,
	[sucur_nombre_oficina] [nchar](70) NULL,
	[sucur_tipo_oficina] [nchar](70) NOT NULL,
	[sucur_telefono] [numeric](18, 0) NULL,
	[sucur_provincia] [nchar](70) NULL,
	[sucur_canton] [nchar](70) NULL,
	[sucur_horariodeatencion] [nchar](70) NULL,
	[sucur_feriados] [nchar](70) NULL,
	[sucur_gerentegeneral] [nchar](70) NULL,
	[sucur_direcion] [nchar](70) NULL,
 CONSTRAINT [PK_SUCURSALESDELAEMPRESA] PRIMARY KEY CLUSTERED 
(
	[sucur_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[COLABORADOR_DE_LA_EMPRESA]  WITH CHECK ADD  CONSTRAINT [ codigo de cada colaborador] FOREIGN KEY([colabo_codigo])
REFERENCES [dbo].[CARGOS ALTOS COLABORADOR] ([colabo_alto_codigo])
GO
ALTER TABLE [dbo].[COLABORADOR_DE_LA_EMPRESA] CHECK CONSTRAINT [ codigo de cada colaborador]
GO
ALTER TABLE [dbo].[COLABORADOR_DE_LA_EMPRESA]  WITH CHECK ADD  CONSTRAINT [codigo de la empresa colaborador] FOREIGN KEY([colabo_codigo])
REFERENCES [dbo].[SUCURSALESDELAEMPRESA] ([sucur_codigo])
GO
ALTER TABLE [dbo].[COLABORADOR_DE_LA_EMPRESA] CHECK CONSTRAINT [codigo de la empresa colaborador]
GO
ALTER TABLE [dbo].[CUENTAS]  WITH CHECK ADD  CONSTRAINT [codigo para cliente ] FOREIGN KEY([cuen_codigo])
REFERENCES [dbo].[CLIENTESDELAEMPRESA] ([cli_codigo])
GO
ALTER TABLE [dbo].[CUENTAS] CHECK CONSTRAINT [codigo para cliente ]
GO
USE [master]
GO
ALTER DATABASE [BANCOPICHINCHA.S,A ] SET  READ_WRITE 
GO
