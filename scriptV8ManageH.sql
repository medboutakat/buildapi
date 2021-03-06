USE [ManageHospitalDB]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Roles_RoleId]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Contacts_ContactId]
GO
ALTER TABLE [dbo].[TestResults] DROP CONSTRAINT [FK_TestResults_Tests_TestId]
GO
ALTER TABLE [dbo].[TestResults] DROP CONSTRAINT [FK_TestResults_Documents_DocumentsId]
GO
ALTER TABLE [dbo].[Rooms] DROP CONSTRAINT [FK_Rooms_RoomCategories_RoomCategoryId]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_ProductCategories_ProductCategoryId]
GO
ALTER TABLE [dbo].[ProductImages] DROP CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Operations] DROP CONSTRAINT [FK_Operations_Rooms_RoomId]
GO
ALTER TABLE [dbo].[Operations] DROP CONSTRAINT [FK_Operations_OperationCategories_OperationCategoryId]
GO
ALTER TABLE [dbo].[OperationResults] DROP CONSTRAINT [FK_OperationResults_Tests_TestId]
GO
ALTER TABLE [dbo].[OperationResults] DROP CONSTRAINT [FK_OperationResults_Documents_DocumentsId]
GO
ALTER TABLE [dbo].[OperationResults] DROP CONSTRAINT [FK_OperationResults_Doctors_DoctorsId]
GO
ALTER TABLE [dbo].[Materials] DROP CONSTRAINT [FK_Materials_Rooms_RoomId]
GO
ALTER TABLE [dbo].[Materials] DROP CONSTRAINT [FK_Materials_MaterialStatuses_MaterialStatusId]
GO
ALTER TABLE [dbo].[Materials] DROP CONSTRAINT [FK_Materials_MaterialCategories_MaterialCategoryId]
GO
ALTER TABLE [dbo].[InvoiceDetails] DROP CONSTRAINT [FK_InvoiceDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[InvoiceDetails] DROP CONSTRAINT [FK_InvoiceDetails_Invoices_InvoiceId]
GO
ALTER TABLE [dbo].[Hospitals] DROP CONSTRAINT [FK_Hospitals_HospitalCategories_HospitalCategoryId]
GO
ALTER TABLE [dbo].[Hospitals] DROP CONSTRAINT [FK_Hospitals_Contacts_ContactId]
GO
ALTER TABLE [dbo].[Doctors] DROP CONSTRAINT [FK_Doctors_DoctorCategories_DoctorCategoryId]
GO
ALTER TABLE [dbo].[Doctors] DROP CONSTRAINT [FK_Doctors_Contacts_ContactId]
GO
ALTER TABLE [dbo].[DoctorOperations] DROP CONSTRAINT [FK_DoctorOperations_Operations_OperationId]
GO
ALTER TABLE [dbo].[DoctorOperations] DROP CONSTRAINT [FK_DoctorOperations_Doctors_DoctorId]
GO
ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_Contacts_Cities_CityId]
GO
ALTER TABLE [dbo].[Cities] DROP CONSTRAINT [FK_Cities_Regions_RegionId]
GO
ALTER TABLE [dbo].[Assutance] DROP CONSTRAINT [FK_Assutance_Contacts_ContactId]
GO
ALTER TABLE [dbo].[Assurances] DROP CONSTRAINT [FK_Assurances_Documents_DocumentsId]
GO
ALTER TABLE [dbo].[Appointements] DROP CONSTRAINT [FK_Appointements_Users_PatienceId]
GO
ALTER TABLE [dbo].[Appointements] DROP CONSTRAINT [FK_Appointements_Hospitals_HospitalId]
GO
ALTER TABLE [dbo].[Appointements] DROP CONSTRAINT [FK_Appointements_Assutance_AssutanceId]
GO
ALTER TABLE [dbo].[Appointements] DROP CONSTRAINT [FK_Appointements_AppointementStatuss_StatusId]
GO
/****** Object:  Index [IX_Users_RoleId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Users_RoleId] ON [dbo].[Users]
GO
/****** Object:  Index [IX_Users_ContactId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Users_ContactId] ON [dbo].[Users]
GO
/****** Object:  Index [IX_TestResults_TestId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_TestResults_TestId] ON [dbo].[TestResults]
GO
/****** Object:  Index [IX_TestResults_DocumentsId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_TestResults_DocumentsId] ON [dbo].[TestResults]
GO
/****** Object:  Index [IX_Rooms_RoomCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Rooms_RoomCategoryId] ON [dbo].[Rooms]
GO
/****** Object:  Index [IX_Products_ProductCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Products_ProductCategoryId] ON [dbo].[Products]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
GO
/****** Object:  Index [IX_Operations_RoomId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Operations_RoomId] ON [dbo].[Operations]
GO
/****** Object:  Index [IX_Operations_OperationCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Operations_OperationCategoryId] ON [dbo].[Operations]
GO
/****** Object:  Index [IX_OperationResults_TestId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_OperationResults_TestId] ON [dbo].[OperationResults]
GO
/****** Object:  Index [IX_OperationResults_DocumentsId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_OperationResults_DocumentsId] ON [dbo].[OperationResults]
GO
/****** Object:  Index [IX_OperationResults_DoctorsId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_OperationResults_DoctorsId] ON [dbo].[OperationResults]
GO
/****** Object:  Index [IX_Materials_RoomId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Materials_RoomId] ON [dbo].[Materials]
GO
/****** Object:  Index [IX_Materials_MaterialStatusId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Materials_MaterialStatusId] ON [dbo].[Materials]
GO
/****** Object:  Index [IX_Materials_MaterialCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Materials_MaterialCategoryId] ON [dbo].[Materials]
GO
/****** Object:  Index [IX_InvoiceDetails_ProductId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_InvoiceDetails_ProductId] ON [dbo].[InvoiceDetails]
GO
/****** Object:  Index [IX_InvoiceDetails_InvoiceId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_InvoiceDetails_InvoiceId] ON [dbo].[InvoiceDetails]
GO
/****** Object:  Index [IX_Hospitals_HospitalCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Hospitals_HospitalCategoryId] ON [dbo].[Hospitals]
GO
/****** Object:  Index [IX_Hospitals_ContactId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Hospitals_ContactId] ON [dbo].[Hospitals]
GO
/****** Object:  Index [IX_Doctors_DoctorCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Doctors_DoctorCategoryId] ON [dbo].[Doctors]
GO
/****** Object:  Index [IX_Doctors_ContactId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Doctors_ContactId] ON [dbo].[Doctors]
GO
/****** Object:  Index [IX_DoctorOperations_OperationId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_DoctorOperations_OperationId] ON [dbo].[DoctorOperations]
GO
/****** Object:  Index [IX_DoctorOperations_DoctorId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_DoctorOperations_DoctorId] ON [dbo].[DoctorOperations]
GO
/****** Object:  Index [IX_Contacts_CityId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Contacts_CityId] ON [dbo].[Contacts]
GO
/****** Object:  Index [IX_Cities_RegionId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Cities_RegionId] ON [dbo].[Cities]
GO
/****** Object:  Index [IX_Assutance_ContactId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Assutance_ContactId] ON [dbo].[Assutance]
GO
/****** Object:  Index [IX_Assurances_DocumentsId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Assurances_DocumentsId] ON [dbo].[Assurances]
GO
/****** Object:  Index [IX_Appointements_StatusId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Appointements_StatusId] ON [dbo].[Appointements]
GO
/****** Object:  Index [IX_Appointements_PatienceId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Appointements_PatienceId] ON [dbo].[Appointements]
GO
/****** Object:  Index [IX_Appointements_HospitalId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Appointements_HospitalId] ON [dbo].[Appointements]
GO
/****** Object:  Index [IX_Appointements_AssutanceId]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP INDEX [IX_Appointements_AssutanceId] ON [dbo].[Appointements]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Tests]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Tests]
GO
/****** Object:  Table [dbo].[TestResults]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[TestResults]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Settings]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Rooms]
GO
/****** Object:  Table [dbo].[RoomCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[RoomCategories]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Regions]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[ProductImages]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[ProductCategories]
GO
/****** Object:  Table [dbo].[Operations]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Operations]
GO
/****** Object:  Table [dbo].[OperationResults]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[OperationResults]
GO
/****** Object:  Table [dbo].[OperationCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[OperationCategories]
GO
/****** Object:  Table [dbo].[MaterialStatuses]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[MaterialStatuses]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Materials]
GO
/****** Object:  Table [dbo].[MaterialCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[MaterialCategories]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Invoices]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[InvoiceDetails]
GO
/****** Object:  Table [dbo].[Hospitals]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Hospitals]
GO
/****** Object:  Table [dbo].[HospitalCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[HospitalCategories]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Documents]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Doctors]
GO
/****** Object:  Table [dbo].[DoctorOperations]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[DoctorOperations]
GO
/****** Object:  Table [dbo].[DoctorCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[DoctorCategories]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Contacts]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Cities]
GO
/****** Object:  Table [dbo].[Assutance]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Assutance]
GO
/****** Object:  Table [dbo].[Assurances]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Assurances]
GO
/****** Object:  Table [dbo].[AppointementStatuss]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[AppointementStatuss]
GO
/****** Object:  Table [dbo].[Appointements]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[Appointements]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [ManageHospitalDB]    Script Date: 5/2/2020 12:43:09 AM ******/
DROP DATABASE [ManageHospitalDB]
GO
/****** Object:  Database [ManageHospitalDB]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE DATABASE [ManageHospitalDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ManageHospitalDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ManageHospitalDB.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ManageHospitalDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ManageHospitalDB_log.ldf' , SIZE = 1344KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ManageHospitalDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ManageHospitalDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ManageHospitalDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ManageHospitalDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ManageHospitalDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ManageHospitalDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ManageHospitalDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ManageHospitalDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ManageHospitalDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ManageHospitalDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ManageHospitalDB] SET  MULTI_USER 
GO
ALTER DATABASE [ManageHospitalDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ManageHospitalDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ManageHospitalDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ManageHospitalDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ManageHospitalDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Appointements]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointements](
	[Id] [uniqueidentifier] NOT NULL,
	[IdentityNo] [nvarchar](max) NULL,
	[Assurance] [nvarchar](max) NULL,
	[CallTimeStamp] [nvarchar](max) NULL,
	[ReservationTimeStamp] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[StatusId] [uniqueidentifier] NULL,
	[PatienceId] [uniqueidentifier] NULL,
	[AssutanceId] [uniqueidentifier] NULL,
	[HospitalId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Appointements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppointementStatuss]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppointementStatuss](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppointementStatuss] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assurances]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assurances](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[DocumentsId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Assurances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assutance]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assutance](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Sexe] [nvarchar](max) NULL,
	[ContactId] [uniqueidentifier] NULL,
	[Age] [int] NOT NULL,
	[IdentityNo] [nvarchar](max) NULL,
	[Assurance] [nvarchar](max) NULL,
 CONSTRAINT [PK_Assutance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cities]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[RegionId] [int] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Phone1] [nvarchar](max) NULL,
	[Phone2] [nvarchar](max) NULL,
	[WhatsApp] [nvarchar](max) NULL,
	[Fax] [nvarchar](max) NULL,
	[Adress1] [nvarchar](max) NULL,
	[Adress2] [nvarchar](max) NULL,
	[Other] [nvarchar](max) NULL,
	[CityId] [int] NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoctorCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorCategories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_DoctorCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoctorOperations]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorOperations](
	[Id] [uniqueidentifier] NOT NULL,
	[DoctorId] [uniqueidentifier] NULL,
	[OperationId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DoctorOperations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Sexe] [nvarchar](max) NULL,
	[ContactId] [uniqueidentifier] NULL,
	[DoctorCategoryId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Documents]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Documents](
	[Id] [uniqueidentifier] NOT NULL,
	[Subject] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[File] [varbinary](max) NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HospitalCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalCategories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_HospitalCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hospitals]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospitals](
	[Id] [uniqueidentifier] NOT NULL,
	[CountryHealthId] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[History] [nvarchar](max) NULL,
	[CovePath] [nvarchar](max) NULL,
	[PictureProfilePath] [nvarchar](max) NULL,
	[HospitalCategoryId] [uniqueidentifier] NOT NULL,
	[ContactId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Hospitals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Qte] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Tax] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[InvoiceId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[TotalAmont] [decimal](18, 2) NOT NULL,
	[Expedition] [decimal](18, 2) NOT NULL,
	[Livraison] [decimal](18, 2) NOT NULL,
	[Remise] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaterialCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialCategories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_MaterialCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materials]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[MaterialStatusId] [uniqueidentifier] NULL,
	[MaterialCategoryId] [uniqueidentifier] NULL,
	[RoomId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaterialStatuses]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialStatuses](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_MaterialStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OperationCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationCategories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_OperationCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OperationResults]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationResults](
	[Id] [uniqueidentifier] NOT NULL,
	[DatePublish] [datetime2](7) NOT NULL,
	[DocumentsId] [uniqueidentifier] NULL,
	[TestId] [uniqueidentifier] NULL,
	[SentTo] [nvarchar](max) NULL,
	[DoctorsId] [uniqueidentifier] NULL,
	[PatienceState] [nvarchar](max) NULL,
 CONSTRAINT [PK_OperationResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Operations]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operations](
	[Id] [uniqueidentifier] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Price] [nvarchar](max) NULL,
	[TotalStayNight] [nvarchar](max) NULL,
	[OperationCategoryId] [uniqueidentifier] NULL,
	[RoomId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Operations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[Path] [nvarchar](max) NULL,
	[ProductId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[Created] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[SupplierId] [uniqueidentifier] NULL,
	[QuantityPerUnit] [nvarchar](max) NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL,
	[ProductCategoryId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regions]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomCategories]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomCategories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoomCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[RoomNumber] [int] NOT NULL,
	[RoomCategoryId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [uniqueidentifier] NOT NULL,
	[Group] [nvarchar](max) NULL,
	[Key] [nvarchar](max) NULL,
	[Display] [nvarchar](max) NULL,
	[ParseType] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestResults]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestResults](
	[Id] [uniqueidentifier] NOT NULL,
	[DatePublish] [datetime2](7) NOT NULL,
	[DocumentsId] [uniqueidentifier] NULL,
	[TestId] [uniqueidentifier] NULL,
	[SentTo] [nvarchar](max) NULL,
 CONSTRAINT [PK_TestResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tests]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tests](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Decription] [nvarchar](max) NULL,
	[AnalyzeResult] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/2/2020 12:43:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Sexe] [nvarchar](max) NULL,
	[ContactId] [uniqueidentifier] NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Token] [nvarchar](max) NULL,
	[PasswordHash] [varbinary](max) NULL,
	[PasswordSalt] [varbinary](max) NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Age] [int] NULL,
	[IdentityNo] [nvarchar](max) NULL,
	[Assurance] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200502000440_mig2', N'3.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220128192026_RegionAndCitiesMigration', N'3.0.0')
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (1, N'Aïn Harrouda', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (2, N'Ben Yakhlef', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (3, N'Bouskoura', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (4, N'Casablanca', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (5, N'Médiouna', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (6, N'Mohammadia', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (7, N'Tit Mellil', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (8, N'Ben Yakhlef', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (9, N'Bejaâd', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (10, N'Ben Ahmed', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (11, N'Benslimane', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (12, N'Berrechid', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (13, N'Boujniba', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (14, N'Boulanouare', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (15, N'Bouznika', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (16, N'Deroua', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (17, N'El Borouj', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (18, N'El Gara', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (19, N'Guisser', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (20, N'Hattane', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (21, N'Khouribga', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (22, N'Loulad', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (23, N'Oued Zem', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (24, N'Oulad Abbou', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (25, N'Oulad H''Riz Sahel', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (26, N'Oulad M''rah', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (27, N'Oulad Saïd', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (28, N'Oulad Sidi Ben Daoud', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (29, N'Ras El Aïn', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (30, N'Settat', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (31, N'Sidi Rahhal Chataï', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (32, N'Soualem', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (33, N'Azemmour', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (34, N'Bir Jdid', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (35, N'Bouguedra', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (36, N'Echemmaia', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (37, N'El Jadida', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (38, N'Hrara', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (39, N'Ighoud', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (40, N'Jamâat Shaim', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (41, N'Jorf Lasfar', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (42, N'Khemis Zemamra', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (43, N'Laaounate', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (44, N'Moulay Abdallah', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (45, N'Oualidia', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (46, N'Oulad Amrane', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (47, N'Oulad Frej', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (48, N'Oulad Ghadbane', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (49, N'Safi', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (50, N'Sebt El Maârif', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (51, N'Sebt Gzoula', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (52, N'Sidi Ahmed', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (53, N'Sidi Ali Ban Hamdouche', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (54, N'Sidi Bennour', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (55, N'Sidi Bouzid', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (56, N'Sidi Smaïl', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (57, N'Youssoufia', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (58, N'Fès', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (59, N'Aïn Cheggag', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (60, N'Bhalil', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (61, N'Boulemane', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (62, N'El Menzel', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (63, N'Guigou', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (64, N'Imouzzer Kandar', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (65, N'Imouzzer Marmoucha', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (66, N'Missour', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (67, N'Moulay Yaâcoub', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (68, N'Ouled Tayeb', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (69, N'Outat El Haj', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (70, N'Ribate El Kheir', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (71, N'Séfrou', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (72, N'Skhinate', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (73, N'Tafajight', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (74, N'Arbaoua', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (75, N'Aïn Dorij', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (76, N'Dar Gueddari', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (77, N'Had Kourt', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (78, N'Jorf El Melha', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (79, N'Kénitra', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (80, N'Khenichet', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (81, N'Lalla Mimouna', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (82, N'Mechra Bel Ksiri', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (83, N'Mehdia', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (84, N'Moulay Bousselham', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (85, N'Sidi Allal Tazi', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (86, N'Sidi Kacem', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (87, N'Sidi Slimane', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (88, N'Sidi Taibi', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (89, N'Sidi Yahya El Gharb', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (90, N'Souk El Arbaa', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (91, N'Akka', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (92, N'Assa', NULL, 10)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (93, N'Bouizakarne', NULL, 10)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (94, N'El Ouatia', NULL, 10)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (95, N'Es-Semara', NULL, 11)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (96, N'Fam El Hisn', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (97, N'Foum Zguid', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (98, N'Guelmim', NULL, 10)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (99, N'Taghjijt', NULL, 10)
GO
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (100, N'Tan-Tan', NULL, 10)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (101, N'Tata', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (102, N'Zag', NULL, 10)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (103, N'Marrakech', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (104, N'Ait Daoud', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (105, N'Amizmiz', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (106, N'Assahrij', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (107, N'Aït Ourir', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (108, N'Ben Guerir', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (109, N'Chichaoua', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (110, N'El Hanchane', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (111, N'El Kelaâ des Sraghna', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (112, N'Essaouira', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (113, N'Fraïta', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (114, N'Ghmate', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (115, N'Ighounane', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (116, N'Imintanoute', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (117, N'Kattara', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (118, N'Lalla Takerkoust', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (119, N'Loudaya', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (120, N'Lâattaouia', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (121, N'Moulay Brahim', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (122, N'Mzouda', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (123, N'Ounagha', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (124, N'Sid L''Mokhtar', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (125, N'Sid Zouin', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (126, N'Sidi Abdallah Ghiat', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (127, N'Sidi Bou Othmane', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (128, N'Sidi Rahhal', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (129, N'Skhour Rehamna', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (130, N'Smimou', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (131, N'Tafetachte', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (132, N'Tahannaout', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (133, N'Talmest', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (134, N'Tamallalt', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (135, N'Tamanar', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (136, N'Tamansourt', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (137, N'Tameslouht', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (138, N'Tanalt', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (139, N'Zeubelemok', NULL, 7)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (140, N'Meknès?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (141, N'Khénifra', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (142, N'Agourai', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (143, N'Ain Taoujdate', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (144, N'MyAliCherif', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (145, N'Rissani', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (146, N'Amalou Ighriben', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (147, N'Aoufous', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (148, N'Arfoud', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (149, N'Azrou', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (150, N'Aïn Jemaa', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (151, N'Aïn Karma', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (152, N'Aïn Leuh', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (153, N'Aït Boubidmane', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (154, N'Aït Ishaq', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (155, N'Boudnib', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (156, N'Boufakrane', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (157, N'Boumia', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (158, N'El Hajeb', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (159, N'Elkbab', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (160, N'Er-Rich', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (161, N'Errachidia', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (162, N'Gardmit', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (163, N'Goulmima', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (164, N'Gourrama', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (165, N'Had Bouhssoussen', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (166, N'Haj Kaddour', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (167, N'Ifrane', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (168, N'Itzer', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (169, N'Jorf', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (170, N'Kehf Nsour', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (171, N'Kerrouchen', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (172, N'M''haya', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (173, N'M''rirt', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (174, N'Midelt', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (175, N'Moulay Ali Cherif', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (176, N'Moulay Bouazza', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (177, N'Moulay Idriss Zerhoun', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (178, N'Moussaoua', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (179, N'N''Zalat Bni Amar', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (180, N'Ouaoumana', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (181, N'Oued Ifrane', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (182, N'Sabaa Aiyoun', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (183, N'Sebt Jahjouh', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (184, N'Sidi Addi', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (185, N'Tichoute', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (186, N'Tighassaline', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (187, N'Tighza', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (188, N'Timahdite', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (189, N'Tinejdad', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (190, N'Tizguite', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (191, N'Toulal', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (192, N'Tounfite', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (193, N'Zaouia d''Ifrane', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (194, N'Zaïda', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (195, N'Ahfir', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (196, N'Aklim', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (197, N'Al Aroui', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (198, N'Aïn Bni Mathar', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (199, N'Aïn Erreggada', NULL, 2)
GO
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (200, N'Ben Taïeb', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (201, N'Berkane', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (202, N'Bni Ansar', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (203, N'Bni Chiker', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (204, N'Bni Drar', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (205, N'Bni Tadjite', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (206, N'Bouanane', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (207, N'Bouarfa', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (208, N'Bouhdila', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (209, N'Dar El Kebdani', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (210, N'Debdou', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (211, N'Douar Kannine', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (212, N'Driouch', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (213, N'El Aïoun Sidi Mellouk', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (214, N'Farkhana', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (215, N'Figuig', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (216, N'Ihddaden', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (217, N'Jaâdar', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (218, N'Jerada', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (219, N'Kariat Arekmane', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (220, N'Kassita', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (221, N'Kerouna', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (222, N'Laâtamna', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (223, N'Madagh', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (224, N'Midar', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (225, N'Nador', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (226, N'Naima', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (227, N'Oued Heimer', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (228, N'Oujda', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (229, N'Ras El Ma', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (230, N'Saïdia', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (231, N'Selouane', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (232, N'Sidi Boubker', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (233, N'Sidi Slimane Echcharaa', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (234, N'Talsint', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (235, N'Taourirt', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (236, N'Tendrara', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (237, N'Tiztoutine', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (238, N'Touima', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (239, N'Touissit', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (240, N'Zaïo', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (241, N'Zeghanghane', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (242, N'Rabat', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (243, N'Salé', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (244, N'Ain El Aouda', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (245, N'Harhoura', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (246, N'Khémisset', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (247, N'Oulmès', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (248, N'Rommani', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (249, N'Sidi Allal El Bahraoui', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (250, N'Sidi Bouknadel', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (251, N'Skhirate', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (252, N'Tamesna', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (253, N'Témara', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (254, N'Tiddas', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (255, N'Tiflet', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (256, N'Touarga', NULL, 4)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (257, N'Agadir', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (258, N'Agdz', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (259, N'Agni Izimmer', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (260, N'Aït Melloul', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (261, N'Alnif', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (262, N'Anzi', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (263, N'Aoulouz', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (264, N'Aourir', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (265, N'Arazane', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (266, N'Aït Baha', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (267, N'Aït Iaâza', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (268, N'Aït Yalla', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (269, N'Ben Sergao', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (270, N'Biougra', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (271, N'Boumalne-Dadès', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (272, N'Dcheira El Jihadia', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (273, N'Drargua', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (274, N'El Guerdane', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (275, N'Harte Lyamine', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (276, N'Ida Ougnidif', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (277, N'Ifri', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (278, N'Igdamen', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (279, N'Ighil n''Oumgoun', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (280, N'Imassine', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (281, N'Inezgane', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (282, N'Irherm', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (283, N'Kelaat-M''Gouna', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (284, N'Lakhsas', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (285, N'Lakhsass', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (286, N'Lqliâa', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (287, N'M''semrir', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (288, N'Massa (Maroc)', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (289, N'Megousse', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (290, N'Ouarzazate', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (291, N'Oulad Berhil', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (292, N'Oulad Teïma', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (293, N'Sarghine', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (294, N'Sidi Ifni', NULL, 10)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (295, N'Skoura', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (296, N'Tabounte', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (297, N'Tafraout', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (298, N'Taghzout', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (299, N'Tagzen', NULL, 9)
GO
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (300, N'Taliouine', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (301, N'Tamegroute', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (302, N'Tamraght', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (303, N'Tanoumrite Nkob Zagora', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (304, N'Taourirt ait zaghar', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (305, N'Taroudannt', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (306, N'Temsia', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (307, N'Tifnit', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (308, N'Tisgdal', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (309, N'Tiznit', NULL, 9)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (310, N'Toundoute', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (311, N'Zagora', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (312, N'Afourar', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (313, N'Aghbala', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (314, N'Azilal', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (315, N'Aït Majden', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (316, N'Beni Ayat', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (317, N'Béni Mellal', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (318, N'Bin elouidane', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (319, N'Bradia', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (320, N'Bzou', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (321, N'Dar Oulad Zidouh', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (322, N'Demnate', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (323, N'Dra''a', NULL, 8)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (324, N'El Ksiba', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (325, N'Foum Jamaa', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (326, N'Fquih Ben Salah', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (327, N'Kasba Tadla', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (328, N'Ouaouizeght', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (329, N'Oulad Ayad', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (330, N'Oulad M''Barek', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (331, N'Oulad Yaich', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (332, N'Sidi Jaber', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (333, N'Souk Sebt Oulad Nemma', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (334, N'Zaouïat Cheikh', NULL, 5)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (335, N'Tanger?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (336, N'Tétouan?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (337, N'Akchour', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (338, N'Assilah', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (339, N'Bab Berred', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (340, N'Bab Taza', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (341, N'Brikcha', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (342, N'Chefchaouen', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (343, N'Dar Bni Karrich', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (344, N'Dar Chaoui', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (345, N'Fnideq', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (346, N'Gueznaia', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (347, N'Jebha', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (348, N'Karia', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (349, N'Khémis Sahel', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (350, N'Ksar El Kébir', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (351, N'Larache', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (352, N'M''diq', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (353, N'Martil', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (354, N'Moqrisset', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (355, N'Oued Laou', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (356, N'Oued Rmel', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (357, N'Ouazzane', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (358, N'Point Cires', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (359, N'Sidi Lyamani', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (360, N'Sidi Mohamed ben Abdallah el-Raisuni', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (361, N'Zinat', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (362, N'Ajdir?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (363, N'Aknoul?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (364, N'Al Hoceïma?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (365, N'Aït Hichem?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (366, N'Bni Bouayach?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (367, N'Bni Hadifa?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (368, N'Ghafsai?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (369, N'Guercif?', NULL, 2)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (370, N'Imzouren?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (371, N'Inahnahen?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (372, N'Issaguen (Ketama)?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (373, N'Karia (El Jadida)?', NULL, 6)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (374, N'Karia Ba Mohamed?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (375, N'Oued Amlil?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (376, N'Oulad Zbair?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (377, N'Tahla?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (378, N'Tala Tazegwaght?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (379, N'Tamassint?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (380, N'Taounate?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (381, N'Targuist?', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (382, N'Taza?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (383, N'Taïnaste?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (384, N'Thar Es-Souk?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (385, N'Tissa?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (386, N'Tizi Ouasli?', NULL, 3)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (387, N'Laayoune?', NULL, 11)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (388, N'El Marsa?', NULL, 11)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (389, N'Tarfaya?', NULL, 11)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (390, N'Boujdour?', NULL, 11)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (391, N'Awsard', NULL, 12)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (392, N'Oued-Eddahab', NULL, 12)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (393, N'Stehat', NULL, 1)
INSERT [dbo].[Cities] ([Id], [Name], [Remark], [RegionId]) VALUES (394, N'Aït Attab', NULL, 5)
SET IDENTITY_INSERT [dbo].[Cities] OFF
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (1, N'Tanger-Tétouan-Al Hoceïma', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (2, N'l Oriental', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (3, N'Fès-Meknès', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (4, N'Rabat-Salé-Kénitra', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (5, N'Béni Mellal-Khénifra', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (6, N'Casablanca-Settat', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (7, N'Marrakech-Safi', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (8, N'Drâa-Tafilalet', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (9, N'Souss-Massa', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (10, N'Guelmim-Oued Noun', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (11, N'Laâyoune-Sakia El Hamra', NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Remark]) VALUES (12, N'Dakhla-Oued Ed Dahab', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [Remark]) VALUES (N'db763a24-7df6-4cf4-9573-089ddfe996b4', N'Doctor', N'Doctor')
INSERT [dbo].[Roles] ([Id], [Name], [Remark]) VALUES (N'5bb66173-49bf-4d44-88af-1033334bd5e9', N'Assusstance', N'Assusstance')
INSERT [dbo].[Roles] ([Id], [Name], [Remark]) VALUES (N'174957da-6b6c-496f-99ba-61b30fd4c4a1', N'Patient', N'Patient')
INSERT [dbo].[Roles] ([Id], [Name], [Remark]) VALUES (N'252161ac-17da-453e-894c-b993c0d21925', N'Admin', N'Administrator')
/****** Object:  Index [IX_Appointements_AssutanceId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Appointements_AssutanceId] ON [dbo].[Appointements]
(
	[AssutanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Appointements_HospitalId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Appointements_HospitalId] ON [dbo].[Appointements]
(
	[HospitalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Appointements_PatienceId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Appointements_PatienceId] ON [dbo].[Appointements]
(
	[PatienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Appointements_StatusId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Appointements_StatusId] ON [dbo].[Appointements]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Assurances_DocumentsId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Assurances_DocumentsId] ON [dbo].[Assurances]
(
	[DocumentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Assutance_ContactId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Assutance_ContactId] ON [dbo].[Assutance]
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cities_RegionId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cities_RegionId] ON [dbo].[Cities]
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Contacts_CityId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Contacts_CityId] ON [dbo].[Contacts]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DoctorOperations_DoctorId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_DoctorOperations_DoctorId] ON [dbo].[DoctorOperations]
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DoctorOperations_OperationId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_DoctorOperations_OperationId] ON [dbo].[DoctorOperations]
(
	[OperationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Doctors_ContactId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Doctors_ContactId] ON [dbo].[Doctors]
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Doctors_DoctorCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Doctors_DoctorCategoryId] ON [dbo].[Doctors]
(
	[DoctorCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Hospitals_ContactId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Hospitals_ContactId] ON [dbo].[Hospitals]
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Hospitals_HospitalCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Hospitals_HospitalCategoryId] ON [dbo].[Hospitals]
(
	[HospitalCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceDetails_InvoiceId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceDetails_InvoiceId] ON [dbo].[InvoiceDetails]
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvoiceDetails_ProductId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_InvoiceDetails_ProductId] ON [dbo].[InvoiceDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Materials_MaterialCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Materials_MaterialCategoryId] ON [dbo].[Materials]
(
	[MaterialCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Materials_MaterialStatusId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Materials_MaterialStatusId] ON [dbo].[Materials]
(
	[MaterialStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Materials_RoomId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Materials_RoomId] ON [dbo].[Materials]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OperationResults_DoctorsId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_OperationResults_DoctorsId] ON [dbo].[OperationResults]
(
	[DoctorsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OperationResults_DocumentsId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_OperationResults_DocumentsId] ON [dbo].[OperationResults]
(
	[DocumentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OperationResults_TestId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_OperationResults_TestId] ON [dbo].[OperationResults]
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Operations_OperationCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Operations_OperationCategoryId] ON [dbo].[Operations]
(
	[OperationCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Operations_RoomId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Operations_RoomId] ON [dbo].[Operations]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ProductCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_ProductCategoryId] ON [dbo].[Products]
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rooms_RoomCategoryId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Rooms_RoomCategoryId] ON [dbo].[Rooms]
(
	[RoomCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestResults_DocumentsId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_TestResults_DocumentsId] ON [dbo].[TestResults]
(
	[DocumentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestResults_TestId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_TestResults_TestId] ON [dbo].[TestResults]
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_ContactId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Users_ContactId] ON [dbo].[Users]
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_RoleId]    Script Date: 5/2/2020 12:43:09 AM ******/
CREATE NONCLUSTERED INDEX [IX_Users_RoleId] ON [dbo].[Users]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointements]  WITH CHECK ADD  CONSTRAINT [FK_Appointements_AppointementStatuss_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[AppointementStatuss] ([Id])
GO
ALTER TABLE [dbo].[Appointements] CHECK CONSTRAINT [FK_Appointements_AppointementStatuss_StatusId]
GO
ALTER TABLE [dbo].[Appointements]  WITH CHECK ADD  CONSTRAINT [FK_Appointements_Assutance_AssutanceId] FOREIGN KEY([AssutanceId])
REFERENCES [dbo].[Assutance] ([Id])
GO
ALTER TABLE [dbo].[Appointements] CHECK CONSTRAINT [FK_Appointements_Assutance_AssutanceId]
GO
ALTER TABLE [dbo].[Appointements]  WITH CHECK ADD  CONSTRAINT [FK_Appointements_Hospitals_HospitalId] FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Hospitals] ([Id])
GO
ALTER TABLE [dbo].[Appointements] CHECK CONSTRAINT [FK_Appointements_Hospitals_HospitalId]
GO
ALTER TABLE [dbo].[Appointements]  WITH CHECK ADD  CONSTRAINT [FK_Appointements_Users_PatienceId] FOREIGN KEY([PatienceId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Appointements] CHECK CONSTRAINT [FK_Appointements_Users_PatienceId]
GO
ALTER TABLE [dbo].[Assurances]  WITH CHECK ADD  CONSTRAINT [FK_Assurances_Documents_DocumentsId] FOREIGN KEY([DocumentsId])
REFERENCES [dbo].[Documents] ([Id])
GO
ALTER TABLE [dbo].[Assurances] CHECK CONSTRAINT [FK_Assurances_Documents_DocumentsId]
GO
ALTER TABLE [dbo].[Assutance]  WITH CHECK ADD  CONSTRAINT [FK_Assutance_Contacts_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([Id])
GO
ALTER TABLE [dbo].[Assutance] CHECK CONSTRAINT [FK_Assutance_Contacts_ContactId]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Regions_RegionId] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Regions_RegionId]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_Cities_CityId]
GO
ALTER TABLE [dbo].[DoctorOperations]  WITH CHECK ADD  CONSTRAINT [FK_DoctorOperations_Doctors_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[DoctorOperations] CHECK CONSTRAINT [FK_DoctorOperations_Doctors_DoctorId]
GO
ALTER TABLE [dbo].[DoctorOperations]  WITH CHECK ADD  CONSTRAINT [FK_DoctorOperations_Operations_OperationId] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operations] ([Id])
GO
ALTER TABLE [dbo].[DoctorOperations] CHECK CONSTRAINT [FK_DoctorOperations_Operations_OperationId]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Contacts_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([Id])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_Contacts_ContactId]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_DoctorCategories_DoctorCategoryId] FOREIGN KEY([DoctorCategoryId])
REFERENCES [dbo].[DoctorCategories] ([Id])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_DoctorCategories_DoctorCategoryId]
GO
ALTER TABLE [dbo].[Hospitals]  WITH CHECK ADD  CONSTRAINT [FK_Hospitals_Contacts_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hospitals] CHECK CONSTRAINT [FK_Hospitals_Contacts_ContactId]
GO
ALTER TABLE [dbo].[Hospitals]  WITH CHECK ADD  CONSTRAINT [FK_Hospitals_HospitalCategories_HospitalCategoryId] FOREIGN KEY([HospitalCategoryId])
REFERENCES [dbo].[HospitalCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hospitals] CHECK CONSTRAINT [FK_Hospitals_HospitalCategories_HospitalCategoryId]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Invoices_InvoiceId] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoices] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Invoices_InvoiceId]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_MaterialCategories_MaterialCategoryId] FOREIGN KEY([MaterialCategoryId])
REFERENCES [dbo].[MaterialCategories] ([Id])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_MaterialCategories_MaterialCategoryId]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_MaterialStatuses_MaterialStatusId] FOREIGN KEY([MaterialStatusId])
REFERENCES [dbo].[MaterialStatuses] ([Id])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_MaterialStatuses_MaterialStatusId]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_Rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([Id])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_Rooms_RoomId]
GO
ALTER TABLE [dbo].[OperationResults]  WITH CHECK ADD  CONSTRAINT [FK_OperationResults_Doctors_DoctorsId] FOREIGN KEY([DoctorsId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[OperationResults] CHECK CONSTRAINT [FK_OperationResults_Doctors_DoctorsId]
GO
ALTER TABLE [dbo].[OperationResults]  WITH CHECK ADD  CONSTRAINT [FK_OperationResults_Documents_DocumentsId] FOREIGN KEY([DocumentsId])
REFERENCES [dbo].[Documents] ([Id])
GO
ALTER TABLE [dbo].[OperationResults] CHECK CONSTRAINT [FK_OperationResults_Documents_DocumentsId]
GO
ALTER TABLE [dbo].[OperationResults]  WITH CHECK ADD  CONSTRAINT [FK_OperationResults_Tests_TestId] FOREIGN KEY([TestId])
REFERENCES [dbo].[Tests] ([Id])
GO
ALTER TABLE [dbo].[OperationResults] CHECK CONSTRAINT [FK_OperationResults_Tests_TestId]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_Operations_OperationCategories_OperationCategoryId] FOREIGN KEY([OperationCategoryId])
REFERENCES [dbo].[OperationCategories] ([Id])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_Operations_OperationCategories_OperationCategoryId]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK_Operations_Rooms_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([Id])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK_Operations_Rooms_RoomId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductCategories_ProductCategoryId] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductCategories_ProductCategoryId]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_RoomCategories_RoomCategoryId] FOREIGN KEY([RoomCategoryId])
REFERENCES [dbo].[RoomCategories] ([Id])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_RoomCategories_RoomCategoryId]
GO
ALTER TABLE [dbo].[TestResults]  WITH CHECK ADD  CONSTRAINT [FK_TestResults_Documents_DocumentsId] FOREIGN KEY([DocumentsId])
REFERENCES [dbo].[Documents] ([Id])
GO
ALTER TABLE [dbo].[TestResults] CHECK CONSTRAINT [FK_TestResults_Documents_DocumentsId]
GO
ALTER TABLE [dbo].[TestResults]  WITH CHECK ADD  CONSTRAINT [FK_TestResults_Tests_TestId] FOREIGN KEY([TestId])
REFERENCES [dbo].[Tests] ([Id])
GO
ALTER TABLE [dbo].[TestResults] CHECK CONSTRAINT [FK_TestResults_Tests_TestId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Contacts_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Contacts_ContactId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_RoleId]
GO
USE [master]
GO
ALTER DATABASE [ManageHospitalDB] SET  READ_WRITE 
GO
