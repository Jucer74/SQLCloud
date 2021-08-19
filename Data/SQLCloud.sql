/****** Object:  Table [dbo].[People]    Script Date: 4/30/2021 1:10:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Email] [nvarchar](320) NOT NULL,
	[PhoneNumber] [nvarchar](20) NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[DateOfBirth]
      ,[Email]
      ,[PhoneNumber]
  FROM [dbo].[People]

TRUNCATE TABLE [dbo].[People]

DBCC CHECKIDENT ('[dbo].[People]', RESEED, 1)  