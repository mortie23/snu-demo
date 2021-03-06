USE [DATABASENAME]
/****** Object:  Table [dbo].[R_TABLE_LABEL]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_TABLE_LABEL](
	[TABLENAME] [nvarchar](128) NOT NULL,
	[LABEL] [nvarchar](128) NULL
	PRIMARY KEY (TABLENAME)
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_MEASURES]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_MEASURES](
	[COLUMNNAME] [nvarchar](128) NOT NULL,
	[TABLENAME] [nvarchar](128) NOT NULL
	PRIMARY KEY (COLUMNNAME, TABLENAME)
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_FACTS]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_FACTS](
	[TABLENAME] [nvarchar](128) NOT NULL PRIMARY KEY
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_DATABASE_LABEL]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_DATABASE_LABEL](
	[LABEL] [nvarchar](128) NOT NULL PRIMARY KEY
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_COUNT_DEFAULT]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_COUNT_DEFAULT](
	[TABLENAME] [nvarchar](128) NOT NULL PRIMARY KEY,
	[COLUMNNAME] [nvarchar](128) NULL
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_COLUMN_LABEL]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_COLUMN_LABEL](
	[TABLENAME] [nvarchar](128) NOT NULL,
	[COLUMNNAME] [nvarchar](128) NOT NULL,
	[LABEL] [nvarchar](128) NULL
	PRIMARY KEY (TABLENAME, COLUMNNAME)
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_CLEANSING_RULES]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_CLEANSING_RULES](
	[TABLENAME] [nvarchar](128) NOT NULL,
	[COLUMNNAME] [nvarchar](128) NOT NULL,
	[RULETYPE] [nvarchar](128) NULL,
	[RULEPARAM] [nvarchar](128) NULL
	PRIMARY KEY (TABLENAME, COLUMNNAME)
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_CLASSIFICATIONS]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_CLASSIFICATIONS](
	[TABLENAME] [nvarchar](128) NOT NULL PRIMARY KEY,
	[VALUECODE] [nvarchar](128) NULL,
	[DISPLAYNAME] [nvarchar](128) NULL
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_BINS]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_BINS](
	[TABLENAME] [nvarchar](128) NOT NULL,
	[COLUMNNAME] [nvarchar](128) NOT NULL,
	[BINVALUE] [nvarchar](128) NOT NULL
	PRIMARY KEY (TABLENAME, COLUMNNAME, BINVALUE)
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_GROUP]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_GROUP](
	[TYPE] [nvarchar](64) NOT NULL,
	[DISPLAYNAME] [nvarchar](128) NOT NULL,
	[TABLENAME] [nvarchar](128) NOT NULL,
	[COLUMNNAME] [nvarchar](128) NOT NULL,
	[PARENTNAME] [nvarchar](128) NULL
	PRIMARY KEY (TYPE, DISPLAYNAME, TABLENAME, COLUMNNAME)
) ON [PRIMARY]
/****** Object:  Table [dbo].[R_MULTIRESPONSES]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[R_MULTIRESPONSES](
	[TABLENAME] [nvarchar](128) NOT NULL PRIMARY KEY
) ON [PRIMARY]
/****** Object:  Table [dbo].[__SUPER_CHANNEL__]    Script Date: 08/05/2013 14:09:38 ******/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[__SUPER_CHANNEL__](
	[reg_key] [nvarchar](128) NOT NULL PRIMARY KEY,
	[reg_value] [nvarchar](128) NULL
) ON [PRIMARY]
