USE [mg]
GO
/****** Object:  Table [dbo].[Basket]    Script Date: 11.03.2024 10:50:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Basket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.03.2024 10:50:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Cost] [money] NOT NULL,
	[Count] [int] NOT NULL,
	[Photo] [image] NULL,
 CONSTRAINT [PK_Products_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchased]    Script Date: 11.03.2024 10:50:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchased](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Count] [int] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Purchased] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11.03.2024 10:50:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Basket] ON 

INSERT [dbo].[Basket] ([Id], [User_Id], [Product_Id], [Count]) VALUES (1002, 2, 3, 1)
INSERT [dbo].[Basket] ([Id], [User_Id], [Product_Id], [Count]) VALUES (2002, 2, 3, 2)
INSERT [dbo].[Basket] ([Id], [User_Id], [Product_Id], [Count]) VALUES (3003, 2, 7, 1)
SET IDENTITY_INSERT [dbo].[Basket] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Description], [Cost], [Count], [Photo]) VALUES (2, N'Телефон', N'Для звонков', 30000.0000, 1, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Cost], [Count], [Photo]) VALUES (3, N'Мышка', N'НЕ живая мышь', 10000.0000, 11, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Cost], [Count], [Photo]) VALUES (4, N'Ноутбук', N'Ноубук', 30000.0000, 5, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Cost], [Count], [Photo]) VALUES (5, N'Телефон', N'Nokia 3310', 12345.0000, 0, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Description], [Cost], [Count], [Photo]) VALUES (7, N'Компьютер', N'Игровой', 50000.0000, 2, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Purchased] ON 

INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (1, 4, 3, 1, NULL)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (2, 2, 4, 1, NULL)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (3, 3, 5, 1, 30000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (4, 3, 5, 1, 10000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (5, 3, 5, 1, 30000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (6, 3, 5, 1, 12345.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (7, 4, 4, 1, 30000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (8, 3, 2, 2, 30000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (9, 2, 3, 1, 10000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (10, 0, 3, 0, 10000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (11, 0, 3, 0, 10000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (12, 0, 3, 0, 10000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (13, 0, 2, 10, 30000.0000)
INSERT [dbo].[Purchased] ([Id], [User_Id], [Product_Id], [Count], [Price]) VALUES (14, 0, 5, 2, 12345.0000)
SET IDENTITY_INSERT [dbo].[Purchased] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [role]) VALUES (0, N'Pol', N'123', 0)
INSERT [dbo].[User] ([Id], [Login], [Password], [role]) VALUES (1, N'Admin', N'qwerty', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [role]) VALUES (2, N'Pol2', N'123', 0)
INSERT [dbo].[User] ([Id], [Login], [Password], [role]) VALUES (3, N'Pol3', N'123', 0)
INSERT [dbo].[User] ([Id], [Login], [Password], [role]) VALUES (4, N'Pol4', N'123', 0)
INSERT [dbo].[User] ([Id], [Login], [Password], [role]) VALUES (5, N'Pol2', N'123', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Basket]  WITH CHECK ADD  CONSTRAINT [FK_Basket_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Basket] CHECK CONSTRAINT [FK_Basket_Product]
GO
ALTER TABLE [dbo].[Basket]  WITH CHECK ADD  CONSTRAINT [FK_Basket_User] FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Basket] CHECK CONSTRAINT [FK_Basket_User]
GO
ALTER TABLE [dbo].[Purchased]  WITH CHECK ADD  CONSTRAINT [FK_Purchased_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Purchased] CHECK CONSTRAINT [FK_Purchased_Product]
GO
ALTER TABLE [dbo].[Purchased]  WITH CHECK ADD  CONSTRAINT [FK_Purchased_User] FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Purchased] CHECK CONSTRAINT [FK_Purchased_User]
GO
