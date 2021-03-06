USE [18ip35]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 29.11.2021 9:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id_client] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nchar](30) NOT NULL,
	[name] [nchar](30) NOT NULL,
	[patronymic] [nchar](30) NULL,
	[company_name] [nchar](50) NOT NULL,
	[phone_number] [nchar](15) NULL,
	[email] [nchar](10) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 29.11.2021 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[id_contract] [int] IDENTITY(1,1) NOT NULL,
	[id_client] [int] NOT NULL,
	[contract_number] [int] NOT NULL,
	[date_preparation] [date] NOT NULL,
	[date_execution] [date] NOT NULL,
	[id_payment_status] [int] NOT NULL,
	[contract_details] [nvarchar](200) NOT NULL,
	[id_contract_status] [int] NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[id_contract] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract_status]    Script Date: 29.11.2021 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract_status](
	[id_contract_status] [int] IDENTITY(1,1) NOT NULL,
	[contract_status_name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Contract_status] PRIMARY KEY CLUSTERED 
(
	[id_contract_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dept]    Script Date: 29.11.2021 9:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dept](
	[id_dept] [int] IDENTITY(1,1) NOT NULL,
	[dept_name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Dept] PRIMARY KEY CLUSTERED 
(
	[id_dept] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[list_purpose]    Script Date: 29.11.2021 9:51:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[list_purpose](
	[id_purpose] [int] IDENTITY(1,1) NOT NULL,
	[id_contract] [int] NOT NULL,
	[id_service] [int] NOT NULL,
	[id_dept] [int] NOT NULL,
	[id_status_service] [int] NOT NULL,
 CONSTRAINT [PK_list_purpose] PRIMARY KEY CLUSTERED 
(
	[id_purpose] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_status]    Script Date: 29.11.2021 9:51:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_status](
	[id_payment_status] [int] IDENTITY(1,1) NOT NULL,
	[name_payment status] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Payment_status] PRIMARY KEY CLUSTERED 
(
	[id_payment_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 29.11.2021 9:51:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[id_position] [int] IDENTITY(1,1) NOT NULL,
	[name_position] [nchar](30) NOT NULL,
	[id_dept] [int] NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[id_position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 29.11.2021 9:51:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[id_service] [int] IDENTITY(1,1) NOT NULL,
	[name_service] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[id_service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status_service]    Script Date: 29.11.2021 9:51:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status_service](
	[id_status_service] [int] IDENTITY(1,1) NOT NULL,
	[service_status_name] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Status_service] PRIMARY KEY CLUSTERED 
(
	[id_status_service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 29.11.2021 9:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[login] [nchar](14) NOT NULL,
	[password] [nchar](16) NOT NULL,
	[id_position] [int] NOT NULL,
	[surname] [nchar](30) NOT NULL,
	[name] [nchar](30) NOT NULL,
	[patronymic] [nchar](30) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Client] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id_client])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Client]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Contract_status] FOREIGN KEY([id_contract_status])
REFERENCES [dbo].[Contract_status] ([id_contract_status])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Contract_status]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Payment_status] FOREIGN KEY([id_payment_status])
REFERENCES [dbo].[Payment_status] ([id_payment_status])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Payment_status]
GO
ALTER TABLE [dbo].[list_purpose]  WITH CHECK ADD  CONSTRAINT [FK_list_purpose_Contract] FOREIGN KEY([id_contract])
REFERENCES [dbo].[Contract] ([id_contract])
GO
ALTER TABLE [dbo].[list_purpose] CHECK CONSTRAINT [FK_list_purpose_Contract]
GO
ALTER TABLE [dbo].[list_purpose]  WITH CHECK ADD  CONSTRAINT [FK_list_purpose_Dept] FOREIGN KEY([id_dept])
REFERENCES [dbo].[Dept] ([id_dept])
GO
ALTER TABLE [dbo].[list_purpose] CHECK CONSTRAINT [FK_list_purpose_Dept]
GO
ALTER TABLE [dbo].[list_purpose]  WITH CHECK ADD  CONSTRAINT [FK_list_purpose_Service] FOREIGN KEY([id_service])
REFERENCES [dbo].[Service] ([id_service])
GO
ALTER TABLE [dbo].[list_purpose] CHECK CONSTRAINT [FK_list_purpose_Service]
GO
ALTER TABLE [dbo].[list_purpose]  WITH CHECK ADD  CONSTRAINT [FK_list_purpose_Status_service] FOREIGN KEY([id_status_service])
REFERENCES [dbo].[Status_service] ([id_status_service])
GO
ALTER TABLE [dbo].[list_purpose] CHECK CONSTRAINT [FK_list_purpose_Status_service]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_Position_Dept] FOREIGN KEY([id_dept])
REFERENCES [dbo].[Dept] ([id_dept])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_Position_Dept]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Position] FOREIGN KEY([id_position])
REFERENCES [dbo].[Position] ([id_position])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Position]
GO
