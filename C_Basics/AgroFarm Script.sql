USE [master]
GO
/****** Object:  Database [AgroFarmDB]    Script Date: 5/22/2019 11:44:40 AM ******/
CREATE DATABASE [AgroFarmDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgroFarmDB', FILENAME = N'C:\Users\aman23.trn\AgroFarmDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AgroFarmDB_log', FILENAME = N'C:\Users\aman23.trn\AgroFarmDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AgroFarmDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgroFarmDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgroFarmDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgroFarmDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgroFarmDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgroFarmDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgroFarmDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgroFarmDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AgroFarmDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgroFarmDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgroFarmDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgroFarmDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgroFarmDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgroFarmDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgroFarmDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgroFarmDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgroFarmDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AgroFarmDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgroFarmDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgroFarmDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgroFarmDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgroFarmDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgroFarmDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AgroFarmDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgroFarmDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AgroFarmDB] SET  MULTI_USER 
GO
ALTER DATABASE [AgroFarmDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgroFarmDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgroFarmDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgroFarmDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AgroFarmDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AgroFarmDB] SET QUERY_STORE = OFF
GO
USE [AgroFarmDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [AgroFarmDB]
GO
USE [AgroFarmDB]
GO
/****** Object:  Sequence [dbo].[Sequence_Farmer]    Script Date: 5/22/2019 11:44:40 AM ******/
CREATE SEQUENCE [dbo].[Sequence_Farmer] 
 AS [bigint]
 START WITH 8
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [AgroFarmDB]
GO
/****** Object:  Sequence [dbo].[sequence_invest]    Script Date: 5/22/2019 11:44:40 AM ******/
CREATE SEQUENCE [dbo].[sequence_invest] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [AgroFarmDB]
GO
/****** Object:  Sequence [dbo].[Sequence_Investor]    Script Date: 5/22/2019 11:44:40 AM ******/
CREATE SEQUENCE [dbo].[Sequence_Investor] 
 AS [bigint]
 START WITH 10
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [AgroFarmDB]
GO
/****** Object:  Sequence [dbo].[sequence_Purchase]    Script Date: 5/22/2019 11:44:40 AM ******/
CREATE SEQUENCE [dbo].[sequence_Purchase] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[admin]    Script Date: 5/22/2019 11:44:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[allocate]    Script Date: 5/22/2019 11:44:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[allocate](
	[FarmerId] [char](4) NOT NULL,
	[InvestorId] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[FarmerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buyers]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyers](
	[BuyerId] [char](4) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Purchasing amount] [numeric](10, 3) NOT NULL,
	[DateOfPurchase] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BuyerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farmers]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farmers](
	[FarmerId] [char](4) NOT NULL,
	[UserName] [varchar](50) NULL,
	[CropName] [varchar](20) NULL,
	[Land] [decimal](18, 0) NOT NULL,
	[TotalProductionCost] [numeric](10, 3) NOT NULL,
 CONSTRAINT [pk_FarmerId] PRIMARY KEY CLUSTERED 
(
	[FarmerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Investors]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Investors](
	[InvestorId] [char](4) NOT NULL,
	[UserName] [varchar](50) NULL,
	[CropName] [varchar](20) NULL,
	[InvestmentAmount] [numeric](10, 3) NOT NULL,
	[ReturnType] [varchar](20) NOT NULL,
	[Returns] [numeric](10, 3) NOT NULL,
 CONSTRAINT [pk_InvestorId] PRIMARY KEY CLUSTERED 
(
	[InvestorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kart]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kart](
	[KartId] [bigint] IDENTITY(1000,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[CropName] [varchar](20) NULL,
	[ImgData] [varchar](500) NULL,
	[QuantityPurchased] [smallint] NOT NULL,
 CONSTRAINT [pk_Kart] PRIMARY KEY CLUSTERED 
(
	[KartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [bigint] IDENTITY(1000,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[CropName] [varchar](20) NULL,
	[ImgData] [varchar](500) NULL,
	[QuantityPurchased] [smallint] NOT NULL,
	[DateOfPurchase] [datetime] NOT NULL,
 CONSTRAINT [pk_order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeofCrops]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeofCrops](
	[CropId] [char](4) NOT NULL,
	[CropName] [varchar](20) NULL,
	[ImgData] [varchar](500) NULL,
	[TimePeriod] [decimal](18, 0) NOT NULL,
	[ProductionCost] [decimal](18, 0) NOT NULL,
	[MarketValue] [decimal](18, 0) NOT NULL,
 CONSTRAINT [pk_CropId] PRIMARY KEY CLUSTERED 
(
	[CropId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeofReturn]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeofReturn](
	[CropId] [char](4) NOT NULL,
	[FixedReturn] [numeric](18, 0) NOT NULL,
	[ProfitSharing] [numeric](18, 0) NOT NULL,
	[ProductMaterial] [numeric](18, 0) NOT NULL,
 CONSTRAINT [pk_CropI] PRIMARY KEY CLUSTERED 
(
	[CropId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](50) NOT NULL,
	[Name] [varchar](20) NULL,
	[UserPassword] [varchar](8) NOT NULL,
	[ImgData] [varchar](500) NULL,
	[RoleId] [tinyint] NULL,
	[Gender] [char](1) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[PhoneNumber] [numeric](10, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin', N'admin@123')
INSERT [dbo].[Farmers] ([FarmerId], [UserName], [CropName], [Land], [TotalProductionCost]) VALUES (N'F15 ', N'aarti@gmail.com', N'Paddy', CAST(50 AS Decimal(18, 0)), CAST(0.000 AS Numeric(10, 3)))
INSERT [dbo].[TypeofCrops] ([CropId], [CropName], [ImgData], [TimePeriod], [ProductionCost], [MarketValue]) VALUES (N'C1  ', N'Paddy', N'~/RegistrationImage/paddy.jpg', CAST(3 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[TypeofCrops] ([CropId], [CropName], [ImgData], [TimePeriod], [ProductionCost], [MarketValue]) VALUES (N'C2  ', N'Wheat', N'~/RegistrationImage/wheat.jpg', CAST(6 AS Decimal(18, 0)), CAST(300 AS Decimal(18, 0)), CAST(350 AS Decimal(18, 0)))
INSERT [dbo].[TypeofCrops] ([CropId], [CropName], [ImgData], [TimePeriod], [ProductionCost], [MarketValue]) VALUES (N'C24 ', N'Cauliflower', N'~/RegistrationImage/~/RegistrationImage/maize.jpg', CAST(8 AS Decimal(18, 0)), CAST(400 AS Decimal(18, 0)), CAST(340 AS Decimal(18, 0)))
INSERT [dbo].[TypeofCrops] ([CropId], [CropName], [ImgData], [TimePeriod], [ProductionCost], [MarketValue]) VALUES (N'C3  ', N'Jowar', N'~/RegistrationImage/jowar.jpg', CAST(9 AS Decimal(18, 0)), CAST(290 AS Decimal(18, 0)), CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[TypeofCrops] ([CropId], [CropName], [ImgData], [TimePeriod], [ProductionCost], [MarketValue]) VALUES (N'C4  ', N'Bajra', N'~/RegistrationImage/bajra.jpg', CAST(12 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)))
INSERT [dbo].[TypeofCrops] ([CropId], [CropName], [ImgData], [TimePeriod], [ProductionCost], [MarketValue]) VALUES (N'C5  ', N'Mushroom', N'~/RegistrationImage/mushroom.jpg', CAST(3 AS Decimal(18, 0)), CAST(400 AS Decimal(18, 0)), CAST(470 AS Decimal(18, 0)))
INSERT [dbo].[TypeofCrops] ([CropId], [CropName], [ImgData], [TimePeriod], [ProductionCost], [MarketValue]) VALUES (N'C6  ', N'Maize', N'~/RegistrationImage/maize.jpg', CAST(6 AS Decimal(18, 0)), CAST(321 AS Decimal(18, 0)), CAST(330 AS Decimal(18, 0)))
INSERT [dbo].[TypeofReturn] ([CropId], [FixedReturn], [ProfitSharing], [ProductMaterial]) VALUES (N'C1  ', CAST(500 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)))
INSERT [dbo].[TypeofReturn] ([CropId], [FixedReturn], [ProfitSharing], [ProductMaterial]) VALUES (N'C2  ', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[TypeofReturn] ([CropId], [FixedReturn], [ProfitSharing], [ProductMaterial]) VALUES (N'C3  ', CAST(700 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(400 AS Numeric(18, 0)))
INSERT [dbo].[TypeofReturn] ([CropId], [FixedReturn], [ProfitSharing], [ProductMaterial]) VALUES (N'C30 ', CAST(360 AS Numeric(18, 0)), CAST(440 AS Numeric(18, 0)), CAST(480 AS Numeric(18, 0)))
INSERT [dbo].[TypeofReturn] ([CropId], [FixedReturn], [ProfitSharing], [ProductMaterial]) VALUES (N'C4  ', CAST(400 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)))
INSERT [dbo].[TypeofReturn] ([CropId], [FixedReturn], [ProfitSharing], [ProductMaterial]) VALUES (N'C5  ', CAST(300 AS Numeric(18, 0)), CAST(100 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)))
INSERT [dbo].[TypeofReturn] ([CropId], [FixedReturn], [ProfitSharing], [ProductMaterial]) VALUES (N'C6  ', CAST(800 AS Numeric(18, 0)), CAST(100 AS Numeric(18, 0)), CAST(700 AS Numeric(18, 0)))
INSERT [dbo].[Users] ([UserName], [Name], [UserPassword], [ImgData], [RoleId], [Gender], [Address], [PhoneNumber]) VALUES (N'5@21.069', N'Alice', N'SGTY@452', NULL, 2, N'F', N'Andrew Circuit', CAST(5821400369 AS Numeric(10, 0)))
INSERT [dbo].[Users] ([UserName], [Name], [UserPassword], [ImgData], [RoleId], [Gender], [Address], [PhoneNumber]) VALUES (N'5@69.878', N'Nicole', N'FRTY@559', NULL, 1, N'M', N'Circle Road', CAST(5869001478 AS Numeric(10, 0)))
INSERT [dbo].[Users] ([UserName], [Name], [UserPassword], [ImgData], [RoleId], [Gender], [Address], [PhoneNumber]) VALUES (N'7@85.236', N'Harry', N'HARR@895', NULL, 3, N'M', N'Inner Road', CAST(7856230236 AS Numeric(10, 0)))
INSERT [dbo].[Users] ([UserName], [Name], [UserPassword], [ImgData], [RoleId], [Gender], [Address], [PhoneNumber]) VALUES (N'8@54.358', N'Franken', N'XCVF@134', NULL, 3, N'M', N'Fauntleroy Circus', CAST(8541023358 AS Numeric(10, 0)))
INSERT [dbo].[Users] ([UserName], [Name], [UserPassword], [ImgData], [RoleId], [Gender], [Address], [PhoneNumber]) VALUES (N'9@68.401', N'August', N'OOIU@013', NULL, 2, N'F', N'Sparky Ridge Road', CAST(9685234001 AS Numeric(10, 0)))
INSERT [dbo].[Users] ([UserName], [Name], [UserPassword], [ImgData], [RoleId], [Gender], [Address], [PhoneNumber]) VALUES (N'aarti@gmail.com', N'John', N'Aman!10.', N'~/RegistrationImage/farmer1.jpg', 3, N'M', N'Delhi', CAST(9955664321 AS Numeric(10, 0)))
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__allocate__41996EDF4FF590B0]    Script Date: 5/22/2019 11:44:41 AM ******/
ALTER TABLE [dbo].[allocate] ADD UNIQUE NONCLUSTERED 
(
	[InvestorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Buyers] ADD  DEFAULT (getdate()) FOR [DateOfPurchase]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [DateOfPurchase]
GO
ALTER TABLE [dbo].[allocate]  WITH CHECK ADD FOREIGN KEY([FarmerId])
REFERENCES [dbo].[Farmers] ([FarmerId])
GO
ALTER TABLE [dbo].[allocate]  WITH CHECK ADD FOREIGN KEY([InvestorId])
REFERENCES [dbo].[Investors] ([InvestorId])
GO
ALTER TABLE [dbo].[Buyers]  WITH CHECK ADD  CONSTRAINT [fk_EmailI] FOREIGN KEY([UserName])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Buyers] CHECK CONSTRAINT [fk_EmailI]
GO
ALTER TABLE [dbo].[Farmers]  WITH CHECK ADD FOREIGN KEY([UserName])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Investors]  WITH CHECK ADD FOREIGN KEY([UserName])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[kart]  WITH CHECK ADD  CONSTRAINT [fk_Emai] FOREIGN KEY([UserName])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[kart] CHECK CONSTRAINT [fk_Emai]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_Em] FOREIGN KEY([UserName])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_Em]
GO
ALTER TABLE [dbo].[Buyers]  WITH CHECK ADD  CONSTRAINT [chk_DateOfPurch] CHECK  (([DateOfPurchase]<=getdate()))
GO
ALTER TABLE [dbo].[Buyers] CHECK CONSTRAINT [chk_DateOfPurch]
GO
ALTER TABLE [dbo].[Farmers]  WITH CHECK ADD CHECK  (([Land]<(1000)))
GO
ALTER TABLE [dbo].[Investors]  WITH CHECK ADD CHECK  (([InvestmentAmount]<(1000000)))
GO
ALTER TABLE [dbo].[kart]  WITH CHECK ADD  CONSTRAINT [chk_QuantityPurchase] CHECK  (([QuantityPurchased]>(0)))
GO
ALTER TABLE [dbo].[kart] CHECK CONSTRAINT [chk_QuantityPurchase]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [chk_Date] CHECK  (([DateOfPurchase]<=getdate()))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [chk_Date]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [chk_Quantity] CHECK  (([QuantityPurchased]>(0)))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [chk_Quantity]
GO
ALTER TABLE [dbo].[TypeofCrops]  WITH CHECK ADD  CONSTRAINT [chk_CropId] CHECK  (([CropId] like 'C%'))
GO
ALTER TABLE [dbo].[TypeofCrops] CHECK CONSTRAINT [chk_CropId]
GO
ALTER TABLE [dbo].[TypeofReturn]  WITH CHECK ADD  CONSTRAINT [chk_C] CHECK  (([CropId] like 'C%'))
GO
ALTER TABLE [dbo].[TypeofReturn] CHECK CONSTRAINT [chk_C]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [chk_email] CHECK  (([UserName] like '%@%.___'))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [chk_email]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [chk_Gender] CHECK  (([Gender]='F' OR [Gender]='M'))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [chk_Gender]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  ((len([Address])<=(200)))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  ((len([Name])<=(20)))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([PhoneNumber] like '%[0-9]%' AND len([PhoneNumber])=(10)))
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([UserPassword] like '%[0-9]%' AND [UserPassword] like '%[a-z]%' AND [UserPassword] like '%[!@#$%a^&()-_+=.,;:"`~]%' AND len([UserPassword])>=(8) AND len([UserPassword])<(15)))
GO
/****** Object:  StoredProcedure [dbo].[usp_AddFarmers]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_AddFarmers]
(
   	@UserName VARCHAR(15),
	@CropName varchar(20),
    @Land decimal 
	
)
AS
BEGIN
DECLARE @CropId CHAR(4) ,@TotalProductionCost  Numeric(10,3),@ProductionCost decimal ,
 @FarmerID char(4),@nextValue int = next value for Sequence_Farmer,@nextValue1 int = next value for sequence_invest
	BEGIN TRY
	
		IF (@CropName IS NULL)
			RETURN -2
		if NOT EXISTS (SELECT CropName from TypeofCrops WHERE CropName=@CropName)
		return -3
		IF ( @Land  IS NULL)
			RETURN -4

	  select @FarmerID = 'F' + convert(char(2),@nextValue)

	   --SELECT  @CropId= CropId from TypeofCrops WHERE CropName=@CropName
	    SELECT  @ProductionCost=ProductionCost from TypeofCrops WHERE  CropName=@CropName
		SET @TotalProductionCost =@Land * @ProductionCost
	   --select top(1) @InvestorId=i.investorId from Investors i inner join  farmers f on i.CropId=f.CropId and @TotalProductionCost <=InvestmentAmount 
	 
		select @FarmerID,@UserName,@CropId,@Land,@TotalProductionCost
		INSERT INTO Farmers(FarmerId,UserName, CropName, Land, TotalProductionCost) VALUES 
		(@FarmerID,@UserName,@CropName,@Land,@TotalProductionCost)
		RETURN 1
	END TRY
	BEGIN CATCH
		select ERROR_MESSAGE() as ErrorMessage;
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AddInvestors]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_AddInvestors]
( 
	@UserName VARCHAR(15),
	@CropName VARCHAR(20) ,
   @InvestmentAmount  Numeric(10,3),
	@ReturnType Varchar(20) 
)
AS
BEGIN
DECLARE @CropId CHAR(4) ,@FixedReturn Numeric ,@ProfitSharing Numeric ,@ProductMaterial Numeric,
		@Cost Numeric(10,3), @Land decimal ,@marketvalue decimal ,@Returns numeric(10,3) ,@InvestorID char(4),
		@nextValue int = next value for Sequence_Investor
	BEGIN TRY
		IF (@CropName IS NULL)
			RETURN -2
	   if( @InvestmentAmount IS NULL)
	      return -3
		if NOT EXISTS (SELECT CropName from TypeofCrops WHERE CropName=@CropName)
		return -4
		IF ( @ReturnType  IS NULL)
			RETURN -5
	
	select @InvestorID = 'I' + convert(char(2),@nextValue)
	
	--SELECT  @CropId=CropId from TypeofCrops WHERE CropName=@CropName
	    if(@ReturnType ='Fixed Return')
		begin
		--SELECT @marketvalue= MarketValue, @CropId= CropId from TypeofCrops WHERE CropName=@CropName
		--select @FixedReturn=FixedReturn  from TypeofReturn WHERE @CropId= CropId
		--select @Land=Land,@Cost=TotalProductionCost from Farmers  where investorId IS NULL AND @InvestmentAmount >= TotalProductionCost
		--set @Returns=@cost+@FixedReturn*@cost/100
	  set @Returns=0
		end
		else if(@ReturnType ='Profit sharing')
			begin
		--SELECT @marketvalue= MarketValue, @CropId= CropId from TypeofCrops WHERE CropName=@CropName
		--select @FixedReturn=FixedReturn  from TypeofReturn WHERE @CropId= CropId
		--select @Land=Land,@Cost=TotalProductionCost from Farmers  where investorId IS NULL AND @InvestmentAmount >= TotalProductionCost
		--set @Returns=@Cost+@ProfitSharing * (@Marketvalue*@land-@Cost)/100
		 set @Returns=0
		end
		else
		begin
		--SELECT @marketvalue= MarketValue, @CropId= CropId from TypeofCrops WHERE CropName=@CropName
		--select @FixedReturn=FixedReturn  from TypeofReturn WHERE @CropId= CropId
		--select @Land=Land,@Cost=TotalProductionCost from Farmers  where investorId IS NULL AND @InvestmentAmount >= TotalProductionCost
		--set @Returns= (@ProductMaterial*@Marketvalue/100 )*@land
		set @Returns=0
		end
		select @InvestorID,@UserName,@CropId,@InvestmentAmount,@ReturnType,@Returns
		INSERT INTO Investors(InvestorId,UserName,CropName,InvestmentAmount,ReturnType,[Returns]) VALUES 
		(@InvestorID,@UserName,@CropName,@InvestmentAmount,@ReturnType,@Returns)
		RETURN 1
	END TRY
	BEGIN CATCH
		RETURN -99
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_RegisterUser]    Script Date: 5/22/2019 11:44:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_RegisterUser]
(
	@UserName VARCHAR(50) ,
    @Name varchar(15),
	@UserPassword VARCHAR(15),
	@image varchar(500),
    @Role varchar(15),
	@Gender CHAR ,
	@Address VARCHAR(200),
	@PhoneNumber NUMERIC(10)

)
AS
BEGIN
	DECLARE @RoleId TINYINT
	BEGIN TRY
		IF (LEN(@UserName )<4 OR LEN(@UserName)>50 OR (@UserName IS NULL))
			RETURN -1
	   IF (LEN( @Name )<4 OR LEN( @Name)>50 OR (@Name IS NULL))
			RETURN -6
		IF (LEN(@UserPassword)<8 OR LEN(@UserPassword)>15 OR (@UserPassword IS NULL))
			RETURN -2
		IF (COUNT(@PhoneNumber)>10)
			RETURN -7
		IF (@Gender<>'F' AND @Gender<>'M' OR (@Gender Is NULL))
			RETURN -4	
		IF (@Address IS NULL)
			RETURN -5
		if(@Role='Farmers')
		 begin
		set  @RoleId=1
		select @RoleId
		 end
		else if(@Role='Investors')
		begin
		set @RoleId=2
		select @RoleId
		end
	    else
		begin
		set @RoleId=3
		select @RoleId
		end
INSERT INTO Users(UserName,[Name],UserPassword,ImgData,[RoleId],Gender,[Address],PhoneNumber) VALUES 
(@UserName, @Name,@UserPassword,@image,@RoleId, @Gender,  @Address,@PhoneNumber)
 RETURN 1
	END TRY
	BEGIN CATCH
		RETURN -99
	END CATCH
END
GO
USE [master]
GO
ALTER DATABASE [AgroFarmDB] SET  READ_WRITE 
GO
