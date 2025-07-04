USE [master]
GO
CREATE DATABASE [webgaming]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webgaming].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webgaming] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webgaming] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webgaming] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webgaming] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webgaming] SET ARITHABORT OFF 
GO
ALTER DATABASE [webgaming] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [webgaming] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webgaming] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webgaming] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webgaming] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webgaming] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webgaming] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webgaming] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webgaming] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webgaming] SET  ENABLE_BROKER 
GO
ALTER DATABASE [webgaming] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webgaming] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webgaming] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webgaming] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webgaming] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webgaming] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webgaming] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webgaming] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [webgaming] SET  MULTI_USER 
GO
ALTER DATABASE [webgaming] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webgaming] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webgaming] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webgaming] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webgaming] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webgaming] SET QUERY_STORE = OFF
GO
USE [webgaming]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DateImport] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Picture] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[EmailAddress] [char](100) NULL,
	[Phone] [varchar](15) NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[PurcharsePrice] [decimal](18, 0) NULL,
	[SellPrice] [decimal](18, 0) NOT NULL,
	[DateImport] [datetime] NULL,
	[Quantity] [int] NULL,
	[TypeID] [bigint] NULL,
	[BrandID] [bigint] NULL,
	[Picture] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[ShortTitle] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Link] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Orderdate] [datetime] NULL,
	[Deliverystatus] [bit] NULL,
	[Deliverydate] [datetime] NULL,
	[Status] [bit] NULL,
	[Totalprice] [decimal](18, 0) NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ItemId] [bigint] NULL,
	[OrderID] [bigint] NULL,
	[Totalprice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 5/4/2023 2:01:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Payprices] [decimal](18, 0) NULL,
	[OrderID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Passwords], [Name], [Picture]) VALUES (N'Admin', N'1', N'Nguyen Van Admin', N'hinh.png')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (1, N'laptop-sieu-nhe-gigabyte-u4-khuyen-mai-soc-len-den-8-trieu-dong-vi1655466865.jpg')
INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (2, N'he-toi-sam-gear-moi-vi1654044536.png')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (1, N'Hàng có sẵn', 1)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (2, N'Hàng Order', 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (3, N'quanghuy', N'123456', N'Bùi Quang Huy', N'Hà Nội', N'quanghuy@gmail.com                                                                                  ', N'0394073514', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (1, N'Card MSI Radeon', CAST(1000000 AS Decimal(18, 0)), CAST(1100000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 198, 3, 1, N'resizer.jpg', 1, N'MSI đã chào đón bằng hình ảnh của một card MSI ARMOR sắp ra mắt dựa trên Radeon RX 6600 SKU', N'<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">MSI đ&atilde; trở lại với series ARMOR</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">MSI đ&atilde; ch&agrave;o đ&oacute;n bằng h&igrave;nh ảnh của một card MSI ARMOR sắp ra mắt dựa tr&ecirc;n Radeon RX 6600 SKU. Đ&acirc;y kh&ocirc;ng chỉ l&agrave; card&nbsp;ARMOR đầu ti&ecirc;n trong d&ograve;ng Radeon RX 6000 m&agrave; c&ograve;n trong to&agrave;n bộ d&ograve;ng RDNA.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Cũng giống như tất cả c&aacute;c mẫu Radeon RX 6600, thẻ n&agrave;y kh&ocirc;ng được &eacute;p xung tại nh&agrave; m&aacute;y. AMD r&otilde; r&agrave;ng đ&atilde; khuyến kh&iacute;ch tất cả c&aacute;c đối t&aacute;c bo mạch kh&ocirc;ng ph&aacute;t h&agrave;nh phi&ecirc;n bản thiết kế RX 6600 c&oacute; th&ocirc;ng số kỹ thuật cao hơn, điều n&agrave;y thật đ&aacute;ng tiếc nhưng cần thiết để tr&aacute;nh tự cạnh tranh giữa c&aacute;c SKU d&agrave;nh cho m&aacute;y t&iacute;nh để b&agrave;n Navi 23.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 1000px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1000px;" src="https://gearshop.vn/upload/images/Product/MSI/VGA/MSI%20Radeon%20RX%206600%20ARMOR%208G/MSI-Radeon-RX-6600-ARMOR-8G-(2).jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Điều ngạc nhi&ecirc;n</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Điều c&oacute; thể g&acirc;y ngạc nhi&ecirc;n l&agrave; RX 6600 ARMOR V1 sử dụng thiết kế tản nhiệt rất cũ, chưa từng thấy kể từ d&ograve;ng AMD Polaris (đ&atilde; hơn 3 năm). C&ocirc;ng ty đ&atilde; tung ra c&aacute;c mẫu Armor cập nhật với d&ograve;ng GeForce RTX 20 SUPER v&agrave;o khoảng năm 2019, nhưng đ&oacute; l&agrave; trước khi MSI tập trung v&agrave;o d&ograve;ng MECH mới của m&igrave;nh trong tương lai.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">N&oacute;i về d&ograve;ng MECH, c&oacute; vẻ như thẻ ARMOR thực sự dựa tr&ecirc;n RX 6600 XT MECH 2X V1, kh&ocirc;ng phải MECH 2X được ph&aacute;t h&agrave;nh sau đ&oacute;. Ch&uacute;ng t&ocirc;i đang đề cập đến RX 6600 XT ở đ&acirc;y đặc biệt v&igrave; phi&ecirc;n bản V1 kh&ocirc;ng được ra mắt cho RX 6600.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Thẻ dựa tr&ecirc;n GPU Navi 23 XL với 1792 Bộ xử l&yacute; d&ograve;ng. N&oacute; được trang bị bộ nhớ GDDR6 8GB v&agrave; c&oacute; đầu nối nguồn 8 ch&acirc;n ti&ecirc;u chuẩn (cho SKU n&agrave;y)</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 1000px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1000px;" src="https://gearshop.vn/upload/images/Product/MSI/VGA/MSI%20Radeon%20RX%206600%20ARMOR%208G/MSI-Radeon-RX-6600-ARMOR-8G-(3).jpg" alt="" /></p>
<p>&nbsp;</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (2, N'Acer Nitro 5 Tiger', CAST(2000000 AS Decimal(18, 0)), CAST(2990000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 200, 2, 2, N'resizer.png', 1, N'Acer Nitro 5 có thiết kế dành cho game thủ bình dân điển hình, với vẻ ngoài bằng nhựa và phối màu đen và đỏ', N'<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Th&ocirc;ng số kỹ thuật</span></h2>
<table id="tblGeneralAttribute" style="border-spacing: 0px; background-color: #ffffff; width: 975.031px; max-width: 100%; margin-bottom: 1.236rem; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-size: 14px; letter-spacing: -0.14px;" border="1" cellspacing="0">
<tbody style="box-sizing: border-box; margin-bottom: 0px;">
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">CPU</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">Intel Core i7-12700H&nbsp;3.6GHz up to 4.9GHz 25MB</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">RAM</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">&Ocirc;̉ cứng</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">512GB PCIe NVMe SED SSD&nbsp;(C&ograve;n trống 1 khe SSD M.2 PCIE v&agrave; 1 khe&nbsp;2.5" SATA)</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Card đồ họa</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">NVIDIA GeForce RTX&trade; 3050Ti 4GB GDDR6</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">M&agrave;n h&igrave;nh</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">15.6" FHD (1920 x 1080) IPS, 144Hz, Acer ComfyView LED-backlit TFT LCD,&nbsp;SlimBezel</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Cổng giao tiếp</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">1x USB 3.2 Gen 2 Type-C Ports (supporting:&nbsp;USB 3.2 Gen 2 (up to 10 Gbps);&nbsp;DisplayPort over USB-C;&nbsp;Thunderbolt 4;&nbsp;USB charging 5 V; 3 A;&nbsp;DC-in port 20 V; 65 W)<br style="box-sizing: border-box;" />1x USB 3.2 Gen 2 port featuring power-off USB charging<br style="box-sizing: border-box;" />1x USB 3.2 Gen 2 port<br style="box-sizing: border-box;" />1x USB 3.2 Gen 1 port<br style="box-sizing: border-box;" />1x Ethernet (RJ-45) port<br style="box-sizing: border-box;" />1x HDMI&reg;2.1 port with HDCP support<br style="box-sizing: border-box;" />1x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone<br style="box-sizing: border-box; margin-bottom: 0px;" />1x DC-in jack for AC adapter</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Ổ quang</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">None</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Audio</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">DTS&reg; X:Ultra</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Led-Keyboard</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">RGB 4 v&ugrave;ng</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Đọc thẻ nhớ</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">None</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Chu&acirc;̉n LAN</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">KillerTM Ethernet E2600</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Chuẩn WIFI</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">KillerTM Wi-Fi 6 AX 1650i (2x2)</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Bluetooth</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">v5.1</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Webcam</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">720p HD audio/video recording</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Hệ điều h&agrave;nh</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">Windows 11 Home</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Pin</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">4 Cell 57.5WHr</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Trọng lượng</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">2.5 kg</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">M&agrave;u sắc</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">Obsidian Black</td>
</tr>
<tr style="box-sizing: border-box; margin-bottom: 0px;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">Kích thước</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">360.4 x 271.09 x 25.9 mm</td>
</tr>
</tbody>
</table>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: auto !important; max-width: 100%; display: block; margin: 10px auto 0px; width: 780.016px;" src="https://gearshop.vn/upload/images/Product/Acer/Laptop/Acer%20Nitro%205%202021/Tiger%20AN515-58-773Y/Laptop-Acer-Nitro-5-Tiger-AN515-58-773Y1.png" alt="" /></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (3, N'Gigabyte B660M D3H DDR4', CAST(4000000 AS Decimal(18, 0)), CAST(5500000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 40, 4, 1, N'resizer (1).jpg', 1, N'Mainboard Gigabyte B660M D3H DDR4', N'<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Th&ocirc;ng số kỹ thuật</span></h2>
<table style="border-spacing: 0px; background-color: #ffffff; width: 975.031px; max-width: 100%; margin-bottom: 0px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-size: 14px; letter-spacing: -0.14px;" border="1">
<tbody style="box-sizing: border-box; margin-bottom: 0px;">
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">Sản ph&acirc;̉m</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">Bo mạch chủ</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">T&ecirc;n Hãng</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">Gigabyte&nbsp;</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">Model</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">B660M D3H DDR4</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">CPU hỗ trợ</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">Intel</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">Chipset</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">B660</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">RAM hỗ trợ</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">Support for DDR4 3200/3000/2933/2666/2400/2133 MHz memory modules<br style="box-sizing: border-box; margin-bottom: 0px;" />4 x DDR DIMM sockets supporting up to 128 GB (32 GB single DIMM capacity) of system memory</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">Khe cắm mở rộng</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x PCI Express x16 slot, running at x16 (PCIEX16)<br style="box-sizing: border-box;" />1 x PCI Express x16 slot, running at x4 (PCIEX4)<br style="box-sizing: border-box;" />1 x PCI Express x1 slot<br style="box-sizing: border-box; margin-bottom: 0px;" />1 x PCI slot</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">Ổ cứng hỗ trợ</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">CPU:</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x M.2 connector (Socket 3, M key, type 2260/2280/22110 PCIe 4.0 x4/x2 SSD support) (M2A_CPU)</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">Chipset:</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x M.2 connector (Socket 3, M key, type 2260/2280 PCIe 4.0 x4/x2 SSD support) (M2P_SB)</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">4 x SATA 6Gb/s connectors</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">Support for RAID 0, RAID 1, RAID 5, and RAID 10</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">Cổng kết nối (Internal)</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x 24-pin ATX main power connector</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x 8-pin ATX 12V power connector</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x CPU fan header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">3 x system fan headers</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x addressable LED strip header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x RGB LED strip header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">2 x M.2 Socket 3 connectors</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">4 x SATA 6Gb/s connectors</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x front panel header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x front panel audio header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x USB 3.2 Gen 1 header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">2 x USB 2.0/1.1 headers</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x S/PDIF Out header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">2 x Thunderbolt&trade; add-in card connectors</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x Trusted Platform Module header (For the GC-TPM2.0 SPI/GC-TPM2.0 SPI 2.0 module only)</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x serial port header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x parallel port header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x serial port header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x parallel port header</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x reset button</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x Q-Flash Plus button</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x reset jumper</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x Clear CMOS jumper</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">Cổng kết nối (Back Panel)</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x PS/2 keyboard/mouse port</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x USB Type-C&reg;&nbsp;port, with USB 3.2 Gen 2 support</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x USB 3.2 Gen 2 Type-A port (red)</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">2 x USB 3.2 Gen 1 ports</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">2 x USB 2.0/1.1 ports</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x D-Sub port</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x HDMI port</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">2 x DisplayPorts</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 733.547px; font-size: 15px !important;">1 x RJ-45 port</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">6 x audio jacks</p>
</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">LAN / Wireless</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">Realtek&reg;&nbsp;2.5GbE LAN chip (2.5 Gbps/1 Gbps/100 Mbps)</p>
</td>
</tr>
<tr style="box-sizing: border-box; margin-bottom: 0px;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 190.484px; font-size: 15px !important;">K&iacute;ch cỡ</p>
</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 733.547px; font-size: 15px !important;">Micro ATX Form Factor; 24.4cm x 24.4cm</p>
</td>
</tr>
</tbody>
</table>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (4, N'AMD Ryzen 5 4600G', CAST(2000000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 300, 5, 1, N'AMD-Ryzen-5-4600G.jpg', 1, N'CPU AMD Ryzen 5 4600G (3,7 GHz Boost 4,2 GHz | 6 Cores / 12 Threads | PCIe 3.0)', N'<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Đ&aacute;nh gi&aacute; AMD Ryzen 5 4600G&nbsp;</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">CPU AMD Ryzen 5 4600G</span>&nbsp;l&agrave; con chip chỉ OEM độc quyền của AMD d&agrave;nh cho m&aacute;y t&iacute;nh để b&agrave;n. Dựa tr&ecirc;n kiến ​​tr&uacute;c Zen 2 của AMD, 4600G được ra mắt v&agrave;o th&aacute;ng 7 năm 2020. 4600G c&oacute; hiệu suất tốt hơn một ch&uacute;t so với 4600H. 4600G c&oacute; 6 l&otilde;i v&agrave; 12 luồng với xung nhịp cơ bản l&agrave; 3,7 GHz v&agrave; c&oacute; thể tăng l&ecirc;n đến 4,2 GHz. Con chip n&agrave;y dựa tr&ecirc;n vi kiến ​​tr&uacute;c Zen 2 được sản xuất tr&ecirc;n quy tr&igrave;nh 7 nm bởi TSMC. TDP của con chip n&agrave;y được AMD chỉ định l&agrave; 65 Watts v&agrave; được t&iacute;ch hợp với Vega 7 Graphics.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 800px; max-width: 100%; display: block; margin: 10px auto 0px; width: 800px;" src="https://gearshop.vn/upload/images/Product/AMD/Ryzen%204000%20Series/AMD-Ryzen-5-4600G.jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Hiệu suất</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">CPU AMD Ryzen 5 4600G&nbsp;</span>l&agrave; qu&aacute; đủ cho c&aacute;c t&aacute;c vụ h&agrave;ng ng&agrave;y của bạn như Duyệt web, Ph&aacute;t trực tuyến v&agrave; sử dụng c&aacute;c ứng dụng văn ph&ograve;ng năng suất với nhiều kh&ocirc;ng gian cho đa nhiệm. Giờ đ&acirc;y, nếu quy tr&igrave;nh l&agrave;m việc h&agrave;ng ng&agrave;y của bạn li&ecirc;n quan đến việc sử dụng c&aacute;c ứng dụng chỉnh sửa video, chỉnh sửa ảnh v&agrave; 3D, th&igrave; AMD Ryzen 5 4600G 6 l&otilde;i l&agrave; một bộ xử l&yacute; rất c&oacute; năng lực v&agrave; c&oacute; thể dễ d&agrave;ng xử l&yacute; khối lượng c&ocirc;ng việc như vậy.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Chơi game đỉnh cao</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">CPU AMD Ryzen 5 4600G</span>&nbsp;được trang bị đồ họa Vega 7 c&oacute; hiệu suất tương đương với Nvidia Mx250 với bộ nhớ đồ họa 2GB v&agrave; đồ họa thấp hơn Vega 8 một ch&uacute;t v&agrave; c&oacute; khả năng chơi game ở c&agrave;i đặt trung b&igrave;nh với tốc độ khung h&igrave;nh kh&aacute;. Điều đ&oacute; c&oacute; nghĩa l&agrave; hiệu suất của Đồ họa Vega 7 phụ thuộc v&agrave;o một số yếu tố như TDP được cấu h&igrave;nh (12-25 Watts), Tốc độ xung nhịp, Giải ph&aacute;p l&agrave;m m&aacute;t v&agrave; cấu h&igrave;nh RAM.</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (5, N'VGS Imperium i7 9750H', CAST(22000000 AS Decimal(18, 0)), CAST(25000000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 300, 1, 2, N'resizer (1).png', 1, N'VGS Imperium i7 9750H| RTX 2070 MaxQ 8Gb| RAM 16Gb| 512Gb', N'<div id="tab-description" class="electro-tab" style="box-sizing: border-box; margin-bottom: 3.357em; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-size: 14px; letter-spacing: -0.14px;">
<div class="container" style="box-sizing: border-box; padding-right: 0.9375rem; padding-left: 0.9375rem; margin-right: auto; margin-left: auto; max-width: 1200px; margin-bottom: 0px;">
<div class="tab-content" style="box-sizing: border-box; background-color: #ffffff; padding: 2.571em 97.4844px; margin-bottom: 0px;">
<div class="electro-description" style="box-sizing: border-box; margin-bottom: 0px; overflow: hidden;">
<table style="border-spacing: 0px; background-color: transparent; width: 227px; max-width: 100%; margin-bottom: 0px; line-height: inherit;" border="0" width="226" cellspacing="0" cellpadding="0">
<tbody style="box-sizing: border-box; margin-bottom: 0px;">
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 227px;" colspan="2" height="18">Bộ Vi Xử L&yacute;</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Vi Xử L&yacute;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 54px; width: 64px;" height="54">C&ocirc;ng nghệ CPU</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">Coffee Lake - thế hệ thứ 9</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Vi Xử L&yacute;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 36px; width: 64px;" height="36">Loại CPU</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">Intel&reg; Core&trade; i7-9750H</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Vi Xử L&yacute;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 36px; width: 64px;" height="36">Số nh&acirc;n / luồng</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">6 nh&acirc;n 12 luồng</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Vi Xử L&yacute;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 18px; width: 64px;" height="18">L3 Cache</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">12 MB Intel&reg; Smart Cache</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Vi Xử L&yacute;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Tốc độ CPU</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">2.60 GHz</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Vi Xử L&yacute;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 54px; width: 64px;" height="54">Tốc độ tối đa ( Turbo )</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">4.50 GHz</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 36px; width: 227px;" colspan="2" height="36">M&agrave;n H&igrave;nh</td>
</tr>
<tr style="box-sizing: border-box;" data-title="M&agrave;n H&igrave;nh">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 54px; width: 64px;" height="54">K&iacute;ch thước m&agrave;n h&igrave;nh</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">15,6-inch</td>
</tr>
<tr style="box-sizing: border-box;" data-title="M&agrave;n H&igrave;nh">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Độ ph&acirc;n giải</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">Full HD 1920x1080 px</td>
</tr>
<tr style="box-sizing: border-box;" data-title="M&agrave;n H&igrave;nh">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 103px; width: 64px;" rowspan="5" height="102">C&ocirc;ng nghệ m&agrave;n h&igrave;nh</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">đ&egrave;n nền LED với c&ocirc;ng nghệ IPS, tỉ lệ 16:9 hỗ trợ 16,8 triệu m&agrave;u</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 19px; width: 163px;" height="19">Flicker-Free</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 19px; width: 163px;" height="19">Độ s&aacute;ng 300 nits</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">Tốc độ l&agrave;m mới 144Hz</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">Thời gian đ&aacute;p ứng 3ms GTG</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 227px;" colspan="2" height="18">Bộ Nhớ, RAM, Ổ Cứng</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Nhớ, RAM, Ổ Cứng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 73px; width: 64px;" rowspan="3" height="72">SSD</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">512Gb M.2 22x80 PCIe x4 NVMe</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 27px; width: 163px;" height="27">1 x M.2 22x80 PCIe x4 NVMe or SATA SSD (c&ograve;n trống)</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 27px; width: 163px;" height="27">Hỗ trợ c&ocirc;ng nghệ Intel&reg; Optane&trade;</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Nhớ, RAM, Ổ Cứng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 18px; width: 64px;" height="18">RAM</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">16 GB</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Nhớ, RAM, Ổ Cứng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Loại RAM</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">DDR4</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Nhớ, RAM, Ổ Cứng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Số khe cắm RAM</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">2 khe</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Nhớ, RAM, Ổ Cứng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Tốc độ Bus RAM</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">2666MHz</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Bộ Nhớ, RAM, Ổ Cứng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 53px; width: 64px;" height="53">Hỗ trợ RAM tối đa</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">64 GB</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Đồ Hoạ v&agrave; &Acirc;m Thanh">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">VGA</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">NVIDIA&reg; GeForce&reg; RTX 2070 MaxQ 8Gb GDDR6</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Đồ Hoạ v&agrave; &Acirc;m Thanh">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 64px; width: 64px;" rowspan="3" height="63">C&ocirc;ng nghệ &acirc;m thanh</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">Realtek&reg; ALC269M với Intel&reg; HD Audio</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">2 loa 2W</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">2 micro kỹ thuật số</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 73px; width: 64px;" rowspan="3" height="72">Kết nối kh&ocirc;ng d&acirc;y</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">Mạng kh&ocirc;ng d&acirc;y Wi-Fi 6 802.11ax</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 27px; width: 163px;" height="27">Tương th&iacute;ch IEEE 802.11a/b/g/n/ac</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 27px; width: 163px;" height="27">C&ocirc;ng nghệ kh&ocirc;ng d&acirc;y Bluetooth 5.0</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Webcam</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">Camera hồng ngoại HD hỗ trợ Windows Hello</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Khe đọc thẻ nhớ</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">SD (SD/SDHC/SDXC)</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 88px; width: 64px;" height="88">Windows Hello (Mở kho&aacute; khu&ocirc;n mặt)</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">&nbsp;YES</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 123px; width: 64px;" rowspan="5" height="122">Loại b&agrave;n ph&iacute;m</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">B&agrave;n ph&iacute;m cơ quang học với đ&egrave;n nền RGB từng ph&iacute;m</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">H&agrave;nh tr&igrave;nh ph&iacute;m 2mm</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 41px; width: 163px;" height="41">Cảm gi&aacute;c ph&iacute;m bấm: Silent với Tactile bump, tương tự như Brown switch</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">Thời gian đ&aacute;p ứng 0.2ms</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">Hỗ trợ N-key Rollover</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 59px; width: 64px;" rowspan="2" height="59">Multi-touch Trackpad</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">B&agrave;n di chuột phủ k&iacute;nh hỗ trợ Microsoft Precision Touchpad Driver</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">T&ugrave;y chọn bật/tắt với đ&egrave;n LED</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 46px; width: 64px;" rowspan="2" height="45">USB 3.0</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">1 x USB 3.1 (Gen 2) Type A (hỗ trợ sạc)</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">2 x USB 3.1 (Gen 1) Type A</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 53px; width: 64px;" height="53">USB-C Thunderbolt 3</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">1 x Thunderbolt 3 (USB Type C hỗ trợ DisplayPort)</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 18px; width: 64px;" height="18">HDMI</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">&nbsp;</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 18px; width: 64px;" height="18">RJ45</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">&nbsp;</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 53px; width: 64px;" height="53">3.5mm Audio Jack</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">&nbsp;</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Cổng Kết Nối v&agrave; T&iacute;nh Năng Mở Rộng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Microphone in</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">&nbsp;</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 227px;" colspan="2" height="18">Hệ Điều H&agrave;nh</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Hệ Điều H&agrave;nh">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Hệ điều h&agrave;nh</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">Kh&ocirc;ng c&oacute;</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 227px;" colspan="2" height="18">Pin</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Pin">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 55px; width: 64px;" rowspan="3" height="54">Th&ocirc;ng tin Pin</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">Chế độ Battery Saver: ~10,75 giờ</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">Chế độ Balanced: ~10,5 giờ</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">Chế độ Performance: ~9,75 giờ</td>
</tr>
<tr style="box-sizing: border-box;" data-title="Pin">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 46px; width: 64px;" rowspan="2" height="45">Loại PIN</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">94WHr (8200mAh) với Fast Charge Support</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: 1.5; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 163px;" height="18">Bộ chuyển đổi điện 230W</td>
</tr>
<tr style="box-sizing: border-box;">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; height: 18px; width: 227px;" colspan="2" height="18">K&iacute;ch Thước v&agrave; Trọng Lượng</td>
</tr>
<tr style="box-sizing: border-box;" data-title="K&iacute;ch Thước v&agrave; Trọng Lượng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 35px; width: 64px;" height="35">Trọng lượng</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">1.85 kg</td>
</tr>
<tr style="box-sizing: border-box;" data-title="K&iacute;ch Thước v&agrave; Trọng Lượng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 18px; width: 64px;" height="18">Chất liệu</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">Hợp kim Magnesium</td>
</tr>
<tr style="box-sizing: border-box; margin-bottom: 0px;" data-title="K&iacute;ch Thước v&agrave; Trọng Lượng">
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; height: 88px; width: 64px;" height="88">K&iacute;ch thước (D&agrave;i x Rộng x D&agrave;y)</td>
<td style="box-sizing: border-box; padding: 0.75rem; line-height: inherit; vertical-align: top; border-top-color: #eceeef; margin-bottom: 0px; width: 163px;">356.4 x 233.6 x 20.5 mm</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
<div id="tab-kythuat" class="electro-tab" style="box-sizing: border-box; margin-bottom: 3.357em; color: #333e48; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-size: 14px; letter-spacing: -0.14px;">
<div class="container" style="box-sizing: border-box; padding-right: 0.9375rem; padding-left: 0.9375rem; margin-right: auto; margin-left: auto; max-width: 1200px;">
<div class="tab-content" style="box-sizing: border-box; background-color: #ffffff; padding: 2.571em 97.4844px;">
<ul class="ec-tabs" style="box-sizing: border-box; margin: 0px -2em 35px; padding-left: 0px; list-style: none; text-align: center; border-bottom: 1px solid #dddddd;">
<li class="description_tab active" style="box-sizing: border-box; display: inline-block;">Th&ocirc;ng số kỹ thuật</li>
</ul>
<div class="electro-description" style="box-sizing: border-box; margin-bottom: 20px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; font-size: 15px !important;">C&ocirc;ng ty c&ocirc;ng nghệ VGS đ&atilde; hợp t&aacute;c với Intel ra mắt chiếc laptop gaming mang thương hiệu Việt c&oacute; t&ecirc;n l&agrave; Imperium, với thiết kế đẹp mắt v&agrave; hiệu năng thực sự ấn tượng.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; font-size: 15px !important;">&nbsp;</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">Thiết kế đẹp mắt</span></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; font-size: 15px !important;">M&aacute;y được chế t&aacute;c từ hợp kim Magnesium, với hai m&agrave;u ho&agrave;n thiện l&agrave; Black v&agrave; Gunmetal thể hiện được n&eacute;t sang trọng v&agrave; hiện đại.&nbsp; M&aacute;y c&oacute; thiết kế mỏng nhẹ với trọng lượng chỉ 1,85Kg v&agrave; mỏng 20.5mm đảm bảo t&iacute;nh di động cao, dễ d&agrave;ng mang theo đến mọi nơi để sử dụng.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; font-size: 15px !important;">M&aacute;y sẽ c&oacute; dải đ&egrave;n LED RGB ph&iacute;a b&ecirc;n dưới, vừa l&agrave; l&agrave;m trang tr&iacute;, vừa b&aacute;o trạng th&aacute;i sạc cũng như bạn c&oacute; thể t&ugrave;y chỉnh th&ecirc;m ph&iacute;a b&ecirc;n trong Control Center.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 447px; max-width: 100%; display: block; margin: 10px auto; width: 800px;" src="https://gearshop.vn/upload/files/Laptop/VGS/Imperium/gearshop-vgs-imperium-1-ok.jpg" alt="" /></p>
</div>
</div>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (6, N'GSPC Aphrodite', CAST(4000000 AS Decimal(18, 0)), CAST(5500000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 300, 6, 1, N'GSPC-Aphrodite.png', 1, N'GSPC Aphrodite (i5 12400f - B660M - 8GB - RTX 3050 - 256GB)', N'<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; color: #7d7d7d; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">T&ecirc;n bộ m&aacute;y:&nbsp;</span>PC Gaming GS - GSPC Aphrodite&nbsp;</p>
<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; color: #7d7d7d; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">Cấu h&igrave;nh chi tiết:</span></p>
<ul style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; line-height: 25px; color: #7d7d7d; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-size: 14px; letter-spacing: -0.14px; background-color: #ffffff;">
<li style="box-sizing: border-box;">
<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">CPU:&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0275d8; text-decoration-line: none; touch-action: manipulation;" href="https://gearshop.vn/cpu-intel-core-i5-12400f">Intel Core i5 12400F</a></p>
</li>
<li style="box-sizing: border-box;">
<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">Main:&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0275d8; text-decoration-line: none; touch-action: manipulation;" href="https://gearshop.vn/mainboard-gigabyte-b660m-ds3h-ddr4">Gigabyte B660M DS3H DDR4</a></p>
</li>
<li style="box-sizing: border-box;">
<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">RAM:&nbsp;</span>XLR8 - 1x8GB DDR4 3200MHz</p>
</li>
<li style="box-sizing: border-box;">
<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">SSD:&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0275d8; text-decoration-line: none; touch-action: manipulation;" href="https://gearshop.vn/ssd-patriot-p300-256gb-m2-nvme-pcie-gen3x4">SSD Patriot P300 256Gb</a></p>
</li>
<li style="box-sizing: border-box;">
<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">VGA:&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0275d8; text-decoration-line: none; touch-action: manipulation;" href="https://gearshop.vn/vga-colorful-igame-geforce-rtx-3050-ultra-w-oc-8g-3-fan">Colorful iGame GeForce RTX 3050 Ultra W OC 8G - 3 Fan</a></p>
</li>
<li style="box-sizing: border-box;">
<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">Case:&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0275d8; text-decoration-line: none; touch-action: manipulation;" href="https://gearshop.vn/vo-case-mik-tn10-san-3-fan-rgb">Vỏ Case MIK TN10</a></p>
</li>
<li style="box-sizing: border-box;">
<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">PSU:&nbsp;</span><a style="box-sizing: border-box; background-color: transparent; color: #0275d8; text-decoration-line: none; touch-action: manipulation;" href="https://gearshop.vn/nguon-may-tinh-segotep-sg-750ae-ap650w-80plus">SEGOTEP SG-750AE</a></p>
</li>
</ul>
<p dir="ltr" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; line-height: 25px; color: #7d7d7d; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Bộ m&aacute;y trang bị Bộ vi xử l&yacute; đời mới nhất - Intel Gen 12th, cấu h&igrave;nh gi&aacute; tốt, phục vụ tốt c&aacute;c t&aacute;c vụ Render, Đồ họa; chơi c&aacute;c tựa game y&ecirc;u cầu cấu h&igrave;nh cao. Đ&aacute;p ứng tốt c&aacute;c nhu cầu về học Online, t&aacute;c vụ văn ph&ograve;ng kh&aacute;c&nbsp;</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (7, N'Case NZXT H510 FLOW', CAST(2000000 AS Decimal(18, 0)), CAST(4100000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 299, 7, 1, N'resizer (2).jpg', 1, N'Tên sản phẩm: Case NZXT H510 FLOW WHITE Hỗ trợ mainboad: Mini-ITX, MicroATX, and ATX', N'<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Đặc trưng của Case</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Nh&igrave;n nhanh xung quanh H510 Flow, bạn sẽ thấy kiểu d&aacute;ng của n&oacute; rất đơn giản - rất h&igrave;nh chữ nhật, kh&ocirc;ng c&oacute; g&igrave; ngo&agrave;i c&aacute;c đường n&eacute;t r&otilde; r&agrave;ng v&agrave; một bảng điều khiển bằng k&iacute;nh m&agrave;u, gọn g&agrave;ng.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 546px; max-width: 100%; display: block; margin: 10px auto 0px; width: 970px;" src="https://gearshop.vn/upload/images/Product/NZXT/H510/FLOW%20WHITE/NZXT-H510-FLOW-WHITE-(6).jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">IO của vỏ m&aacute;y ở tr&ecirc;n c&ugrave;ng v&agrave; bao gồm giắc cắm kết hợp tai nghe / mic, cổng USB Loại C v&agrave; cổng USB 3.0 Loại A. Với mức gi&aacute; ban đầu l&agrave; 80 đ&ocirc; la, đ&acirc;y l&agrave; một kết nối tuyệt vời, nhưng ở mức gi&aacute; mới l&agrave; 110 đ&ocirc; la, &iacute;t nhất t&ocirc;i cũng mong đợi một cổng USB 3.0 Type-A thứ hai.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 546px; max-width: 100%; display: block; margin: 10px auto 0px; width: 970px;" src="https://gearshop.vn/upload/images/Product/NZXT/H510/FLOW%20WHITE/NZXT-H510-FLOW-WHITE-(5).jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Lưới h&uacute;t gi&oacute; ph&iacute;a trước cung cấp lỗ thủng lớn xa hoa, nhưng ph&iacute;a sau n&oacute; c&oacute; một bộ lọc để đảm bảo hệ thống của bạn kh&ocirc;ng qu&aacute; bẩn. V&agrave; PSU c&oacute; bộ lọc ri&ecirc;ng k&eacute;o ra từ ph&iacute;a sau th&ugrave;ng m&aacute;y.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Bộ cục nội bộ</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Nh&igrave;n v&agrave;o b&ecirc;n trong hộp, đ&acirc;y cũng l&agrave; một trong những trường hợp ATX đơn giản nhất, c&oacute; ngăn tr&ecirc;n lớn để chứa vừa bo mạch chủ ATX, GPU d&agrave;i tới 14,5 inch (360mm) v&agrave; bộ l&agrave;m m&aacute;t CPU cao tới 6,5 inch (165 mm).</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 546px; max-width: 100%; display: block; margin: 10px auto 0px; width: 970px;" src="https://gearshop.vn/upload/images/Product/NZXT/H510/FLOW%20WHITE/NZXT-H510-FLOW-WHITE-(2).jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Ở mặt trước của vỏ, bạn sẽ c&oacute; thể lắp tối đa hai quạt 140mm hoặc bộ tản nhiệt 280mm v&agrave; gi&aacute; đỡ c&oacute; thể th&aacute;o rời để lắp đặt dễ d&agrave;ng. Ống xả ph&iacute;a sau hỗ trợ một quạt 120mm v&agrave; ph&iacute;a tr&ecirc;n c&oacute; thể hỗ trợ một ống xả 140mm. Hai quạt Aer F 120mm được bao gồm, được lắp đặt tại c&aacute;c vị tr&iacute; h&uacute;t v&agrave; xả.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 546px; max-width: 100%; display: block; margin: 10px auto 0px; width: 970px;" src="https://gearshop.vn/upload/images/Product/NZXT/H510/FLOW%20WHITE/NZXT-H510-FLOW-WHITE-(3).jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Nhưng điều n&agrave;y vẫn chưa ho&agrave;n th&agrave;nh v&agrave; t&ocirc;i gặp sự cố với ống xả ph&iacute;a tr&ecirc;n. Kh&ocirc;ng chỉ kh&ocirc;ng đủ chỗ cho AIO 240mm &iacute;t nhất, gi&aacute; treo c&ograve;n kh&ocirc;ng được lắp ch&igrave;m - v&igrave; vậy việc lắp quạt ở đ&oacute; sẽ dẫn đến c&aacute;c đầu v&iacute;t nh&ocirc; ra khỏi đỉnh của vỏ m&aacute;y. Đ&oacute; kh&ocirc;ng phải l&agrave; một c&aacute;i nh&igrave;n đẹp. V&agrave; nếu bạn kh&ocirc;ng lắp quạt ở đ&oacute; l&agrave;m ống xả, việc thiếu bộ lọc c&oacute; thể dẫn đến t&iacute;ch tụ bụi.</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (14, N'ZIDLI SCORE SH320V Pink', CAST(1000000 AS Decimal(18, 0)), CAST(1600000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 200, 10, 1, N'resizer (3).jpg', 1, N'Là món phụ kiện hoàn hảo dành cho các thiết bị Surface, đem lại những trải nghiệm mượt mà trong công việc và giải trí hằng ngày.', N'<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Ph&ugrave; hợp với c&aacute;c c&ocirc;ng việc văn ph&ograve;ng v&agrave; chơi game thư gi&atilde;n</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Tai nghe ZIDLI SCORE SH320V Pink</span>&nbsp;ph&ugrave; hợp để sử dụng trong văn ph&ograve;ng. N&oacute; c&oacute; đường k&iacute;nh driver rộng v&agrave; phần đệm tai sẽ &ocirc;m trọn v&agrave;o tai của bạn, gi&uacute;p cho cảm gi&aacute;c đeo tai nghe lu&ocirc;n thoải m&aacute;i. Ch&uacute;ng cũng c&oacute; t&iacute;nh năng khử tiếng ồn chủ động mạnh mẽ gi&uacute;p giảm tiếng ồn &agrave;o ở văn ph&ograve;ng xung quanh bạn.&nbsp;</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">N&oacute; cũng được trang bị Micro, để bạn c&oacute; thể tr&ograve; chuyện, giao tiếp với đồng đội cũng m&igrave;nh qua c&aacute;c trận game căng thẳng</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 1067px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1600px;" src="https://gearshop.vn/upload/images/Product/Zidli/Tai%20nghe/SCORE%20SH320V%20Pink/_DSF2587-min.jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Thiết kế</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Tai nghe ZIDLI SCORE SH320V Pink&nbsp;</span>được thiết kế với tone m&agrave;u hồng tươi rất l&agrave; đjep mắt. Tr&ecirc;n d&acirc;y kết nối sẽ c&oacute; phần điều khiển, t&ugrave;y chỉnh &acirc;m lượng cho tai nghe. Ở phần chụp tai nghe c&oacute; Microphone, tuy nhi&ecirc;n, mic n&agrave;y kh&ocirc;ng thể th&aacute;o rời.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 1200px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1538px;" src="https://gearshop.vn/upload/images/Product/Zidli/Tai%20nghe/SCORE%20SH320V%20Pink/_DSF2592-min.jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Tận hưởng &acirc;m thanh</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&Acirc;m thanh m&agrave; tai nghe n&agrave;y mang lại thực sự tuyệt vời, nhờ v&agrave;o &acirc;m thanh giả lập 7.1, tai nghe đem đến cảm gi&aacute;c thụ &acirc;m cho người d&ugrave;ng kh&aacute; tốt. Người d&ugrave;ng c&oacute; thể chơi game, nghe nhạc, tận hưởng những g&igrave; m&igrave;nh th&iacute;ch nghe tr&ecirc;n trực tuyến.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 1067px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1600px;" src="https://gearshop.vn/upload/images/Product/Zidli/Tai%20nghe/SCORE%20SH320V%20Pink/_DSF2628-min.jpg" alt="" /></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (15, N'SteelSeries Aerox 3 Black RGB', CAST(200000 AS Decimal(18, 0)), CAST(350000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 87, 9, 1, N'resizer (4).jpg', 1, N'SteelSeries Aerox 3 Wireless (2022) là chuột chơi game nhẹ, là phiên bản cập nhật của SteelSeries Aerox 3 Wireless', N'<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Tổng quan sản phẩm</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">SteelSeries Aerox 3 Wireless (2022) l&agrave; chuột chơi game nhẹ, l&agrave; phi&ecirc;n bản cập nhật của SteelSeries Aerox 3 Wireless. Phi&ecirc;n bản 2022 c&oacute; ch&acirc;n PTFE chất lượng cao hơn v&agrave; n&oacute; c&oacute; cảm gi&aacute;c th&acirc;n chắc chắn hơn với &iacute;t uốn cong hơn. N&oacute; c&oacute; vỏ tổ ong v&agrave; thiết kế thuận cả hai tay với hai n&uacute;t ở ph&iacute;a b&ecirc;n tr&aacute;i. N&oacute; mang lại cảm gi&aacute;c thoải m&aacute;i khi sử dụng v&agrave; rất ph&ugrave; hợp với mọi k&iacute;ch cỡ b&agrave;n tay khi cầm nắm vuốt hoặc nắm đầu ng&oacute;n tay, mặc d&ugrave; những b&agrave;n tay nhỏ c&oacute; thể gặp kh&oacute; khăn khi tiếp cận tất cả c&aacute;c n&uacute;t bằng tay cầm bằng đầu ng&oacute;n tay. Về hiệu suất, n&oacute; c&oacute; độ trễ nhấp chuột thấp, t&ugrave;y chọn tỷ lệ bỏ phiếu ti&ecirc;u chuẩn v&agrave; phạm vi CPI rộng, trong đ&oacute; bạn c&oacute; thể điều chỉnh CPI đ&atilde; đặt theo mức tăng 100. Ngo&agrave;i ra, phần mềm SteelSeries GG ho&agrave;n to&agrave;n tương th&iacute;ch với cả Windows v&agrave; macOS . Thật kh&ocirc;ng may, cảm biến của đơn vị của ch&uacute;ng t&ocirc;i c&oacute; xu hướng l&agrave;m giảm đ&aacute;ng kể CPI đ&atilde; đặt trong c&aacute;c chuyển động nhanh.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 614px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1024px;" src="https://gearshop.vn/upload/images/Product/Steelseries/chu%E1%BB%99t/SteelSeries%20Aerox%203/SteelSeries-Aerox-3-(6).jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Chuột chơi game SI&Ecirc;U NHẸ</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">SteelSeries Aerox 3 Wireless (2022) hoạt động xuất sắc như một con chuột chơi game si&ecirc;u nhẹ. Với trọng lượng 68g, n&oacute; nhẹ v&agrave; c&oacute; lớp vỏ tổ ong để giảm trọng lượng. N&oacute; cũng kết nối kh&ocirc;ng d&acirc;y, v&igrave; vậy bạn kh&ocirc;ng phải lo lắng về việc c&aacute;p tạo th&ecirc;m lực k&eacute;o. B&agrave;n ch&acirc;n PTFE nguy&ecirc;n sinh của n&oacute; mang lại trải nghiệm lướt mượt m&agrave; tr&ecirc;n b&agrave;n v&agrave; b&agrave;n di chuột, đồng thời n&oacute; c&oacute; độ trễ nhấp chuột thấp cho cảm gi&aacute;c chơi game nhạy b&eacute;n. Mặt kh&aacute;c, cảm biến của n&oacute; c&oacute; xu hướng l&agrave;m giảm đ&aacute;ng kể chỉ số CPI đ&atilde; đặt trong qu&aacute; tr&igrave;nh di chuyển con trỏ nhanh.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 1200px; max-width: 100%; display: block; margin: 10px auto 0px; width: 836px;" src="https://gearshop.vn/upload/images/Product/Steelseries/chu%E1%BB%99t/SteelSeries%20Aerox%203/SteelSeries-Aerox-3-(5).jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Sự đột ph&aacute; cho chơi Game</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">SteelSeries Aerox 3 Wireless (2022) l&agrave; một con chuột tuyệt vời để chơi game FPS. N&oacute; cho cảm gi&aacute;c được x&acirc;y dựng tốt v&agrave; thoải m&aacute;i cho những phi&ecirc;n chơi game d&agrave;i. N&oacute; rất nhẹ v&agrave; bạn kh&ocirc;ng phải lo lắng về trọng lượng th&ecirc;m của c&aacute;p, nhờ c&aacute;c t&ugrave;y chọn kết nối kh&ocirc;ng d&acirc;y của n&oacute;. N&oacute; c&oacute; độ trễ nhấp chuột thấp để chơi tr&ograve; chơi cảm gi&aacute;c nhanh. Ngo&agrave;i ra, ch&acirc;n PTFE chất lượng cao của n&oacute; mang lại trải nghiệm lướt mượt m&agrave; tr&ecirc;n b&agrave;n v&agrave; b&agrave;n di chuột. Thật kh&ocirc;ng may, cảm biến của thiết bị của ch&uacute;ng t&ocirc;i c&oacute; xu hướng l&agrave;m giảm đ&aacute;ng kể CPI đ&atilde; đặt trong qu&aacute; tr&igrave;nh di chuyển con trỏ nhanh.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 389px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1024px;" src="https://gearshop.vn/upload/images/Product/Steelseries/chu%E1%BB%99t/SteelSeries%20Aerox%203/SteelSeries-Aerox-3-(7).jpg" alt="" /></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (16, N'AKKO 3084 v2 RGB ', CAST(1000000 AS Decimal(18, 0)), CAST(1500000 AS Decimal(18, 0)), CAST(N'2023-05-02T00:00:00.000' AS DateTime), 196, 8, 1, N'resizer (5).jpg', 1, N'AKKO 3084 v2 RGB Black/White là bàn phím chơi game nhỏ gọn 84 phím truyền thống được trang bị ổ cắm có thể thay thế', N'<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">B&agrave;n ph&iacute;m c&oacute; thể ho&aacute;n đổi n&oacute;ng 75% được n&acirc;ng cấp</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">Với giải ph&aacute;p đa chế độ AKKO Beken Plus được cải tiến v&agrave; cấu tr&uacute;c ng&agrave;m n&acirc;ng cao,&nbsp;<span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">AKKO 3084 v2 RGB Black/White</span>&nbsp;l&agrave; b&agrave;n ph&iacute;m chơi game nhỏ gọn 84 ph&iacute;m truyền thống được trang bị ổ cắm c&oacute; thể thay thế n&oacute;ng chơi game TTC 5 ch&acirc;n. B&agrave;n ph&iacute;m c&oacute; thể thay thế n&oacute;ng c&oacute; thể được thay thế bằng c&aacute;c c&ocirc;ng tắc cơ học kh&aacute;c một c&aacute;ch tự do m&agrave; kh&ocirc;ng gặp vấn đề về h&agrave;n. N&oacute; cũng c&oacute; thể lập tr&igrave;nh với phần mềm AKKO Cloud (hỗ trợ tr&igrave;nh hiển thị &acirc;m thanh ở chế độ 2.4G). Bạn ho&agrave;n to&agrave;n c&oacute; thể tận hưởng niềm vui khi chế tạo b&agrave;n ph&iacute;m cơ độc đ&aacute;o của m&igrave;nh.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 1200px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1200px;" src="https://gearshop.vn/upload/images/Product/Akko/Ph%C3%ADm%20AKKO%20NEW/3084%20v2/Black%20White/akko-3084-v2-rgb-black-white-(1).jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Đ&egrave;n nền SMD LED RGB &amp; C&ocirc;ng tắc AKKO CS</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold;">AKKO 3084 v2 RGB Black/White</span>&nbsp;c&oacute; đ&egrave;n nền SMD LED RGB cũng c&oacute; thể t&ugrave;y chỉnh th&ocirc;ng qua tr&igrave;nh điều khiển AKKO Cloud. C&aacute;c thiết bị chuyển mạch d&ograve;ng AKKO CS bền được lựa chọn được tẩm sẵn tại nh&agrave; m&aacute;y v&agrave; c&oacute; sẵn trong hai t&ugrave;y chọn, AKKO CS Jelly Pink v&agrave; AKKO CS Jelly Purple. D&ugrave; bạn thi&ecirc;n về cảm gi&aacute;c Tuyến t&iacute;nh hoặc X&uacute;c gi&aacute;c, bạn c&oacute; thể c&oacute; được những g&igrave; bạn cần với b&agrave;n ph&iacute;m&nbsp;<span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">AKKO 3084 v2 RGB Black/White</span>.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 1200px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1200px;" src="https://gearshop.vn/upload/images/Product/Akko/Ph%C3%ADm%20AKKO%20NEW/3084%20v2/Black%20White/akko-3084-v2-rgb-black-white-(5).jpg" alt="" /></p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;">&nbsp;</p>
<h2 style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-weight: 500; line-height: 1.043em; color: #333e48; font-size: 1.643em; letter-spacing: -0.14px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">Double-shot PBT Keycaps trong ASA Profile</span></h2>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><span style="box-sizing: border-box; font-weight: bold; margin-bottom: 0px;">AKKO 3084 v2 RGB Black/White</span>&nbsp;vẫn sử dụng vật liệu PBT, được thực hiện th&ocirc;ng qua quy tr&igrave;nh kỹ thuật bắn k&eacute;p, một quy tr&igrave;nh sản xuất phức tạp trong đ&oacute; hai loại nhựa ri&ecirc;ng biệt được đ&uacute;c phun để tạo ra c&aacute;c keycaps. C&aacute;c chi tiết v&agrave; kỹ thuật cho ph&eacute;p bộ sản phẩm n&agrave;y trở th&agrave;nh một lựa chọn l&yacute; tưởng v&agrave; tốt nhất khi bạn đang t&igrave;m kiếm một bộ thay thế. Hồ sơ ASA được x&acirc;y dựng trong cấu h&igrave;nh cao, đi&ecirc;u khắc. Với tinh thần c&ocirc;ng th&aacute;i học n&agrave;y, bạn thậm ch&iacute; c&oacute; thể đặt ng&oacute;n tay của m&igrave;nh tr&ecirc;n keycaps một c&aacute;ch tự do.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 30px; width: 975.031px; color: #686c6f; font-family: ''Open Sans'', HelveticaNeue-Light, ''Helvetica Neue Light'', ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; letter-spacing: -0.14px; background-color: #ffffff; font-size: 15px !important;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; height: 1200px; max-width: 100%; display: block; margin: 10px auto 0px; width: 1200px;" src="https://gearshop.vn/upload/images/Product/Akko/Ph%C3%ADm%20AKKO%20NEW/3084%20v2/Black%20White/akko-3084-v2-rgb-black-white-(9).jpg" alt="" /></p>')
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (1, N'Laptop VGS', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (2, N'Laptop ACER', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (3, N'Card màn hình', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (4, N'Mainboard', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (5, N'CPU', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (6, N'PC cấu hình sẵn', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (7, N'Vỏ thùng máy', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (8, N'Bàn phím', 4)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (9, N'Chuột', 4)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (10, N'Tai nghe', 4)
SET IDENTITY_INSERT [dbo].[ItemType] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (1, N'Mặt Hàng', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (2, N'Laptop', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (3, N'PC', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (4, N'Phụ kiện', NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (11, CAST(N'2023-05-03T17:38:15.510' AS DateTime), NULL, CAST(N'2023-05-03T17:39:27.367' AS DateTime), 1, CAST(350000 AS Decimal(18, 0)), 3)
INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (12, CAST(N'2023-05-04T13:11:20.103' AS DateTime), NULL, CAST(N'2023-05-04T13:58:01.680' AS DateTime), 1, CAST(4100000 AS Decimal(18, 0)), 3)
INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (13, CAST(N'2023-05-04T13:28:13.847' AS DateTime), NULL, CAST(N'2023-05-04T13:58:16.953' AS DateTime), 1, CAST(2200000 AS Decimal(18, 0)), 3)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (5, 1, 15, 11, CAST(350000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (6, 1, 7, 12, CAST(4100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (7, 2, 15, 13, CAST(350000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (8, 1, 16, 13, CAST(1500000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([ID], [Payprices], [OrderID]) VALUES (1, CAST(2200000 AS Decimal(18, 0)), 13)
INSERT [dbo].[Payment] ([ID], [Payprices], [OrderID]) VALUES (2, CAST(4100000 AS Decimal(18, 0)), 12)
INSERT [dbo].[Payment] ([ID], [Payprices], [OrderID]) VALUES (3, CAST(350000 AS Decimal(18, 0)), 11)
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__536C85E40D1E7E7D]    Script Date: 5/4/2023 2:01:39 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item] ADD  DEFAULT (getdate()) FOR [DateImport]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Orderdate]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[ItemType] ([ID])
GO
ALTER TABLE [dbo].[ItemType]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
USE [master]
GO
ALTER DATABASE [webgaming] SET  READ_WRITE 
GO
