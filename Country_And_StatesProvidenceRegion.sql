
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [FK_Region_Country]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 10/10/2014 2:18:34 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
DROP TABLE [dbo].[Region]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/10/2014 2:18:34 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/10/2014 2:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ISO] [varchar](4) NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 10/10/2014 2:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Region](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[ISO] [varchar](10) NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (1, N'AD', N'Andorra', 2)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (2, N'AE', N'United Arab Emirates', 3)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (3, N'AF', N'Afghanistan', 4)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (4, N'AG', N'Antigua and Barbuda', 5)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (5, N'AI', N'Anguilla', 6)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (6, N'AL', N'Albania', 7)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (7, N'AM', N'Armenia', 8)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (8, N'AN', N'Netherlands Antilles', 9)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (9, N'AO', N'Angola', 10)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (10, N'AQ', N'Antarctica', 11)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (11, N'A', N'Argentina', 12)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (12, N'AS', N'American Samoa', 13)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (13, N'AT', N'Austria', 14)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (14, N'AU', N'Australia', 15)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (15, N'AW', N'Aruba', 16)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (16, N'AX', N'Aland IslandsÅland Islands', 17)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (17, N'AZ', N'Azerbaijan', 18)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (18, N'BA', N'Bosnia and Herzegovina', 19)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (19, N'BB', N'Barbados', 20)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (20, N'BD', N'Bangladesh', 21)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (21, N'BE', N'Belgium', 22)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (22, N'BF', N'Burkina Faso', 23)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (23, N'BG', N'Bulgaria', 24)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (24, N'BH', N'Bahrain', 25)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (25, N'BI', N'Burundi', 26)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (26, N'BJ', N'Benin', 27)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (27, N'BL', N'Saint Barthlemy', 28)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (28, N'BM', N'Bermuda', 29)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (29, N'BN', N'Brunei Darussalam', 30)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (30, N'BO', N'BoliviaBolivia, Plurinational state of', 31)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (31, N'B', N'Brazil', 32)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (32, N'BS', N'Bahamas', 33)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (33, N'BT', N'Bhutan', 34)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (34, N'BV', N'Bouvet Island', 35)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (35, N'BW', N'Botswana', 36)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (36, N'BY', N'Belarus', 37)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (37, N'BZ', N'Belize', 38)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (38, N'CA', N'Canada', 39)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (39, N'CC', N'Cocos (Keeling) Islands', 40)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (40, N'CD', N'Congo, The Democratic Republic of the', 41)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (41, N'CF', N'Central African Republic', 42)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (42, N'CG', N'Congo', 43)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (43, N'CH', N'Switzerland', 44)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (44, N'CI', N'Côte d''Ivoire', 45)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (45, N'CK', N'Cook Islands', 46)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (46, N'CL', N'Chile', 47)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (47, N'CM', N'Cameroon', 48)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (48, N'CN', N'China', 49)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (49, N'CO', N'Colombia', 50)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (50, N'C', N'Costa Rica', 51)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (51, N'CU', N'Cuba', 52)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (52, N'CV', N'Cape Verde', 53)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (53, N'CX', N'Christmas Island', 54)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (54, N'CY', N'Cyprus', 55)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (55, N'CZ', N'Czech Republic', 56)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (56, N'DE', N'Germany', 57)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (57, N'DJ', N'Djibouti', 58)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (58, N'DK', N'Denmark', 59)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (59, N'DM', N'Dominica', 60)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (60, N'DO', N'Dominican Republic', 61)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (61, N'DZ', N'Algeria', 62)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (62, N'EC', N'Ecuado', 63)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (63, N'EE', N'Estonia', 64)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (64, N'EG', N'Egypt', 65)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (65, N'EH', N'Western Sahara', 66)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (66, N'E', N'Eritrea', 67)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (67, N'ES', N'Spain', 68)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (68, N'ET', N'Ethiopia', 69)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (69, N'FI', N'Finland', 70)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (70, N'FJ', N'Fiji', 71)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (71, N'FK', N'Falkland Islands (Malvinas)', 72)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (72, N'FM', N'Micronesia, Federated States of', 73)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (73, N'FO', N'Faroe Islands', 74)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (74, N'F', N'France', 75)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (75, N'GA', N'Gabon', 76)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (76, N'GB', N'United Kingdom', 77)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (77, N'GD', N'Grenada', 78)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (78, N'GE', N'Georgia', 79)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (79, N'GF', N'French Guiana', 80)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (80, N'GG', N'Guernsey', 81)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (81, N'GH', N'Ghana', 82)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (82, N'GI', N'Gibralta', 83)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (83, N'GL', N'Greenland', 84)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (84, N'GM', N'Gambia', 85)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (85, N'GN', N'Guinea', 86)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (86, N'GP', N'Guadeloupe', 87)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (87, N'GQ', N'Equatorial Guinea', 88)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (88, N'G', N'Greece', 89)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (89, N'GS', N'South Georgia and the South Sandwich Islands', 90)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (90, N'GT', N'Guatemala', 91)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (91, N'GU', N'Guam', 92)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (92, N'GW', N'Guinea-Bissau', 93)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (93, N'GY', N'Guyana', 94)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (94, N'HK', N'Hong Kong', 95)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (95, N'HM', N'Heard Island and McDonald Islands', 96)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (96, N'HN', N'Honduras', 97)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (97, N'H', N'Croatia', 98)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (98, N'HT', N'Haiti', 99)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (99, N'HU', N'Hungary', 100)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (100, N'ID', N'Indonesia', 101)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (101, N'IE', N'Ireland', 102)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (102, N'IL', N'Israel', 103)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (103, N'IM', N'Isle of Man', 104)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (104, N'IN', N'India', 105)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (105, N'IO', N'British Indian Ocean Territory', 106)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (106, N'IQ', N'Iraq', 107)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (107, N'I', N'Iran, Islamic Republic of', 108)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (108, N'IS', N'Iceland', 109)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (109, N'IT', N'Italy', 110)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (110, N'JE', N'Jersey', 111)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (111, N'JM', N'Jamaica', 112)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (112, N'JO', N'Jordan', 113)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (113, N'JP', N'Japan', 114)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (114, N'KE', N'Kenya', 115)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (115, N'KG', N'Kyrgyzstan', 116)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (116, N'KH', N'Cambodia', 117)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (117, N'KI', N'Kiribati', 118)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (118, N'KM', N'Comoros', 119)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (119, N'KN', N'Saint Kitts and Nevis', 120)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (120, N'KP', N'Korea, Democratic People&#39;s Republic of', 121)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (121, N'K', N'Korea, Republic of', 122)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (122, N'KW', N'Kuwait', 123)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (123, N'KY', N'Cayman Islands', 124)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (124, N'KZ', N'Kazakhstan', 125)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (125, N'LA', N'Lao People&#39;s Democratic Republic', 126)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (126, N'LB', N'Lebanon', 127)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (127, N'LC', N'Saint Lucia', 128)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (128, N'LI', N'Liechtenstein', 129)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (129, N'LK', N'Sri Lanka', 130)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (130, N'L', N'Liberia', 131)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (131, N'LS', N'Lesotho', 132)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (132, N'LT', N'Lithuania', 133)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (133, N'LU', N'Luxembourg', 134)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (134, N'LV', N'Latvia', 135)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (135, N'LY', N'Libyan Arab Jamahiriya', 136)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (136, N'MA', N'Morocco', 137)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (137, N'MC', N'Monaco', 138)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (138, N'MD', N'Moldova, Republic of', 139)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (139, N'ME', N'Montenegro', 140)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (140, N'MF', N'Saint Martin', 141)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (141, N'MG', N'Madagasca', 142)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (142, N'MH', N'Marshall Islands', 143)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (143, N'MK', N'Macedonia', 144)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (144, N'ML', N'Mali', 145)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (145, N'MM', N'Myanma', 146)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (146, N'MN', N'Mongolia', 147)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (147, N'MO', N'Macao', 148)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (148, N'MP', N'Northern Mariana Islands', 149)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (149, N'MQ', N'Martinique', 150)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (150, N'M', N'Mauritania', 151)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (151, N'MS', N'Montserrat', 152)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (152, N'MT', N'Malta', 153)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (153, N'MU', N'Mauritius', 154)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (154, N'MV', N'Maldives', 155)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (155, N'MW', N'Malawi', 156)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (156, N'MX', N'Mexico', 157)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (157, N'MY', N'Malaysia', 158)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (158, N'MZ', N'Mozambique', 159)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (159, N'NA', N'Namibia', 160)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (160, N'NC', N'New Caledonia', 161)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (161, N'NE', N'Nige', 162)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (162, N'NF', N'Norfolk Island', 163)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (163, N'NG', N'Nigeria', 164)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (164, N'NI', N'Nicaragua', 165)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (165, N'NL', N'Netherlands', 166)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (166, N'NO', N'Norway', 167)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (167, N'NP', N'Nepal', 168)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (168, N'N', N'Nauru', 169)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (169, N'NU', N'Niue', 170)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (170, N'NZ', N'New Zealand', 171)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (171, N'OM', N'Oman', 172)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (172, N'PA', N'Panama', 173)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (173, N'PE', N'Peru', 174)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (174, N'PF', N'French Polynesia', 175)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (175, N'PG', N'Papua New Guinea', 176)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (176, N'PH', N'Philippines', 177)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (177, N'PK', N'Pakistan', 178)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (178, N'PL', N'Poland', 179)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (179, N'PM', N'Saint Pierre and Miquelon', 180)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (180, N'PN', N'Pitcairn', 181)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (181, N'P', N'Puerto Rico', 182)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (182, N'PS', N'Palestinian Territory, Occupied', 183)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (183, N'PT', N'Portugal', 184)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (184, N'PW', N'Palau', 185)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (185, N'PY', N'Paraguay', 186)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (186, N'QA', N'Qata', 187)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (187, N'RE', N'Réunion', 188)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (188, N'RO', N'Romania', 189)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (189, N'RS', N'Serbia', 190)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (190, N'RU', N'Russian Federation', 191)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (191, N'RW', N'Rwanda', 192)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (192, N'SA', N'Saudi Arabia', 193)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (193, N'SB', N'Solomon Islands', 194)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (194, N'SC', N'Seychelles', 195)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (195, N'SD', N'Sudan', 196)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (196, N'SE', N'Sweden', 197)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (197, N'SG', N'Singapore', 198)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (198, N'SH', N'Saint Helena', 199)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (199, N'SI', N'Slovenia', 200)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (200, N'SJ', N'Svalbard and Jan Mayen', 201)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (201, N'SK', N'Slovakia', 202)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (202, N'SL', N'Sierra Leone', 203)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (203, N'SM', N'San Marino', 204)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (204, N'SN', N'Senegal', 205)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (205, N'SO', N'Somalia', 206)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (206, N'S', N'Suriname', 207)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (207, N'ST', N'Sao Tome and Principe', 208)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (208, N'SV', N'El Salvado', 209)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (209, N'SY', N'Syrian Arab Republic', 210)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (210, N'SZ', N'Swaziland', 211)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (211, N'TC', N'Turks and Caicos Islands', 212)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (212, N'TD', N'Chad', 213)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (213, N'TF', N'French Southern Territories', 214)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (214, N'TG', N'Togo', 215)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (215, N'TH', N'Thailand', 216)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (216, N'TJ', N'Tajikistan', 217)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (217, N'TK', N'Tokelau', 218)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (218, N'TL', N'Timor-Leste', 219)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (219, N'TM', N'Turkmenistan', 220)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (220, N'TN', N'Tunisia', 221)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (221, N'TO', N'Tonga', 222)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (222, N'T', N'Turkey', 223)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (223, N'TT', N'Trinidad and Tobago', 224)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (224, N'TV', N'Tuvalu', 225)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (225, N'TW', N'Taiwan', 226)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (226, N'TZ', N'Tanzania, United Republic of', 227)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (227, N'UA', N'Ukraine', 228)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (228, N'UG', N'Uganda', 229)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (229, N'UM', N'United States Minor Outlying Islands', 230)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (230, N'US', N'United States', 1)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (231, N'UY', N'Uruguay', 231)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (232, N'UZ', N'Uzbekistan', 232)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (233, N'VA', N'Holy See (Vatican City State)', 233)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (234, N'VC', N'Saint Vincent and the Grenadines', 234)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (235, N'VE', N'Venezuela, Bolivarian Republic of', 235)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (236, N'VG', N'Virgin Islands, British', 236)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (237, N'VI', N'Virgin Islands, U.S.', 237)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (238, N'VN', N'Viet Nam', 238)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (239, N'VU', N'Vanuatu', 239)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (240, N'WF', N'Wallis and Futuna', 240)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (241, N'WS', N'Samoa', 241)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (242, N'YE', N'Yemen', 242)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (243, N'YT', N'Mayotte', 243)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (244, N'ZA', N'South Africa', 244)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (245, N'ZM', N'Zambia', 245)
GO
INSERT [dbo].[Country] ([Id], [ISO], [Name], [Order]) VALUES (246, N'ZW', N'Zimbabwe', 246)
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1, 1, N'AD-07', N'Andorra la Vella')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2, 1, N'AD-02', N'Canillo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3, 1, N'AD-03', N'Encamp')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4, 1, N'AD-08', N'Escaldes-Engordany')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (5, 1, N'AD-04', N'La Massana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (6, 1, N'AD-05', N'Ordino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (7, 1, N'AD-06', N'Sant Julia de Loria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (8, 2, N'AE-01', N'Abu Dhabi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (9, 2, N'AE-02', N'Ajman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (10, 2, N'AE-03', N'Dubai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (11, 2, N'AE-04', N'Fujairah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (12, 2, N'AE-05', N'Ras Al Khaimah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (13, 2, N'AE-06', N'Sharjah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (14, 2, N'AE-07', N'Umm Al Quwain')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (15, 3, N'AF-01', N'Badakhshan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (16, 3, N'AF-02', N'Badghis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (17, 3, N'AF-03', N'Baghlan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (18, 3, N'AF-30', N'Balkh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (19, 3, N'AF-05', N'Bamian')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (20, 3, N'AF-06', N'Farah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (21, 3, N'AF-27', N'Vardak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (22, 3, N'AF-28', N'Zabol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (23, 3, N'AF-21', N'Paktia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (24, 3, N'AF-29', N'Paktika')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (25, 3, N'AF-22', N'Parvan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (26, 3, N'AF-32', N'Samangan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (27, 3, N'AF-33', N'Sar-e Pol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (28, 3, N'AF-26', N'Takha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (29, 3, N'AF-16', N'Laghman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (30, 3, N'AF-17', N'Lowga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (31, 3, N'AF-18', N'Nangarha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (32, 3, N'AF-19', N'Nimruz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (33, 3, N'AF-38', N'Nurestan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (34, 3, N'AF-20', N'Oruzgan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (35, 3, N'AF-13', N'Kabol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (36, 3, N'AF-23', N'Kandaha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (37, 3, N'AF-14', N'Kapisa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (38, 3, N'AF-37', N'Khowst')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (39, 3, N'AF-15', N'Kona')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (40, 3, N'AF-24', N'Kondoz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (41, 3, N'AF-07', N'Faryab')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (42, 3, N'AF-08', N'Ghazni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (43, 3, N'AF-09', N'Ghow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (44, 3, N'AF-10', N'Helmand')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (45, 3, N'AF-11', N'Herat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (46, 3, N'AF-31', N'Jowzjan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (47, 4, N'AG-01', N'Barbuda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (48, 4, N'AG-03', N'Saint George')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (49, 4, N'AG-04', N'Saint John')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (50, 4, N'AG-05', N'Saint Mary')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (51, 4, N'AG-06', N'Saint Paul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (52, 4, N'AG-07', N'Saint Pete')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (53, 4, N'AG-08', N'Saint Philip')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (54, 6, N'AL-40', N'Berat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (55, 6, N'AL-41', N'Dibe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (56, 6, N'AL-42', N'Durres')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (57, 6, N'AL-43', N'Elbasan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (58, 6, N'AL-44', N'Fie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (59, 6, N'AL-45', N'Gjirokaste')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (60, 6, N'AL-46', N'Korce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (61, 6, N'AL-47', N'Kukes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (62, 6, N'AL-48', N'Lezhe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (63, 6, N'AL-49', N'Shkode')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (64, 6, N'AL-50', N'Tirane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (65, 6, N'AL-51', N'Vlore')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (66, 7, N'AM-01', N'Aragatsotn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (67, 7, N'AM-02', N'Ararat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (68, 7, N'AM-03', N'Armavi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (69, 7, N'AM-04', N'Geghark''unik''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (70, 7, N'AM-05', N'Kotayk''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (71, 7, N'AM-06', N'Lorri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (72, 7, N'AM-07', N'Shirak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (73, 7, N'AM-08', N'Syunik''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (74, 7, N'AM-09', N'Tavush')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (75, 7, N'AM-10', N'Vayots'' Dzo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (76, 7, N'AM-11', N'Yerevan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (77, 9, N'AO-19', N'Bengo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (78, 9, N'AO-01', N'Benguela')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (79, 9, N'AO-02', N'Bie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (80, 9, N'AO-03', N'Cabinda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (81, 9, N'AO-04', N'Cuando Cubango')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (82, 9, N'AO-05', N'Cuanza Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (83, 9, N'AO-18', N'Lunda Sul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (84, 9, N'AO-12', N'Malanje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (85, 9, N'AO-14', N'Moxico')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (86, 9, N'AO-15', N'Uige')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (87, 9, N'AO-16', N'Zaire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (88, 9, N'AO-06', N'Cuanza Sul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (89, 9, N'AO-07', N'Cunene')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (90, 9, N'AO-08', N'Huambo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (91, 9, N'AO-09', N'Huila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (92, 9, N'AO-20', N'Luanda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (93, 9, N'AO-17', N'Lunda Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (94, 11, N'AR-01', N'Buenos Aires')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (95, 11, N'AR-02', N'Catamarca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (96, 11, N'AR-03', N'Chaco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (97, 11, N'AR-04', N'Chubut')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (98, 11, N'AR-05', N'Cordoba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (99, 11, N'AR-06', N'Corrientes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (100, 11, N'AR-19', N'San Luis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (101, 11, N'AR-20', N'Santa Cruz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (102, 11, N'AR-21', N'Santa Fe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (103, 11, N'AR-22', N'Santiago del Estero')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (104, 11, N'AR-23', N'Tierra del Fuego')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (105, 11, N'AR-24', N'Tucuman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (106, 11, N'AR-13', N'Mendoza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (107, 11, N'AR-14', N'Misiones')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (108, 11, N'AR-15', N'Neuquen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (109, 11, N'AR-16', N'Rio Negro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (110, 11, N'AR-17', N'Salta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (111, 11, N'AR-18', N'San Juan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (112, 11, N'AR-07', N'Distrito Federal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (113, 11, N'AR-08', N'Entre Rios')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (114, 11, N'AR-09', N'Formosa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (115, 11, N'AR-10', N'Jujuy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (116, 11, N'AR-11', N'La Pampa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (117, 11, N'AR-12', N'La Rioja')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (118, 13, N'AT-01', N'Burgenland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (119, 13, N'AT-02', N'Karnten')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (120, 13, N'AT-03', N'Niederosterreich')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (121, 13, N'AT-04', N'Oberosterreich')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (122, 13, N'AT-05', N'Salzburg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (123, 13, N'AT-06', N'Steiermark')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (124, 13, N'AT-07', N'Tirol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (125, 13, N'AT-08', N'Vorarlberg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (126, 13, N'AT-09', N'Wien')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (127, 14, N'AU-01', N'Australian Capital Territory')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (128, 14, N'AU-02', N'New South Wales')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (129, 14, N'AU-03', N'Northern Territory')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (130, 14, N'AU-04', N'Queensland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (131, 14, N'AU-05', N'South Australia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (132, 14, N'AU-06', N'Tasmania')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (133, 14, N'AU-07', N'Victoria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (134, 14, N'AU-08', N'Western Australia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (135, 17, N'AZ-01', N'Abseron')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (136, 17, N'AZ-02', N'Agcabadi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (137, 17, N'AZ-03', N'Agdam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (138, 17, N'AZ-04', N'Agdas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (139, 17, N'AZ-05', N'Agstafa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (140, 17, N'AZ-06', N'Agsu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (141, 17, N'AZ-71', N'Zardab')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (142, 17, N'AZ-64', N'Xocali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (143, 17, N'AZ-65', N'Xocavand')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (144, 17, N'AZ-66', N'Yardimli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (145, 17, N'AZ-67', N'Yevlax')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (146, 17, N'AZ-69', N'Zangilan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (147, 17, N'AZ-70', N'Zaqatala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (148, 17, N'AZ-58', N'Tovuz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (149, 17, N'AZ-59', N'Uca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (150, 17, N'AZ-60', N'Xacmaz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (151, 17, N'AZ-61', N'Xankandi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (152, 17, N'AZ-62', N'Xanla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (153, 17, N'AZ-63', N'Xizi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (154, 17, N'AZ-51', N'Samki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (155, 17, N'AZ-52', N'Samux')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (156, 17, N'AZ-53', N'Siyazan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (157, 17, N'AZ-54', N'Sumqayit')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (158, 17, N'AZ-55', N'Susa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (159, 17, N'AZ-57', N'Tarta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (160, 17, N'AZ-44', N'Qusa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (161, 17, N'AZ-45', N'Saatli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (162, 17, N'AZ-46', N'Sabirabad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (163, 17, N'AZ-47', N'Saki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (164, 17, N'AZ-49', N'Salyan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (165, 17, N'AZ-50', N'Samaxi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (166, 17, N'AZ-38', N'Qabala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (167, 17, N'AZ-39', N'Qax')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (168, 17, N'AZ-40', N'Qazax')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (169, 17, N'AZ-41', N'Qobustan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (170, 17, N'AZ-42', N'Quba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (171, 17, N'AZ-43', N'Qubadli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (172, 17, N'AZ-32', N'Masalli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (173, 17, N'AZ-33', N'Mingacevi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (174, 17, N'AZ-34', N'Naftalan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (175, 17, N'AZ-35', N'Naxcivan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (176, 17, N'AZ-36', N'Neftcala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (177, 17, N'AZ-37', N'Oguz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (178, 17, N'AZ-25', N'Ismayilli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (179, 17, N'AZ-26', N'Kalbaca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (180, 17, N'AZ-27', N'Kurdami')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (181, 17, N'AZ-28', N'Lacin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (182, 17, N'AZ-29', N'Lankaran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (183, 17, N'AZ-31', N'Lerik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (184, 17, N'AZ-19', N'Gadabay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (185, 17, N'AZ-20', N'Ganca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (186, 17, N'AZ-21', N'Goranboy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (187, 17, N'AZ-22', N'Goycay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (188, 17, N'AZ-23', N'Haciqabul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (189, 17, N'AZ-24', N'Imisli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (190, 17, N'AZ-13', N'Bilasuva')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (191, 17, N'AZ-14', N'Cabrayil')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (192, 17, N'AZ-15', N'Calilabad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (193, 17, N'AZ-16', N'Daskasan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (194, 17, N'AZ-17', N'Davaci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (195, 17, N'AZ-18', N'Fuzuli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (196, 17, N'AZ-07', N'Ali Bayramli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (197, 17, N'AZ-08', N'Astara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (198, 17, N'AZ-09', N'Baki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (199, 17, N'AZ-10', N'Balakan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (200, 17, N'AZ-11', N'Barda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (201, 17, N'AZ-12', N'Beylaqan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (202, 18, N'BA-01', N'Federation of Bosnia and Herzegovina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (203, 18, N'BA-02', N'Republika Srpska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (204, 19, N'BB-01', N'Christ Church')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (205, 19, N'BB-02', N'Saint Andrew')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (206, 19, N'BB-03', N'Saint George')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (207, 19, N'BB-04', N'Saint James')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (208, 19, N'BB-05', N'Saint John')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (209, 19, N'BB-06', N'Saint Joseph')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (210, 19, N'BB-07', N'Saint Lucy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (211, 19, N'BB-08', N'Saint Michael')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (212, 19, N'BB-09', N'Saint Pete')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (213, 19, N'BB-10', N'Saint Philip')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (214, 19, N'BB-11', N'Saint Thomas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (215, 20, N'BD-22', N'Bagerhat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (216, 20, N'BD-04', N'Bandarban')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (217, 20, N'BD-25', N'Barguna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (218, 20, N'BD-01', N'Barisal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (219, 20, N'BD-23', N'Bhola')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (220, 20, N'BD-24', N'Bogra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (221, 20, N'BD-76', N'Sunamganj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (222, 20, N'BD-77', N'Sylhet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (223, 20, N'BD-78', N'Tangail')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (224, 20, N'BD-79', N'Thakurgaon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (225, 20, N'BD-70', N'Rajshahi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (226, 20, N'BD-71', N'Rangpu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (227, 20, N'BD-72', N'Satkhira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (228, 20, N'BD-73', N'Shariyatpu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (229, 20, N'BD-74', N'Sherpu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (230, 20, N'BD-75', N'Sirajganj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (231, 20, N'BD-65', N'Pabna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (232, 20, N'BD-66', N'Panchaga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (233, 20, N'BD-67', N'Parbattya Chattagram')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (234, 20, N'BD-15', N'Patuakhali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (235, 20, N'BD-68', N'Pirojpu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (236, 20, N'BD-69', N'Rajbari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (237, 20, N'BD-60', N'Narayanganj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (238, 20, N'BD-61', N'Narsingdi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (239, 20, N'BD-62', N'Nato')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (240, 20, N'BD-63', N'Netrakona')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (241, 20, N'BD-64', N'Nilphamari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (242, 20, N'BD-13', N'Noakhali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (243, 20, N'BD-55', N'Meherpu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (244, 20, N'BD-56', N'Moulavibaza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (245, 20, N'BD-57', N'Munshiganj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (246, 20, N'BD-12', N'Mymensingh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (247, 20, N'BD-58', N'Naogaon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (248, 20, N'BD-59', N'Narail')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (249, 20, N'BD-49', N'Kushtia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (250, 20, N'BD-50', N'Laksmipu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (251, 20, N'BD-51', N'Lalmonirhat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (252, 20, N'BD-52', N'Madaripu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (253, 20, N'BD-53', N'Magura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (254, 20, N'BD-54', N'Manikganj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (255, 20, N'BD-43', N'Jhalakati')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (256, 20, N'BD-44', N'Jhenaidah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (257, 20, N'BD-45', N'Khagrachari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (258, 20, N'BD-46', N'Khulna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (259, 20, N'BD-47', N'Kishorganj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (260, 20, N'BD-48', N'Kurigram')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (261, 20, N'BD-37', N'Gazipu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (262, 20, N'BD-38', N'Gopalganj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (263, 20, N'BD-39', N'Habiganj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (264, 20, N'BD-40', N'Jaipurhat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (265, 20, N'BD-41', N'Jamalpu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (266, 20, N'BD-42', N'Jessore')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (267, 20, N'BD-31', N'Cox''s Baza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (268, 20, N'BD-32', N'Dhaka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (269, 20, N'BD-33', N'Dinajpu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (270, 20, N'BD-34', N'Faridpu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (271, 20, N'BD-35', N'Feni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (272, 20, N'BD-36', N'Gaibandha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (273, 20, N'BD-26', N'Brahmanbaria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (274, 20, N'BD-27', N'Chandpu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (275, 20, N'BD-28', N'Chapai Nawabganj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (276, 20, N'BD-29', N'Chattagram')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (277, 20, N'BD-30', N'Chuadanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (278, 20, N'BD-05', N'Comilla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (279, 21, N'BE-01', N'Antwerpen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (280, 21, N'BE-02', N'Brabant')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (281, 21, N'BE-10', N'Brabant Wallon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (282, 21, N'BE-11', N'Brussels Hoofdstedelijk Gewest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (283, 21, N'BE-03', N'Hainaut')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (284, 21, N'BE-04', N'Liege')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (285, 21, N'BE-05', N'Limburg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (286, 21, N'BE-06', N'Luxembourg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (287, 21, N'BE-07', N'Namu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (288, 21, N'BE-08', N'Oost-Vlaanderen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (289, 21, N'BE-12', N'Vlaams-Brabant')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (290, 21, N'BE-09', N'West-Vlaanderen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (291, 22, N'BF-45', N'Bale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (292, 22, N'BF-15', N'Bam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (293, 22, N'BF-46', N'Banwa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (294, 22, N'BF-47', N'Bazega')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (295, 22, N'BF-48', N'Bougouriba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (296, 22, N'BF-49', N'Boulgou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (297, 22, N'BF-77', N'Ziro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (298, 22, N'BF-78', N'Zondoma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (299, 22, N'BF-44', N'Zoundweogo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (300, 22, N'BF-40', N'Soum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (301, 22, N'BF-73', N'Sourou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (302, 22, N'BF-42', N'Tapoa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (303, 22, N'BF-74', N'Tuy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (304, 22, N'BF-75', N'Yagha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (305, 22, N'BF-76', N'Yatenga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (306, 22, N'BF-34', N'Passore')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (307, 22, N'BF-69', N'Poni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (308, 22, N'BF-36', N'Sanguie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (309, 22, N'BF-70', N'Sanmatenga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (310, 22, N'BF-71', N'Seno')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (311, 22, N'BF-72', N'Sissili')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (312, 22, N'BF-64', N'Namentenga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (313, 22, N'BF-65', N'Naouri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (314, 22, N'BF-66', N'Nayala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (315, 22, N'BF-67', N'Noumbiel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (316, 22, N'BF-68', N'Oubritenga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (317, 22, N'BF-33', N'Oudalan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (318, 22, N'BF-59', N'Koulpelogo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (319, 22, N'BF-28', N'Kouritenga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (320, 22, N'BF-60', N'Kourweogo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (321, 22, N'BF-61', N'Leraba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (322, 22, N'BF-62', N'Loroum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (323, 22, N'BF-63', N'Mouhoun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (324, 22, N'BF-53', N'Kadiogo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (325, 22, N'BF-54', N'Kenedougou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (326, 22, N'BF-55', N'Komoe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (327, 22, N'BF-56', N'Komondjari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (328, 22, N'BF-57', N'Kompienga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (329, 22, N'BF-58', N'Kossi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (330, 22, N'BF-19', N'Boulkiemde')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (331, 22, N'BF-20', N'Ganzourgou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (332, 22, N'BF-21', N'Gnagna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (333, 22, N'BF-50', N'Gourma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (334, 22, N'BF-51', N'Houet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (335, 22, N'BF-52', N'Ioba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (336, 23, N'BG-38', N'Blagoevgrad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (337, 23, N'BG-39', N'Burgas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (338, 23, N'BG-40', N'Dobrich')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (339, 23, N'BG-41', N'Gabrovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (340, 23, N'BG-42', N'Grad Sofiya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (341, 23, N'BG-43', N'Khaskovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (342, 23, N'BG-61', N'Varna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (343, 23, N'BG-62', N'Veliko Turnovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (344, 23, N'BG-63', N'Vidin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (345, 23, N'BG-64', N'Vratsa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (346, 23, N'BG-65', N'Yambol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (347, 23, N'BG-55', N'Silistra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (348, 23, N'BG-56', N'Sliven')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (349, 23, N'BG-57', N'Smolyan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (350, 23, N'BG-58', N'Sofiya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (351, 23, N'BG-59', N'Stara Zagora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (352, 23, N'BG-60', N'Turgovishte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (353, 23, N'BG-49', N'Pernik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (354, 23, N'BG-50', N'Pleven')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (355, 23, N'BG-51', N'Plovdiv')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (356, 23, N'BG-52', N'Razgrad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (357, 23, N'BG-53', N'Ruse')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (358, 23, N'BG-54', N'Shumen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (359, 23, N'BG-44', N'Kurdzhali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (360, 23, N'BG-45', N'Kyustendil')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (361, 23, N'BG-46', N'Lovech')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (362, 23, N'BG-33', N'Mikhaylovgrad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (363, 23, N'BG-47', N'Montana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (364, 23, N'BG-48', N'Pazardzhik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (365, 24, N'BH-01', N'Al Hadd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (366, 24, N'BH-02', N'Al Manamah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (367, 24, N'BH-08', N'Al Mintaqah al Gharbiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (368, 24, N'BH-11', N'Al Mintaqah al Wusta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (369, 24, N'BH-10', N'Al Mintaqah ash Shamaliyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (370, 24, N'BH-03', N'Al Muharraq')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (371, 24, N'BH-13', N'Ar Rifa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (372, 24, N'BH-05', N'Jidd Hafs')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (373, 24, N'BH-12', N'Madinat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (374, 24, N'BH-14', N'Madinat Hamad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (375, 24, N'BH-09', N'Mintaqat Juzur Hawar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (376, 24, N'BH-06', N'Sitrah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (377, 25, N'BI-09', N'Bubanza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (378, 25, N'BI-02', N'Bujumbura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (379, 25, N'BI-10', N'Bururi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (380, 25, N'BI-11', N'Cankuzo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (381, 25, N'BI-12', N'Cibitoke')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (382, 25, N'BI-13', N'Gitega')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (383, 25, N'BI-23', N'Mwaro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (384, 25, N'BI-19', N'Ngozi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (385, 25, N'BI-20', N'Rutana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (386, 25, N'BI-21', N'Ruyigi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (387, 25, N'BI-14', N'Karuzi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (388, 25, N'BI-15', N'Kayanza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (389, 25, N'BI-16', N'Kirundo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (390, 25, N'BI-17', N'Makamba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (391, 25, N'BI-22', N'Muramvya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (392, 25, N'BI-18', N'Muyinga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (393, 26, N'BJ-01', N'Atakora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (394, 26, N'BJ-02', N'Atlantique')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (395, 26, N'BJ-03', N'Borgou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (396, 26, N'BJ-04', N'Mono')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (397, 26, N'BJ-05', N'Oueme')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (398, 26, N'BJ-06', N'Zou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (399, 28, N'BM-01', N'Devonshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (400, 28, N'BM-02', N'Hamilton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (401, 28, N'BM-04', N'Paget')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (402, 28, N'BM-05', N'Pembroke')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (403, 28, N'BM-06', N'Saint George')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (404, 28, N'BM-07', N'Saint George''s')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (405, 28, N'BM-08', N'Sandys')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (406, 28, N'BM-09', N'Smiths')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (407, 28, N'BM-10', N'Southampton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (408, 28, N'BM-11', N'Warwick')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (409, 29, N'BN-07', N'Alibori')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (410, 29, N'BN-08', N'Belait')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (411, 29, N'BN-09', N'Brunei and Muara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (412, 29, N'BN-11', N'Collines')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (413, 29, N'BN-13', N'Donga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (414, 29, N'BN-12', N'Kouffo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (415, 29, N'BN-14', N'Littoral')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (416, 29, N'BN-16', N'Oueme')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (417, 29, N'BN-17', N'Plateau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (418, 29, N'BN-10', N'Temburong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (419, 29, N'BN-15', N'Tutong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (420, 29, N'BN-18', N'Zou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (421, 30, N'BO-01', N'Chuquisaca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (422, 30, N'BO-02', N'Cochabamba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (423, 30, N'BO-03', N'El Beni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (424, 30, N'BO-04', N'La Paz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (425, 30, N'BO-05', N'Oruro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (426, 30, N'BO-06', N'Pando')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (427, 30, N'BO-07', N'Potosi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (428, 30, N'BO-08', N'Santa Cruz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (429, 30, N'BO-09', N'Tarija')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (430, 31, N'BR-01', N'Acre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (431, 31, N'BR-02', N'Alagoas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (432, 31, N'BR-03', N'Amapa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (433, 31, N'BR-04', N'Amazonas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (434, 31, N'BR-05', N'Bahia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (435, 31, N'BR-06', N'Ceara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (436, 31, N'BR-27', N'Sao Paulo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (437, 31, N'BR-28', N'Sergipe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (438, 31, N'BR-31', N'Tocantins')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (439, 31, N'BR-21', N'Rio de Janeiro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (440, 31, N'BR-22', N'Rio Grande do Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (441, 31, N'BR-23', N'Rio Grande do Sul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (442, 31, N'BR-24', N'Rondonia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (443, 31, N'BR-25', N'Roraima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (444, 31, N'BR-26', N'Santa Catarina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (445, 31, N'BR-15', N'Minas Gerais')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (446, 31, N'BR-16', N'Para')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (447, 31, N'BR-17', N'Paraiba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (448, 31, N'BR-18', N'Parana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (449, 31, N'BR-30', N'Pernambuco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (450, 31, N'BR-20', N'Piaui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (451, 31, N'BR-07', N'Distrito Federal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (452, 31, N'BR-08', N'Espirito Santo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (453, 31, N'BR-29', N'Goias')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (454, 31, N'BR-13', N'Maranhao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (455, 31, N'BR-14', N'Mato Grosso')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (456, 31, N'BR-11', N'Mato Grosso do Sul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (457, 32, N'BS-24', N'Acklins and Crooked Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (458, 32, N'BS-05', N'Bimini')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (459, 32, N'BS-06', N'Cat Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (460, 32, N'BS-10', N'Exuma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (461, 32, N'BS-25', N'Freeport')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (462, 32, N'BS-26', N'Fresh Creek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (463, 32, N'BS-33', N'Rock Sound')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (464, 32, N'BS-35', N'San Salvador and Rum Cay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (465, 32, N'BS-34', N'Sandy Point')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (466, 32, N'BS-15', N'Long Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (467, 32, N'BS-31', N'Marsh Harbour')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (468, 32, N'BS-16', N'Mayaguana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (469, 32, N'BS-23', N'New Providence')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (470, 32, N'BS-32', N'Nichollstown and Berry Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (471, 32, N'BS-18', N'Ragged Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (472, 32, N'BS-27', N'Governor''s Harbour')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (473, 32, N'BS-28', N'Green Turtle Cay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (474, 32, N'BS-22', N'Harbour Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (475, 32, N'BS-29', N'High Rock')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (476, 32, N'BS-13', N'Inagua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (477, 32, N'BS-30', N'Kemps Bay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (478, 33, N'BT-05', N'Bumthang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (479, 33, N'BT-06', N'Chhukha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (480, 33, N'BT-07', N'Chirang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (481, 33, N'BT-08', N'Daga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (482, 33, N'BT-09', N'Geylegphug')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (483, 33, N'BT-10', N'Ha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (484, 33, N'BT-17', N'Samdrup')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (485, 33, N'BT-18', N'Shemgang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (486, 33, N'BT-19', N'Tashigang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (487, 33, N'BT-20', N'Thimphu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (488, 33, N'BT-21', N'Tongsa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (489, 33, N'BT-22', N'Wangdi Phodrang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (490, 33, N'BT-11', N'Lhuntshi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (491, 33, N'BT-12', N'Mongar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (492, 33, N'BT-13', N'Paro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (493, 33, N'BT-14', N'Pemagatsel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (494, 33, N'BT-15', N'Punakha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (495, 33, N'BT-16', N'Samchi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (496, 35, N'BW-01', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (497, 35, N'BW-02', N'Chobe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (498, 35, N'BW-03', N'Ghanzi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (499, 35, N'BW-04', N'Kgalagadi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (500, 35, N'BW-05', N'Kgatleng')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (501, 35, N'BW-06', N'Kweneng')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (502, 35, N'BW-07', N'Ngamiland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (503, 35, N'BW-08', N'North-East')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (504, 35, N'BW-09', N'South-East')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (505, 35, N'BW-10', N'Southern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (506, 36, N'BY-01', N'Brestskaya Voblasts''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (507, 36, N'BY-02', N'Homyel''skaya Voblasts''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (508, 36, N'BY-03', N'Hrodzyenskaya Voblasts''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (509, 36, N'BY-06', N'Mahilyowskaya Voblasts''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (510, 36, N'BY-04', N'Minsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (511, 36, N'BY-05', N'Minskaya Voblasts''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (512, 36, N'BY-07', N'Vitsyebskaya Voblasts''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (513, 37, N'BZ-01', N'Belize')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (514, 37, N'BZ-02', N'Cayo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (515, 37, N'BZ-03', N'Corozal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (516, 37, N'BZ-04', N'Orange Walk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (517, 37, N'BZ-05', N'Stann Creek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (518, 37, N'BZ-06', N'Toledo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (519, 38, N'CA-01', N'Alberta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (520, 38, N'CA-02', N'British Columbia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (521, 38, N'CA-03', N'Manitoba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (522, 38, N'CA-04', N'New Brunswick')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (523, 38, N'CA-05', N'Newfoundland and Labrador')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (524, 38, N'CA-13', N'Northwest Territories')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (525, 38, N'CA-12', N'Yukon Territory')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (526, 38, N'CA-07', N'Nova Scotia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (527, 38, N'CA-14', N'Nunavut')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (528, 38, N'CA-08', N'Ontario')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (529, 38, N'CA-09', N'Prince Edward Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (530, 38, N'CA-10', N'Quebec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (531, 38, N'CA-11', N'Saskatchewan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (532, 40, N'CD-01', N'Bandundu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (533, 40, N'CD-08', N'Bas-Congo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (534, 40, N'CD-02', N'Equateur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (535, 40, N'CD-03', N'Kasai-Occidental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (536, 40, N'CD-04', N'Kasai-Oriental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (537, 40, N'CD-05', N'Katanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (538, 40, N'CD-06', N'Kinshasa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (539, 40, N'CD-07', N'Kivu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (540, 40, N'CD-10', N'Maniema')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (541, 40, N'CD-11', N'Nord-Kivu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (542, 40, N'CD-09', N'Orientale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (543, 40, N'CD-12', N'Sud-Kivu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (544, 41, N'CF-01', N'Bamingui-Bangoran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (545, 41, N'CF-18', N'Bangui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (546, 41, N'CF-02', N'Basse-Kotto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (547, 41, N'CF-05', N'Haut-Mbomou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (548, 41, N'CF-03', N'Haute-Kotto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (549, 41, N'CF-06', N'Kemo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (550, 41, N'CF-11', N'Ouaka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (551, 41, N'CF-12', N'Ouham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (552, 41, N'CF-13', N'Ouham-Pende')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (553, 41, N'CF-16', N'Sangha-Mbaere')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (554, 41, N'CF-14', N'Vakaga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (555, 41, N'CF-07', N'Lobaye')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (556, 41, N'CF-04', N'Mambere-Kadei')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (557, 41, N'CF-08', N'Mbomou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (558, 41, N'CF-15', N'Nana-Grebizi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (559, 41, N'CF-09', N'Nana-Mambere')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (560, 41, N'CF-17', N'Ombella-Mpoko')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (561, 42, N'CG-01', N'Bouenza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (562, 42, N'CG-12', N'Brazzaville')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (563, 42, N'CG-03', N'Cuvette')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (564, 42, N'CG-04', N'Kouilou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (565, 42, N'CG-05', N'Lekoumou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (566, 42, N'CG-06', N'Likouala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (567, 42, N'CG-07', N'Niari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (568, 42, N'CG-08', N'Plateaux')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (569, 42, N'CG-11', N'Pool')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (570, 42, N'CG-10', N'Sangha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (571, 43, N'CH-01', N'Aargau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (572, 43, N'CH-02', N'Ausser-Rhoden')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (573, 43, N'CH-03', N'Basel-Landschaft')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (574, 43, N'CH-04', N'Basel-Stadt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (575, 43, N'CH-05', N'Bern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (576, 43, N'CH-06', N'Fribourg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (577, 43, N'CH-24', N'Zug')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (578, 43, N'CH-25', N'Zurich')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (579, 43, N'CH-18', N'Solothurn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (580, 43, N'CH-19', N'Thurgau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (581, 43, N'CH-20', N'Ticino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (582, 43, N'CH-21', N'Uri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (583, 43, N'CH-22', N'Valais')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (584, 43, N'CH-23', N'Vaud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (585, 43, N'CH-12', N'Neuchatel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (586, 43, N'CH-13', N'Nidwalden')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (587, 43, N'CH-14', N'Obwalden')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (588, 43, N'CH-15', N'Sankt Gallen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (589, 43, N'CH-16', N'Schaffhausen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (590, 43, N'CH-17', N'Schwyz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (591, 43, N'CH-07', N'Geneve')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (592, 43, N'CH-08', N'Glarus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (593, 43, N'CH-09', N'Graubunden')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (594, 43, N'CH-10', N'Inner-Rhoden')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (595, 43, N'CH-26', N'Jura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (596, 43, N'CH-11', N'Luzern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (597, 44, N'CI-01', N'Abengourou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (598, 44, N'CI-61', N'Abidjan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (599, 44, N'CI-62', N'Aboisso')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (600, 44, N'CI-63', N'Adiake')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (601, 44, N'CI-05', N'Adzope')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (602, 44, N'CI-06', N'Agboville')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (603, 44, N'CI-57', N'Vavoua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (604, 44, N'CI-73', N'Yamoussoukro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (605, 44, N'CI-34', N'Zuenoula')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (606, 44, N'CI-55', N'Tiassale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (607, 44, N'CI-71', N'Tiebissou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (608, 44, N'CI-33', N'Tingrela')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (609, 44, N'CI-26', N'Touba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (610, 44, N'CI-72', N'Toulepleu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (611, 44, N'CI-56', N'Toumodi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (612, 44, N'CI-51', N'Sassandra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (613, 44, N'CI-25', N'Seguela')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (614, 44, N'CI-52', N'Sinfra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (615, 44, N'CI-32', N'Soubre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (616, 44, N'CI-53', N'Tabou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (617, 44, N'CI-54', N'Tanda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (618, 44, N'CI-30', N'Mankono')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (619, 44, N'CI-48', N'Mbahiakro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (620, 44, N'CI-23', N'Odienne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (621, 44, N'CI-31', N'Oume')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (622, 44, N'CI-49', N'Sakassou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (623, 44, N'CI-50', N'San Pedro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (624, 44, N'CI-28', N'Issia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (625, 44, N'CI-70', N'Jacqueville')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (626, 44, N'CI-20', N'Katiola')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (627, 44, N'CI-21', N'Korhogo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (628, 44, N'CI-29', N'Lakota')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (629, 44, N'CI-47', N'Man')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (630, 44, N'CI-44', N'Duekoue')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (631, 44, N'CI-17', N'Ferkessedougou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (632, 44, N'CI-18', N'Gagnoa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (633, 44, N'CI-68', N'Grand-Bassam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (634, 44, N'CI-45', N'Grand-Lahou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (635, 44, N'CI-69', N'Guiglo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (636, 44, N'CI-66', N'Dabou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (637, 44, N'CI-41', N'Daloa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (638, 44, N'CI-14', N'Danane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (639, 44, N'CI-42', N'Daoukro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (640, 44, N'CI-67', N'Dimbokro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (641, 44, N'CI-16', N'Divo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (642, 44, N'CI-27', N'Bongouanou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (643, 44, N'CI-39', N'Bouafle')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (644, 44, N'CI-40', N'Bouake')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (645, 44, N'CI-11', N'Bouna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (646, 44, N'CI-12', N'Boundiali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (647, 44, N'CI-03', N'Dabakala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (648, 44, N'CI-64', N'Alepe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (649, 44, N'CI-36', N'Bangolo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (650, 44, N'CI-37', N'Beoumi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (651, 44, N'CI-07', N'Biankouma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (652, 44, N'CI-65', N'Bocanda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (653, 44, N'CI-38', N'Bondoukou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (654, 46, N'CL-02', N'Aisen del General Carlos Ibanez del Campo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (655, 46, N'CL-03', N'Antofagasta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (656, 46, N'CL-04', N'Araucania')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (657, 46, N'CL-05', N'Atacama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (658, 46, N'CL-06', N'Bio-Bio')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (659, 46, N'CL-07', N'Coquimbo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (660, 46, N'CL-01', N'Valparaiso')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (661, 46, N'CL-08', N'Libertador General Bernardo O''Higgins')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (662, 46, N'CL-09', N'Los Lagos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (663, 46, N'CL-10', N'Magallanes y de la Antartica Chilena')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (664, 46, N'CL-11', N'Maule')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (665, 46, N'CL-12', N'Region Metropolitana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (666, 46, N'CL-13', N'Tarapaca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (667, 47, N'CM-10', N'Adamaoua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (668, 47, N'CM-11', N'Centre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (669, 47, N'CM-04', N'Est')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (670, 47, N'CM-12', N'Extreme-Nord')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (671, 47, N'CM-05', N'Littoral')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (672, 47, N'CM-13', N'Nord')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (673, 47, N'CM-07', N'Nord-Ouest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (674, 47, N'CM-08', N'Ouest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (675, 47, N'CM-14', N'Sud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (676, 47, N'CM-09', N'Sud-Ouest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (677, 48, N'CN-01', N'Anhui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (678, 48, N'CN-22', N'Beijing')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (679, 48, N'CN-33', N'Chongqing')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (680, 48, N'CN-07', N'Fujian')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (681, 48, N'CN-15', N'Gansu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (682, 48, N'CN-30', N'Guangdong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (683, 48, N'CN-02', N'Zhejiang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (684, 48, N'CN-24', N'Shanxi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (685, 48, N'CN-32', N'Sichuan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (686, 48, N'CN-28', N'Tianjin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (687, 48, N'CN-13', N'Xinjiang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (688, 48, N'CN-14', N'Xizang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (689, 48, N'CN-29', N'Yunnan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (690, 48, N'CN-20', N'Nei Mongol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (691, 48, N'CN-21', N'Ningxia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (692, 48, N'CN-06', N'Qinghai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (693, 48, N'CN-26', N'Shaanxi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (694, 48, N'CN-25', N'Shandong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (695, 48, N'CN-23', N'Shanghai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (696, 48, N'CN-12', N'Hubei')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (697, 48, N'CN-11', N'Hunan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (698, 48, N'CN-04', N'Jiangsu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (699, 48, N'CN-03', N'Jiangxi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (700, 48, N'CN-05', N'Jilin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (701, 48, N'CN-19', N'Liaoning')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (702, 48, N'CN-16', N'Guangxi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (703, 48, N'CN-18', N'Guizhou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (704, 48, N'CN-31', N'Hainan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (705, 48, N'CN-10', N'Hebei')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (706, 48, N'CN-08', N'Heilongjiang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (707, 48, N'CN-09', N'Henan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (708, 49, N'CO-01', N'Amazonas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (709, 49, N'CO-02', N'Antioquia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (710, 49, N'CO-03', N'Arauca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (711, 49, N'CO-04', N'Atlantico')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (712, 49, N'CO-35', N'Bolivar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (713, 49, N'CO-36', N'Boyaca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (714, 49, N'CO-29', N'Valle del Cauca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (715, 49, N'CO-30', N'Vaupes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (716, 49, N'CO-31', N'Vichada')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (717, 49, N'CO-23', N'Quindio')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (718, 49, N'CO-24', N'Risaralda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (719, 49, N'CO-25', N'San Andres y Providencia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (720, 49, N'CO-26', N'Santander')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (721, 49, N'CO-27', N'Sucre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (722, 49, N'CO-28', N'Tolima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (723, 49, N'CO-17', N'La Guajira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (724, 49, N'CO-38', N'Magdalena')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (725, 49, N'CO-19', N'Meta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (726, 49, N'CO-20', N'Narino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (727, 49, N'CO-21', N'Norte de Santander')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (728, 49, N'CO-22', N'Putumayo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (729, 49, N'CO-12', N'Cordoba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (730, 49, N'CO-33', N'Cundinamarca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (731, 49, N'CO-34', N'Distrito Especial')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (732, 49, N'CO-15', N'Guainia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (733, 49, N'CO-14', N'Guaviare')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (734, 49, N'CO-16', N'Huila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (735, 49, N'CO-37', N'Caldas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (736, 49, N'CO-08', N'Caqueta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (737, 49, N'CO-32', N'Casanare')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (738, 49, N'CO-09', N'Cauca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (739, 49, N'CO-10', N'Cesar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (740, 49, N'CO-11', N'Choco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (741, 50, N'CR-01', N'Alajuela')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (742, 50, N'CR-02', N'Cartago')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (743, 50, N'CR-03', N'Guanacaste')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (744, 50, N'CR-04', N'Heredia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (745, 50, N'CR-06', N'Limon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (746, 50, N'CR-07', N'Puntarenas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (747, 50, N'CR-08', N'San Jose')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (748, 51, N'CU-05', N'Camaguey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (749, 51, N'CU-07', N'Ciego de Avila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (750, 51, N'CU-08', N'Cienfuegos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (751, 51, N'CU-02', N'Ciudad de la Habana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (752, 51, N'CU-09', N'Granma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (753, 51, N'CU-10', N'Guantanamo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (754, 51, N'CU-14', N'Sancti Spiritus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (755, 51, N'CU-15', N'Santiago de Cuba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (756, 51, N'CU-16', N'Villa Clara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (757, 51, N'CU-12', N'Holguin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (758, 51, N'CU-04', N'Isla de la Juventud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (759, 51, N'CU-11', N'La Habana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (760, 51, N'CU-13', N'Las Tunas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (761, 51, N'CU-03', N'Matanzas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (762, 51, N'CU-01', N'Pinar del Rio')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (763, 52, N'CV-01', N'Boa Vista')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (764, 52, N'CV-02', N'Brava')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (765, 52, N'CV-04', N'Maio')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (766, 52, N'CV-13', N'Mosteiros')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (767, 52, N'CV-05', N'Paul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (768, 52, N'CV-14', N'Praia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (769, 52, N'CV-19', N'Sao Miguel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (770, 52, N'CV-10', N'Sao Nicolau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (771, 52, N'CV-11', N'Sao Vicente')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (772, 52, N'CV-20', N'Tarrafal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (773, 52, N'CV-07', N'Ribeira Grande')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (774, 52, N'CV-08', N'Sal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (775, 52, N'CV-15', N'Santa Catarina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (776, 52, N'CV-16', N'Santa Cruz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (777, 52, N'CV-17', N'Sao Domingos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (778, 52, N'CV-18', N'Sao Filipe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (779, 54, N'CY-01', N'Famagusta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (780, 54, N'CY-02', N'Kyrenia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (781, 54, N'CY-03', N'Larnaca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (782, 54, N'CY-05', N'Limassol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (783, 54, N'CY-04', N'Nicosia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (784, 54, N'CY-06', N'Paphos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (785, 55, N'CZ-03', N'Blansko')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (786, 55, N'CZ-04', N'Breclav')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (787, 55, N'CZ-52', N'Hlavni Mesto Praha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (788, 55, N'CZ-20', N'Hradec Kralove')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (789, 55, N'CZ-21', N'Jablonec nad Nisou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (790, 55, N'CZ-23', N'Jiein')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (791, 55, N'CZ-88', N'Stredocesky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (792, 55, N'CZ-70', N'Trutnov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (793, 55, N'CZ-89', N'Ustecky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (794, 55, N'CZ-80', N'Vysocina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (795, 55, N'CZ-90', N'Zlinsky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (796, 55, N'CZ-41', N'Nymburk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (797, 55, N'CZ-84', N'Olomoucky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (798, 55, N'CZ-45', N'Pardubice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (799, 55, N'CZ-86', N'Pardubicky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (800, 55, N'CZ-87', N'Plzensky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (801, 55, N'CZ-61', N'Semily')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (802, 55, N'CZ-33', N'Liberec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (803, 55, N'CZ-83', N'Liberecky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (804, 55, N'CZ-36', N'Melnik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (805, 55, N'CZ-37', N'Mlada Boleslav')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (806, 55, N'CZ-85', N'Moravskoslezsky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (807, 55, N'CZ-39', N'Nachod')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (808, 55, N'CZ-24', N'Jihlava')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (809, 55, N'CZ-79', N'Jihocesky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (810, 55, N'CZ-78', N'Jihomoravsky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (811, 55, N'CZ-81', N'Karlovarsky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (812, 55, N'CZ-30', N'Kolin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (813, 55, N'CZ-82', N'Kralovehradecky Kraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (814, 56, N'DE-01', N'Baden-Württemberg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (815, 56, N'DE-02', N'Bayern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (816, 56, N'DE-16', N'Berlin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (817, 56, N'DE-11', N'Brandenburg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (818, 56, N'DE-03', N'Bremen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (819, 56, N'DE-04', N'Hamburg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (820, 56, N'DE-13', N'Sachsen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (821, 56, N'DE-14', N'Sachsen-Anhalt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (822, 56, N'DE-10', N'Schleswig-Holstein')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (823, 56, N'DE-15', N'Thuringen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (824, 56, N'DE-05', N'Hessen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (825, 56, N'DE-12', N'Mecklenburg-Vorpommern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (826, 56, N'DE-06', N'Niedersachsen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (827, 56, N'DE-07', N'Nordrhein-Westfalen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (828, 56, N'DE-08', N'Rheinland-Pfalz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (829, 56, N'DE-09', N'Saarland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (830, 57, N'DJ-02', N'Dikhil')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (831, 57, N'DJ-03', N'Djibouti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (832, 57, N'DJ-04', N'Obock')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (833, 57, N'DJ-05', N'Tadjoura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (834, 58, N'DK-01', N'Arhus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (835, 58, N'DK-02', N'Bornholm')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (836, 58, N'DK-03', N'Frederiksborg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (837, 58, N'DK-04', N'Fyn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (838, 58, N'DK-05', N'Kobenhavn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (839, 58, N'DK-07', N'Nordjylland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (840, 58, N'DK-13', N'Vejle')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (841, 58, N'DK-14', N'Vestsjalland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (842, 58, N'DK-15', N'Viborg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (843, 58, N'DK-08', N'Ribe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (844, 58, N'DK-09', N'Ringkobing')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (845, 58, N'DK-10', N'Roskilde')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (846, 58, N'DK-11', N'Sonderjylland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (847, 58, N'DK-06', N'Staden Kobenhavn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (848, 58, N'DK-12', N'Storstrom')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (849, 59, N'DM-02', N'Saint Andrew')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (850, 59, N'DM-03', N'Saint David')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (851, 59, N'DM-04', N'Saint George')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (852, 59, N'DM-05', N'Saint John')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (853, 59, N'DM-06', N'Saint Joseph')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (854, 59, N'DM-07', N'Saint Luke')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (855, 59, N'DM-08', N'Saint Mark')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (856, 59, N'DM-09', N'Saint Patrick')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (857, 59, N'DM-10', N'Saint Paul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (858, 59, N'DM-11', N'Saint Peter')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (859, 60, N'DO-01', N'Azua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (860, 60, N'DO-02', N'Baoruco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (861, 60, N'DO-03', N'Barahona')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (862, 60, N'DO-04', N'Dajabon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (863, 60, N'DO-05', N'Distrito Nacional')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (864, 60, N'DO-06', N'Duarte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (865, 60, N'DO-23', N'San Juan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (866, 60, N'DO-24', N'San Pedro De Macoris')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (867, 60, N'DO-21', N'Sanchez Ramirez')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (868, 60, N'DO-25', N'Santiago')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (869, 60, N'DO-26', N'Santiago Rodriguez')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (870, 60, N'DO-27', N'Valverde')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (871, 60, N'DO-16', N'Pedernales')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (872, 60, N'DO-17', N'Peravia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (873, 60, N'DO-18', N'Puerto Plata')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (874, 60, N'DO-19', N'Salcedo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (875, 60, N'DO-20', N'Samana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (876, 60, N'DO-33', N'San Cristobal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (877, 60, N'DO-12', N'La Romana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (878, 60, N'DO-30', N'La Vega')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (879, 60, N'DO-14', N'Maria Trinidad Sanchez')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (880, 60, N'DO-31', N'Monsenor Nouel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (881, 60, N'DO-15', N'Monte Cristi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (882, 60, N'DO-32', N'Monte Plata')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (883, 60, N'DO-28', N'El Seibo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (884, 60, N'DO-11', N'Elias Pina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (885, 60, N'DO-08', N'Espaillat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (886, 60, N'DO-29', N'Hato Mayor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (887, 60, N'DO-09', N'Independencia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (888, 60, N'DO-10', N'La Altagracia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (889, 61, N'DZ-34', N'Adrar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (890, 61, N'DZ-35', N'Ain Defla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (891, 61, N'DZ-36', N'Ain Temouchent')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (892, 61, N'DZ-01', N'Alger')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (893, 61, N'DZ-37', N'Annaba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (894, 61, N'DZ-03', N'Batna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (895, 61, N'DZ-13', N'Tiaret')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (896, 61, N'DZ-54', N'Tindouf')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (897, 61, N'DZ-55', N'Tipaza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (898, 61, N'DZ-56', N'Tissemsilt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (899, 61, N'DZ-14', N'Tizi Ouzou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (900, 61, N'DZ-15', N'Tlemcen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (901, 61, N'DZ-12', N'Setif')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (902, 61, N'DZ-30', N'Sidi Bel Abbes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (903, 61, N'DZ-31', N'Skikda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (904, 61, N'DZ-52', N'Souk Ahras')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (905, 61, N'DZ-53', N'Tamanghasset')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (906, 61, N'DZ-33', N'Tebessa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (907, 61, N'DZ-49', N'Naama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (908, 61, N'DZ-09', N'Oran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (909, 61, N'DZ-50', N'Ouargla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (910, 61, N'DZ-29', N'Oum el Bouaghi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (911, 61, N'DZ-51', N'Relizane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (912, 61, N'DZ-10', N'Saida')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (913, 61, N'DZ-25', N'Laghouat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (914, 61, N'DZ-27', N'M''sila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (915, 61, N'DZ-26', N'Mascara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (916, 61, N'DZ-06', N'Medea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (917, 61, N'DZ-48', N'Mila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (918, 61, N'DZ-07', N'Mostaganem')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (919, 61, N'DZ-44', N'El Tarf')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (920, 61, N'DZ-45', N'Ghardaia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (921, 61, N'DZ-23', N'Guelma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (922, 61, N'DZ-46', N'Illizi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (923, 61, N'DZ-24', N'Jijel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (924, 61, N'DZ-47', N'Khenchela')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (925, 61, N'DZ-40', N'Boumerdes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (926, 61, N'DZ-41', N'Chlef')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (927, 61, N'DZ-04', N'Constantine')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (928, 61, N'DZ-22', N'Djelfa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (929, 61, N'DZ-42', N'El Bayadh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (930, 61, N'DZ-43', N'El Oued')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (931, 61, N'DZ-38', N'Bechar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (932, 61, N'DZ-18', N'Bejaia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (933, 61, N'DZ-19', N'Biskra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (934, 61, N'DZ-20', N'Blida')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (935, 61, N'DZ-39', N'Bordj Bou Arreridj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (936, 61, N'DZ-21', N'Bouira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (937, 62, N'EC-02', N'Azuay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (938, 62, N'EC-03', N'Bolivar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (939, 62, N'EC-04', N'Canar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (940, 62, N'EC-05', N'Carchi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (941, 62, N'EC-06', N'Chimborazo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (942, 62, N'EC-07', N'Cotopaxi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (943, 62, N'EC-18', N'Pichincha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (944, 62, N'EC-22', N'Sucumbios')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (945, 62, N'EC-19', N'Tungurahua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (946, 62, N'EC-20', N'Zamora-Chinchipe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (947, 62, N'EC-13', N'Los Rios')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (948, 62, N'EC-14', N'Manabi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (949, 62, N'EC-15', N'Morona-Santiago')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (950, 62, N'EC-23', N'Napo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (951, 62, N'EC-24', N'Orellana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (952, 62, N'EC-17', N'Pastaza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (953, 62, N'EC-08', N'El Oro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (954, 62, N'EC-09', N'Esmeraldas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (955, 62, N'EC-01', N'Galapagos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (956, 62, N'EC-10', N'Guayas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (957, 62, N'EC-11', N'Imbabura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (958, 62, N'EC-12', N'Loja')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (959, 63, N'EE-01', N'Harjumaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (960, 63, N'EE-02', N'Hiiumaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (961, 63, N'EE-03', N'Ida-Virumaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (962, 63, N'EE-04', N'Jarvamaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (963, 63, N'EE-05', N'Jogevamaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (964, 63, N'EE-06', N'Kohtla-Jarve')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (965, 63, N'EE-19', N'Valgamaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (966, 63, N'EE-20', N'Viljandimaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (967, 63, N'EE-21', N'Vorumaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (968, 63, N'EE-13', N'Raplamaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (969, 63, N'EE-14', N'Saaremaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (970, 63, N'EE-15', N'Sillamae')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (971, 63, N'EE-16', N'Tallinn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (972, 63, N'EE-17', N'Tartu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (973, 63, N'EE-18', N'Tartumaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (974, 63, N'EE-08', N'Laane-Virumaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (975, 63, N'EE-07', N'Laanemaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (976, 63, N'EE-09', N'Narva')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (977, 63, N'EE-10', N'Parnu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (978, 63, N'EE-11', N'Parnumaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (979, 63, N'EE-12', N'Polvamaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (980, 64, N'EG-01', N'Ad Daqahliyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (981, 64, N'EG-02', N'Al Bahr al Ahmar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (982, 64, N'EG-03', N'Al Buhayrah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (983, 64, N'EG-04', N'Al Fayyum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (984, 64, N'EG-05', N'Al Gharbiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (985, 64, N'EG-06', N'Al Iskandariyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (986, 64, N'EG-27', N'Shamal Sina''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (987, 64, N'EG-24', N'Suhaj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (988, 64, N'EG-19', N'Bur Sa''id')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (989, 64, N'EG-20', N'Dumyat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (990, 64, N'EG-26', N'Janub Sina''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (991, 64, N'EG-21', N'Kafr ash Shaykh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (992, 64, N'EG-22', N'Matruh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (993, 64, N'EG-23', N'Qina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (994, 64, N'EG-13', N'Al Wadi al Jadid')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (995, 64, N'EG-15', N'As Suways')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (996, 64, N'EG-14', N'Ash Sharqiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (997, 64, N'EG-16', N'Aswan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (998, 64, N'EG-17', N'Asyut')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (999, 64, N'EG-18', N'Bani Suwayf')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1000, 64, N'EG-07', N'Al Isma''iliyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1001, 64, N'EG-08', N'Al Jizah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1002, 64, N'EG-09', N'Al Minufiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1003, 64, N'EG-10', N'Al Minya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1004, 64, N'EG-11', N'Al Qahirah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1005, 64, N'EG-12', N'Al Qalyubiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1006, 67, N'ES-51', N'Andalucia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1007, 67, N'ES-52', N'Aragon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1008, 67, N'ES-34', N'Asturias')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1009, 67, N'ES-53', N'Canarias')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1010, 67, N'ES-39', N'Cantabria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1011, 67, N'ES-55', N'Castilla y Leon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1012, 67, N'ES-27', N'La Rioja')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1013, 67, N'ES-29', N'Madrid')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1014, 67, N'ES-31', N'Murcia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1015, 67, N'ES-32', N'Navarra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1016, 67, N'ES-59', N'Pais Vasco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1017, 67, N'ES-54', N'Castilla-La Mancha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1018, 67, N'ES-56', N'Catalonia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1019, 67, N'ES-60', N'Comunidad Valenciana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1020, 67, N'ES-57', N'Extremadura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1021, 67, N'ES-58', N'Galicia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1022, 67, N'ES-07', N'Islas Baleares')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1023, 68, N'ET-10', N'Addis Abeba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1024, 68, N'ET-44', N'Adis Abeba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1025, 68, N'ET-14', N'Afar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1026, 68, N'ET-46', N'Amara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1027, 68, N'ET-02', N'Amhara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1028, 68, N'ET-13', N'Benishangul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1029, 68, N'ET-07', N'Somali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1030, 68, N'ET-11', N'Southern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1031, 68, N'ET-52', N'Sumale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1032, 68, N'ET-12', N'Tigray')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1033, 68, N'ET-54', N'YeDebub Biheroch Bihereseboch na Hizboch')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1034, 68, N'ET-47', N'Binshangul Gumuz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1035, 68, N'ET-48', N'Dire Dawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1036, 68, N'ET-49', N'Gambela Hizboch')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1037, 68, N'ET-08', N'Gambella')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1038, 68, N'ET-50', N'Hareri Hizb')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1039, 68, N'ET-51', N'Oromiya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1040, 69, N'FI-14', N'Eastern Finland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1041, 69, N'FI-06', N'Lapland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1042, 69, N'FI-08', N'Oulu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1043, 69, N'FI-13', N'Southern Finland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1044, 69, N'FI-15', N'Western Finland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1045, 70, N'FJ-01', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1046, 70, N'FJ-02', N'Eastern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1047, 70, N'FJ-03', N'Northern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1048, 70, N'FJ-04', N'Rotuma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1049, 70, N'FJ-05', N'Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1050, 72, N'FM-03', N'Chuuk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1051, 72, N'FM-01', N'Kosrae')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1052, 72, N'FM-02', N'Pohnpei')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1053, 72, N'FM-04', N'Yap')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1054, 74, N'FR-C1', N'Alsace')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1055, 74, N'FR-97', N'Aquitaine')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1056, 74, N'FR-98', N'Auvergne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1057, 74, N'FR-99', N'Basse-Normandie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1058, 74, N'FR-A1', N'Bourgogne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1059, 74, N'FR-A2', N'Bretagne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1060, 74, N'FR-B6', N'Picardie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1061, 74, N'FR-B7', N'Poitou-Charentes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1062, 74, N'FR-B8', N'Provence-Alpes-Cote d''Azur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1063, 74, N'FR-B9', N'Rhone-Alpes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1064, 74, N'FR-A9', N'Languedoc-Roussillon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1065, 74, N'FR-B1', N'Limousin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1066, 74, N'FR-B2', N'Lorraine')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1067, 74, N'FR-B3', N'Midi-Pyrenees')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1068, 74, N'FR-B4', N'Nord-Pas-de-Calais')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1069, 74, N'FR-B5', N'Pays de la Loire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1070, 74, N'FR-A3', N'Centre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1071, 74, N'FR-A4', N'Champagne-Ardenne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1072, 74, N'FR-A5', N'Corse')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1073, 74, N'FR-A6', N'Franche-Comte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1074, 74, N'FR-A7', N'Haute-Normandie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1075, 74, N'FR-A8', N'Ile-de-France')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1076, 75, N'GA-01', N'Estuaire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1077, 75, N'GA-02', N'Haut-Ogooue')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1078, 75, N'GA-03', N'Moyen-Ogooue')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1079, 75, N'GA-04', N'Ngounie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1080, 75, N'GA-05', N'Nyanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1081, 75, N'GA-06', N'Ogooue-Ivindo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1082, 75, N'GA-07', N'Ogooue-Lolo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1083, 75, N'GA-08', N'Ogooue-Maritime')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1084, 75, N'GA-09', N'Woleu-Ntem')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1085, 76, N'GB-T5', N'Aberdeen City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1086, 76, N'GB-T6', N'Aberdeenshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1087, 76, N'GB-T7', N'Angus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1088, 76, N'GB-Q6', N'Antrim')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1089, 76, N'GB-Q7', N'Ards')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1090, 76, N'GB-T8', N'Argyll and Bute')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1091, 76, N'GB-Q1', N'Wirral')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1092, 76, N'GB-Q2', N'Wokingham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1093, 76, N'GB-Q3', N'Wolverhampton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1094, 76, N'GB-Q4', N'Worcestershire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1095, 76, N'GB-Z4', N'Wrexham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1096, 76, N'GB-Q5', N'York')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1097, 76, N'GB-P6', N'West Sussex')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1098, 76, N'GB-45', N'West Yorkshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1099, 76, N'GB-P5', N'Westminster')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1100, 76, N'GB-P7', N'Wigan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1101, 76, N'GB-P8', N'Wiltshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1102, 76, N'GB-P9', N'Windsor and Maidenhead')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1103, 76, N'GB-P3', N'Warwickshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1104, 76, N'GB-P4', N'West Berkshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1105, 76, N'GB-W7', N'West Dunbartonshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1106, 76, N'GB-97', N'West Glamorgan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1107, 76, N'GB-W9', N'West Lothian')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1108, 76, N'GB-43', N'West Midlands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1109, 76, N'GB-Z3', N'Vale of Glamorgan, The')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1110, 76, N'GB-O7', N'Wakefield')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1111, 76, N'GB-O8', N'Walsall')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1112, 76, N'GB-O9', N'Waltham Forest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1113, 76, N'GB-P1', N'Wandsworth')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1114, 76, N'GB-P2', N'Warrington')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1115, 76, N'GB-O3', N'Thurrock')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1116, 76, N'GB-O4', N'Torbay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1117, 76, N'GB-Z2', N'Torfaen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1118, 76, N'GB-O5', N'Tower Hamlets')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1119, 76, N'GB-O6', N'Trafford')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1120, 76, N'GB-41', N'Tyne and Wear')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1121, 76, N'GB-N8', N'Sutton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1122, 76, N'GB-Z1', N'Swansea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1123, 76, N'GB-N9', N'Swindon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1124, 76, N'GB-O1', N'Tameside')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1125, 76, N'GB-88', N'Tayside')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1126, 76, N'GB-O2', N'Telford and Wrekin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1127, 76, N'GB-N4', N'Stoke-on-Trent')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1128, 76, N'GB-T4', N'Strabane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1129, 76, N'GB-87', N'Strathclyde')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1130, 76, N'GB-N5', N'Suffolk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1131, 76, N'GB-N6', N'Sunderland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1132, 76, N'GB-N7', N'Surrey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1133, 76, N'GB-M8', N'Southwark')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1134, 76, N'GB-N1', N'St. Helens')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1135, 76, N'GB-M9', N'Staffordshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1136, 76, N'GB-W6', N'Stirling')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1137, 76, N'GB-N2', N'Stockport')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1138, 76, N'GB-N3', N'Stockton-on-Tees')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1139, 76, N'GB-M6', N'South Gloucestershire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1140, 76, N'GB-W5', N'South Lanarkshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1141, 76, N'GB-M7', N'South Tyneside')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1142, 76, N'GB-37', N'South Yorkshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1143, 76, N'GB-M4', N'Southampton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1144, 76, N'GB-M5', N'Southend-on-Sea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1145, 76, N'GB-L6', N'Shropshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1146, 76, N'GB-M1', N'Slough')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1147, 76, N'GB-M2', N'Solihull')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1148, 76, N'GB-M3', N'Somerset')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1149, 76, N'GB-W4', N'South Ayrshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1150, 76, N'GB-96', N'South Glamorgan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1151, 76, N'GB-L5', N'Salford')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1152, 76, N'GB-L7', N'Sandwell')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1153, 76, N'GB-T9', N'Scottish Borders, The')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1154, 76, N'GB-L8', N'Sefton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1155, 76, N'GB-L9', N'Sheffield')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1156, 76, N'GB-W3', N'Shetland Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1157, 76, N'GB-W2', N'Renfrewshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1158, 76, N'GB-Y9', N'Rhondda Cynon Taff')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1159, 76, N'GB-L1', N'Richmond upon Thames')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1160, 76, N'GB-L2', N'Rochdale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1161, 76, N'GB-L3', N'Rotherham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1162, 76, N'GB-L4', N'Rutland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1163, 76, N'GB-K5', N'Poole')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1164, 76, N'GB-K6', N'Portsmouth')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1165, 76, N'GB-Y8', N'Powys')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1166, 76, N'GB-K7', N'Reading')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1167, 76, N'GB-K8', N'Redbridge')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1168, 76, N'GB-K9', N'Redcar and Cleveland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1169, 76, N'GB-V9', N'Orkney')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1170, 76, N'GB-K2', N'Oxfordshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1171, 76, N'GB-Y7', N'Pembrokeshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1172, 76, N'GB-W1', N'Perth and Kinross')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1173, 76, N'GB-K3', N'Peterborough')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1174, 76, N'GB-K4', N'Plymouth')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1175, 76, N'GB-J1', N'Northamptonshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1176, 76, N'GB-J6', N'Northumberland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1177, 76, N'GB-J8', N'Nottingham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1178, 76, N'GB-J9', N'Nottinghamshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1179, 76, N'GB-K1', N'Oldham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1180, 76, N'GB-T3', N'Omagh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1181, 76, N'GB-J2', N'North East Lincolnshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1182, 76, N'GB-V8', N'North Lanarkshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1183, 76, N'GB-J3', N'North Lincolnshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1184, 76, N'GB-J4', N'North Somerset')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1185, 76, N'GB-J5', N'North Tyneside')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1186, 76, N'GB-J7', N'North Yorkshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1187, 76, N'GB-Y6', N'Newport')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1188, 76, N'GB-S9', N'Newry and Mourne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1189, 76, N'GB-T1', N'Newtownabbey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1190, 76, N'GB-I9', N'Norfolk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1191, 76, N'GB-V7', N'North Ayrshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1192, 76, N'GB-T2', N'North Down')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1193, 76, N'GB-Y4', N'Monmouthshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1194, 76, N'GB-V6', N'Moray')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1195, 76, N'GB-S8', N'Moyle')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1196, 76, N'GB-Y5', N'Neath Port Talbot')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1197, 76, N'GB-I7', N'Newcastle upon Tyne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1198, 76, N'GB-I8', N'Newham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1199, 76, N'GB-Y3', N'Merthyr Tydfil')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1200, 76, N'GB-I4', N'Merton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1201, 76, N'GB-94', N'Mid Glamorgan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1202, 76, N'GB-I5', N'Middlesbrough')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1203, 76, N'GB-V5', N'Midlothian')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1204, 76, N'GB-I6', N'Milton Keynes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1205, 76, N'GB-84', N'Lothian')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1206, 76, N'GB-I1', N'Luton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1207, 76, N'GB-S7', N'Magherafelt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1208, 76, N'GB-I2', N'Manchester')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1209, 76, N'GB-I3', N'Medway')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1210, 76, N'GB-28', N'Merseyside')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1211, 76, N'GB-H6', N'Lewisham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1212, 76, N'GB-S4', N'Limavady')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1213, 76, N'GB-H7', N'Lincolnshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1214, 76, N'GB-S5', N'Lisburn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1215, 76, N'GB-H8', N'Liverpool')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1216, 76, N'GB-H9', N'London, City of')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1217, 76, N'GB-H1', N'Lambeth')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1218, 76, N'GB-H2', N'Lancashire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1219, 76, N'GB-S3', N'Larne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1220, 76, N'GB-H3', N'Leeds')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1221, 76, N'GB-H4', N'Leicester')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1222, 76, N'GB-H5', N'Leicestershire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1223, 76, N'GB-G4', N'Kensington and Chelsea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1224, 76, N'GB-G5', N'Kent')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1225, 76, N'GB-G6', N'Kingston upon Hull, City of')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1226, 76, N'GB-G7', N'Kingston upon Thames')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1227, 76, N'GB-G8', N'Kirklees')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1228, 76, N'GB-G9', N'Knowsley')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1229, 76, N'GB-G1', N'Hounslow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1230, 76, N'GB-22', N'Humberside')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1231, 76, N'GB-V4', N'Inverclyde')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1232, 76, N'GB-X1', N'Isle of Anglesey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1233, 76, N'GB-G2', N'Isle of Wight')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1234, 76, N'GB-G3', N'Islington')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1235, 76, N'GB-F6', N'Havering')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1236, 76, N'GB-20', N'Hereford and Worcester')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1237, 76, N'GB-F7', N'Herefordshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1238, 76, N'GB-F8', N'Hertford')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1239, 76, N'GB-V3', N'Highland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1240, 76, N'GB-F9', N'Hillingdon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1241, 76, N'GB-E9', N'Halton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1242, 76, N'GB-F1', N'Hammersmith and Fulham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1243, 76, N'GB-F2', N'Hampshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1244, 76, N'GB-F3', N'Haringey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1245, 76, N'GB-F4', N'Harrow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1246, 76, N'GB-F5', N'Hartlepool')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1247, 76, N'GB-17', N'Greater London')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1248, 76, N'GB-18', N'Greater Manchester')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1249, 76, N'GB-E7', N'Greenwich')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1250, 76, N'GB-92', N'Gwent')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1251, 76, N'GB-Y2', N'Gwynedd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1252, 76, N'GB-E8', N'Hackney')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1253, 76, N'GB-V1', N'Fife')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1254, 76, N'GB-Y1', N'Flintshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1255, 76, N'GB-E5', N'Gateshead')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1256, 76, N'GB-V2', N'Glasgow City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1257, 76, N'GB-E6', N'Gloucestershire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1258, 76, N'GB-82', N'Grampian')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1259, 76, N'GB-U8', N'Edinburgh, City of')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1260, 76, N'GB-W8', N'Eilean Siar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1261, 76, N'GB-E3', N'Enfield')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1262, 76, N'GB-E4', N'Essex')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1263, 76, N'GB-U9', N'Falkirk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1264, 76, N'GB-S2', N'Fermanagh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1265, 76, N'GB-U4', N'East Ayrshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1266, 76, N'GB-U5', N'East Dunbartonshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1267, 76, N'GB-U6', N'East Lothian')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1268, 76, N'GB-U7', N'East Renfrewshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1269, 76, N'GB-E1', N'East Riding of Yorkshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1270, 76, N'GB-E2', N'East Sussex')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1271, 76, N'GB-U2', N'Dumfries and Galloway')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1272, 76, N'GB-U3', N'Dundee City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1273, 76, N'GB-S1', N'Dungannon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1274, 76, N'GB-D8', N'Durham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1275, 76, N'GB-91', N'Dyfed')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1276, 76, N'GB-D9', N'Ealing')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1277, 76, N'GB-S6', N'Derry')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1278, 76, N'GB-D4', N'Devon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1279, 76, N'GB-D5', N'Doncaster')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1280, 76, N'GB-D6', N'Dorset')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1281, 76, N'GB-R9', N'Down')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1282, 76, N'GB-D7', N'Dudley')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1283, 76, N'GB-C8', N'Croydon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1284, 76, N'GB-C9', N'Cumbria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1285, 76, N'GB-D1', N'Darlington')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1286, 76, N'GB-X9', N'Denbighshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1287, 76, N'GB-D2', N'Derby')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1288, 76, N'GB-D3', N'Derbyshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1289, 76, N'GB-R6', N'Coleraine')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1290, 76, N'GB-X8', N'Conwy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1291, 76, N'GB-R7', N'Cookstown')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1292, 76, N'GB-C6', N'Cornwall')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1293, 76, N'GB-C7', N'Coventry')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1294, 76, N'GB-R8', N'Craigavon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1295, 76, N'GB-79', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1296, 76, N'GB-X6', N'Ceredigion')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1297, 76, N'GB-C5', N'Cheshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1298, 76, N'GB-U1', N'Clackmannanshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1299, 76, N'GB-07', N'Cleveland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1300, 76, N'GB-90', N'Clwyd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1301, 76, N'GB-C3', N'Cambridgeshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1302, 76, N'GB-C4', N'Camden')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1303, 76, N'GB-X5', N'Cardiff')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1304, 76, N'GB-X7', N'Carmarthenshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1305, 76, N'GB-R4', N'Carrickfergus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1306, 76, N'GB-R5', N'Castlereagh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1307, 76, N'GB-B7', N'Bristol, City of')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1308, 76, N'GB-B8', N'Bromley')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1309, 76, N'GB-B9', N'Buckinghamshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1310, 76, N'GB-C1', N'Bury')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1311, 76, N'GB-X4', N'Caerphilly')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1312, 76, N'GB-C2', N'Calderdale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1313, 76, N'GB-B2', N'Bournemouth')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1314, 76, N'GB-B3', N'Bracknell Forest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1315, 76, N'GB-B4', N'Bradford')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1316, 76, N'GB-B5', N'Brent')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1317, 76, N'GB-X3', N'Bridgend')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1318, 76, N'GB-B6', N'Brighton and Hove')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1319, 76, N'GB-A6', N'Bexley')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1320, 76, N'GB-A7', N'Birmingham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1321, 76, N'GB-A8', N'Blackburn with Darwen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1322, 76, N'GB-A9', N'Blackpool')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1323, 76, N'GB-X2', N'Blaenau Gwent')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1324, 76, N'GB-B1', N'Bolton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1325, 76, N'GB-A2', N'Barnet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1326, 76, N'GB-A3', N'Barnsley')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1327, 76, N'GB-A4', N'Bath and North East Somerset')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1328, 76, N'GB-A5', N'Bedfordshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1329, 76, N'GB-R3', N'Belfast')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1330, 76, N'GB-03', N'Berkshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1331, 76, N'GB-Q8', N'Armagh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1332, 76, N'GB-01', N'Avon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1333, 76, N'GB-Q9', N'Ballymena')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1334, 76, N'GB-R1', N'Ballymoney')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1335, 76, N'GB-R2', N'Banbridge')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1336, 76, N'GB-A1', N'Barking and Dagenham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1337, 77, N'GD-01', N'Saint Andrew')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1338, 77, N'GD-02', N'Saint David')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1339, 77, N'GD-03', N'Saint George')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1340, 77, N'GD-04', N'Saint John')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1341, 77, N'GD-05', N'Saint Mark')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1342, 77, N'GD-06', N'Saint Patrick')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1343, 78, N'GE-01', N'Abashis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1344, 78, N'GE-02', N'Abkhazia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1345, 78, N'GE-03', N'Adigenis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1346, 78, N'GE-04', N'Ajaria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1347, 78, N'GE-05', N'Akhalgoris Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1348, 78, N'GE-06', N'Akhalk''alak''is Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1349, 78, N'GE-61', N'Vanis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1350, 78, N'GE-62', N'Zestap''onis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1351, 78, N'GE-63', N'Zugdidi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1352, 78, N'GE-64', N'Zugdidis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1353, 78, N'GE-55', N'T''ianet''is Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1354, 78, N'GE-56', N'Tqibuli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1355, 78, N'GE-57', N'Ts''ageris Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1356, 78, N'GE-58', N'Tsalenjikhis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1357, 78, N'GE-59', N'Tsalkis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1358, 78, N'GE-60', N'Tsqaltubo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1359, 78, N'GE-49', N'Senakis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1360, 78, N'GE-50', N'Sighnaghis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1361, 78, N'GE-51', N'T''bilisi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1362, 78, N'GE-52', N'T''elavis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1363, 78, N'GE-53', N'T''erjolis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1364, 78, N'GE-54', N'T''et''ritsqaros Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1365, 78, N'GE-43', N'Qazbegis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1366, 78, N'GE-44', N'Qvarlis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1367, 78, N'GE-45', N'Rust''avi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1368, 78, N'GE-46', N'Sach''kheris Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1369, 78, N'GE-47', N'Sagarejos Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1370, 78, N'GE-48', N'Samtrediis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1371, 78, N'GE-37', N'Mestiis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1372, 78, N'GE-38', N'Mts''khet''is Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1373, 78, N'GE-39', N'Ninotsmindis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1374, 78, N'GE-40', N'Onis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1375, 78, N'GE-41', N'Ozurget''is Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1376, 78, N'GE-42', N'P''ot''i')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1377, 78, N'GE-30', N'Khonis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1378, 78, N'GE-32', N'Lagodekhis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1379, 78, N'GE-33', N'Lanch''khut''is Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1380, 78, N'GE-34', N'Lentekhis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1381, 78, N'GE-35', N'Marneulis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1382, 78, N'GE-36', N'Martvilis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1383, 78, N'GE-25', N'K''arelis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1384, 78, N'GE-31', N'K''ut''aisi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1385, 78, N'GE-26', N'Kaspis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1386, 78, N'GE-27', N'Kharagaulis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1387, 78, N'GE-28', N'Khashuris Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1388, 78, N'GE-29', N'Khobis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1389, 78, N'GE-19', N'Dushet''is Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1390, 78, N'GE-20', N'Gardabanis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1391, 78, N'GE-21', N'Gori')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1392, 78, N'GE-22', N'Goris Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1393, 78, N'GE-23', N'Gurjaanis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1394, 78, N'GE-24', N'Javis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1395, 78, N'GE-13', N'Borjomis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1396, 78, N'GE-15', N'Ch''khorotsqus Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1397, 78, N'GE-16', N'Ch''okhatauris Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1398, 78, N'GE-14', N'Chiat''ura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1399, 78, N'GE-17', N'Dedop''listsqaros Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1400, 78, N'GE-18', N'Dmanisis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1401, 78, N'GE-07', N'Akhalts''ikhis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1402, 78, N'GE-08', N'Akhmetis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1403, 78, N'GE-09', N'Ambrolauris Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1404, 78, N'GE-10', N'Aspindzis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1405, 78, N'GE-11', N'Baghdat''is Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1406, 78, N'GE-12', N'Bolnisis Raioni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1407, 81, N'GH-02', N'Ashanti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1408, 81, N'GH-03', N'Brong-Ahafo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1409, 81, N'GH-04', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1410, 81, N'GH-05', N'Eastern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1411, 81, N'GH-01', N'Greater Accra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1412, 81, N'GH-06', N'Northern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1413, 81, N'GH-10', N'Upper East')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1414, 81, N'GH-11', N'Upper West')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1415, 81, N'GH-08', N'Volta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1416, 81, N'GH-09', N'Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1417, 83, N'GL-01', N'Nordgronland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1418, 83, N'GL-02', N'Ostgronland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1419, 83, N'GL-03', N'Vestgronland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1420, 84, N'GM-01', N'Banjul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1421, 84, N'GM-02', N'Lower River')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1422, 84, N'GM-03', N'MacCarthy Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1423, 84, N'GM-07', N'North Bank')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1424, 84, N'GM-04', N'Upper River')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1425, 84, N'GM-05', N'Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1426, 85, N'GN-01', N'Beyla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1427, 85, N'GN-02', N'Boffa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1428, 85, N'GN-03', N'Boke')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1429, 85, N'GN-04', N'Conakry')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1430, 85, N'GN-30', N'Coyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1431, 85, N'GN-05', N'Dabola')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1432, 85, N'GN-39', N'Siguiri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1433, 85, N'GN-27', N'Telimele')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1434, 85, N'GN-28', N'Tougue')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1435, 85, N'GN-29', N'Yomou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1436, 85, N'GN-21', N'Macenta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1437, 85, N'GN-22', N'Mali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1438, 85, N'GN-23', N'Mamou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1439, 85, N'GN-37', N'Mandiana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1440, 85, N'GN-38', N'Nzerekore')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1441, 85, N'GN-25', N'Pita')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1442, 85, N'GN-33', N'Koubia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1443, 85, N'GN-18', N'Koundara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1444, 85, N'GN-19', N'Kouroussa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1445, 85, N'GN-34', N'Labe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1446, 85, N'GN-35', N'Lelouma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1447, 85, N'GN-36', N'Lola')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1448, 85, N'GN-12', N'Gaoual')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1449, 85, N'GN-13', N'Gueckedou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1450, 85, N'GN-32', N'Kankan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1451, 85, N'GN-15', N'Kerouane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1452, 85, N'GN-16', N'Kindia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1453, 85, N'GN-17', N'Kissidougou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1454, 85, N'GN-06', N'Dalaba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1455, 85, N'GN-07', N'Dinguiraye')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1456, 85, N'GN-31', N'Dubreka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1457, 85, N'GN-09', N'Faranah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1458, 85, N'GN-10', N'Forecariah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1459, 85, N'GN-11', N'Fria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1460, 87, N'GQ-03', N'Annobon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1461, 87, N'GQ-04', N'Bioko Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1462, 87, N'GQ-05', N'Bioko Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1463, 87, N'GQ-06', N'Centro Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1464, 87, N'GQ-07', N'Kie-Ntem')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1465, 87, N'GQ-08', N'Litoral')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1466, 87, N'GQ-09', N'Wele-Nzas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1467, 88, N'GR-31', N'Aitolia kai Akarnania')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1468, 88, N'GR-38', N'Akhaia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1469, 88, N'GR-36', N'Argolis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1470, 88, N'GR-41', N'Arkadhia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1471, 88, N'GR-20', N'Arta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1472, 88, N'GR-35', N'Attiki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1473, 88, N'GR-33', N'Voiotia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1474, 88, N'GR-03', N'Xanthi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1475, 88, N'GR-28', N'Zakinthos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1476, 88, N'GR-02', N'Rodhopi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1477, 88, N'GR-48', N'Samos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1478, 88, N'GR-05', N'Serrai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1479, 88, N'GR-18', N'Thesprotia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1480, 88, N'GR-13', N'Thessaloniki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1481, 88, N'GR-22', N'Trikala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1482, 88, N'GR-24', N'Magnisia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1483, 88, N'GR-40', N'Messinia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1484, 88, N'GR-07', N'Pella')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1485, 88, N'GR-16', N'Pieria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1486, 88, N'GR-19', N'Preveza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1487, 88, N'GR-44', N'Rethimni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1488, 88, N'GR-11', N'Kozani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1489, 88, N'GR-42', N'Lakonia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1490, 88, N'GR-21', N'Larisa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1491, 88, N'GR-46', N'Lasithi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1492, 88, N'GR-51', N'Lesvos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1493, 88, N'GR-26', N'Levkas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1494, 88, N'GR-15', N'Khalkidhiki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1495, 88, N'GR-43', N'Khania')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1496, 88, N'GR-50', N'Khios')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1497, 88, N'GR-49', N'Kikladhes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1498, 88, N'GR-06', N'Kilkis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1499, 88, N'GR-37', N'Korinthia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1500, 88, N'GR-45', N'Iraklion')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1501, 88, N'GR-23', N'Kardhitsa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1502, 88, N'GR-09', N'Kastoria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1503, 88, N'GR-14', N'Kavala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1504, 88, N'GR-27', N'Kefallinia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1505, 88, N'GR-25', N'Kerkira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1506, 88, N'GR-32', N'Fokis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1507, 88, N'GR-29', N'Fthiotis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1508, 88, N'GR-10', N'Grevena')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1509, 88, N'GR-39', N'Ilia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1510, 88, N'GR-12', N'Imathia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1511, 88, N'GR-17', N'Ioannina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1512, 88, N'GR-47', N'Dhodhekanisos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1513, 88, N'GR-04', N'Drama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1514, 88, N'GR-30', N'Evritania')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1515, 88, N'GR-01', N'Evros')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1516, 88, N'GR-34', N'Evvoia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1517, 88, N'GR-08', N'Florina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1518, 90, N'GT-01', N'Alta Verapaz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1519, 90, N'GT-02', N'Baja Verapaz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1520, 90, N'GT-03', N'Chimaltenango')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1521, 90, N'GT-04', N'Chiquimula')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1522, 90, N'GT-05', N'El Progreso')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1523, 90, N'GT-06', N'Escuintla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1524, 90, N'GT-19', N'Solola')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1525, 90, N'GT-20', N'Suchitepequez')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1526, 90, N'GT-21', N'Totonicapan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1527, 90, N'GT-22', N'Zacapa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1528, 90, N'GT-13', N'Quetzaltenango')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1529, 90, N'GT-14', N'Quiche')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1530, 90, N'GT-15', N'Retalhuleu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1531, 90, N'GT-16', N'Sacatepequez')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1532, 90, N'GT-17', N'San Marcos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1533, 90, N'GT-18', N'Santa Rosa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1534, 90, N'GT-07', N'Guatemala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1535, 90, N'GT-08', N'Huehuetenango')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1536, 90, N'GT-09', N'Izabal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1537, 90, N'GT-10', N'Jalapa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1538, 90, N'GT-11', N'Jutiapa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1539, 90, N'GT-12', N'Peten')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1540, 92, N'GW-01', N'Bafata')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1541, 92, N'GW-12', N'Biombo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1542, 92, N'GW-11', N'Bissau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1543, 92, N'GW-05', N'Bolama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1544, 92, N'GW-06', N'Cacheu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1545, 92, N'GW-10', N'Gabu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1546, 92, N'GW-04', N'Oio')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1547, 92, N'GW-02', N'Quinara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1548, 92, N'GW-07', N'Tombali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1549, 93, N'GY-10', N'Barima-Waini')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1550, 93, N'GY-11', N'Cuyuni-Mazaruni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1551, 93, N'GY-12', N'Demerara-Mahaica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1552, 93, N'GY-13', N'East Berbice-Corentyne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1553, 93, N'GY-14', N'Essequibo Islands-West Demerara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1554, 93, N'GY-15', N'Mahaica-Berbice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1555, 93, N'GY-16', N'Pomeroon-Supenaam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1556, 93, N'GY-17', N'Potaro-Siparuni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1557, 93, N'GY-18', N'Upper Demerara-Berbice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1558, 93, N'GY-19', N'Upper Takutu-Upper Essequibo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1559, 96, N'HN-01', N'Atlantida')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1560, 96, N'HN-02', N'Choluteca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1561, 96, N'HN-03', N'Colon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1562, 96, N'HN-04', N'Comayagua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1563, 96, N'HN-05', N'Copan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1564, 96, N'HN-06', N'Cortes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1565, 96, N'HN-13', N'Lempira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1566, 96, N'HN-14', N'Ocotepeque')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1567, 96, N'HN-15', N'Olancho')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1568, 96, N'HN-16', N'Santa Barbara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1569, 96, N'HN-17', N'Valle')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1570, 96, N'HN-18', N'Yoro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1571, 96, N'HN-07', N'El Paraiso')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1572, 96, N'HN-08', N'Francisco Morazan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1573, 96, N'HN-09', N'Gracias a Dios')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1574, 96, N'HN-10', N'Intibuca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1575, 96, N'HN-11', N'Islas de la Bahia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1576, 96, N'HN-12', N'La Paz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1577, 97, N'HR-01', N'Bjelovarsko-Bilogorska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1578, 97, N'HR-02', N'Brodsko-Posavska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1579, 97, N'HR-03', N'Dubrovacko-Neretvanska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1580, 97, N'HR-21', N'Grad Zagreb')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1581, 97, N'HR-04', N'Istarska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1582, 97, N'HR-05', N'Karlovacka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1583, 97, N'HR-18', N'Vukovarsko-Srijemska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1584, 97, N'HR-19', N'Zadarska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1585, 97, N'HR-20', N'Zagrebacka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1586, 97, N'HR-12', N'Primorsko-Goranska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1587, 97, N'HR-13', N'Sibensko-Kninska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1588, 97, N'HR-14', N'Sisacko-Moslavacka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1589, 97, N'HR-15', N'Splitsko-Dalmatinska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1590, 97, N'HR-16', N'Varazdinska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1591, 97, N'HR-17', N'Viroviticko-Podravska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1592, 97, N'HR-06', N'Koprivnicko-Krizevacka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1593, 97, N'HR-07', N'Krapinsko-Zagorska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1594, 97, N'HR-08', N'Licko-Senjska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1595, 97, N'HR-09', N'Medimurska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1596, 97, N'HR-10', N'Osjecko-Baranjska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1597, 97, N'HR-11', N'Pozesko-Slavonska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1598, 98, N'HT-06', N'Artibonite')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1599, 98, N'HT-07', N'Centre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1600, 98, N'HT-08', N'Grand'' Anse')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1601, 98, N'HT-09', N'Nord')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1602, 98, N'HT-10', N'Nord-Est')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1603, 98, N'HT-03', N'Nord-Ouest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1604, 98, N'HT-11', N'Ouest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1605, 98, N'HT-12', N'Sud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1606, 98, N'HT-13', N'Sud-Est')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1607, 99, N'HU-01', N'Bacs-Kiskun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1608, 99, N'HU-02', N'Baranya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1609, 99, N'HU-03', N'Bekes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1610, 99, N'HU-26', N'Bekescsaba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1611, 99, N'HU-04', N'Borsod-Abauj-Zemplen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1612, 99, N'HU-05', N'Budapest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1613, 99, N'HU-23', N'Veszprem')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1614, 99, N'HU-24', N'Zala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1615, 99, N'HU-40', N'Zalaegerszeg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1616, 99, N'HU-35', N'Szekesfehervar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1617, 99, N'HU-36', N'Szolnok')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1618, 99, N'HU-37', N'Szombathely')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1619, 99, N'HU-38', N'Tatabanya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1620, 99, N'HU-21', N'Tolna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1621, 99, N'HU-22', N'Vas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1622, 99, N'HU-15', N'Pecs')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1623, 99, N'HU-16', N'Pest')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1624, 99, N'HU-17', N'Somogy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1625, 99, N'HU-34', N'Sopron')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1626, 99, N'HU-18', N'Szabolcs-Szatmar-Bereg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1627, 99, N'HU-19', N'Szeged')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1628, 99, N'HU-31', N'Kecskemet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1629, 99, N'HU-12', N'Komarom-Esztergom')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1630, 99, N'HU-13', N'Miskolc')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1631, 99, N'HU-32', N'Nagykanizsa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1632, 99, N'HU-14', N'Nograd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1633, 99, N'HU-33', N'Nyiregyhaza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1634, 99, N'HU-09', N'Gyor-Moson-Sopron')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1635, 99, N'HU-10', N'Hajdu-Bihar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1636, 99, N'HU-11', N'Heves')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1637, 99, N'HU-29', N'Hodmezovasarhely')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1638, 99, N'HU-20', N'Jasz-Nagykun-Szolnok')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1639, 99, N'HU-30', N'Kaposvar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1640, 99, N'HU-06', N'Csongrad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1641, 99, N'HU-07', N'Debrecen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1642, 99, N'HU-27', N'Dunaujvaros')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1643, 99, N'HU-28', N'Eger')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1644, 99, N'HU-08', N'Fejer')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1645, 99, N'HU-25', N'Gyor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1646, 100, N'ID-01', N'Aceh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1647, 100, N'ID-02', N'Bali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1648, 100, N'ID-33', N'Banten')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1649, 100, N'ID-03', N'Bengkulu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1650, 100, N'ID-34', N'Gorontalo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1651, 100, N'ID-04', N'Jakarta Raya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1652, 100, N'ID-22', N'Sulawesi Tenggara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1653, 100, N'ID-31', N'Sulawesi Utara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1654, 100, N'ID-24', N'Sumatera Barat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1655, 100, N'ID-32', N'Sumatera Selatan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1656, 100, N'ID-26', N'Sumatera Utara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1657, 100, N'ID-10', N'Yogyakarta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1658, 100, N'ID-17', N'Nusa Tenggara Barat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1659, 100, N'ID-18', N'Nusa Tenggara Timur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1660, 100, N'ID-09', N'Papua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1661, 100, N'ID-19', N'Riau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1662, 100, N'ID-20', N'Sulawesi Selatan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1663, 100, N'ID-21', N'Sulawesi Tengah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1664, 100, N'ID-13', N'Kalimantan Tengah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1665, 100, N'ID-14', N'Kalimantan Timur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1666, 100, N'ID-35', N'Kepulauan Bangka Belitung')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1667, 100, N'ID-15', N'Lampung')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1668, 100, N'ID-28', N'Maluku')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1669, 100, N'ID-29', N'Maluku Utara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1670, 100, N'ID-05', N'Jambi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1671, 100, N'ID-30', N'Jawa Barat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1672, 100, N'ID-07', N'Jawa Tengah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1673, 100, N'ID-08', N'Jawa Timur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1674, 100, N'ID-11', N'Kalimantan Barat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1675, 100, N'ID-12', N'Kalimantan Selatan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1676, 101, N'IE-01', N'Carlow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1677, 101, N'IE-02', N'Cavan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1678, 101, N'IE-03', N'Clare')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1679, 101, N'IE-04', N'Cork')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1680, 101, N'IE-06', N'Donegal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1681, 101, N'IE-07', N'Dublin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1682, 101, N'IE-30', N'Wexford')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1683, 101, N'IE-31', N'Wicklow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1684, 101, N'IE-23', N'Offaly')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1685, 101, N'IE-24', N'Roscommon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1686, 101, N'IE-25', N'Sligo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1687, 101, N'IE-26', N'Tipperary')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1688, 101, N'IE-27', N'Waterford')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1689, 101, N'IE-29', N'Westmeath')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1690, 101, N'IE-16', N'Limerick')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1691, 101, N'IE-18', N'Longford')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1692, 101, N'IE-19', N'Louth')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1693, 101, N'IE-20', N'Mayo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1694, 101, N'IE-21', N'Meath')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1695, 101, N'IE-22', N'Monaghan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1696, 101, N'IE-10', N'Galway')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1697, 101, N'IE-11', N'Kerry')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1698, 101, N'IE-12', N'Kildare')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1699, 101, N'IE-13', N'Kilkenny')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1700, 101, N'IE-15', N'Laois')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1701, 101, N'IE-14', N'Leitrim')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1702, 102, N'IL-01', N'HaDarom')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1703, 102, N'IL-02', N'HaMerkaz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1704, 102, N'IL-03', N'HaZafon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1705, 102, N'IL-04', N'Hefa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1706, 102, N'IL-05', N'Tel Aviv')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1707, 102, N'IL-06', N'Yerushalayim')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1708, 104, N'IN-01', N'Andaman and Nicobar Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1709, 104, N'IN-02', N'Andhra Pradesh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1710, 104, N'IN-30', N'Arunachal Pradesh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1711, 104, N'IN-03', N'Assam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1712, 104, N'IN-34', N'Bihar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1713, 104, N'IN-05', N'Chandigarh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1714, 104, N'IN-25', N'Tamil Nadu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1715, 104, N'IN-26', N'Tripura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1716, 104, N'IN-36', N'Uttar Pradesh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1717, 104, N'IN-39', N'Uttaranchal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1718, 104, N'IN-28', N'West Bengal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1719, 104, N'IN-20', N'Nagaland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1720, 104, N'IN-21', N'Orissa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1721, 104, N'IN-22', N'Pondicherry')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1722, 104, N'IN-23', N'Punjab')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1723, 104, N'IN-24', N'Rajasthan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1724, 104, N'IN-29', N'Sikkim')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1725, 104, N'IN-14', N'Lakshadweep')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1726, 104, N'IN-35', N'Madhya Pradesh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1727, 104, N'IN-16', N'Maharashtra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1728, 104, N'IN-17', N'Manipur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1729, 104, N'IN-18', N'Meghalaya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1730, 104, N'IN-31', N'Mizoram')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1731, 104, N'IN-10', N'Haryana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1732, 104, N'IN-11', N'Himachal Pradesh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1733, 104, N'IN-12', N'Jammu and Kashmir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1734, 104, N'IN-38', N'Jharkhand')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1735, 104, N'IN-19', N'Karnataka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1736, 104, N'IN-13', N'Kerala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1737, 104, N'IN-37', N'Chhattisgarh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1738, 104, N'IN-06', N'Dadra and Nagar Haveli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1739, 104, N'IN-32', N'Daman and Diu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1740, 104, N'IN-07', N'Delhi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1741, 104, N'IN-33', N'Goa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1742, 104, N'IN-09', N'Gujarat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1743, 106, N'IQ-01', N'Al Anbar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1744, 106, N'IQ-02', N'Al Basrah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1745, 106, N'IQ-03', N'Al Muthanna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1746, 106, N'IQ-04', N'Al Qadisiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1747, 106, N'IQ-17', N'An Najaf')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1748, 106, N'IQ-11', N'Arbil')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1749, 106, N'IQ-10', N'Diyala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1750, 106, N'IQ-12', N'Karbala''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1751, 106, N'IQ-14', N'Maysan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1752, 106, N'IQ-15', N'Ninawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1753, 106, N'IQ-18', N'Salah ad Din')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1754, 106, N'IQ-16', N'Wasit')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1755, 106, N'IQ-05', N'As Sulaymaniyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1756, 106, N'IQ-13', N'At Ta''mim')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1757, 106, N'IQ-06', N'Babil')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1758, 106, N'IQ-07', N'Baghdad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1759, 106, N'IQ-08', N'Dahuk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1760, 106, N'IQ-09', N'Dhi Qar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1761, 107, N'IR-32', N'Ardabil')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1762, 107, N'IR-01', N'Azarbayjan-e Bakhtari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1763, 107, N'IR-02', N'Azarbayjan-e Khavari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1764, 107, N'IR-13', N'Bakhtaran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1765, 107, N'IR-22', N'Bushehr')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1766, 107, N'IR-03', N'Chahar Mahall va Bakhtiari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1767, 107, N'IR-04', N'Sistan va Baluchestan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1768, 107, N'IR-26', N'Tehran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1769, 107, N'IR-31', N'Yazd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1770, 107, N'IR-36', N'Zanjan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1771, 107, N'IR-23', N'Lorestan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1772, 107, N'IR-34', N'Markazi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1773, 107, N'IR-35', N'Mazandaran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1774, 107, N'IR-38', N'Qazvin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1775, 107, N'IR-39', N'Qom')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1776, 107, N'IR-25', N'Semnan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1777, 107, N'IR-10', N'Ilam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1778, 107, N'IR-29', N'Kerman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1779, 107, N'IR-30', N'Khorasan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1780, 107, N'IR-15', N'Khuzestan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1781, 107, N'IR-05', N'Kohkiluyeh va Buyer Ahmadi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1782, 107, N'IR-16', N'Kordestan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1783, 107, N'IR-28', N'Esfahan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1784, 107, N'IR-07', N'Fars')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1785, 107, N'IR-08', N'Gilan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1786, 107, N'IR-37', N'Golestan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1787, 107, N'IR-09', N'Hamadan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1788, 107, N'IR-11', N'Hormozgan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1789, 108, N'IS-01', N'Akranes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1790, 108, N'IS-02', N'Akureyri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1791, 108, N'IS-03', N'Arnessysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1792, 108, N'IS-04', N'Austur-Bardastrandarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1793, 108, N'IS-05', N'Austur-Hunavatnssysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1794, 108, N'IS-06', N'Austur-Skaftafellssysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1795, 108, N'IS-37', N'Vestur-Skaftafellssysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1796, 108, N'IS-31', N'Sudur-Mulasysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1797, 108, N'IS-32', N'Sudur-Tingeyjarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1798, 108, N'IS-33', N'Vestmannaeyjar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1799, 108, N'IS-34', N'Vestur-Bardastrandarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1800, 108, N'IS-35', N'Vestur-Hunavatnssysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1801, 108, N'IS-36', N'Vestur-Isafjardarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1802, 108, N'IS-25', N'Saudarkrokur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1803, 108, N'IS-26', N'Seydisfjordur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1804, 108, N'IS-27', N'Siglufjordur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1805, 108, N'IS-28', N'Skagafjardarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1806, 108, N'IS-29', N'Snafellsnes- og Hnappadalssysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1807, 108, N'IS-30', N'Strandasysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1808, 108, N'IS-19', N'Nordur-Isafjardarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1809, 108, N'IS-20', N'Nordur-Mulasysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1810, 108, N'IS-21', N'Nordur-Tingeyjarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1811, 108, N'IS-22', N'Olafsfjordur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1812, 108, N'IS-23', N'Rangarvallasysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1813, 108, N'IS-24', N'Reykjavik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1814, 108, N'IS-13', N'Isafjordur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1815, 108, N'IS-14', N'Keflavik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1816, 108, N'IS-15', N'Kjosarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1817, 108, N'IS-16', N'Kopavogur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1818, 108, N'IS-17', N'Myrasysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1819, 108, N'IS-18', N'Neskaupstadur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1820, 108, N'IS-07', N'Borgarfjardarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1821, 108, N'IS-08', N'Dalasysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1822, 108, N'IS-09', N'Eyjafjardarsysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1823, 108, N'IS-10', N'Gullbringusysla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1824, 108, N'IS-11', N'Hafnarfjordur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1825, 108, N'IS-12', N'Husavik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1826, 109, N'IT-01', N'Abruzzi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1827, 109, N'IT-02', N'Basilicata')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1828, 109, N'IT-03', N'Calabria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1829, 109, N'IT-04', N'Campania')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1830, 109, N'IT-05', N'Emilia-Romagna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1831, 109, N'IT-06', N'Friuli-Venezia Giulia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1832, 109, N'IT-19', N'Valle d''Aosta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1833, 109, N'IT-20', N'Veneto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1834, 109, N'IT-13', N'Puglia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1835, 109, N'IT-14', N'Sardegna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1836, 109, N'IT-15', N'Sicilia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1837, 109, N'IT-16', N'Toscana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1838, 109, N'IT-17', N'Trentino-Alto Adige')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1839, 109, N'IT-18', N'Umbria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1840, 109, N'IT-07', N'Lazio')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1841, 109, N'IT-08', N'Liguria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1842, 109, N'IT-09', N'Lombardia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1843, 109, N'IT-10', N'Marche')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1844, 109, N'IT-11', N'Molise')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1845, 109, N'IT-12', N'Piemonte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1846, 111, N'JM-01', N'Clarendon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1847, 111, N'JM-02', N'Hanover')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1848, 111, N'JM-17', N'Kingston')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1849, 111, N'JM-04', N'Manchester')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1850, 111, N'JM-07', N'Portland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1851, 111, N'JM-08', N'Saint Andrew')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1852, 111, N'JM-15', N'Trelawny')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1853, 111, N'JM-16', N'Westmoreland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1854, 111, N'JM-09', N'Saint Ann')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1855, 111, N'JM-10', N'Saint Catherine')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1856, 111, N'JM-11', N'Saint Elizabeth')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1857, 111, N'JM-12', N'Saint James')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1858, 111, N'JM-13', N'Saint Mary')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1859, 111, N'JM-14', N'Saint Thomas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1860, 112, N'JO-02', N'Al Balqa''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1861, 112, N'JO-09', N'Al Karak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1862, 112, N'JO-10', N'Al Mafraq')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1863, 112, N'JO-16', N'Amman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1864, 112, N'JO-12', N'At Tafilah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1865, 112, N'JO-13', N'Az Zarqa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1866, 112, N'JO-14', N'Irbid')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1867, 112, N'JO-07', N'Ma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1868, 113, N'JP-01', N'Aichi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1869, 113, N'JP-02', N'Akita')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1870, 113, N'JP-03', N'Aomori')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1871, 113, N'JP-04', N'Chiba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1872, 113, N'JP-05', N'Ehime')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1873, 113, N'JP-06', N'Fukui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1874, 113, N'JP-42', N'Toyama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1875, 113, N'JP-43', N'Wakayama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1876, 113, N'JP-44', N'Yamagata')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1877, 113, N'JP-45', N'Yamaguchi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1878, 113, N'JP-46', N'Yamanashi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1879, 113, N'JP-36', N'Shimane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1880, 113, N'JP-37', N'Shizuoka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1881, 113, N'JP-38', N'Tochigi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1882, 113, N'JP-39', N'Tokushima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1883, 113, N'JP-40', N'Tokyo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1884, 113, N'JP-41', N'Tottori')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1885, 113, N'JP-31', N'Okayama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1886, 113, N'JP-47', N'Okinawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1887, 113, N'JP-32', N'Osaka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1888, 113, N'JP-33', N'Saga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1889, 113, N'JP-34', N'Saitama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1890, 113, N'JP-35', N'Shiga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1891, 113, N'JP-25', N'Miyazaki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1892, 113, N'JP-26', N'Nagano')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1893, 113, N'JP-27', N'Nagasaki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1894, 113, N'JP-28', N'Nara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1895, 113, N'JP-29', N'Niigata')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1896, 113, N'JP-30', N'Oita')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1897, 113, N'JP-19', N'Kanagawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1898, 113, N'JP-20', N'Kochi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1899, 113, N'JP-21', N'Kumamoto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1900, 113, N'JP-22', N'Kyoto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1901, 113, N'JP-23', N'Mie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1902, 113, N'JP-24', N'Miyagi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1903, 113, N'JP-13', N'Hyogo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1904, 113, N'JP-14', N'Ibaraki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1905, 113, N'JP-15', N'Ishikawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1906, 113, N'JP-16', N'Iwate')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1907, 113, N'JP-17', N'Kagawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1908, 113, N'JP-18', N'Kagoshima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1909, 113, N'JP-07', N'Fukuoka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1910, 113, N'JP-08', N'Fukushima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1911, 113, N'JP-09', N'Gifu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1912, 113, N'JP-10', N'Gumma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1913, 113, N'JP-11', N'Hiroshima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1914, 113, N'JP-12', N'Hokkaido')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1915, 114, N'KE-01', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1916, 114, N'KE-02', N'Coast')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1917, 114, N'KE-03', N'Eastern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1918, 114, N'KE-05', N'Nairobi Area')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1919, 114, N'KE-06', N'North-Eastern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1920, 114, N'KE-07', N'Nyanza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1921, 114, N'KE-08', N'Rift Valley')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1922, 114, N'KE-09', N'Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1923, 115, N'KG-09', N'Batken')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1924, 115, N'KG-01', N'Bishkek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1925, 115, N'KG-02', N'Chuy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1926, 115, N'KG-03', N'Jalal-Abad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1927, 115, N'KG-04', N'Naryn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1928, 115, N'KG-08', N'Osh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1929, 115, N'KG-06', N'Talas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1930, 115, N'KG-07', N'Ysyk-Kol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1931, 116, N'KH-29', N'Batdambang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1932, 116, N'KH-02', N'Kampong Cham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1933, 116, N'KH-03', N'Kampong Chhnang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1934, 116, N'KH-04', N'Kampong Spoe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1935, 116, N'KH-05', N'Kampong Thum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1936, 116, N'KH-06', N'Kampot')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1937, 116, N'KH-18', N'Svay Rieng')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1938, 116, N'KH-19', N'Takev')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1939, 116, N'KH-12', N'Pouthisat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1940, 116, N'KH-13', N'Preah Vihear')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1941, 116, N'KH-14', N'Prey Veng')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1942, 116, N'KH-15', N'Rotanokiri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1943, 116, N'KH-16', N'Siemreab-Otdar Meanchey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1944, 116, N'KH-17', N'Stoeng Treng')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1945, 116, N'KH-07', N'Kandal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1946, 116, N'KH-08', N'Kaoh Kong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1947, 116, N'KH-09', N'Kracheh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1948, 116, N'KH-10', N'Mondol Kiri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1949, 116, N'KH-30', N'Pailin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1950, 116, N'KH-11', N'Phnum Penh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1951, 117, N'KI-01', N'Gilbert Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1952, 117, N'KI-02', N'Line Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1953, 117, N'KI-03', N'Phoenix Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1954, 118, N'KM-01', N'Anjouan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1955, 118, N'KM-02', N'Grande Comore')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1956, 118, N'KM-03', N'Moheli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1957, 119, N'KN-01', N'Christ Church Nichola Town')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1958, 119, N'KN-02', N'Saint Anne Sandy Point')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1959, 119, N'KN-03', N'Saint George Basseterre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1960, 119, N'KN-04', N'Saint George Gingerland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1961, 119, N'KN-05', N'Saint James Windward')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1962, 119, N'KN-06', N'Saint John Capisterre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1963, 119, N'KN-13', N'Saint Thomas Middle Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1964, 119, N'KN-15', N'Trinity Palmetto Point')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1965, 119, N'KN-07', N'Saint John Figtree')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1966, 119, N'KN-08', N'Saint Mary Cayon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1967, 119, N'KN-09', N'Saint Paul Capisterre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1968, 119, N'KN-10', N'Saint Paul Charlestown')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1969, 119, N'KN-11', N'Saint Peter Basseterre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1970, 119, N'KN-12', N'Saint Thomas Lowland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1971, 120, N'KP-01', N'Chagang-do')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1972, 120, N'KP-17', N'Hamgyong-bukto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1973, 120, N'KP-03', N'Hamgyong-namdo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1974, 120, N'KP-07', N'Hwanghae-bukto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1975, 120, N'KP-06', N'Hwanghae-namdo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1976, 120, N'KP-08', N'Kaesong-si')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1977, 120, N'KP-13', N'Yanggang-do')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1978, 120, N'KP-09', N'Kangwon-do')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1979, 120, N'KP-18', N'Najin Sonbong-si')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1980, 120, N'KP-14', N'Namp''o-si')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1981, 120, N'KP-11', N'P''yongan-bukto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1982, 120, N'KP-15', N'P''yongan-namdo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1983, 120, N'KP-12', N'P''yongyang-si')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1984, 121, N'KR-05', N'Ch''ungch''ong-bukto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1985, 121, N'KR-17', N'Ch''ungch''ong-namdo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1986, 121, N'KR-01', N'Cheju-do')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1987, 121, N'KR-03', N'Cholla-bukto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1988, 121, N'KR-16', N'Cholla-namdo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1989, 121, N'KR-12', N'Inch''on-jikhalsi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1990, 121, N'KR-11', N'Seoul-t''ukpyolsi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1991, 121, N'KR-15', N'Taegu-jikhalsi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1992, 121, N'KR-19', N'Taejon-jikhalsi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1993, 121, N'KR-21', N'Ulsan-gwangyoksi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1994, 121, N'KR-06', N'Kangwon-do')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1995, 121, N'KR-18', N'Kwangju-jikhalsi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1996, 121, N'KR-13', N'Kyonggi-do')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1997, 121, N'KR-14', N'Kyongsang-bukto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1998, 121, N'KR-20', N'Kyongsang-namdo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (1999, 121, N'KR-10', N'Pusan-jikhalsi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2000, 122, N'KW-01', N'Al Ahmadi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2001, 122, N'KW-05', N'Al Jahra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2002, 122, N'KW-02', N'Al Kuwayt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2003, 122, N'KW-03', N'Hawalli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2004, 123, N'KY-01', N'Creek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2005, 123, N'KY-02', N'Eastern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2006, 123, N'KY-03', N'Midland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2007, 123, N'KY-04', N'South Town')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2008, 123, N'KY-05', N'Spot Bay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2009, 123, N'KY-06', N'Stake Bay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2010, 123, N'KY-07', N'West End')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2011, 123, N'KY-08', N'Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2012, 124, N'KZ-01', N'Almaty')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2013, 124, N'KZ-02', N'Almaty City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2014, 124, N'KZ-03', N'Aqmola')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2015, 124, N'KZ-05', N'Astana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2016, 124, N'KZ-06', N'Atyrau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2017, 124, N'KZ-08', N'Bayqonyr')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2018, 124, N'KZ-14', N'Qyzylorda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2019, 124, N'KZ-10', N'South Kazakhstan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2020, 124, N'KZ-07', N'West Kazakhstan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2021, 124, N'KZ-17', N'Zhambyl')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2022, 124, N'KZ-15', N'East Kazakhstan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2023, 124, N'KZ-09', N'Mangghystau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2024, 124, N'KZ-16', N'North Kazakhstan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2025, 124, N'KZ-11', N'Pavlodar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2026, 124, N'KZ-12', N'Qaraghandy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2027, 124, N'KZ-13', N'Qostanay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2028, 125, N'LA-01', N'Attapu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2029, 125, N'LA-02', N'Champasak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2030, 125, N'LA-03', N'Houaphan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2031, 125, N'LA-04', N'Khammouan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2032, 125, N'LA-05', N'Louang Namtha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2033, 125, N'LA-17', N'Louangphrabang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2034, 125, N'LA-14', N'Xiangkhoang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2035, 125, N'LA-07', N'Oudomxai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2036, 125, N'LA-08', N'Phongsali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2037, 125, N'LA-09', N'Saravan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2038, 125, N'LA-10', N'Savannakhet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2039, 125, N'LA-11', N'Vientiane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2040, 125, N'LA-13', N'Xaignabouri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2041, 126, N'LB-01', N'Beqaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2042, 126, N'LB-04', N'Beyrouth')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2043, 126, N'LB-03', N'Liban-Nord')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2044, 126, N'LB-06', N'Liban-Sud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2045, 126, N'LB-05', N'Mont-Liban')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2046, 126, N'LB-07', N'Nabatiye')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2047, 127, N'LC-01', N'Anse-la-Raye')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2048, 127, N'LC-03', N'Castries')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2049, 127, N'LC-04', N'Choiseul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2050, 127, N'LC-02', N'Dauphin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2051, 127, N'LC-05', N'Dennery')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2052, 127, N'LC-06', N'Gros-Islet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2053, 127, N'LC-07', N'Laborie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2054, 127, N'LC-08', N'Micoud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2055, 127, N'LC-11', N'Praslin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2056, 127, N'LC-09', N'Soufriere')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2057, 127, N'LC-10', N'Vieux-Fort')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2058, 128, N'LI-01', N'Balzers')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2059, 128, N'LI-02', N'Eschen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2060, 128, N'LI-03', N'Gamprin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2061, 128, N'LI-04', N'Mauren')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2062, 128, N'LI-05', N'Planken')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2063, 128, N'LI-06', N'Ruggell')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2064, 128, N'LI-07', N'Schaan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2065, 128, N'LI-08', N'Schellenberg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2066, 128, N'LI-09', N'Triesen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2067, 128, N'LI-10', N'Triesenberg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2068, 128, N'LI-11', N'Vaduz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2069, 129, N'LK-01', N'Amparai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2070, 129, N'LK-02', N'Anuradhapura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2071, 129, N'LK-03', N'Badulla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2072, 129, N'LK-04', N'Batticaloa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2073, 129, N'LK-23', N'Colombo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2074, 129, N'LK-06', N'Galle')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2075, 129, N'LK-17', N'Nuwara Eliya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2076, 129, N'LK-18', N'Polonnaruwa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2077, 129, N'LK-19', N'Puttalam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2078, 129, N'LK-20', N'Ratnapura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2079, 129, N'LK-21', N'Trincomalee')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2080, 129, N'LK-28', N'Vavuniya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2081, 129, N'LK-12', N'Kurunegala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2082, 129, N'LK-26', N'Mannar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2083, 129, N'LK-14', N'Matale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2084, 129, N'LK-15', N'Matara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2085, 129, N'LK-16', N'Moneragala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2086, 129, N'LK-27', N'Mullaittivu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2087, 129, N'LK-24', N'Gampaha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2088, 129, N'LK-07', N'Hambantota')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2089, 129, N'LK-25', N'Jaffna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2090, 129, N'LK-09', N'Kalutara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2091, 129, N'LK-10', N'Kandy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2092, 129, N'LK-11', N'Kegalla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2093, 130, N'LR-01', N'Bong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2094, 130, N'LR-11', N'Grand Bassa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2095, 130, N'LR-04', N'Grand Cape Mount')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2096, 130, N'LR-02', N'Grand Jide')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2097, 130, N'LR-05', N'Lofa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2098, 130, N'LR-06', N'Maryland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2099, 130, N'LR-07', N'Monrovia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2100, 130, N'LR-14', N'Montserrado')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2101, 130, N'LR-09', N'Nimba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2102, 130, N'LR-10', N'Sino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2103, 131, N'LS-10', N'Berea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2104, 131, N'LS-11', N'Butha-Buthe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2105, 131, N'LS-12', N'Leribe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2106, 131, N'LS-13', N'Mafeteng')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2107, 131, N'LS-14', N'Maseru')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2108, 131, N'LS-15', N'Mohales Hoek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2109, 131, N'LS-16', N'Mokhotlong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2110, 131, N'LS-17', N'Qachas Nek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2111, 131, N'LS-18', N'Quthing')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2112, 131, N'LS-19', N'Thaba-Tseka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2113, 132, N'LT-56', N'Alytaus Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2114, 132, N'LT-57', N'Kauno Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2115, 132, N'LT-58', N'Klaipedos Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2116, 132, N'LT-59', N'Marijampoles Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2117, 132, N'LT-60', N'Panevezio Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2118, 132, N'LT-61', N'Siauliu Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2119, 132, N'LT-62', N'Taurages Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2120, 132, N'LT-63', N'Telsiu Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2121, 132, N'LT-64', N'Utenos Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2122, 132, N'LT-65', N'Vilniaus Apskritis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2123, 133, N'LU-01', N'Diekirch')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2124, 133, N'LU-02', N'Grevenmacher')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2125, 133, N'LU-03', N'Luxembourg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2126, 134, N'LV-01', N'Aizkraukles')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2127, 134, N'LV-02', N'Aluksnes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2128, 134, N'LV-03', N'Balvu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2129, 134, N'LV-04', N'Bauskas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2130, 134, N'LV-06', N'Daugavpils')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2131, 134, N'LV-08', N'Dobeles')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2132, 134, N'LV-27', N'Saldus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2133, 134, N'LV-28', N'Talsu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2134, 134, N'LV-29', N'Tukuma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2135, 134, N'LV-30', N'Valkas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2136, 134, N'LV-31', N'Valmieras')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2137, 134, N'LV-32', N'Ventspils')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2138, 134, N'LV-19', N'Ludzas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2139, 134, N'LV-20', N'Madonas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2140, 134, N'LV-21', N'Ogres')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2141, 134, N'LV-22', N'Preilu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2142, 134, N'LV-25', N'Riga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2143, 134, N'LV-26', N'Rigas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2144, 134, N'LV-09', N'Gulbenes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2145, 134, N'LV-11', N'Jelgava')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2146, 134, N'LV-12', N'Jelgavas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2147, 134, N'LV-13', N'Jurmala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2148, 134, N'LV-15', N'Kuldigas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2149, 134, N'LV-18', N'Limbazu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2150, 135, N'LY-47', N'Ajdabiya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2151, 135, N'LY-03', N'Al')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2152, 135, N'LY-48', N'Al Fatih')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2153, 135, N'LY-49', N'Al Jabal al Akhdar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2154, 135, N'LY-05', N'Al Jufrah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2155, 135, N'LY-50', N'Al Khums')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2156, 135, N'LY-45', N'Zlitan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2157, 135, N'LY-59', N'Sawfajjin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2158, 135, N'LY-60', N'Surt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2159, 135, N'LY-61', N'Tarabulus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2160, 135, N'LY-41', N'Tarhunah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2161, 135, N'LY-42', N'Tubruq')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2162, 135, N'LY-62', N'Yafran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2163, 135, N'LY-55', N'Darnah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2164, 135, N'LY-56', N'Ghadamis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2165, 135, N'LY-57', N'Gharyan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2166, 135, N'LY-58', N'Misratah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2167, 135, N'LY-30', N'Murzuq')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2168, 135, N'LY-34', N'Sabha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2169, 135, N'LY-08', N'Al Kufrah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2170, 135, N'LY-51', N'An Nuqat al Khams')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2171, 135, N'LY-13', N'Ash Shati''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2172, 135, N'LY-52', N'Awbari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2173, 135, N'LY-53', N'Az Zawiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2174, 135, N'LY-54', N'Banghazi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2175, 136, N'MA-37', N'Taounate')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2176, 136, N'MA-39', N'Taroudannt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2177, 136, N'MA-29', N'Tata')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2178, 136, N'MA-30', N'Taza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2179, 136, N'MA-40', N'Tetouan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2180, 136, N'MA-32', N'Tiznit')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2181, 136, N'MA-24', N'Rabat-Sale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2182, 136, N'MA-25', N'Safi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2183, 136, N'MA-26', N'Settat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2184, 136, N'MA-38', N'Sidi Kacem')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2185, 136, N'MA-36', N'Tan-Tan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2186, 136, N'MA-27', N'Tanger')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2187, 136, N'MA-41', N'Larache')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2188, 136, N'MA-19', N'Marrakech')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2189, 136, N'MA-20', N'Meknes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2190, 136, N'MA-21', N'Nador')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2191, 136, N'MA-22', N'Ouarzazate')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2192, 136, N'MA-23', N'Oujda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2193, 136, N'MA-34', N'Ifrane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2194, 136, N'MA-15', N'Kenitra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2195, 136, N'MA-16', N'Khemisset')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2196, 136, N'MA-17', N'Khenifra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2197, 136, N'MA-18', N'Khouribga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2198, 136, N'MA-35', N'Laayoune')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2199, 136, N'MA-10', N'El Kelaa des Srarhna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2200, 136, N'MA-11', N'Er Rachidia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2201, 136, N'MA-12', N'Essaouira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2202, 136, N'MA-13', N'Fes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2203, 136, N'MA-14', N'Figuig')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2204, 136, N'MA-33', N'Guelmim')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2205, 136, N'MA-04', N'Ben Slimane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2206, 136, N'MA-05', N'Beni Mellal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2207, 136, N'MA-06', N'Boulemane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2208, 136, N'MA-07', N'Casablanca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2209, 136, N'MA-08', N'Chaouen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2210, 136, N'MA-09', N'El Jadida')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2211, 136, N'MA-01', N'Agadir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2212, 136, N'MA-02', N'Al Hoceima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2213, 136, N'MA-03', N'Azilal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2214, 137, N'MC-01', N'La Condamine')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2215, 137, N'MC-02', N'Monaco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2216, 137, N'MC-03', N'Monte-Carlo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2217, 138, N'MD-46', N'Balti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2218, 138, N'MD-47', N'Cahul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2219, 138, N'MD-48', N'Chisinau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2220, 138, N'MD-50', N'Edinet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2221, 138, N'MD-51', N'Gagauzia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2222, 138, N'MD-52', N'Lapusna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2223, 138, N'MD-53', N'Orhei')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2224, 138, N'MD-54', N'Soroca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2225, 138, N'MD-49', N'Stinga Nistrului')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2226, 138, N'MD-55', N'Tighina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2227, 138, N'MD-56', N'Ungheni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2228, 141, N'MG-05', N'Antananarivo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2229, 141, N'MG-01', N'Antsiranana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2230, 141, N'MG-02', N'Fianarantsoa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2231, 141, N'MG-03', N'Mahajanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2232, 141, N'MG-04', N'Toamasina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2233, 141, N'MG-06', N'Toliara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2234, 143, N'MK-01', N'Aracinovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2235, 143, N'MK-02', N'Bac')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2236, 143, N'MK-03', N'Belcista')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2237, 143, N'MK-04', N'Berovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2238, 143, N'MK-05', N'Bistrica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2239, 143, N'MK-06', N'Bitola')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2240, 143, N'MK-C4', N'Zitose')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2241, 143, N'MK-C5', N'Zletovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2242, 143, N'MK-C6', N'Zrnovci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2243, 143, N'MK-B7', N'Vrapciste')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2244, 143, N'MK-B8', N'Vratnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2245, 143, N'MK-B9', N'Vrutok')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2246, 143, N'MK-C1', N'Zajas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2247, 143, N'MK-C2', N'Zelenikovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2248, 143, N'MK-C3', N'Zelino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2249, 143, N'MK-B1', N'Veles')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2250, 143, N'MK-B2', N'Velesta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2251, 143, N'MK-B3', N'Vevcani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2252, 143, N'MK-B4', N'Vinica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2253, 143, N'MK-B5', N'Vitoliste')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2254, 143, N'MK-B6', N'Vranestica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2255, 143, N'MK-A4', N'Sveti Nikole')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2256, 143, N'MK-A5', N'Tearce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2257, 143, N'MK-A6', N'Tetovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2258, 143, N'MK-A7', N'Topolcani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2259, 143, N'MK-A8', N'Valandovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2260, 143, N'MK-A9', N'Vasilevo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2261, 143, N'MK-97', N'Staro Nagoricane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2262, 143, N'MK-98', N'Stip')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2263, 143, N'MK-99', N'Struga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2264, 143, N'MK-A1', N'Strumica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2265, 143, N'MK-A2', N'Studenicani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2266, 143, N'MK-A3', N'Suto Orizari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2267, 143, N'MK-91', N'Sipkovica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2268, 143, N'MK-92', N'Sopiste')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2269, 143, N'MK-93', N'Sopotnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2270, 143, N'MK-94', N'Srbinovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2271, 143, N'MK-96', N'Star Dojran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2272, 143, N'MK-95', N'Staravina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2273, 143, N'MK-85', N'Rankovce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2274, 143, N'MK-86', N'Resen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2275, 143, N'MK-87', N'Rosoman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2276, 143, N'MK-88', N'Rostusa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2277, 143, N'MK-89', N'Samokov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2278, 143, N'MK-90', N'Saraj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2279, 143, N'MK-79', N'Petrovec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2280, 143, N'MK-80', N'Plasnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2281, 143, N'MK-81', N'Podares')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2282, 143, N'MK-82', N'Prilep')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2283, 143, N'MK-83', N'Probistip')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2284, 143, N'MK-84', N'Radovis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2285, 143, N'MK-73', N'Oblesevo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2286, 143, N'MK-74', N'Ohrid')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2287, 143, N'MK-75', N'Orasac')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2288, 143, N'MK-76', N'Orizari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2289, 143, N'MK-77', N'Oslomej')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2290, 143, N'MK-78', N'Pehcevo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2291, 143, N'MK-67', N'Mogila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2292, 143, N'MK-68', N'Murtino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2293, 143, N'MK-69', N'Negotino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2294, 143, N'MK-70', N'Negotino-Polosko')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2295, 143, N'MK-71', N'Novaci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2296, 143, N'MK-72', N'Novo Selo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2297, 143, N'MK-61', N'Lukovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2298, 143, N'MK-62', N'Makedonska Kamenica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2299, 143, N'MK-63', N'Makedonski Brod')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2300, 143, N'MK-64', N'Mavrovi Anovi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2301, 143, N'MK-65', N'Meseista')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2302, 143, N'MK-66', N'Miravci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2303, 143, N'MK-55', N'Kuklis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2304, 143, N'MK-56', N'Kukurecani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2305, 143, N'MK-57', N'Kumanovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2306, 143, N'MK-58', N'Labunista')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2307, 143, N'MK-59', N'Lipkovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2308, 143, N'MK-60', N'Lozovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2309, 143, N'MK-49', N'Konopiste')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2310, 143, N'MK-50', N'Kosel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2311, 143, N'MK-51', N'Kratovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2312, 143, N'MK-52', N'Kriva Palanka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2313, 143, N'MK-53', N'Krivogastani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2314, 143, N'MK-54', N'Krusevo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2315, 143, N'MK-43', N'Kicevo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2316, 143, N'MK-44', N'Kisela Voda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2317, 143, N'MK-45', N'Klecevce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2318, 143, N'MK-46', N'Kocani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2319, 143, N'MK-47', N'Konce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2320, 143, N'MK-48', N'Kondovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2321, 143, N'MK-37', N'Izvor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2322, 143, N'MK-38', N'Jegunovce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2323, 143, N'MK-39', N'Kamenjane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2324, 143, N'MK-40', N'Karbinci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2325, 143, N'MK-41', N'Karpos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2326, 143, N'MK-42', N'Kavadarci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2327, 143, N'MK-31', N'Dzepciste')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2328, 143, N'MK-32', N'Gazi Baba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2329, 143, N'MK-33', N'Gevgelija')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2330, 143, N'MK-34', N'Gostivar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2331, 143, N'MK-35', N'Gradsko')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2332, 143, N'MK-36', N'Ilinden')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2333, 143, N'MK-25', N'Demir Kapija')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2334, 143, N'MK-26', N'Dobrusevo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2335, 143, N'MK-27', N'Dolna Banjica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2336, 143, N'MK-28', N'Dolneni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2337, 143, N'MK-29', N'Dorce Petrov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2338, 143, N'MK-30', N'Drugovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2339, 143, N'MK-19', N'Cesinovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2340, 143, N'MK-20', N'Cucer-Sandevo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2341, 143, N'MK-21', N'Debar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2342, 143, N'MK-22', N'Delcevo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2343, 143, N'MK-23', N'Delogozdi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2344, 143, N'MK-24', N'Demir Hisar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2345, 143, N'MK-13', N'Cair')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2346, 143, N'MK-14', N'Capari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2347, 143, N'MK-15', N'Caska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2348, 143, N'MK-16', N'Cegrane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2349, 143, N'MK-17', N'Centar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2350, 143, N'MK-18', N'Centar Zupa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2351, 143, N'MK-07', N'Blatec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2352, 143, N'MK-08', N'Bogdanci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2353, 143, N'MK-09', N'Bogomila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2354, 143, N'MK-10', N'Bogovinje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2355, 143, N'MK-11', N'Bosilovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2356, 143, N'MK-12', N'Brvenica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2357, 144, N'ML-01', N'Bamako')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2358, 144, N'ML-09', N'Gao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2359, 144, N'ML-03', N'Kayes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2360, 144, N'ML-10', N'Kidal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2361, 144, N'ML-07', N'Koulikoro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2362, 144, N'ML-04', N'Mopti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2363, 144, N'ML-05', N'Segou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2364, 144, N'ML-06', N'Sikasso')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2365, 144, N'ML-08', N'Tombouctou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2366, 145, N'MM-02', N'Chin State')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2367, 145, N'MM-03', N'Irrawaddy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2368, 145, N'MM-04', N'Kachin State')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2369, 145, N'MM-05', N'Karan State')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2370, 145, N'MM-06', N'Kayah State')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2371, 145, N'MM-07', N'Magwe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2372, 145, N'MM-11', N'Shan State')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2373, 145, N'MM-12', N'Tenasserim')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2374, 145, N'MM-17', N'Yangon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2375, 145, N'MM-08', N'Mandalay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2376, 145, N'MM-13', N'Mon State')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2377, 145, N'MM-09', N'Pegu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2378, 145, N'MM-01', N'Rakhine State')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2379, 145, N'MM-14', N'Rangoon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2380, 145, N'MM-10', N'Sagaing')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2381, 146, N'MN-01', N'Arhangay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2382, 146, N'MN-03', N'Bayan-Olgiy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2383, 146, N'MN-02', N'Bayanhongor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2384, 146, N'MN-21', N'Bulgan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2385, 146, N'MN-05', N'Darhan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2386, 146, N'MN-23', N'Darhan Uul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2387, 146, N'MN-15', N'Ovorhangay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2388, 146, N'MN-16', N'Selenge')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2389, 146, N'MN-17', N'Suhbaatar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2390, 146, N'MN-18', N'Tov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2391, 146, N'MN-20', N'Ulaanbaatar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2392, 146, N'MN-19', N'Uvs')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2393, 146, N'MN-24', N'Govi-Sumber')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2394, 146, N'MN-11', N'Hentiy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2395, 146, N'MN-12', N'Hovd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2396, 146, N'MN-13', N'Hovsgol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2397, 146, N'MN-14', N'Omnogovi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2398, 146, N'MN-25', N'Orhon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2399, 146, N'MN-06', N'Dornod')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2400, 146, N'MN-07', N'Dornogovi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2401, 146, N'MN-08', N'Dundgovi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2402, 146, N'MN-09', N'Dzavhan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2403, 146, N'MN-22', N'Erdenet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2404, 146, N'MN-10', N'Govi-Altay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2405, 147, N'MO-01', N'Ilhas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2406, 147, N'MO-02', N'Macau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2407, 150, N'MR-07', N'Adrar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2408, 150, N'MR-03', N'Assaba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2409, 150, N'MR-05', N'Brakna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2410, 150, N'MR-08', N'Dakhlet Nouadhibou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2411, 150, N'MR-04', N'Gorgol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2412, 150, N'MR-10', N'Guidimaka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2413, 150, N'MR-01', N'Hodh Ech Chargui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2414, 150, N'MR-02', N'Hodh El Gharbi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2415, 150, N'MR-12', N'Inchiri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2416, 150, N'MR-09', N'Tagant')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2417, 150, N'MR-11', N'Tiris Zemmour')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2418, 150, N'MR-06', N'Trarza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2419, 151, N'MS-01', N'Saint Anthony')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2420, 151, N'MS-02', N'Saint Georges')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2421, 151, N'MS-03', N'Saint Peter')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2422, 153, N'MU-21', N'Agalega Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2423, 153, N'MU-12', N'Black River')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2424, 153, N'MU-22', N'Cargados Carajos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2425, 153, N'MU-13', N'Flacq')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2426, 153, N'MU-14', N'Grand Port')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2427, 153, N'MU-15', N'Moka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2428, 153, N'MU-16', N'Pamplemousses')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2429, 153, N'MU-17', N'Plaines Wilhems')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2430, 153, N'MU-18', N'Port Louis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2431, 153, N'MU-19', N'Riviere du Rempart')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2432, 153, N'MU-23', N'Rodrigues')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2433, 153, N'MU-20', N'Savanne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2434, 154, N'MV-02', N'Aliff')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2435, 154, N'MV-20', N'Baa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2436, 154, N'MV-17', N'Daalu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2437, 154, N'MV-14', N'Faafu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2438, 154, N'MV-27', N'Gaafu Aliff')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2439, 154, N'MV-28', N'Gaafu Daalu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2440, 154, N'MV-04', N'Waavu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2441, 154, N'MV-29', N'Naviyani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2442, 154, N'MV-25', N'Noonu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2443, 154, N'MV-13', N'Raa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2444, 154, N'MV-01', N'Seenu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2445, 154, N'MV-24', N'Shaviyani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2446, 154, N'MV-08', N'Thaa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2447, 154, N'MV-07', N'Haa Aliff')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2448, 154, N'MV-23', N'Haa Daalu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2449, 154, N'MV-26', N'Kaafu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2450, 154, N'MV-05', N'Laamu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2451, 154, N'MV-03', N'Laviyani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2452, 154, N'MV-12', N'Meemu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2453, 155, N'MW-26', N'Balaka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2454, 155, N'MW-24', N'Blantyre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2455, 155, N'MW-02', N'Chikwawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2456, 155, N'MW-03', N'Chiradzulu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2457, 155, N'MW-04', N'Chitipa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2458, 155, N'MW-06', N'Dedza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2459, 155, N'MW-22', N'Salima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2460, 155, N'MW-05', N'Thyolo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2461, 155, N'MW-23', N'Zomba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2462, 155, N'MW-18', N'Nkhotakota')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2463, 155, N'MW-19', N'Nsanje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2464, 155, N'MW-16', N'Ntcheu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2465, 155, N'MW-20', N'Ntchisi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2466, 155, N'MW-30', N'Phalombe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2467, 155, N'MW-21', N'Rumphi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2468, 155, N'MW-12', N'Mangochi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2469, 155, N'MW-13', N'Mchinji')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2470, 155, N'MW-29', N'Mulanje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2471, 155, N'MW-25', N'Mwanza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2472, 155, N'MW-15', N'Mzimba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2473, 155, N'MW-17', N'Nkhata Bay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2474, 155, N'MW-07', N'Dowa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2475, 155, N'MW-08', N'Karonga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2476, 155, N'MW-09', N'Kasungu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2477, 155, N'MW-27', N'Likoma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2478, 155, N'MW-11', N'Lilongwe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2479, 155, N'MW-28', N'Machinga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2480, 156, N'MX-01', N'Aguascalientes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2481, 156, N'MX-02', N'Baja California')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2482, 156, N'MX-03', N'Baja California Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2483, 156, N'MX-04', N'Campeche')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2484, 156, N'MX-05', N'Chiapas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2485, 156, N'MX-06', N'Chihuahua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2486, 156, N'MX-31', N'Yucatan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2487, 156, N'MX-32', N'Zacatecas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2488, 156, N'MX-25', N'Sinaloa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2489, 156, N'MX-26', N'Sonora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2490, 156, N'MX-27', N'Tabasco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2491, 156, N'MX-28', N'Tamaulipas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2492, 156, N'MX-29', N'Tlaxcala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2493, 156, N'MX-30', N'Veracruz-Llave')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2494, 156, N'MX-19', N'Nuevo Leon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2495, 156, N'MX-20', N'Oaxaca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2496, 156, N'MX-21', N'Puebla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2497, 156, N'MX-22', N'Queretaro de Arteaga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2498, 156, N'MX-23', N'Quintana Roo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2499, 156, N'MX-24', N'San Luis Potosi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2500, 156, N'MX-13', N'Hidalgo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2501, 156, N'MX-14', N'Jalisco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2502, 156, N'MX-15', N'Mexico')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2503, 156, N'MX-16', N'Michoacan de Ocampo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2504, 156, N'MX-17', N'Morelos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2505, 156, N'MX-18', N'Nayarit')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2506, 156, N'MX-07', N'Coahuila de Zaragoza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2507, 156, N'MX-08', N'Colima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2508, 156, N'MX-09', N'Distrito Federal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2509, 156, N'MX-10', N'Durango')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2510, 156, N'MX-11', N'Guanajuato')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2511, 156, N'MX-12', N'Guerrero')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2512, 157, N'MY-01', N'Johor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2513, 157, N'MY-02', N'Kedah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2514, 157, N'MY-03', N'Kelantan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2515, 157, N'MY-15', N'Labuan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2516, 157, N'MY-04', N'Melaka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2517, 157, N'MY-05', N'Negeri Sembilan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2518, 157, N'MY-12', N'Selangor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2519, 157, N'MY-13', N'Terengganu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2520, 157, N'MY-14', N'Wilayah Persekutuan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2521, 157, N'MY-06', N'Pahang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2522, 157, N'MY-07', N'Perak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2523, 157, N'MY-08', N'Perlis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2524, 157, N'MY-09', N'Pulau Pinang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2525, 157, N'MY-16', N'Sabah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2526, 157, N'MY-11', N'Sarawak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2527, 158, N'MZ-01', N'Cabo Delgado')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2528, 158, N'MZ-02', N'Gaza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2529, 158, N'MZ-03', N'Inhambane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2530, 158, N'MZ-10', N'Manica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2531, 158, N'MZ-04', N'Maputo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2532, 158, N'MZ-06', N'Nampula')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2533, 158, N'MZ-07', N'Niassa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2534, 158, N'MZ-05', N'Sofala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2535, 158, N'MZ-08', N'Tete')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2536, 158, N'MZ-09', N'Zambezia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2537, 159, N'NA-01', N'Bethanien')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2538, 159, N'NA-03', N'Boesmanland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2539, 159, N'NA-28', N'Caprivi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2540, 159, N'NA-02', N'Caprivi Oos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2541, 159, N'NA-22', N'Damaraland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2542, 159, N'NA-29', N'Erongo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2543, 159, N'NA-18', N'Tsumeb')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2544, 159, N'NA-21', N'Windhoek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2545, 159, N'NA-13', N'Otjiwarongo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2546, 159, N'NA-39', N'Otjozondjupa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2547, 159, N'NA-14', N'Outjo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2548, 159, N'NA-15', N'Owambo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2549, 159, N'NA-16', N'Rehoboth')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2550, 159, N'NA-17', N'Swakopmund')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2551, 159, N'NA-34', N'Okavango')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2552, 159, N'NA-35', N'Omaheke')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2553, 159, N'NA-12', N'Omaruru')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2554, 159, N'NA-36', N'Omusati')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2555, 159, N'NA-37', N'Oshana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2556, 159, N'NA-38', N'Oshikoto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2557, 159, N'NA-09', N'Luderitz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2558, 159, N'NA-10', N'Maltahohe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2559, 159, N'NA-26', N'Mariental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2560, 159, N'NA-27', N'Namaland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2561, 159, N'NA-33', N'Ohangwena')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2562, 159, N'NA-11', N'Okahandja')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2563, 159, N'NA-31', N'Karas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2564, 159, N'NA-20', N'Karasburg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2565, 159, N'NA-07', N'Karibib')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2566, 159, N'NA-25', N'Kavango')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2567, 159, N'NA-08', N'Keetmanshoop')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2568, 159, N'NA-32', N'Kunene')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2569, 159, N'NA-04', N'Gobabis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2570, 159, N'NA-05', N'Grootfontein')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2571, 159, N'NA-30', N'Hardap')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2572, 159, N'NA-23', N'Hereroland Oos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2573, 159, N'NA-24', N'Hereroland Wes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2574, 159, N'NA-06', N'Kaokoland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2575, 161, N'NE-01', N'Agadez')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2576, 161, N'NE-02', N'Diffa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2577, 161, N'NE-03', N'Dosso')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2578, 161, N'NE-04', N'Maradi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2579, 161, N'NE-05', N'Niamey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2580, 161, N'NE-06', N'Tahoua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2581, 161, N'NE-07', N'Zinder')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2582, 163, N'NG-45', N'Abia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2583, 163, N'NG-11', N'Abuja Capital Territory')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2584, 163, N'NG-35', N'Adamawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2585, 163, N'NG-21', N'Akwa Ibom')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2586, 163, N'NG-25', N'Anambra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2587, 163, N'NG-46', N'Bauchi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2588, 163, N'NG-57', N'Zamfara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2589, 163, N'NG-32', N'Oyo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2590, 163, N'NG-49', N'Plateau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2591, 163, N'NG-50', N'Rivers')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2592, 163, N'NG-51', N'Sokoto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2593, 163, N'NG-43', N'Taraba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2594, 163, N'NG-44', N'Yobe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2595, 163, N'NG-05', N'Lagos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2596, 163, N'NG-56', N'Nassarawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2597, 163, N'NG-31', N'Niger')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2598, 163, N'NG-16', N'Ogun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2599, 163, N'NG-48', N'Ondo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2600, 163, N'NG-42', N'Osun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2601, 163, N'NG-23', N'Kaduna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2602, 163, N'NG-29', N'Kano')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2603, 163, N'NG-24', N'Katsina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2604, 163, N'NG-40', N'Kebbi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2605, 163, N'NG-41', N'Kogi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2606, 163, N'NG-30', N'Kwara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2607, 163, N'NG-37', N'Edo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2608, 163, N'NG-54', N'Ekiti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2609, 163, N'NG-47', N'Enugu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2610, 163, N'NG-55', N'Gombe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2611, 163, N'NG-28', N'Imo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2612, 163, N'NG-39', N'Jigawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2613, 163, N'NG-52', N'Bayelsa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2614, 163, N'NG-26', N'Benue')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2615, 163, N'NG-27', N'Borno')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2616, 163, N'NG-22', N'Cross River')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2617, 163, N'NG-36', N'Delta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2618, 163, N'NG-53', N'Ebonyi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2619, 164, N'NI-01', N'Boaco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2620, 164, N'NI-02', N'Carazo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2621, 164, N'NI-03', N'Chinandega')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2622, 164, N'NI-04', N'Chontales')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2623, 164, N'NI-05', N'Esteli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2624, 164, N'NI-06', N'Granada')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2625, 164, N'NI-13', N'Nueva Segovia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2626, 164, N'NI-14', N'Rio San Juan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2627, 164, N'NI-15', N'Rivas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2628, 164, N'NI-16', N'Zelaya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2629, 164, N'NI-07', N'Jinotega')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2630, 164, N'NI-08', N'Leon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2631, 164, N'NI-09', N'Madriz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2632, 164, N'NI-10', N'Managua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2633, 164, N'NI-11', N'Masaya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2634, 164, N'NI-12', N'Matagalpa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2635, 165, N'NL-01', N'Drenthe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2636, 165, N'NL-12', N'Dronten')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2637, 165, N'NL-16', N'Flevoland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2638, 165, N'NL-02', N'Friesland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2639, 165, N'NL-03', N'Gelderland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2640, 165, N'NL-04', N'Groningen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2641, 165, N'NL-10', N'Zeeland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2642, 165, N'NL-11', N'Zuid-Holland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2643, 165, N'NL-13', N'Zuidelijke IJsselmeerpolders')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2644, 165, N'NL-14', N'Lelystad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2645, 165, N'NL-05', N'Limburg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2646, 165, N'NL-06', N'Noord-Brabant')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2647, 165, N'NL-07', N'Noord-Holland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2648, 165, N'NL-08', N'Overijssel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2649, 165, N'NL-09', N'Utrecht')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2650, 166, N'NO-01', N'Akershus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2651, 166, N'NO-02', N'Aust-Agder')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2652, 166, N'NO-04', N'Buskerud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2653, 166, N'NO-05', N'Finnmark')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2654, 166, N'NO-06', N'Hedmark')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2655, 166, N'NO-07', N'Hordaland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2656, 166, N'NO-20', N'Vestfold')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2657, 166, N'NO-14', N'Rogaland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2658, 166, N'NO-15', N'Sogn og Fjordane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2659, 166, N'NO-16', N'Sor-Trondelag')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2660, 166, N'NO-17', N'Telemark')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2661, 166, N'NO-18', N'Troms')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2662, 166, N'NO-19', N'Vest-Agder')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2663, 166, N'NO-08', N'More og Romsdal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2664, 166, N'NO-10', N'Nord-Trondelag')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2665, 166, N'NO-09', N'Nordland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2666, 166, N'NO-11', N'Oppland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2667, 166, N'NO-12', N'Oslo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2668, 166, N'NO-13', N'Ostfold')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2669, 167, N'NP-01', N'Bagmati')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2670, 167, N'NP-02', N'Bheri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2671, 167, N'NP-03', N'Dhawalagiri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2672, 167, N'NP-04', N'Gandaki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2673, 167, N'NP-05', N'Janakpur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2674, 167, N'NP-06', N'Karnali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2675, 167, N'NP-13', N'Sagarmatha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2676, 167, N'NP-14', N'Seti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2677, 167, N'NP-07', N'Kosi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2678, 167, N'NP-08', N'Lumbini')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2679, 167, N'NP-09', N'Mahakali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2680, 167, N'NP-10', N'Mechi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2681, 167, N'NP-11', N'Narayani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2682, 167, N'NP-12', N'Rapti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2683, 168, N'NR-01', N'Aiwo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2684, 168, N'NR-02', N'Anabar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2685, 168, N'NR-03', N'Anetan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2686, 168, N'NR-04', N'Anibare')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2687, 168, N'NR-05', N'Baiti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2688, 168, N'NR-06', N'Boe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2689, 168, N'NR-13', N'Uaboe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2690, 168, N'NR-14', N'Yaren')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2691, 168, N'NR-07', N'Buada')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2692, 168, N'NR-08', N'Denigomodu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2693, 168, N'NR-09', N'Ewa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2694, 168, N'NR-10', N'Ijuw')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2695, 168, N'NR-11', N'Meneng')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2696, 168, N'NR-12', N'Nibok')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2697, 170, N'NZ-01', N'Akaroa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2698, 170, N'NZ-03', N'Amuri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2699, 170, N'NZ-04', N'Ashburton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2700, 170, N'NZ-07', N'Bay of Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2701, 170, N'NZ-08', N'Bruce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2702, 170, N'NZ-09', N'Buller')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2703, 170, N'NZ-A1', N'Whangarei')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2704, 170, N'NZ-A2', N'Whangaroa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2705, 170, N'NZ-A3', N'Woodville')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2706, 170, N'NZ-A8', N'Waitotara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2707, 170, N'NZ-E6', N'Wallace')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2708, 170, N'NZ-B2', N'Wanganui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2709, 170, N'NZ-E5', N'Waverley')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2710, 170, N'NZ-B3', N'Westland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2711, 170, N'NZ-B4', N'Whakatane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2712, 170, N'NZ-96', N'Waipukurau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2713, 170, N'NZ-97', N'Wairarapa South')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2714, 170, N'NZ-98', N'Wairewa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2715, 170, N'NZ-99', N'Wairoa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2716, 170, N'NZ-A4', N'Waitaki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2717, 170, N'NZ-A6', N'Waitomo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2718, 170, N'NZ-89', N'Waimarino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2719, 170, N'NZ-90', N'Waimate')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2720, 170, N'NZ-91', N'Waimate West')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2721, 170, N'NZ-92', N'Waimea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2722, 170, N'NZ-93', N'Waipa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2723, 170, N'NZ-95', N'Waipawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2724, 170, N'NZ-83', N'Waiapu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2725, 170, N'NZ-D8', N'Waiheke')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2726, 170, N'NZ-84', N'Waihemo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2727, 170, N'NZ-85', N'Waikato')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2728, 170, N'NZ-86', N'Waikohu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2729, 170, N'NZ-88', N'Waimairi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2730, 170, N'NZ-77', N'Taumarunui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2731, 170, N'NZ-78', N'Taupo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2732, 170, N'NZ-79', N'Tauranga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2733, 170, N'NZ-E4', N'Thames-Coromandel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2734, 170, N'NZ-81', N'Tuapeka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2735, 170, N'NZ-82', N'Vincent')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2736, 170, N'NZ-D5', N'Silverpeaks')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2737, 170, N'NZ-72', N'Southland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2738, 170, N'NZ-73', N'Stewart Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2739, 170, N'NZ-74', N'Stratford')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2740, 170, N'NZ-D6', N'Strathallan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2741, 170, N'NZ-76', N'Taranaki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2742, 170, N'NZ-68', N'Rangiora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2743, 170, N'NZ-69', N'Rangitikei')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2744, 170, N'NZ-70', N'Rodney')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2745, 170, N'NZ-71', N'Rotorua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2746, 170, N'NZ-E2', N'Runanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2747, 170, N'NZ-E3', N'Saint Kilda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2748, 170, N'NZ-60', N'Pahiatua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2749, 170, N'NZ-61', N'Paparua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2750, 170, N'NZ-63', N'Patea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2751, 170, N'NZ-65', N'Piako')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2752, 170, N'NZ-66', N'Pohangina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2753, 170, N'NZ-67', N'Raglan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2754, 170, N'NZ-54', N'Ohinemuri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2755, 170, N'NZ-55', N'Opotiki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2756, 170, N'NZ-56', N'Oroua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2757, 170, N'NZ-57', N'Otamatea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2758, 170, N'NZ-58', N'Otorohanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2759, 170, N'NZ-59', N'Oxford')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2760, 170, N'NZ-48', N'Mangonui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2761, 170, N'NZ-49', N'Maniototo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2762, 170, N'NZ-50', N'Marlborough')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2763, 170, N'NZ-51', N'Masterton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2764, 170, N'NZ-52', N'Matamata')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2765, 170, N'NZ-53', N'Mount Herbert')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2766, 170, N'NZ-41', N'Kiwitea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2767, 170, N'NZ-43', N'Lake')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2768, 170, N'NZ-45', N'Mackenzie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2769, 170, N'NZ-46', N'Malvern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2770, 170, N'NZ-E1', N'Manaia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2771, 170, N'NZ-47', N'Manawatu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2772, 170, N'NZ-D4', N'Hurunui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2773, 170, N'NZ-36', N'Hutt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2774, 170, N'NZ-37', N'Inangahua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2775, 170, N'NZ-38', N'Inglewood')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2776, 170, N'NZ-39', N'Kaikoura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2777, 170, N'NZ-40', N'Kairanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2778, 170, N'NZ-31', N'Hawke''s Bay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2779, 170, N'NZ-32', N'Heathcote')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2780, 170, N'NZ-D9', N'Hikurangi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2781, 170, N'NZ-33', N'Hobson')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2782, 170, N'NZ-34', N'Hokianga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2783, 170, N'NZ-35', N'Horowhenua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2784, 170, N'NZ-24', N'Franklin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2785, 170, N'NZ-26', N'Golden Bay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2786, 170, N'NZ-27', N'Great Barrier Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2787, 170, N'NZ-28', N'Grey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2788, 170, N'NZ-29', N'Hauraki Plains')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2789, 170, N'NZ-30', N'Hawera')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2790, 170, N'NZ-17', N'Egmont')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2791, 170, N'NZ-18', N'Eketahuna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2792, 170, N'NZ-19', N'Ellesmere')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2793, 170, N'NZ-20', N'Eltham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2794, 170, N'NZ-21', N'Eyre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2795, 170, N'NZ-22', N'Featherston')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2796, 170, N'NZ-10', N'Chatham Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2797, 170, N'NZ-11', N'Cheviot')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2798, 170, N'NZ-12', N'Clifton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2799, 170, N'NZ-13', N'Clutha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2800, 170, N'NZ-14', N'Cook')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2801, 170, N'NZ-16', N'Dannevirke')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2802, 171, N'OM-01', N'Ad Dakhiliyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2803, 171, N'OM-02', N'Al Batinah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2804, 171, N'OM-03', N'Al Wusta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2805, 171, N'OM-04', N'Ash Sharqiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2806, 171, N'OM-05', N'Az Zahirah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2807, 171, N'OM-06', N'Masqat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2808, 171, N'OM-07', N'Musandam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2809, 171, N'OM-08', N'Zufar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2810, 172, N'PA-01', N'Bocas del Toro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2811, 172, N'PA-02', N'Chiriqui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2812, 172, N'PA-03', N'Cocle')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2813, 172, N'PA-04', N'Colon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2814, 172, N'PA-05', N'Darien')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2815, 172, N'PA-06', N'Herrera')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2816, 172, N'PA-07', N'Los Santos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2817, 172, N'PA-08', N'Panama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2818, 172, N'PA-09', N'San Blas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2819, 172, N'PA-10', N'Veraguas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2820, 173, N'PE-01', N'Amazonas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2821, 173, N'PE-02', N'Ancash')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2822, 173, N'PE-03', N'Apurimac')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2823, 173, N'PE-04', N'Arequipa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2824, 173, N'PE-05', N'Ayacucho')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2825, 173, N'PE-06', N'Cajamarca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2826, 173, N'PE-25', N'Ucayali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2827, 173, N'PE-19', N'Pasco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2828, 173, N'PE-20', N'Piura')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2829, 173, N'PE-21', N'Puno')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2830, 173, N'PE-22', N'San Martin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2831, 173, N'PE-23', N'Tacna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2832, 173, N'PE-24', N'Tumbes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2833, 173, N'PE-13', N'La Libertad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2834, 173, N'PE-14', N'Lambayeque')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2835, 173, N'PE-15', N'Lima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2836, 173, N'PE-16', N'Loreto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2837, 173, N'PE-17', N'Madre de Dios')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2838, 173, N'PE-18', N'Moquegua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2839, 173, N'PE-07', N'Callao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2840, 173, N'PE-08', N'Cusco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2841, 173, N'PE-09', N'Huancavelica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2842, 173, N'PE-10', N'Huanuco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2843, 173, N'PE-11', N'Ica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2844, 173, N'PE-12', N'Junin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2845, 175, N'PG-01', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2846, 175, N'PG-08', N'Chimbu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2847, 175, N'PG-10', N'East New Britain')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2848, 175, N'PG-11', N'East Sepik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2849, 175, N'PG-09', N'Eastern Highlands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2850, 175, N'PG-19', N'Enga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2851, 175, N'PG-06', N'Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2852, 175, N'PG-16', N'Western Highlands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2853, 175, N'PG-15', N'New Ireland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2854, 175, N'PG-07', N'North Solomons')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2855, 175, N'PG-04', N'Northern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2856, 175, N'PG-18', N'Sandaun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2857, 175, N'PG-05', N'Southern Highlands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2858, 175, N'PG-17', N'West New Britain')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2859, 175, N'PG-02', N'Gulf')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2860, 175, N'PG-12', N'Madang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2861, 175, N'PG-13', N'Manus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2862, 175, N'PG-03', N'Milne Bay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2863, 175, N'PG-14', N'Morobe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2864, 175, N'PG-20', N'National Capital')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2865, 176, N'PH-01', N'Abra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2866, 176, N'PH-02', N'Agusan del Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2867, 176, N'PH-03', N'Agusan del Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2868, 176, N'PH-04', N'Aklan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2869, 176, N'PH-05', N'Albay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2870, 176, N'PH-A1', N'Angeles')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2871, 176, N'PH-66', N'Zamboanga del Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2872, 176, N'PH-72', N'Tawitawi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2873, 176, N'PH-G5', N'Toledo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2874, 176, N'PH-G6', N'Trece Martires')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2875, 176, N'PH-64', N'Zambales')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2876, 176, N'PH-G7', N'Zamboanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2877, 176, N'PH-65', N'Zamboanga del Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2878, 176, N'PH-62', N'Surigao del Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2879, 176, N'PH-G1', N'Tacloban')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2880, 176, N'PH-G2', N'Tagaytay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2881, 176, N'PH-G3', N'Tagbilaran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2882, 176, N'PH-G4', N'Tangub')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2883, 176, N'PH-63', N'Tarlac')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2884, 176, N'PH-70', N'South Cotabato')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2885, 176, N'PH-59', N'Southern Leyte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2886, 176, N'PH-71', N'Sultan Kudarat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2887, 176, N'PH-60', N'Sulu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2888, 176, N'PH-F9', N'Surigao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2889, 176, N'PH-61', N'Surigao del Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2890, 176, N'PH-F4', N'San Carlos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2891, 176, N'PH-F6', N'San Jose')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2892, 176, N'PH-F7', N'San Pablo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2893, 176, N'PH-F8', N'Silay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2894, 176, N'PH-69', N'Siquijor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2895, 176, N'PH-58', N'Sorsogon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2896, 176, N'PH-F2', N'Quezon City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2897, 176, N'PH-68', N'Quirino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2898, 176, N'PH-53', N'Rizal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2899, 176, N'PH-54', N'Romblon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2900, 176, N'PH-F3', N'Roxas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2901, 176, N'PH-55', N'Samar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2902, 176, N'PH-E8', N'Palayan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2903, 176, N'PH-50', N'Pampanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2904, 176, N'PH-51', N'Pangasinan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2905, 176, N'PH-E9', N'Pasay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2906, 176, N'PH-F1', N'Puerto Princesa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2907, 176, N'PH-H2', N'Quezon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2908, 176, N'PH-E3', N'Olongapo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2909, 176, N'PH-E4', N'Ormoc')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2910, 176, N'PH-E5', N'Oroquieta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2911, 176, N'PH-E6', N'Ozamis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2912, 176, N'PH-E7', N'Pagadian')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2913, 176, N'PH-49', N'Palawan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2914, 176, N'PH-H3', N'Negros Occidental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2915, 176, N'PH-46', N'Negros Oriental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2916, 176, N'PH-57', N'North Cotabato')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2917, 176, N'PH-67', N'Northern Samar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2918, 176, N'PH-47', N'Nueva Ecija')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2919, 176, N'PH-48', N'Nueva Vizcaya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2920, 176, N'PH-40', N'Mindoro Occidental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2921, 176, N'PH-41', N'Mindoro Oriental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2922, 176, N'PH-42', N'Misamis Occidental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2923, 176, N'PH-43', N'Misamis Oriental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2924, 176, N'PH-44', N'Mountain')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2925, 176, N'PH-E2', N'Naga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2926, 176, N'PH-56', N'Maguindanao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2927, 176, N'PH-D8', N'Mandaue')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2928, 176, N'PH-D9', N'Manila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2929, 176, N'PH-E1', N'Marawi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2930, 176, N'PH-38', N'Marinduque')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2931, 176, N'PH-39', N'Masbate')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2932, 176, N'PH-D3', N'Laoag')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2933, 176, N'PH-D4', N'Lapu-Lapu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2934, 176, N'PH-D5', N'Legaspi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2935, 176, N'PH-37', N'Leyte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2936, 176, N'PH-D6', N'Lipa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2937, 176, N'PH-D7', N'Lucena')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2938, 176, N'PH-32', N'Kalinga-Apayao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2939, 176, N'PH-D2', N'La Carlota')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2940, 176, N'PH-36', N'La Union')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2941, 176, N'PH-33', N'Laguna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2942, 176, N'PH-34', N'Lanao del Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2943, 176, N'PH-35', N'Lanao del Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2944, 176, N'PH-28', N'Ilocos Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2945, 176, N'PH-29', N'Ilocos Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2946, 176, N'PH-30', N'Iloilo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2947, 176, N'PH-C9', N'Iloilo City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2948, 176, N'PH-D1', N'Iriga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2949, 176, N'PH-31', N'Isabela')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2950, 176, N'PH-C5', N'Dumaguete')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2951, 176, N'PH-23', N'Eastern Samar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2952, 176, N'PH-C6', N'General Santos')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2953, 176, N'PH-C7', N'Gingoog')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2954, 176, N'PH-27', N'Ifugao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2955, 176, N'PH-C8', N'Iligan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2956, 176, N'PH-C2', N'Dapitan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2957, 176, N'PH-24', N'Davao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2958, 176, N'PH-C3', N'Davao City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2959, 176, N'PH-25', N'Davao del Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2960, 176, N'PH-26', N'Davao Oriental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2961, 176, N'PH-C4', N'Dipolog')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2962, 176, N'PH-B6', N'Cavite City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2963, 176, N'PH-21', N'Cebu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2964, 176, N'PH-B7', N'Cebu City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2965, 176, N'PH-B8', N'Cotabato')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2966, 176, N'PH-B9', N'Dagupan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2967, 176, N'PH-C1', N'Danao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2968, 176, N'PH-16', N'Camarines Sur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2969, 176, N'PH-17', N'Camiguin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2970, 176, N'PH-B5', N'Canlaon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2971, 176, N'PH-18', N'Capiz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2972, 176, N'PH-19', N'Catanduanes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2973, 176, N'PH-20', N'Cavite')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2974, 176, N'PH-B1', N'Cadiz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2975, 176, N'PH-14', N'Cagayan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2976, 176, N'PH-B2', N'Cagayan de Oro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2977, 176, N'PH-B3', N'Calbayog')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2978, 176, N'PH-B4', N'Caloocan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2979, 176, N'PH-15', N'Camarines Norte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2980, 176, N'PH-10', N'Benguet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2981, 176, N'PH-11', N'Bohol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2982, 176, N'PH-12', N'Bukidnon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2983, 176, N'PH-13', N'Bulacan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2984, 176, N'PH-A8', N'Butuan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2985, 176, N'PH-A9', N'Cabanatuan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2986, 176, N'PH-22', N'Basilan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2987, 176, N'PH-A6', N'Basilan City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2988, 176, N'PH-07', N'Bataan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2989, 176, N'PH-08', N'Batanes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2990, 176, N'PH-09', N'Batangas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2991, 176, N'PH-A7', N'Batangas City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2992, 176, N'PH-06', N'Antique')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2993, 176, N'PH-G8', N'Aurora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2994, 176, N'PH-A2', N'Bacolod')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2995, 176, N'PH-A3', N'Bago')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2996, 176, N'PH-A4', N'Baguio')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2997, 176, N'PH-A5', N'Bais')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2998, 177, N'PK-06', N'Azad Kashmir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (2999, 177, N'PK-02', N'Balochistan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3000, 177, N'PK-01', N'Federally Administered Tribal Areas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3001, 177, N'PK-08', N'Islamabad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3002, 177, N'PK-03', N'North-West Frontier')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3003, 177, N'PK-07', N'Northern Areas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3004, 177, N'PK-04', N'Punjab')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3005, 177, N'PK-05', N'Sindh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3006, 178, N'PL-23', N'Biala Podlaska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3007, 178, N'PL-24', N'Bialystok')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3008, 178, N'PL-25', N'Bielsko')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3009, 178, N'PL-26', N'Bydgoszcz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3010, 178, N'PL-27', N'Chelm')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3011, 178, N'PL-28', N'Ciechanow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3012, 178, N'PL-68', N'Wloclawek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3013, 178, N'PL-69', N'Wroclaw')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3014, 178, N'PL-87', N'Zachodniopomorskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3015, 178, N'PL-70', N'Zamosc')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3016, 178, N'PL-71', N'Zielona Gora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3017, 178, N'PL-64', N'Tarnow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3018, 178, N'PL-65', N'Torun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3019, 178, N'PL-66', N'Walbrzych')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3020, 178, N'PL-85', N'Warminsko-Mazurskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3021, 178, N'PL-67', N'Warszawa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3022, 178, N'PL-86', N'Wielkopolskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3023, 178, N'PL-83', N'Slaskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3024, 178, N'PL-60', N'Slupsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3025, 178, N'PL-61', N'Suwalki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3026, 178, N'PL-84', N'Swietokrzyskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3027, 178, N'PL-62', N'Szczecin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3028, 178, N'PL-63', N'Tarnobrzeg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3029, 178, N'PL-54', N'Przemysl')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3030, 178, N'PL-55', N'Radom')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3031, 178, N'PL-56', N'Rzeszow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3032, 178, N'PL-57', N'Siedlce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3033, 178, N'PL-58', N'Sieradz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3034, 178, N'PL-59', N'Skierniewice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3035, 178, N'PL-51', N'Piotrkow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3036, 178, N'PL-52', N'Plock')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3037, 178, N'PL-80', N'Podkarpackie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3038, 178, N'PL-81', N'Podlaskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3039, 178, N'PL-82', N'Pomorskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3040, 178, N'PL-53', N'Poznan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3041, 178, N'PL-46', N'Nowy Sacz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3042, 178, N'PL-47', N'Olsztyn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3043, 178, N'PL-48', N'Opole')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3044, 178, N'PL-79', N'Opolskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3045, 178, N'PL-49', N'Ostroleka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3046, 178, N'PL-50', N'Pila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3047, 178, N'PL-44', N'Lomza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3048, 178, N'PL-75', N'Lubelskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3049, 178, N'PL-45', N'Lublin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3050, 178, N'PL-76', N'Lubuskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3051, 178, N'PL-77', N'Malopolskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3052, 178, N'PL-78', N'Mazowieckie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3053, 178, N'PL-40', N'Krosno')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3054, 178, N'PL-73', N'Kujawsko-Pomorskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3055, 178, N'PL-41', N'Legnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3056, 178, N'PL-42', N'Leszno')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3057, 178, N'PL-43', N'Lodz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3058, 178, N'PL-74', N'Lodzkie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3059, 178, N'PL-34', N'Kalisz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3060, 178, N'PL-35', N'Katowice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3061, 178, N'PL-36', N'Kielce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3062, 178, N'PL-37', N'Konin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3063, 178, N'PL-38', N'Koszalin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3064, 178, N'PL-39', N'Krakow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3065, 178, N'PL-29', N'Czestochowa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3066, 178, N'PL-72', N'Dolnoslaskie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3067, 178, N'PL-30', N'Elblag')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3068, 178, N'PL-31', N'Gdansk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3069, 178, N'PL-32', N'Gorzow')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3070, 178, N'PL-33', N'Jelenia Gora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3071, 183, N'PT-02', N'Aveiro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3072, 183, N'PT-23', N'Azores')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3073, 183, N'PT-03', N'Beja')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3074, 183, N'PT-04', N'Braga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3075, 183, N'PT-05', N'Braganca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3076, 183, N'PT-06', N'Castelo Branco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3077, 183, N'PT-21', N'Vila Real')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3078, 183, N'PT-22', N'Viseu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3079, 183, N'PT-10', N'Madeira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3080, 183, N'PT-16', N'Portalegre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3081, 183, N'PT-17', N'Porto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3082, 183, N'PT-18', N'Santarem')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3083, 183, N'PT-19', N'Setubal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3084, 183, N'PT-20', N'Viana do Castelo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3085, 183, N'PT-07', N'Coimbra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3086, 183, N'PT-08', N'Evora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3087, 183, N'PT-09', N'Faro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3088, 183, N'PT-11', N'Guarda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3089, 183, N'PT-13', N'Leiria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3090, 183, N'PT-14', N'Lisboa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3091, 185, N'PY-23', N'Alto Paraguay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3092, 185, N'PY-01', N'Alto Parana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3093, 185, N'PY-02', N'Amambay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3094, 185, N'PY-03', N'Boqueron')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3095, 185, N'PY-04', N'Caaguazu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3096, 185, N'PY-05', N'Caazapa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3097, 185, N'PY-17', N'San Pedro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3098, 185, N'PY-11', N'Itapua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3099, 185, N'PY-12', N'Misiones')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3100, 185, N'PY-13', N'Neembucu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3101, 185, N'PY-21', N'Nueva Asuncion')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3102, 185, N'PY-15', N'Paraguari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3103, 185, N'PY-16', N'Presidente Hayes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3104, 185, N'PY-19', N'Canindeyu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3105, 185, N'PY-06', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3106, 185, N'PY-20', N'Chaco')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3107, 185, N'PY-07', N'Concepcion')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3108, 185, N'PY-08', N'Cordillera')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3109, 185, N'PY-10', N'Guaira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3110, 186, N'QA-01', N'Ad Dawhah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3111, 186, N'QA-02', N'Al Ghuwariyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3112, 186, N'QA-03', N'Al Jumaliyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3113, 186, N'QA-04', N'Al Khawr')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3114, 186, N'QA-10', N'Al Wakrah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3115, 186, N'QA-06', N'Ar Rayyan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3116, 186, N'QA-11', N'Jariyan al Batnah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3117, 186, N'QA-08', N'Madinat ach Shamal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3118, 186, N'QA-12', N'Umm Sa''id')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3119, 186, N'QA-09', N'Umm Salal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3120, 188, N'RO-01', N'Alba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3121, 188, N'RO-02', N'Arad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3122, 188, N'RO-03', N'Arges')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3123, 188, N'RO-04', N'Bacau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3124, 188, N'RO-05', N'Bihor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3125, 188, N'RO-06', N'Bistrita-Nasaud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3126, 188, N'RO-35', N'Teleorman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3127, 188, N'RO-36', N'Timis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3128, 188, N'RO-37', N'Tulcea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3129, 188, N'RO-39', N'Valcea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3130, 188, N'RO-38', N'Vaslui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3131, 188, N'RO-40', N'Vrancea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3132, 188, N'RO-29', N'Olt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3133, 188, N'RO-30', N'Prahova')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3134, 188, N'RO-31', N'Salaj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3135, 188, N'RO-32', N'Satu Mare')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3136, 188, N'RO-33', N'Sibiu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3137, 188, N'RO-34', N'Suceava')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3138, 188, N'RO-23', N'Iasi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3139, 188, N'RO-43', N'Ilfov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3140, 188, N'RO-25', N'Maramures')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3141, 188, N'RO-26', N'Mehedinti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3142, 188, N'RO-27', N'Mures')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3143, 188, N'RO-28', N'Neamt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3144, 188, N'RO-18', N'Galati')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3145, 188, N'RO-42', N'Giurgiu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3146, 188, N'RO-19', N'Gorj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3147, 188, N'RO-20', N'Harghita')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3148, 188, N'RO-21', N'Hunedoara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3149, 188, N'RO-22', N'Ialomita')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3150, 188, N'RO-12', N'Caras-Severin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3151, 188, N'RO-13', N'Cluj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3152, 188, N'RO-14', N'Constanta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3153, 188, N'RO-15', N'Covasna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3154, 188, N'RO-16', N'Dambovita')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3155, 188, N'RO-17', N'Dolj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3156, 188, N'RO-07', N'Botosani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3157, 188, N'RO-08', N'Braila')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3158, 188, N'RO-09', N'Brasov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3159, 188, N'RO-10', N'Bucuresti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3160, 188, N'RO-11', N'Buzau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3161, 188, N'RO-41', N'Calarasi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3162, 190, N'RU-01', N'Adygeya, Republic of')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3163, 190, N'RU-02', N'Aginsky Buryatsky AO')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3164, 190, N'RU-04', N'Altaisky krai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3165, 190, N'RU-05', N'Amur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3166, 190, N'RU-06', N'Arkhangel''sk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3167, 190, N'RU-07', N'Astrakhan''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3168, 190, N'RU-85', N'Vologda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3169, 190, N'RU-86', N'Voronezh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3170, 190, N'RU-87', N'Yamal-Nenets')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3171, 190, N'RU-88', N'Yaroslavl''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3172, 190, N'RU-89', N'Yevrey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3173, 190, N'RU-78', N'Tyumen''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3174, 190, N'RU-80', N'Udmurt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3175, 190, N'RU-81', N'Ul''yanovsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3176, 190, N'RU-82', N'Ust-Orda Buryat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3177, 190, N'RU-83', N'Vladimir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3178, 190, N'RU-84', N'Volgograd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3179, 190, N'RU-73', N'Tatarstan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3180, 190, N'RU-74', N'Taymyr')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3181, 190, N'RU-75', N'Tomsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3182, 190, N'RU-76', N'Tula')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3183, 190, N'RU-79', N'Tuva')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3184, 190, N'RU-77', N'Tver''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3185, 190, N'RU-65', N'Samara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3186, 190, N'RU-67', N'Saratov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3187, 190, N'RU-69', N'Smolensk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3188, 190, N'RU-70', N'Stavropol''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3189, 190, N'RU-71', N'Sverdlovsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3190, 190, N'RU-72', N'Tambovskaya oblast')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3191, 190, N'RU-60', N'Pskov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3192, 190, N'RU-61', N'Rostov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3193, 190, N'RU-62', N'Ryazan''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3194, 190, N'RU-66', N'Saint Petersburg City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3195, 190, N'RU-63', N'Sakha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3196, 190, N'RU-64', N'Sakhalin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3197, 190, N'RU-54', N'Omsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3198, 190, N'RU-56', N'Orel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3199, 190, N'RU-55', N'Orenburg')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3200, 190, N'RU-57', N'Penza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3201, 190, N'RU-58', N'Perm''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3202, 190, N'RU-59', N'Primor''ye')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3203, 190, N'RU-49', N'Murmansk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3204, 190, N'RU-50', N'Nenets')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3205, 190, N'RU-51', N'Nizhegorod')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3206, 190, N'RU-68', N'North Ossetia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3207, 190, N'RU-52', N'Novgorod')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3208, 190, N'RU-53', N'Novosibirsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3209, 190, N'RU-43', N'Lipetsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3210, 190, N'RU-44', N'Magadan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3211, 190, N'RU-45', N'Mariy-El')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3212, 190, N'RU-46', N'Mordovia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3213, 190, N'RU-48', N'Moscow City')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3214, 190, N'RU-47', N'Moskva')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3215, 190, N'RU-37', N'Kostroma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3216, 190, N'RU-38', N'Krasnodar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3217, 190, N'RU-39', N'Krasnoyarsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3218, 190, N'RU-40', N'Kurgan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3219, 190, N'RU-41', N'Kursk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3220, 190, N'RU-42', N'Leningrad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3221, 190, N'RU-31', N'Khakass')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3222, 190, N'RU-32', N'Khanty-Mansiy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3223, 190, N'RU-33', N'Kirov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3224, 190, N'RU-34', N'Komi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3225, 190, N'RU-35', N'Komi-Permyak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3226, 190, N'RU-36', N'Koryak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3227, 190, N'RU-25', N'Kaluga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3228, 190, N'RU-26', N'Kamchatka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3229, 190, N'RU-27', N'Karachay-Cherkess')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3230, 190, N'RU-28', N'Karelia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3231, 190, N'RU-29', N'Kemerovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3232, 190, N'RU-30', N'Khabarovsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3233, 190, N'RU-19', N'Ingush')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3234, 190, N'RU-20', N'Irkutsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3235, 190, N'RU-21', N'Ivanovo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3236, 190, N'RU-22', N'Kabardin-Balkar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3237, 190, N'RU-23', N'Kaliningrad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3238, 190, N'RU-24', N'Kalmyk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3239, 190, N'RU-14', N'Chita')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3240, 190, N'RU-15', N'Chukot')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3241, 190, N'RU-16', N'Chuvashia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3242, 190, N'RU-17', N'Dagestan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3243, 190, N'RU-18', N'Evenk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3244, 190, N'RU-03', N'Gorno-Altay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3245, 190, N'RU-08', N'Bashkortostan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3246, 190, N'RU-09', N'Belgorod')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3247, 190, N'RU-10', N'Bryansk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3248, 190, N'RU-11', N'Buryat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3249, 190, N'RU-12', N'Chechnya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3250, 190, N'RU-13', N'Chelyabinsk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3251, 191, N'RW-01', N'Butare')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3252, 191, N'RW-02', N'Byumba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3253, 191, N'RW-03', N'Cyangugu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3254, 191, N'RW-04', N'Gikongoro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3255, 191, N'RW-05', N'Gisenyi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3256, 191, N'RW-06', N'Gitarama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3257, 191, N'RW-07', N'Kibungo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3258, 191, N'RW-08', N'Kibuye')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3259, 191, N'RW-09', N'Kigali')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3260, 191, N'RW-10', N'Ruhengeri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3261, 192, N'SA-02', N'Al Bahah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3262, 192, N'SA-06', N'Ash Sharqiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3263, 192, N'SA-13', N'Ha''il')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3264, 192, N'SA-17', N'Jizan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3265, 192, N'SA-14', N'Makkah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3266, 192, N'SA-16', N'Najran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3267, 192, N'SA-19', N'Tabuk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3268, 192, N'SA-15', N'Al Hudud ash Shamaliyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3269, 192, N'SA-03', N'Al Jawf')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3270, 192, N'SA-05', N'Al Madinah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3271, 192, N'SA-08', N'Al Qasim')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3272, 192, N'SA-09', N'Al Qurayyat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3273, 192, N'SA-10', N'Ar Riyad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3274, 193, N'SB-05', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3275, 193, N'SB-06', N'Guadalcanal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3276, 193, N'SB-07', N'Isabel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3277, 193, N'SB-08', N'Makira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3278, 193, N'SB-03', N'Malaita')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3279, 193, N'SB-09', N'Temotu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3280, 193, N'SB-04', N'Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3281, 194, N'SC-01', N'Anse aux Pins')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3282, 194, N'SC-02', N'Anse Boileau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3283, 194, N'SC-03', N'Anse Etoile')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3284, 194, N'SC-23', N'Takamaka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3285, 194, N'SC-17', N'Mont Buxton')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3286, 194, N'SC-18', N'Mont Fleuri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3287, 194, N'SC-19', N'Plaisance')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3288, 194, N'SC-20', N'Pointe La Rue')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3289, 194, N'SC-21', N'Port Glaud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3290, 194, N'SC-22', N'Saint Louis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3291, 194, N'SC-10', N'Bel Ombre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3292, 194, N'SC-11', N'Cascade')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3293, 194, N'SC-12', N'Glacis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3294, 194, N'SC-13', N'Grand'' Anse')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3295, 194, N'SC-15', N'La Digue')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3296, 194, N'SC-16', N'La Riviere Anglaise')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3297, 194, N'SC-04', N'Anse Louis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3298, 194, N'SC-05', N'Anse Royale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3299, 194, N'SC-06', N'Baie Lazare')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3300, 194, N'SC-07', N'Baie Sainte Anne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3301, 194, N'SC-08', N'Beau Vallon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3302, 194, N'SC-09', N'Bel Air')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3303, 195, N'SD-28', N'Al Istiwa''iyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3304, 195, N'SD-29', N'Al Khartum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3305, 195, N'SD-27', N'Al Wusta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3306, 195, N'SD-30', N'Ash Shamaliyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3307, 195, N'SD-31', N'Ash Sharqiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3308, 195, N'SD-32', N'Bahr al Ghazal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3309, 195, N'SD-33', N'Darfur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3310, 195, N'SD-34', N'Kurdufan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3311, 196, N'SE-01', N'Alvsborgs Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3312, 196, N'SE-02', N'Blekinge Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3313, 196, N'SE-10', N'Dalarnas Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3314, 196, N'SE-03', N'Gavleborgs Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3315, 196, N'SE-04', N'Goteborgs och Bohus Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3316, 196, N'SE-05', N'Gotlands Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3317, 196, N'SE-25', N'Vastmanlands Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3318, 196, N'SE-28', N'Vastra Gotaland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3319, 196, N'SE-18', N'Sodermanlands Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3320, 196, N'SE-26', N'Stockholms Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3321, 196, N'SE-21', N'Uppsala Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3322, 196, N'SE-22', N'Varmlands Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3323, 196, N'SE-23', N'Vasterbottens Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3324, 196, N'SE-24', N'Vasternorrlands Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3325, 196, N'SE-13', N'Malmohus Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3326, 196, N'SE-14', N'Norrbottens Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3327, 196, N'SE-15', N'Orebro Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3328, 196, N'SE-16', N'Ostergotlands Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3329, 196, N'SE-27', N'Skane Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3330, 196, N'SE-17', N'Skaraborgs Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3331, 196, N'SE-06', N'Hallands Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3332, 196, N'SE-07', N'Jamtlands Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3333, 196, N'SE-08', N'Jonkopings Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3334, 196, N'SE-09', N'Kalmar Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3335, 196, N'SE-11', N'Kristianstads Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3336, 196, N'SE-12', N'Kronobergs Lan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3337, 198, N'SH-01', N'Ascension')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3338, 198, N'SH-02', N'Saint Helena')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3339, 198, N'SH-03', N'Tristan da Cunha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3340, 199, N'SI-01', N'Ajdovscina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3341, 199, N'SI-02', N'Beltinci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3342, 199, N'SI-03', N'Bled')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3343, 199, N'SI-04', N'Bohinj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3344, 199, N'SI-05', N'Borovnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3345, 199, N'SI-06', N'Bovec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3346, 199, N'SI-F1', N'Zelezniki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3347, 199, N'SI-F2', N'Ziri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3348, 199, N'SI-F3', N'Zrece')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3349, 199, N'SI-N3', N'Vojnik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3350, 199, N'SI-E5', N'Vrhnika')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3351, 199, N'SI-E6', N'Vuzenica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3352, 199, N'SI-E7', N'Zagorje ob Savi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3353, 199, N'SI-N5', N'Zalec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3354, 199, N'SI-E9', N'Zavrc')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3355, 199, N'SI-D7', N'Velenje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3356, 199, N'SI-D8', N'Velike Lasce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3357, 199, N'SI-N2', N'Videm')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3358, 199, N'SI-E1', N'Vipava')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3359, 199, N'SI-E2', N'Vitanje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3360, 199, N'SI-E3', N'Vodice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3361, 199, N'SI-D1', N'Sveti Jurij')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3362, 199, N'SI-D2', N'Tolmin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3363, 199, N'SI-D3', N'Trbovlje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3364, 199, N'SI-D4', N'Trebnje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3365, 199, N'SI-D5', N'Trzic')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3366, 199, N'SI-D6', N'Turnisce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3367, 199, N'SI-C4', N'Slovenske Konjice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3368, 199, N'SI-C5', N'Smarje pri Jelsah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3369, 199, N'SI-C6', N'Smartno ob Paki')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3370, 199, N'SI-C7', N'Sostanj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3371, 199, N'SI-C8', N'Starse')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3372, 199, N'SI-C9', N'Store')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3373, 199, N'SI-B7', N'Sezana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3374, 199, N'SI-B8', N'Skocjan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3375, 199, N'SI-B9', N'Skofja Loka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3376, 199, N'SI-C1', N'Skofljica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3377, 199, N'SI-C2', N'Slovenj Gradec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3378, 199, N'SI-L8', N'Slovenska Bistrica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3379, 199, N'SI-B1', N'Semic')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3380, 199, N'SI-B2', N'Sencur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3381, 199, N'SI-B3', N'Sentilj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3382, 199, N'SI-B4', N'Sentjernej')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3383, 199, N'SI-L7', N'Sentjur pri Celju')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3384, 199, N'SI-B6', N'Sevnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3385, 199, N'SI-A3', N'Radovljica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3386, 199, N'SI-L1', N'Ribnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3387, 199, N'SI-A7', N'Rogaska Slatina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3388, 199, N'SI-A6', N'Rogasovci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3389, 199, N'SI-A8', N'Rogatec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3390, 199, N'SI-L3', N'Ruse')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3391, 199, N'SI-K7', N'Ptuj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3392, 199, N'SI-97', N'Puconci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3393, 199, N'SI-98', N'Racam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3394, 199, N'SI-99', N'Radece')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3395, 199, N'SI-A1', N'Radenci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3396, 199, N'SI-A2', N'Radlje ob Dravi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3397, 199, N'SI-89', N'Pesnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3398, 199, N'SI-J9', N'Piran')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3399, 199, N'SI-91', N'Pivka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3400, 199, N'SI-92', N'Podcetrtek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3401, 199, N'SI-94', N'Postojna')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3402, 199, N'SI-K5', N'Preddvor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3403, 199, N'SI-83', N'Nazarje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3404, 199, N'SI-84', N'Nova Gorica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3405, 199, N'SI-J7', N'Novo Mesto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3406, 199, N'SI-86', N'Odranci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3407, 199, N'SI-87', N'Ormoz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3408, 199, N'SI-88', N'Osilnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3409, 199, N'SI-77', N'Moravce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3410, 199, N'SI-78', N'Moravske Toplice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3411, 199, N'SI-79', N'Mozirje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3412, 199, N'SI-80', N'Murska Sobota')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3413, 199, N'SI-81', N'Muta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3414, 199, N'SI-82', N'Naklo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3415, 199, N'SI-71', N'Medvode')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3416, 199, N'SI-72', N'Menges')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3417, 199, N'SI-73', N'Metlika')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3418, 199, N'SI-74', N'Mezica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3419, 199, N'SI-J5', N'Miren-Kostanjevica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3420, 199, N'SI-76', N'Mislinja')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3421, 199, N'SI-I7', N'Loska Dolina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3422, 199, N'SI-66', N'Loski Potok')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3423, 199, N'SI-I9', N'Luce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3424, 199, N'SI-68', N'Lukovica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3425, 199, N'SI-J1', N'Majsperk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3426, 199, N'SI-J2', N'Maribor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3427, 199, N'SI-I3', N'Lenart')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3428, 199, N'SI-I5', N'Litija')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3429, 199, N'SI-61', N'Ljubljana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3430, 199, N'SI-62', N'Ljubno')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3431, 199, N'SI-I6', N'Ljutomer')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3432, 199, N'SI-64', N'Logatec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3433, 199, N'SI-52', N'Kranj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3434, 199, N'SI-53', N'Kranjska Gora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3435, 199, N'SI-54', N'Krsko')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3436, 199, N'SI-55', N'Kungota')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3437, 199, N'SI-I2', N'Kuzma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3438, 199, N'SI-57', N'Lasko')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3439, 199, N'SI-46', N'Kobarid')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3440, 199, N'SI-47', N'Kobilje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3441, 199, N'SI-H7', N'Kocevje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3442, 199, N'SI-49', N'Komen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3443, 199, N'SI-50', N'Koper-Capodistria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3444, 199, N'SI-51', N'Kozje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3445, 199, N'SI-40', N'Izola-Isola')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3446, 199, N'SI-H4', N'Jesenice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3447, 199, N'SI-42', N'Jursinci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3448, 199, N'SI-H6', N'Kamnik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3449, 199, N'SI-44', N'Kanal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3450, 199, N'SI-45', N'Kidricevo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3451, 199, N'SI-34', N'Hrastnik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3452, 199, N'SI-35', N'Hrpelje-Kozina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3453, 199, N'SI-36', N'Idrija')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3454, 199, N'SI-37', N'Ig')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3455, 199, N'SI-38', N'Ilirska Bistrica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3456, 199, N'SI-39', N'Ivancna Gorica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3457, 199, N'SI-27', N'Gorenja Vas-Poljane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3458, 199, N'SI-28', N'Gorisnica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3459, 199, N'SI-29', N'Gornja Radgona')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3460, 199, N'SI-30', N'Gornji Grad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3461, 199, N'SI-31', N'Gornji Petrovci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3462, 199, N'SI-32', N'Grosuplje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3463, 199, N'SI-G4', N'Dobrova-Horjul-Polhov Gradec')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3464, 199, N'SI-22', N'Dol pri Ljubljani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3465, 199, N'SI-G7', N'Domzale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3466, 199, N'SI-24', N'Dornava')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3467, 199, N'SI-25', N'Dravograd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3468, 199, N'SI-26', N'Duplek')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3469, 199, N'SI-14', N'Cerkno')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3470, 199, N'SI-15', N'Crensovci')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3471, 199, N'SI-16', N'Crna na Koroskem')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3472, 199, N'SI-17', N'Crnomelj')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3473, 199, N'SI-19', N'Divaca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3474, 199, N'SI-20', N'Dobrepolje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3475, 199, N'SI-07', N'Brda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3476, 199, N'SI-08', N'Brezice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3477, 199, N'SI-09', N'Brezovica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3478, 199, N'SI-11', N'Celje')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3479, 199, N'SI-12', N'Cerklje na Gorenjskem')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3480, 199, N'SI-13', N'Cerknica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3481, 201, N'SK-01', N'Banska Bystrica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3482, 201, N'SK-02', N'Bratislava')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3483, 201, N'SK-03', N'Kosice')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3484, 201, N'SK-04', N'Nitra')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3485, 201, N'SK-05', N'Presov')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3486, 201, N'SK-06', N'Trencin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3487, 201, N'SK-07', N'Trnava')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3488, 201, N'SK-08', N'Zilina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3489, 202, N'SL-01', N'Eastern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3490, 202, N'SL-02', N'Northern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3491, 202, N'SL-03', N'Southern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3492, 202, N'SL-04', N'Western Area')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3493, 203, N'SM-01', N'Acquaviva')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3494, 203, N'SM-06', N'Borgo Maggiore')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3495, 203, N'SM-02', N'Chiesanuova')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3496, 203, N'SM-03', N'Domagnano')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3497, 203, N'SM-04', N'Faetano')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3498, 203, N'SM-05', N'Fiorentino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3499, 203, N'SM-08', N'Monte Giardino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3500, 203, N'SM-07', N'San Marino')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3501, 203, N'SM-09', N'Serravalle')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3502, 204, N'SN-01', N'Dakar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3503, 204, N'SN-03', N'Diourbel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3504, 204, N'SN-09', N'Fatick')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3505, 204, N'SN-10', N'Kaolack')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3506, 204, N'SN-11', N'Kolda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3507, 204, N'SN-08', N'Louga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3508, 204, N'SN-04', N'Saint-Louis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3509, 204, N'SN-05', N'Tambacounda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3510, 204, N'SN-07', N'Thies')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3511, 204, N'SN-12', N'Ziguinchor')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3512, 205, N'SO-01', N'Bakool')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3513, 205, N'SO-02', N'Banaadir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3514, 205, N'SO-03', N'Bari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3515, 205, N'SO-04', N'Bay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3516, 205, N'SO-05', N'Galguduud')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3517, 205, N'SO-06', N'Gedo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3518, 205, N'SO-13', N'Shabeellaha Dhexe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3519, 205, N'SO-14', N'Shabeellaha Hoose')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3520, 205, N'SO-15', N'Togdheer')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3521, 205, N'SO-16', N'Woqooyi Galbeed')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3522, 205, N'SO-07', N'Hiiraan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3523, 205, N'SO-08', N'Jubbada Dhexe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3524, 205, N'SO-09', N'Jubbada Hoose')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3525, 205, N'SO-10', N'Mudug')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3526, 205, N'SO-11', N'Nugaal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3527, 205, N'SO-12', N'Sanaag')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3528, 206, N'SR-10', N'Brokopondo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3529, 206, N'SR-11', N'Commewijne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3530, 206, N'SR-12', N'Coronie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3531, 206, N'SR-13', N'Marowijne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3532, 206, N'SR-14', N'Nickerie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3533, 206, N'SR-15', N'Para')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3534, 206, N'SR-16', N'Paramaribo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3535, 206, N'SR-17', N'Saramacca')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3536, 206, N'SR-18', N'Sipaliwini')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3537, 206, N'SR-19', N'Wanica')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3538, 207, N'ST-01', N'Principe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3539, 207, N'ST-02', N'Sao Tome')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3540, 208, N'SV-01', N'Ahuachapan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3541, 208, N'SV-02', N'Cabanas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3542, 208, N'SV-03', N'Chalatenango')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3543, 208, N'SV-04', N'Cuscatlan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3544, 208, N'SV-05', N'La Libertad')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3545, 208, N'SV-06', N'La Paz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3546, 208, N'SV-13', N'Sonsonate')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3547, 208, N'SV-14', N'Usulutan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3548, 208, N'SV-07', N'La Union')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3549, 208, N'SV-08', N'Morazan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3550, 208, N'SV-09', N'San Miguel')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3551, 208, N'SV-10', N'San Salvador')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3552, 208, N'SV-12', N'San Vicente')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3553, 208, N'SV-11', N'Santa Ana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3554, 209, N'SY-01', N'Al Hasakah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3555, 209, N'SY-02', N'Al Ladhiqiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3556, 209, N'SY-03', N'Al Qunaytirah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3557, 209, N'SY-04', N'Ar Raqqah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3558, 209, N'SY-05', N'As Suwayda''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3559, 209, N'SY-06', N'Dar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3560, 209, N'SY-08', N'Rif Dimashq')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3561, 209, N'SY-14', N'Tartus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3562, 209, N'SY-07', N'Dayr az Zawr')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3563, 209, N'SY-13', N'Dimashq')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3564, 209, N'SY-09', N'Halab')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3565, 209, N'SY-10', N'Hamah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3566, 209, N'SY-11', N'Hims')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3567, 209, N'SY-12', N'Idlib')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3568, 210, N'SZ-01', N'Hhohho')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3569, 210, N'SZ-02', N'Lubombo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3570, 210, N'SZ-03', N'Manzini')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3571, 210, N'SZ-05', N'Praslin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3572, 210, N'SZ-04', N'Shiselweni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3573, 212, N'TD-01', N'Batha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3574, 212, N'TD-02', N'Biltine')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3575, 212, N'TD-03', N'Borkou-Ennedi-Tibesti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3576, 212, N'TD-04', N'Chari-Baguirmi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3577, 212, N'TD-05', N'Guera')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3578, 212, N'TD-06', N'Kanem')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3579, 212, N'TD-13', N'Salamat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3580, 212, N'TD-14', N'Tandjile')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3581, 212, N'TD-07', N'Lac')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3582, 212, N'TD-08', N'Logone Occidental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3583, 212, N'TD-09', N'Logone Oriental')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3584, 212, N'TD-10', N'Mayo-Kebbi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3585, 212, N'TD-11', N'Moyen-Chari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3586, 212, N'TD-12', N'Ouaddai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3587, 214, N'TG-01', N'Amlame')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3588, 214, N'TG-02', N'Aneho')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3589, 214, N'TG-03', N'Atakpame')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3590, 214, N'TG-15', N'Badou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3591, 214, N'TG-04', N'Bafilo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3592, 214, N'TG-05', N'Bassar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3593, 214, N'TG-20', N'Tchaoudjo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3594, 214, N'TG-18', N'Tsevie')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3595, 214, N'TG-21', N'Vogan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3596, 214, N'TG-11', N'Mango')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3597, 214, N'TG-12', N'Niamtougou')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3598, 214, N'TG-13', N'Notse')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3599, 214, N'TG-16', N'Sotouboua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3600, 214, N'TG-17', N'Tabligbo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3601, 214, N'TG-19', N'Tchamba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3602, 214, N'TG-06', N'Dapaong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3603, 214, N'TG-07', N'Kante')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3604, 214, N'TG-08', N'Klouto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3605, 214, N'TG-14', N'Kpagouda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3606, 214, N'TG-09', N'Lama-Kara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3607, 214, N'TG-10', N'Lome')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3608, 215, N'TH-70', N'Yala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3609, 215, N'TH-72', N'Yasothon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3610, 215, N'TH-65', N'Trang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3611, 215, N'TH-49', N'Trat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3612, 215, N'TH-75', N'Ubon Ratchathani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3613, 215, N'TH-76', N'Udon Thani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3614, 215, N'TH-15', N'Uthai Thani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3615, 215, N'TH-10', N'Uttaradit')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3616, 215, N'TH-68', N'Songkhla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3617, 215, N'TH-09', N'Sukhothai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3618, 215, N'TH-51', N'Suphan Buri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3619, 215, N'TH-60', N'Surat Thani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3620, 215, N'TH-29', N'Surin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3621, 215, N'TH-08', N'Tak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3622, 215, N'TH-55', N'Samut Sakhon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3623, 215, N'TH-54', N'Samut Songkhram')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3624, 215, N'TH-37', N'Saraburi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3625, 215, N'TH-67', N'Satun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3626, 215, N'TH-33', N'Sing Buri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3627, 215, N'TH-30', N'Sisaket')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3628, 215, N'TH-59', N'Ranong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3629, 215, N'TH-52', N'Ratchaburi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3630, 215, N'TH-47', N'Rayong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3631, 215, N'TH-25', N'Roi Et')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3632, 215, N'TH-20', N'Sakon Nakhon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3633, 215, N'TH-42', N'Samut Prakan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3634, 215, N'TH-12', N'Phitsanulok')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3635, 215, N'TH-36', N'Phra Nakhon Si Ayutthaya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3636, 215, N'TH-07', N'Phrae')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3637, 215, N'TH-62', N'Phuket')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3638, 215, N'TH-45', N'Prachin Buri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3639, 215, N'TH-57', N'Prachuap Khiri Khan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3640, 215, N'TH-61', N'Phangnga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3641, 215, N'TH-66', N'Phatthalung')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3642, 215, N'TH-41', N'Phayao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3643, 215, N'TH-14', N'Phetchabun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3644, 215, N'TH-56', N'Phetchaburi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3645, 215, N'TH-13', N'Phichit')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3646, 215, N'TH-04', N'Nan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3647, 215, N'TH-31', N'Narathiwat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3648, 215, N'TH-17', N'Nong Khai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3649, 215, N'TH-38', N'Nonthaburi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3650, 215, N'TH-39', N'Pathum Thani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3651, 215, N'TH-69', N'Pattani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3652, 215, N'TH-43', N'Nakhon Nayok')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3653, 215, N'TH-53', N'Nakhon Pathom')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3654, 215, N'TH-21', N'Nakhon Phanom')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3655, 215, N'TH-27', N'Nakhon Ratchasima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3656, 215, N'TH-16', N'Nakhon Sawan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3657, 215, N'TH-64', N'Nakhon Si Thammarat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3658, 215, N'TH-05', N'Lamphun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3659, 215, N'TH-18', N'Loei')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3660, 215, N'TH-34', N'Lop Buri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3661, 215, N'TH-01', N'Mae Hong Son')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3662, 215, N'TH-24', N'Maha Sarakham')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3663, 215, N'TH-78', N'Mukdahan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3664, 215, N'TH-11', N'Kamphaeng Phet')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3665, 215, N'TH-50', N'Kanchanaburi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3666, 215, N'TH-22', N'Khon Kaen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3667, 215, N'TH-63', N'Krabi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3668, 215, N'TH-40', N'Krung Thep')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3669, 215, N'TH-06', N'Lampang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3670, 215, N'TH-48', N'Chanthaburi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3671, 215, N'TH-02', N'Chiang Mai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3672, 215, N'TH-03', N'Chiang Rai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3673, 215, N'TH-46', N'Chon Buri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3674, 215, N'TH-58', N'Chumphon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3675, 215, N'TH-23', N'Kalasin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3676, 215, N'TH-35', N'Ang Thong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3677, 215, N'TH-28', N'Buriram')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3678, 215, N'TH-44', N'Chachoengsao')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3679, 215, N'TH-32', N'Chai Nat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3680, 215, N'TH-26', N'Chaiyaphum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3681, 216, N'TJ-02', N'Khatlon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3682, 216, N'TJ-01', N'Kuhistoni Badakhshon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3683, 216, N'TJ-03', N'Sughd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3684, 219, N'TM-01', N'Ahal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3685, 219, N'TM-02', N'Balkan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3686, 219, N'TM-03', N'Dashoguz')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3687, 219, N'TM-04', N'Lebap')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3688, 219, N'TM-05', N'Mary')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3689, 220, N'TN-15', N'Al Mahdiyah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3690, 220, N'TN-16', N'Al Munastir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3691, 220, N'TN-02', N'Al Qasrayn')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3692, 220, N'TN-03', N'Al Qayrawan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3693, 220, N'TN-38', N'Ariana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3694, 220, N'TN-17', N'Bajah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3695, 220, N'TN-22', N'Silyanah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3696, 220, N'TN-23', N'Susah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3697, 220, N'TN-34', N'Tatawin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3698, 220, N'TN-35', N'Tawzar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3699, 220, N'TN-36', N'Tunis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3700, 220, N'TN-37', N'Zaghwan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3701, 220, N'TN-19', N'Nabul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3702, 220, N'TN-29', N'Qabis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3703, 220, N'TN-10', N'Qafsah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3704, 220, N'TN-31', N'Qibili')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3705, 220, N'TN-32', N'Safaqis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3706, 220, N'TN-33', N'Sidi Bu Zayd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3707, 220, N'TN-18', N'Banzart')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3708, 220, N'TN-27', N'Bin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3709, 220, N'TN-06', N'Jundubah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3710, 220, N'TN-14', N'Kef')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3711, 220, N'TN-28', N'Madanin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3712, 220, N'TN-39', N'Manouba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3713, 221, N'TO-01', N'Ha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3714, 221, N'TO-02', N'Tongatapu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3715, 221, N'TO-03', N'Vava')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3716, 222, N'TR-81', N'Adana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3717, 222, N'TR-02', N'Adiyaman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3718, 222, N'TR-03', N'Afyon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3719, 222, N'TR-04', N'Agri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3720, 222, N'TR-75', N'Aksaray')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3721, 222, N'TR-05', N'Amasya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3722, 222, N'TR-92', N'Yalova')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3723, 222, N'TR-66', N'Yozgat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3724, 222, N'TR-85', N'Zonguldak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3725, 222, N'TR-59', N'Tekirdag')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3726, 222, N'TR-60', N'Tokat')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3727, 222, N'TR-61', N'Trabzon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3728, 222, N'TR-62', N'Tunceli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3729, 222, N'TR-64', N'Usak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3730, 222, N'TR-65', N'Van')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3731, 222, N'TR-55', N'Samsun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3732, 222, N'TR-63', N'Sanliurfa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3733, 222, N'TR-74', N'Siirt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3734, 222, N'TR-57', N'Sinop')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3735, 222, N'TR-80', N'Sirnak')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3736, 222, N'TR-58', N'Sivas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3737, 222, N'TR-50', N'Nevsehir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3738, 222, N'TR-73', N'Nigde')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3739, 222, N'TR-52', N'Ordu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3740, 222, N'TR-91', N'Osmaniye')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3741, 222, N'TR-53', N'Rize')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3742, 222, N'TR-54', N'Sakarya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3743, 222, N'TR-43', N'Kutahya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3744, 222, N'TR-44', N'Malatya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3745, 222, N'TR-45', N'Manisa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3746, 222, N'TR-72', N'Mardin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3747, 222, N'TR-48', N'Mugla')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3748, 222, N'TR-49', N'Mus')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3749, 222, N'TR-90', N'Kilis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3750, 222, N'TR-79', N'Kirikkale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3751, 222, N'TR-39', N'Kirklareli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3752, 222, N'TR-40', N'Kirsehir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3753, 222, N'TR-41', N'Kocaeli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3754, 222, N'TR-71', N'Konya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3755, 222, N'TR-46', N'Kahramanmaras')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3756, 222, N'TR-89', N'Karabuk')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3757, 222, N'TR-78', N'Karaman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3758, 222, N'TR-84', N'Kars')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3759, 222, N'TR-37', N'Kastamonu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3760, 222, N'TR-38', N'Kayseri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3761, 222, N'TR-31', N'Hatay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3762, 222, N'TR-32', N'Icel / Mersin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3763, 222, N'TR-88', N'Igdir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3764, 222, N'TR-33', N'Isparta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3765, 222, N'TR-34', N'Istanbul')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3766, 222, N'TR-35', N'Izmir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3767, 222, N'TR-25', N'Erzurum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3768, 222, N'TR-26', N'Eskisehir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3769, 222, N'TR-83', N'Gaziantep')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3770, 222, N'TR-28', N'Giresun')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3771, 222, N'TR-69', N'Gumushane')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3772, 222, N'TR-70', N'Hakkari')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3773, 222, N'TR-20', N'Denizli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3774, 222, N'TR-21', N'Diyarbakir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3775, 222, N'TR-93', N'Duzce')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3776, 222, N'TR-22', N'Edirne')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3777, 222, N'TR-23', N'Elazig')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3778, 222, N'TR-24', N'Erzincan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3779, 222, N'TR-14', N'Bolu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3780, 222, N'TR-15', N'Burdur')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3781, 222, N'TR-16', N'Bursa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3782, 222, N'TR-17', N'Canakkale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3783, 222, N'TR-82', N'Cankiri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3784, 222, N'TR-19', N'Corum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3785, 222, N'TR-87', N'Bartin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3786, 222, N'TR-76', N'Batman')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3787, 222, N'TR-77', N'Bayburt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3788, 222, N'TR-11', N'Bilecik')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3789, 222, N'TR-12', N'Bingol')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3790, 222, N'TR-13', N'Bitlis')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3791, 222, N'TR-68', N'Ankara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3792, 222, N'TR-07', N'Antalya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3793, 222, N'TR-86', N'Ardahan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3794, 222, N'TR-08', N'Artvin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3795, 222, N'TR-09', N'Aydin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3796, 222, N'TR-10', N'Balikesir')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3797, 223, N'TT-01', N'Arima')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3798, 223, N'TT-02', N'Caroni')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3799, 223, N'TT-03', N'Mayaro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3800, 223, N'TT-04', N'Nariva')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3801, 223, N'TT-05', N'Port-of-Spain')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3802, 223, N'TT-06', N'Saint Andrew')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3803, 223, N'TT-07', N'Saint David')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3804, 223, N'TT-08', N'Saint George')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3805, 223, N'TT-09', N'Saint Patrick')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3806, 223, N'TT-10', N'San Fernando')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3807, 223, N'TT-11', N'Tobago')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3808, 223, N'TT-12', N'Victoria')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3809, 225, N'TW-01', N'Fu-chien')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3810, 225, N'TW-02', N'Kao-hsiung')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3811, 225, N'TW-03', N'T''ai-pei')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3812, 225, N'TW-04', N'T''ai-wan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3813, 226, N'TZ-01', N'Arusha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3814, 226, N'TZ-23', N'Dar es Salaam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3815, 226, N'TZ-03', N'Dodoma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3816, 226, N'TZ-04', N'Iringa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3817, 226, N'TZ-19', N'Kagera')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3818, 226, N'TZ-05', N'Kigoma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3819, 226, N'TZ-25', N'Zanzibar Urban')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3820, 226, N'TZ-15', N'Shinyanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3821, 226, N'TZ-16', N'Singida')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3822, 226, N'TZ-17', N'Tabora')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3823, 226, N'TZ-18', N'Tanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3824, 226, N'TZ-21', N'Zanzibar Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3825, 226, N'TZ-22', N'Zanzibar North')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3826, 226, N'TZ-12', N'Mwanza')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3827, 226, N'TZ-13', N'Pemba North')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3828, 226, N'TZ-20', N'Pemba South')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3829, 226, N'TZ-02', N'Pwani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3830, 226, N'TZ-24', N'Rukwa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3831, 226, N'TZ-14', N'Ruvuma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3832, 226, N'TZ-06', N'Kilimanjaro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3833, 226, N'TZ-07', N'Lindi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3834, 226, N'TZ-08', N'Mara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3835, 226, N'TZ-09', N'Mbeya')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3836, 226, N'TZ-10', N'Morogoro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3837, 226, N'TZ-11', N'Mtwara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3838, 227, N'UA-01', N'Cherkas''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3839, 227, N'UA-02', N'Chernihivs''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3840, 227, N'UA-03', N'Chernivets''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3841, 227, N'UA-04', N'Dnipropetrovs''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3842, 227, N'UA-05', N'Donets''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3843, 227, N'UA-06', N'Ivano-Frankivs''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3844, 227, N'UA-25', N'Zakarpats''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3845, 227, N'UA-26', N'Zaporiz''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3846, 227, N'UA-27', N'Zhytomyrs''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3847, 227, N'UA-19', N'Rivnens''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3848, 227, N'UA-20', N'Sevastopol''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3849, 227, N'UA-21', N'Sums''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3850, 227, N'UA-22', N'Ternopil''s''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3851, 227, N'UA-23', N'Vinnyts''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3852, 227, N'UA-24', N'Volyns''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3853, 227, N'UA-13', N'Kyyivs''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3854, 227, N'UA-15', N'L''vivs''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3855, 227, N'UA-14', N'Luhans''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3856, 227, N'UA-16', N'Mykolayivs''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3857, 227, N'UA-17', N'Odes''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3858, 227, N'UA-18', N'Poltavs''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3859, 227, N'UA-07', N'Kharkivs''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3860, 227, N'UA-08', N'Khersons''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3861, 227, N'UA-09', N'Khmel''nyts''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3862, 227, N'UA-10', N'Kirovohrads''ka Oblast''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3863, 227, N'UA-11', N'Krym')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3864, 227, N'UA-12', N'Kyyiv')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3865, 228, N'UG-65', N'Adjumani')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3866, 228, N'UG-77', N'Arua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3867, 228, N'UG-66', N'Bugiri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3868, 228, N'UG-67', N'Busia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3869, 228, N'UG-05', N'Busoga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3870, 228, N'UG-18', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3871, 228, N'UG-25', N'Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3872, 228, N'UG-97', N'Yumbe')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3873, 228, N'UG-74', N'Sembabule')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3874, 228, N'UG-94', N'Sironko')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3875, 228, N'UG-95', N'Soroti')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3876, 228, N'UG-12', N'South Buganda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3877, 228, N'UG-24', N'Southern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3878, 228, N'UG-96', N'Wakiso')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3879, 228, N'UG-73', N'Nakasongola')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3880, 228, N'UG-21', N'Nile')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3881, 228, N'UG-22', N'North Buganda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3882, 228, N'UG-23', N'Northern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3883, 228, N'UG-92', N'Pader')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3884, 228, N'UG-93', N'Rukungiri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3885, 228, N'UG-86', N'Mayuge')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3886, 228, N'UG-87', N'Mbale')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3887, 228, N'UG-88', N'Moroto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3888, 228, N'UG-89', N'Mpigi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3889, 228, N'UG-90', N'Mukono')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3890, 228, N'UG-91', N'Nakapiripirit')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3891, 228, N'UG-82', N'Kanungu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3892, 228, N'UG-08', N'Karamoja')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3893, 228, N'UG-69', N'Katakwi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3894, 228, N'UG-83', N'Kayunga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3895, 228, N'UG-84', N'Kitgum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3896, 228, N'UG-85', N'Kyenjojo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3897, 228, N'UG-20', N'Eastern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3898, 228, N'UG-78', N'Iganga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3899, 228, N'UG-79', N'Kabarole')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3900, 228, N'UG-80', N'Kaberamaido')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3901, 228, N'UG-37', N'Kampala')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3902, 228, N'UG-81', N'Kamwenge')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3903, 230, N'US-AL', N'Alabama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3904, 230, N'US-AK', N'Alaska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3905, 230, N'US-AS', N'American Samoa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3906, 230, N'US-AZ', N'Arizona')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3907, 230, N'US-A', N'Arkansas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3908, 230, N'US-AA', N'Armed Forces Americas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3909, 230, N'US-WI', N'Wisconsin')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3910, 230, N'US-WY', N'Wyoming')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3911, 230, N'US-UT', N'Utah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3912, 230, N'US-VT', N'Vermont')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3913, 230, N'US-VI', N'Virgin Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3914, 230, N'US-VA', N'Virginia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3915, 230, N'US-WA', N'Washington')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3916, 230, N'US-WV', N'West Virginia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3917, 230, N'US-P', N'Puerto Rico')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3918, 230, N'US-RI', N'Rhode Island')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3919, 230, N'US-SC', N'South Carolina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3920, 230, N'US-SD', N'South Dakota')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3921, 230, N'US-TN', N'Tennessee')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3922, 230, N'US-TX', N'Texas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3923, 230, N'US-MP', N'Northern Mariana Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3924, 230, N'US-OH', N'Ohio')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3925, 230, N'US-OK', N'Oklahoma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3926, 230, N'US-O', N'Oregon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3927, 230, N'US-PW', N'Palau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3928, 230, N'US-PA', N'Pennsylvania')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3929, 230, N'US-NH', N'New Hampshire')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3930, 230, N'US-NJ', N'New Jersey')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3931, 230, N'US-NM', N'New Mexico')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3932, 230, N'US-NY', N'New York')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3933, 230, N'US-NC', N'North Carolina')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3934, 230, N'US-ND', N'North Dakota')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3935, 230, N'US-MN', N'Minnesota')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3936, 230, N'US-MS', N'Mississippi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3937, 230, N'US-MO', N'Missouri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3938, 230, N'US-MT', N'Montana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3939, 230, N'US-NE', N'Nebraska')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3940, 230, N'US-NV', N'Nevada')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3941, 230, N'US-LA', N'Louisiana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3942, 230, N'US-ME', N'Maine')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3943, 230, N'US-MH', N'Marshall Islands')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3944, 230, N'US-MD', N'Maryland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3945, 230, N'US-MA', N'Massachusetts')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3946, 230, N'US-MI', N'Michigan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3947, 230, N'US-ID', N'Idaho')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3948, 230, N'US-IL', N'Illinois')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3949, 230, N'US-IN', N'Indiana')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3950, 230, N'US-IA', N'Iowa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3951, 230, N'US-KS', N'Kansas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3952, 230, N'US-KY', N'Kentucky')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3953, 230, N'US-DC', N'District of Columbia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3954, 230, N'US-FM', N'Federated States of Micronesia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3955, 230, N'US-FL', N'Florida')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3956, 230, N'US-GA', N'Georgia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3957, 230, N'US-GU', N'Guam')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3958, 230, N'US-HI', N'Hawaii')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3959, 230, N'US-AE', N'Armed Forces Europe, Middle East, & Canada')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3960, 230, N'US-AP', N'Armed Forces Pacific')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3961, 230, N'US-CA', N'California')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3962, 230, N'US-CO', N'Colorado')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3963, 230, N'US-CT', N'Connecticut')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3964, 230, N'US-DE', N'Delaware')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3965, 231, N'UY-01', N'Artigas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3966, 231, N'UY-02', N'Canelones')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3967, 231, N'UY-03', N'Cerro Largo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3968, 231, N'UY-04', N'Colonia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3969, 231, N'UY-05', N'Durazno')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3970, 231, N'UY-06', N'Flores')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3971, 231, N'UY-19', N'Treinta y Tres')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3972, 231, N'UY-13', N'Rivera')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3973, 231, N'UY-14', N'Rocha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3974, 231, N'UY-15', N'Salto')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3975, 231, N'UY-16', N'San Jose')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3976, 231, N'UY-17', N'Soriano')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3977, 231, N'UY-18', N'Tacuarembo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3978, 231, N'UY-07', N'Florida')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3979, 231, N'UY-08', N'Lavalleja')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3980, 231, N'UY-09', N'Maldonado')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3981, 231, N'UY-10', N'Montevideo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3982, 231, N'UY-11', N'Paysandu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3983, 231, N'UY-12', N'Rio Negro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3984, 232, N'UZ-01', N'Andijon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3985, 232, N'UZ-02', N'Bukhoro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3986, 232, N'UZ-03', N'Farghona')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3987, 232, N'UZ-04', N'Jizzakh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3988, 232, N'UZ-05', N'Khorazm')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3989, 232, N'UZ-06', N'Namangan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3990, 232, N'UZ-13', N'Toshkent')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3991, 232, N'UZ-07', N'Nawoiy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3992, 232, N'UZ-08', N'Qashqadaryo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3993, 232, N'UZ-09', N'Qoraqalpoghiston')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3994, 232, N'UZ-10', N'Samarqand')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3995, 232, N'UZ-11', N'Sirdaryo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3996, 232, N'UZ-12', N'Surkhondaryo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3997, 234, N'VC-01', N'Charlotte')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3998, 234, N'VC-06', N'Grenadines')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (3999, 234, N'VC-02', N'Saint Andrew')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4000, 234, N'VC-03', N'Saint David')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4001, 234, N'VC-04', N'Saint George')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4002, 234, N'VC-05', N'Saint Patrick')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4003, 235, N'VE-01', N'Amazonas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4004, 235, N'VE-02', N'Anzoategui')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4005, 235, N'VE-03', N'Apure')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4006, 235, N'VE-04', N'Aragua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4007, 235, N'VE-05', N'Barinas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4008, 235, N'VE-06', N'Bolivar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4009, 235, N'VE-23', N'Zulia')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4010, 235, N'VE-18', N'Portuguesa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4011, 235, N'VE-19', N'Sucre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4012, 235, N'VE-20', N'Tachira')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4013, 235, N'VE-21', N'Trujillo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4014, 235, N'VE-26', N'Vargas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4015, 235, N'VE-22', N'Yaracuy')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4016, 235, N'VE-12', N'Guarico')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4017, 235, N'VE-13', N'Lara')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4018, 235, N'VE-14', N'Merida')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4019, 235, N'VE-15', N'Miranda')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4020, 235, N'VE-16', N'Monagas')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4021, 235, N'VE-17', N'Nueva Esparta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4022, 235, N'VE-07', N'Carabobo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4023, 235, N'VE-08', N'Cojedes')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4024, 235, N'VE-09', N'Delta Amacuro')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4025, 235, N'VE-24', N'Dependencias Federales')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4026, 235, N'VE-25', N'Distrito Federal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4027, 235, N'VE-11', N'Falcon')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4028, 238, N'VN-43', N'An Giang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4029, 238, N'VN-53', N'Ba Ria-Vung Tau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4030, 238, N'VN-02', N'Bac Thai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4031, 238, N'VN-03', N'Ben Tre')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4032, 238, N'VN-54', N'Binh Dinh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4033, 238, N'VN-55', N'Binh Thuan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4034, 238, N'VN-75', N'Tra Vinh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4035, 238, N'VN-76', N'Tuyen Quang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4036, 238, N'VN-77', N'Vinh Long')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4037, 238, N'VN-50', N'Vinh Phu')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4038, 238, N'VN-78', N'Yen Bai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4039, 238, N'VN-49', N'Song Be')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4040, 238, N'VN-33', N'Tay Ninh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4041, 238, N'VN-35', N'Thai Binh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4042, 238, N'VN-34', N'Thanh Hoa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4043, 238, N'VN-74', N'Thua Thien')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4044, 238, N'VN-37', N'Tien Giang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4045, 238, N'VN-29', N'Quang Nam-Da Nang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4046, 238, N'VN-71', N'Quang Ngai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4047, 238, N'VN-30', N'Quang Ninh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4048, 238, N'VN-72', N'Quang Tri')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4049, 238, N'VN-73', N'Soc Trang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4050, 238, N'VN-32', N'Son La')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4051, 238, N'VN-65', N'Nam Ha')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4052, 238, N'VN-66', N'Nghe An')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4053, 238, N'VN-67', N'Ninh Binh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4054, 238, N'VN-68', N'Ninh Thuan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4055, 238, N'VN-69', N'Phu Yen')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4056, 238, N'VN-70', N'Quang Binh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4057, 238, N'VN-22', N'Lai Chau')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4058, 238, N'VN-23', N'Lam Dong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4059, 238, N'VN-39', N'Lang Son')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4060, 238, N'VN-64', N'Lao Cai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4061, 238, N'VN-24', N'Long An')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4062, 238, N'VN-48', N'Minh Hai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4063, 238, N'VN-13', N'Hai Phong')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4064, 238, N'VN-52', N'Ho Chi Minh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4065, 238, N'VN-61', N'Hoa Binh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4066, 238, N'VN-62', N'Khanh Hoa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4067, 238, N'VN-47', N'Kien Giang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4068, 238, N'VN-63', N'Kon Tum')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4069, 238, N'VN-11', N'Ha Bac')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4070, 238, N'VN-58', N'Ha Giang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4071, 238, N'VN-51', N'Ha Noi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4072, 238, N'VN-59', N'Ha Tay')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4073, 238, N'VN-60', N'Ha Tinh')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4074, 238, N'VN-12', N'Hai Hung')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4075, 238, N'VN-56', N'Can Tho')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4076, 238, N'VN-05', N'Cao Bang')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4077, 238, N'VN-44', N'Dac Lac')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4078, 238, N'VN-45', N'Dong Nai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4079, 238, N'VN-46', N'Dong Thap')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4080, 238, N'VN-57', N'Gia Lai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4081, 239, N'VU-05', N'Ambrym')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4082, 239, N'VU-07', N'Torba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4083, 239, N'VU-17', N'Penama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4084, 239, N'VU-12', N'Pentecote')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4085, 239, N'VU-13', N'Sanma')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4086, 239, N'VU-18', N'Shefa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4087, 239, N'VU-14', N'Shepherd')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4088, 239, N'VU-15', N'Tafea')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4089, 239, N'VU-06', N'Aoba')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4090, 239, N'VU-08', N'Efate')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4091, 239, N'VU-09', N'Epi')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4092, 239, N'VU-10', N'Malakula')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4093, 239, N'VU-16', N'Malampa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4094, 239, N'VU-11', N'Paama')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4095, 241, N'WS-02', N'Aiga-i-le-Tai')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4096, 241, N'WS-03', N'Atua')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4097, 241, N'WS-04', N'Fa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4098, 241, N'WS-05', N'Gaga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4099, 241, N'WS-07', N'Gagaifomauga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4100, 241, N'WS-08', N'Palauli')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4101, 241, N'WS-09', N'Satupa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4102, 241, N'WS-10', N'Tuamasaga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4103, 241, N'WS-06', N'Va')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4104, 241, N'WS-11', N'Vaisigano')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4105, 242, N'YE-01', N'Abyan')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4106, 242, N'YE-20', N'Al Bayda''')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4107, 242, N'YE-08', N'Al Hudaydah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4108, 242, N'YE-21', N'Al Jawf')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4109, 242, N'YE-03', N'Al Mahrah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4110, 242, N'YE-10', N'Al Mahwit')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4111, 242, N'YE-15', N'Sa')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4112, 242, N'YE-16', N'San')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4113, 242, N'YE-05', N'Shabwah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4114, 242, N'YE-25', N'Ta')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4115, 242, N'YE-11', N'Dhamar')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4116, 242, N'YE-04', N'Hadramawt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4117, 242, N'YE-22', N'Hajjah')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4118, 242, N'YE-23', N'Ibb')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4119, 242, N'YE-24', N'Lahij')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4120, 242, N'YE-14', N'Ma''rib')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4121, 244, N'ZA-05', N'Eastern Cape')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4122, 244, N'ZA-03', N'Free State')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4123, 244, N'ZA-06', N'Gauteng')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4124, 244, N'ZA-02', N'KwaZulu-Natal')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4125, 244, N'ZA-09', N'Limpopo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4126, 244, N'ZA-07', N'Mpumalanga')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4127, 244, N'ZA-10', N'North-West')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4128, 244, N'ZA-08', N'Northern Cape')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4129, 244, N'ZA-11', N'Western Cape')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4130, 245, N'ZM-02', N'Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4131, 245, N'ZM-08', N'Copperbelt')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4132, 245, N'ZM-03', N'Eastern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4133, 245, N'ZM-04', N'Luapula')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4134, 245, N'ZM-09', N'Lusaka')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4135, 245, N'ZM-06', N'North-Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4136, 245, N'ZM-05', N'Northern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4137, 245, N'ZM-07', N'Southern')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4138, 245, N'ZM-01', N'Western')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4139, 246, N'ZW-09', N'Bulawayo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4140, 246, N'ZW-10', N'Harare')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4141, 246, N'ZW-01', N'Manicaland')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4142, 246, N'ZW-03', N'Mashonaland Central')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4143, 246, N'ZW-04', N'Mashonaland East')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4144, 246, N'ZW-05', N'Mashonaland West')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4145, 246, N'ZW-08', N'Masvingo')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4146, 246, N'ZW-06', N'Matabeleland North')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4147, 246, N'ZW-07', N'Matabeleland South')
GO
INSERT [dbo].[Region] ([Id], [CountryId], [ISO], [Name]) VALUES (4148, 246, N'ZW-02', N'Midlands')
GO
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Country]
GO
