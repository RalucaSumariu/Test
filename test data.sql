USE [bookings]
GO
INSERT [dbo].[cities] ([city_code], [city_name]) VALUES (N'ab', N'alba')
INSERT [dbo].[cities] ([city_code], [city_name]) VALUES (N'cj', N'cluj')
INSERT [dbo].[cities] ([city_code], [city_name]) VALUES (N'pa', N'paris')
INSERT [dbo].[countries] ([country_code], [country_name]) VALUES (N'fr', N'franta')
INSERT [dbo].[countries] ([country_code], [country_name]) VALUES (N'ro', N'romania')
SET IDENTITY_INSERT [dbo].[tourists] ON 

INSERT [dbo].[tourists] ([id], [name], [email], [city_code], [country_code]) VALUES (1, N'raluca', N'mail', N'cj', N'ro')
INSERT [dbo].[tourists] ([id], [name], [email], [city_code], [country_code]) VALUES (2, N'lili', N'mail', N'cj', N'ro')
INSERT [dbo].[tourists] ([id], [name], [email], [city_code], [country_code]) VALUES (3, N'le robi', N'mail', N'pa', N'fr')
SET IDENTITY_INSERT [dbo].[tourists] OFF
INSERT [dbo].[accomodation_types] ([types_code], [types_name]) VALUES (N'ho', N'hotel')
INSERT [dbo].[accomodation_types] ([types_code], [types_name]) VALUES (N'pe', N'pensiune')
SET IDENTITY_INSERT [dbo].[establishments] ON 

INSERT [dbo].[establishments] ([id], [name], [city_code], [country_code], [stars], [rating], [price], [type]) VALUES (1, N'hotel1', N'pa', N'fr', 5, 10, 1, N'ho')
INSERT [dbo].[establishments] ([id], [name], [city_code], [country_code], [stars], [rating], [price], [type]) VALUES (2, N'hotel2', N'ab', N'ro', 3, 6, 2, N'ho')
INSERT [dbo].[establishments] ([id], [name], [city_code], [country_code], [stars], [rating], [price], [type]) VALUES (3, N'pensiune1', N'pa', N'fr', 2, 10, 3, N'pe')
SET IDENTITY_INSERT [dbo].[establishments] OFF
INSERT [dbo].[tourists_establishments] ([tourist_id], [establishment_id], [date], [nights]) VALUES (1, 2, CAST(N'2016-06-20 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tourists_establishments] ([tourist_id], [establishment_id], [date], [nights]) VALUES (1, 3, CAST(N'2016-03-21 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tourists_establishments] ([tourist_id], [establishment_id], [date], [nights]) VALUES (2, 3, CAST(N'2016-04-22 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[tourists_establishments] ([tourist_id], [establishment_id], [date], [nights]) VALUES (1, 1, CAST(N'2015-08-25 00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tourists_establishments] ([tourist_id], [establishment_id], [date], [nights]) VALUES (2, 1, CAST(N'2015-05-25 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tourists_establishments] ([tourist_id], [establishment_id], [date], [nights]) VALUES (3, 1, CAST(N'2015-05-26 00:00:00.000' AS DateTime), NULL)
