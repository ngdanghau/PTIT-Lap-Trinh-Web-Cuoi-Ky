USE [master]
GO
/****** Object:  Database [LTW_NEWS]    Script Date: 10/18/2021 4:59:40 PM ******/
CREATE DATABASE [LTW_NEWS]
 CONTAINMENT = NONE 
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LTW_NEWS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LTW_NEWS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LTW_NEWS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LTW_NEWS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LTW_NEWS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LTW_NEWS] SET ARITHABORT OFF 
GO
ALTER DATABASE [LTW_NEWS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LTW_NEWS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LTW_NEWS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LTW_NEWS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LTW_NEWS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LTW_NEWS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LTW_NEWS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LTW_NEWS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LTW_NEWS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LTW_NEWS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LTW_NEWS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LTW_NEWS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LTW_NEWS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LTW_NEWS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LTW_NEWS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LTW_NEWS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LTW_NEWS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LTW_NEWS] SET RECOVERY FULL 
GO
ALTER DATABASE [LTW_NEWS] SET  MULTI_USER 
GO
ALTER DATABASE [LTW_NEWS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LTW_NEWS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LTW_NEWS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LTW_NEWS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LTW_NEWS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LTW_NEWS', N'ON'
GO
USE [LTW_NEWS]
GO
/****** Object:  Table [dbo].[CAT_POST]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAT_POST](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CAT_ID] [int] NOT NULL,
	[POST_ID] [int] NOT NULL,
 CONSTRAINT [PK_CAT_POST] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIES]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](200) NOT NULL,
	[SLUG] [nvarchar](200) NOT NULL,
	[DESCRIPTION] [ntext] NULL,
	[PARENT] [int] NOT NULL,
 CONSTRAINT [PK_CATEGORIES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMENTS]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[POST_ID] [int] NOT NULL,
	[COMMENT_AUTHOR] [nvarchar](100) NOT NULL,
	[COMMENT_AUTHOR_EMAIL] [nvarchar](100) NOT NULL,
	[COMMENT_AUTHOR_IP] [nvarchar](100) NOT NULL,
	[COMMENT_DATE] [datetime] NOT NULL,
	[COMMENT_CONTENT] [ntext] NULL,
	[COMMENT_STATUS] [nvarchar](100) NOT NULL,
	[COMMENT_AGENT] [nvarchar](255) NOT NULL,
	[COMMENT_PARENT] [int] NOT NULL,
	[USER_ID] [int] NOT NULL,
 CONSTRAINT [PK_COMMENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GENERAL_DATA]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENERAL_DATA](
	[NAME] [nvarchar](50) NOT NULL,
	[DATA] [ntext] NOT NULL,
 CONSTRAINT [PK_CNPM_GENERAL_DATA] PRIMARY KEY CLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [ntext] NOT NULL,
	[TARGET] [ntext] NOT NULL,
	[ORDER_MENU] [int] NOT NULL,
	[PARENT] [int] NOT NULL,
	[POSITION] [bit] NOT NULL,
 CONSTRAINT [PK_CNPM_MENU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPTIONS]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPTIONS](
	[OPTION_NAME] [nvarchar](255) NOT NULL,
	[OPTION_VALUE] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_OPTIONS] PRIMARY KEY CLUSTERED 
(
	[OPTION_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAGES]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAGES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USER_ID] [int] NOT NULL,
	[TITLE] [nvarchar](255) NOT NULL,
	[EXCERPT] [ntext] NOT NULL,
	[PAGE_SLUG] [nvarchar](255) NOT NULL,
	[CONTENT] [ntext] NOT NULL,
	[PAGE_STATUS] [nvarchar](50) NOT NULL,
	[VIEWER] [bigint] NOT NULL,
	[CREATED_AT] [datetime] NOT NULL,
	[MODIFIED_AT] [datetime] NOT NULL,
 CONSTRAINT [PK_PAGES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSTS]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POSTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USER_ID] [int] NOT NULL,
	[CREATED_AT] [datetime] NOT NULL,
	[CONTENT] [ntext] NOT NULL,
	[TITLE] [ntext] NOT NULL,
	[EXCERPT] [ntext] NOT NULL,
	[POST_STATUS] [nvarchar](50) NOT NULL,
	[COMMENT_STATUS] [bit] NOT NULL,
	[POST_SLUG] [nvarchar](255) NOT NULL,
	[MODIFIED_AT] [datetime] NOT NULL,
	[MEDIA] [ntext] NOT NULL,
	[VIEWER] [int] NOT NULL,
	[FEATURED] [bit] NULL,
	[EXTERNAL_ID] [nvarchar](255) NOT NULL,
	[SOURCE] [ntext] NOT NULL,
 CONSTRAINT [PK_POSTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUBSCRIBERS]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBSCRIBERS](
	[EMAIL] [nvarchar](50) NOT NULL,
	[IS_ACTIVE] [bit] NOT NULL,
	[UPDATED_AT] [datetime] NOT NULL,
	[CREATED_AT] [datetime] NOT NULL,
	[DATA] [text] NOT NULL,
 CONSTRAINT [PK_SUBSCRIBERS] PRIMARY KEY CLUSTERED 
(
	[EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ACCOUNT_TYPE] [varchar](20) NOT NULL,
	[EMAIL] [varchar](255) NOT NULL,
	[USERNAME] [varchar](100) NOT NULL,
	[PASSWORD] [varchar](200) NOT NULL,
	[FIRSTNAME] [nvarchar](100) NOT NULL,
	[LASTNAME] [nvarchar](100) NOT NULL,
	[SETTINGS] [text] NOT NULL,
	[PREFERENCES] [text] NOT NULL,
	[IS_ACTIVE] [bit] NOT NULL,
	[DATE] [datetime] NOT NULL,
	[DATA] [ntext] NOT NULL,
	[BIO] [ntext] NOT NULL,
	[AVATAR] [text] NOT NULL,
	[PHONE_NUMBER] [varchar](15) NOT NULL,
	[VIEWER] [int] NOT NULL,
 CONSTRAINT [PK_CNPM_USERS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WIDGETS]    Script Date: 10/18/2021 4:59:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WIDGETS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [varchar](255) NOT NULL,
	[CAT_ID] [int] NOT NULL,
	[LAYOUT] [varchar](50) NOT NULL,
	[ORDER_WIDGET] [int] NOT NULL,
 CONSTRAINT [PK_WIDGETS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CATEGORIES] ON 

INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (1, N'Uncategorized', N'uncategorized', N'', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (2, N'Thế Giới', N'the-gioi', N'Tổng hợp sự kiện tin tức thế giới, biển đông, quốc tế mới nhất, nhanh nhất liên tục trong ngày', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (3, N'Xã Hội', N'xa-hoi', N'Trang tin xã hội, thời sự các sự kiện nóng và nổi bật trong ngày', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (4, N'Văn Hoá', N'van-hoa', N'Trang tin văn hóa, giải trí trong nước và quốc tế cập nhật liên tục trong ngày', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (5, N'Kinh Tế', N'kinh-te', N'Tin tức kinh tế, tài chính, doanh nhân và doanh nghiệp, thị trường trong nước và thế giới', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (6, N'Giáo Dục', N'giao-duc', N'Tin nhanh giáo dục, tuyển sinh, thi đại học, cao đẳng, tra cứu điểm thi, giải đề', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (7, N'Thể Thao', N'the-thao', N'Tin nhanh giáo dục, tuyển sinh, thi đại học, cao đẳng, tra cứu điểm thi, giải đề', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (8, N'Giải Trí', N'giai-tri', N'Trang tin tức giải trí, âm nhạc, điện ảnh, giới showbiz Việt Nam và thế giới', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (9, N'Pháp Luật', N'phap-luat', N'Thông tin mới nhất và nhanh nhất về pháp luật, an ninh, trật tự xã hội', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (10, N'Công Nghệ', N'cong-nghe', N'Thông tin công nghệ, khoa học mới nhất liên tục được cập nhật hàng giờ', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (11, N'Điểm Đến', N'khoa-hoc', N'Tin nhanh giáo dục, tuyển sinh, thi đại học, cao đẳng, tra cứu điểm thi, giải đề', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (12, N'Đời Sống', N'doi-song', N'Tin sức khỏe, tư vấn sức khỏe, giới tính, bài thuốc hay, kinh nghiệm phòng chống bệnh', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (13, N'Xe Cộ', N'xe-co', N'Tin tức về ô tô, xe máy trong nước và quốc tế, giá xe,kinh nghiệm mua bán xe', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (14, N'Nhà Đất', N'nha-dat', N'Tin nhanh nhà đất, bất động sản, đất đai,  chính sách mua bán nhà đất', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (15, N'Thời Sự', N'thoi-su', N'Tin thời sự mới nhất trong ngày, cập nhật thông tin, hình ảnh về các vấn đề thời sự trong nước', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (16, N'Giao Thông', N'giao-thong', N'Tin giao thông, cập nhật tình hình giao thông, an toàn giao thông , đầy đủ, chính xác', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (17, N'Ẩm Thực', N'am-thuc', N'Thông tin văn hóa ẩm thực, tin ẩm thực, món ngon mỗi ngày, bí quyết nấu ăn ngon', 4)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (18, N'Du Lịch', N'du-lich', N'Thông tin, hình ảnh các địa điểm du lịch, các danh lam thắng cảnh hấp dẫn trong nước và quốc tế', 0)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (19, N'Âm Nhạc', N'am-nhac', N'Thông tin âm nhạc, ca nhạc, tin tức về nhạc trẻ và làng âm nhạc Việt Nam và quốc tế', 8)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (20, N'Thời Trang', N'thoi-trang', N'thời trang, liên tục cập nhật xu thế thời trang mới nhất trong nước và thế giới', 8)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (21, N'Học Bổng - Du Học', N'hoc-bong-du-hoc', N'', 6)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (22, N'Đào Tạo - Thi Cử', N'dao-tao-thi-cu', N'', 6)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [SLUG], [DESCRIPTION], [PARENT]) VALUES (23, N'Viễn Thông', N'vien-thong', N'', 10)
SET IDENTITY_INSERT [dbo].[CATEGORIES] OFF
GO
INSERT [dbo].[GENERAL_DATA] ([NAME], [DATA]) VALUES (N'email-settings', N'{"smtp":{"host":"smtp.gmail.com","port":"587","encryption":"tls","auth":true,"username":"brookshowell3065479@gmail.com","password":"def5020073d5de9660a6d1d173c677f451a75543997672687b788a3a2cbc98879ace7fee7cd93e4ef1e915ec35dad2d769b3d8c21119e078f664414c143d0cca0c3bd13896efa64e683c37e8920f7efa46cd76ed9aa961360ecb08651a85","from":"brookshowell3065479@gmail.com"},"confirm_subscription":true,"new_user":true,"email_verification":true}')
INSERT [dbo].[GENERAL_DATA] ([NAME], [DATA]) VALUES (N'integrations', N'{"dropbox":{"api_key":""},"google":{"api_key":"","client_id":"","analytics":{"property_id":"UA-199495229-1"}},"onedrive":{"client_id":""},"paypal":{"client_id":"","client_secret":"","environment":"sandbox"},"stripe":{"environment":"sandbox","publishable_key":"","secret_key":""},"facebook":{"app_id":"","app_secret":""}}')
INSERT [dbo].[GENERAL_DATA] ([NAME], [DATA]) VALUES (N'settings', N'{"site_name":"Times Writer","site_description":"Cập nhật tin tức mới và nóng nhất về Đời sống - Xã hội, Kinh tế, Thế giới, Thể thao, Giải trí, Công nghệ và nhiều lĩnh vực khác…","site_slogan":"Tin tức nóng nhất, tin tức mới nhất cập nhật liên tục 24H","site_keywords":"Tin tức, Báo, Việt Nam, Hà Nội, Hồ Chí Minh, Đà Nẵng, Đời sống, Phóng sự, Pháp luật, Thế giới, Khám phá, Thị trường, Chứng khoán, Kinh tế, Bất động sản, Giáo dục, Tuyển sinh, Teen, Thể thao, Ngoại hạng, Champion, La liga, Công nghệ, điện thoại, Oto, Xe Máy, Giải trí, Showbiz, Sao Việt, Âm nhạc, VPOP, KPOP, Phim ảnh, Điện ảnh, Đẹp, Thời trang, Làm đẹp, Người Đẹp, Tình yêu, Du lịch, Ẩm thực, Sách, Cười","logomark":"","logotype":"https://timeswriter.xyz/assets/uploads/1/images/logo/times.png"}')
INSERT [dbo].[GENERAL_DATA] ([NAME], [DATA]) VALUES (N'social', N'{"facebook":"#","twitter":"#","instagram":"#","youtube":"#","vkontakte":"#"}')
GO
SET IDENTITY_INSERT [dbo].[MENU] ON 

INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (1, N'Văn Hoá', N'/category/van-hoa', 3, 0, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (2, N'Thế Giới', N'/category/the-gioi', 0, 0, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (3, N'Xã Hội', N'/category/xa-hoi', 1, 0, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (4, N'Nghệ Thuật', N'/category/nghe-thuat', 4, 1, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (5, N'About', N'/page/about', 0, 0, 1)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (6, N'Privacy', N'/page/privacy', 2, 0, 1)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (7, N'Help', N'/page/help', 1, 0, 1)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (8, N'Terms', N'/page/terms', 3, 0, 1)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (9, N'Contact', N'/page/lien-he', 4, 0, 1)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (10, N'Thời Sự', N'/category/thoi-su', 2, 3, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (11, N'Kinh Tế', N'/category/kinh-te', 7, 0, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (12, N'Giáo Dục', N'/category/giao-duc', 8, 0, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (13, N'Học Bổng - Du Học', N'/category/hoc-bong-du-hoc', 9, 12, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (14, N'Đào Tạo - Thi Cử', N'/category/dao-tao-thi-cu', 10, 12, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (15, N'Thể Thao', N'/category/the-thao', 11, 0, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (16, N'Giải - Trí', N'/category/giai-tri', 13, 0, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (17, N'Âm Nhạc', N'/category/am-nhac', 14, 16, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (18, N'Thời Trang', N'/category/thoi-trang', 15, 16, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (19, N'Công Nghệ', N'/category/cong-nghe', 16, 0, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (20, N'Viễn Thông', N'/category/vien-thong', 17, 19, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (21, N'Pháp Luật', N'/category/phap-luat', 12, 0, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (22, N'Ẩm Thực', N'/category/am-thuc', 5, 1, 0)
INSERT [dbo].[MENU] ([ID], [TITLE], [TARGET], [ORDER_MENU], [PARENT], [POSITION]) VALUES (23, N'Du Lịch', N'/category/du-lich', 6, 1, 0)
SET IDENTITY_INSERT [dbo].[MENU] OFF
GO
INSERT [dbo].[OPTIONS] ([OPTION_NAME], [OPTION_VALUE]) VALUES (N'np_comment_recaptcha_verification', N'1')
INSERT [dbo].[OPTIONS] ([OPTION_NAME], [OPTION_VALUE]) VALUES (N'np_recaptcha_secret_key', N'6Lc8NDEbAAAAAOwa9Comr0gyMMTGDuQ02ATXKvs1')
INSERT [dbo].[OPTIONS] ([OPTION_NAME], [OPTION_VALUE]) VALUES (N'np_recaptcha_site_key', N'6Lc8NDEbAAAAAHMseX5cELt00_rVpWnsQXrReuPm')
INSERT [dbo].[OPTIONS] ([OPTION_NAME], [OPTION_VALUE]) VALUES (N'np_signin_recaptcha_verification', N'1')
INSERT [dbo].[OPTIONS] ([OPTION_NAME], [OPTION_VALUE]) VALUES (N'np_signup_recaptcha_verification', N'0')
GO
SET IDENTITY_INSERT [dbo].[PAGES] ON 

INSERT [dbo].[PAGES] ([ID], [USER_ID], [TITLE], [EXCERPT], [PAGE_SLUG], [CONTENT], [PAGE_STATUS], [VIEWER], [CREATED_AT], [MODIFIED_AT]) VALUES (4, 1, N'About', N'Get to know more about me', N'about', N'<p>Xin gi?i thi?u</p>', N'publish', 7, CAST(N'2021-05-19T09:46:40.000' AS DateTime), CAST(N'2021-05-19T09:46:40.000' AS DateTime))
INSERT [dbo].[PAGES] ([ID], [USER_ID], [TITLE], [EXCERPT], [PAGE_SLUG], [CONTENT], [PAGE_STATUS], [VIEWER], [CREATED_AT], [MODIFIED_AT]) VALUES (5, 1, N'Privacy', N'', N'privacy', N'', N'publish', 15, CAST(N'2021-05-19T09:46:40.000' AS DateTime), CAST(N'2021-05-19T09:46:40.000' AS DateTime))
INSERT [dbo].[PAGES] ([ID], [USER_ID], [TITLE], [EXCERPT], [PAGE_SLUG], [CONTENT], [PAGE_STATUS], [VIEWER], [CREATED_AT], [MODIFIED_AT]) VALUES (6, 1, N'Help', N'', N'help', N'', N'publish', 29, CAST(N'2021-05-19T09:46:40.000' AS DateTime), CAST(N'2021-05-19T09:46:40.000' AS DateTime))
INSERT [dbo].[PAGES] ([ID], [USER_ID], [TITLE], [EXCERPT], [PAGE_SLUG], [CONTENT], [PAGE_STATUS], [VIEWER], [CREATED_AT], [MODIFIED_AT]) VALUES (7, 1, N'Term', N'', N'term', N'<p>dqwdqwdqwdqwdqw</p>', N'publish', 2, CAST(N'2021-05-19T09:46:40.000' AS DateTime), CAST(N'2021-05-19T09:46:40.000' AS DateTime))
INSERT [dbo].[PAGES] ([ID], [USER_ID], [TITLE], [EXCERPT], [PAGE_SLUG], [CONTENT], [PAGE_STATUS], [VIEWER], [CREATED_AT], [MODIFIED_AT]) VALUES (8, 1, N'Liên H?', N'', N'lien-he', N'<p>Xin vui lòng liên h? t?i</p>', N'publish', 9, CAST(N'2021-06-15T13:43:20.000' AS DateTime), CAST(N'2021-06-15T13:43:20.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PAGES] OFF
GO
SET IDENTITY_INSERT [dbo].[POSTS] ON 

INSERT [dbo].[POSTS] ([ID], [USER_ID], [CREATED_AT], [CONTENT], [TITLE], [EXCERPT], [POST_STATUS], [COMMENT_STATUS], [POST_SLUG], [MODIFIED_AT], [MEDIA], [VIEWER], [FEATURED], [EXTERNAL_ID], [SOURCE]) VALUES (1, 1, CAST(N'2021-06-09T02:58:32.000' AS DateTime), N'<p>Trong tình hình diễn biến phức tạp của dịch Covid -19, nhiều đơn vị đăng ký hiến máu đã báo hủy, mỗi ngày cần tối thiểu 600 túi máu để cung cấp cho việc điều trị của hơn 150 bệnh viện toàn TP. Dẫn đến nguy cơ Ngân hàng máu không đủ lượng máu cung cấp, lượng máu lưu trữ giảm đến mức báo động.</p><p>Trước tình hình đó, vừa qua, Hội Chữ thập đỏ TP HCM phối hợp với Học viện Phật giáo Việt Nam tại TP HCM đã tổ chức chương trình Hiến máu cứu người, nghĩa cử cao đẹp.</p><div class=\"VCSortableInPreviewMode active\" type=\"Photo\" style=\"\"><div><img src=\"https://nld.mediacdn.vn/thumb_w/684/291774122806476800/2021/6/9/img20210609091745-16232052000811560167201.jpg\" id=\"img_326909091297710080\" w=\"1280\" h=\"851\" alt=\"TP HCM: 50% đơn vị hủy hiến máu do dịch Covid-19 - Ảnh 1.\" title=\"TP HCM: 50% đơn vị hủy hiến máu do dịch Covid-19 - Ảnh 1.\" rel=\"lightbox\" photoid=\"326909091297710080\" type=\"photo\" style=\"max-width:100%;\" data-original=\"https://nld.mediacdn.vn/291774122806476800/2021/6/9/img20210609091745-16232052000811560167201.jpg\" width=\"\" height=\"\"></div><div class=\"PhotoCMS_Caption\"><p data-placeholder=\"[nhập chú thích]\" class=\"\">Tăng ni Học viện Phật giáo Việt Nam tại TP HCM hưởng ứng phong trào hiến máu cứu người</p></div></div><div id=\"admsection2\"></div><p>Đã có 411 tăng ni nội trú đang theo học chương trình cử nhân Phật học tai Học viện tham gia hiến máu, thu được 364 đơn vị máu. </p><p>Nhằm tránh tình trạng lây lan dịch bệnh, đơn vị tiếp nhận đã chia nhỏ số lượng người hiến theo khung giờ để đảm bảo mỗi thời điểm tối đa 20 người, các tăng ni phải tuân thủ nghiêm ngặt quy định 5K (Khẩu trang - Khử khuẩn- Khoảng cách - Không tụ tập - Khai báo y tế).</p><div class=\"VCSortableInPreviewMode active\" type=\"Photo\" style=\"\"><div><img src=\"https://nld.mediacdn.vn/thumb_w/684/291774122806476800/2021/6/9/img20210609091821-16232052238802121766011.jpg\" id=\"img_326909189672574976\" w=\"1280\" h=\"851\" alt=\"TP HCM: 50% đơn vị hủy hiến máu do dịch Covid-19 - Ảnh 2.\" title=\"TP HCM: 50% đơn vị hủy hiến máu do dịch Covid-19 - Ảnh 2.\" rel=\"lightbox\" photoid=\"326909189672574976\" type=\"photo\" style=\"max-width:100%;\" data-original=\"https://nld.mediacdn.vn/291774122806476800/2021/6/9/img20210609091821-16232052238802121766011.jpg\" width=\"\" height=\"\"></div><div class=\"PhotoCMS_Caption\"><p data-placeholder=\"[nhập chú thích]\" class=\"\">Các tăng ni được khám sàng lọc theo quy định trước khi hiến máu</p></div></div><div class=\"VCSortableInPreviewMode active\" type=\"Photo\" style=\"\"><div><img src=\"https://nld.mediacdn.vn/thumb_w/684/291774122806476800/2021/6/9/191303650926742528182418313658560390254225n-1623205375030118316414.jpg\" id=\"img_326909825516478464\" w=\"960\" h=\"639\" alt=\"TP HCM: 50% đơn vị hủy hiến máu do dịch Covid-19 - Ảnh 3.\" title=\"TP HCM: 50% đơn vị hủy hiến máu do dịch Covid-19 - Ảnh 3.\" rel=\"lightbox\" photoid=\"326909825516478464\" type=\"photo\" style=\"max-width:100%;\" data-original=\"https://nld.mediacdn.vn/291774122806476800/2021/6/9/191303650926742528182418313658560390254225n-1623205375030118316414.jpg\" width=\"\" height=\"\"></div><div class=\"PhotoCMS_Caption\"><p data-placeholder=\"[nhập chú thích]\" class=\"\">Trong quá trình hiến máu, mọi người luôn tuân thủ quy định 5K để đảm bảo an toàn trong dịch Covid-19</p></div></div><p>Hoà Thượng Thích Trí Quảng, Viện Trưởng Học viện Phật Giáo Việt Nam tại TP HCM, chia sẻ cuộc sống hạnh phúc và có ý nghĩa hơn khi biết chắc chắn rằng đâu đó trên cuộc đời này, dòng máu của chúng ta đang hòa chung vào sinh mệnh, vào nhịp thở của ai đó đã từng được chúng ta cứu sống. </p><div id=\"admsection3\"></div><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"\"><div><img src=\"https://nld.mediacdn.vn/thumb_w/684/291774122806476800/2021/5/30/1764716219261242979289184516590632068712348n-16223701367081549637442.jpg\" id=\"img_323406583501045760\" w=\"678\" h=\"1186\" alt=\"TP HCM: 50% đơn vị hủy hiến máu do dịch Covid-19 - Ảnh 4.\" title=\"TP HCM: 50% đơn vị hủy hiến máu do dịch Covid-19 - Ảnh 4.\" rel=\"lightbox\" photoid=\"323406583501045760\" type=\"photo\" style=\"max-width:100%;\" data-original=\"https://nld.mediacdn.vn/291774122806476800/2021/5/30/1764716219261242979289184516590632068712348n-16223701367081549637442.jpg\" width=\"\" height=\"\"></div><div class=\"PhotoCMS_Caption\"></div></div>                                              <!-- Bắt đầu Dable / Để được giải đáp, hãy truy cập http://dable.io -->                                                                                            <!-- Kết thúc / Để được giải đáp, hãy truy cập http://dable.io -->', N'TP HCM: 50% đơn vị hủy hiến m&#225;u do dịch Covid-19', N'Tại TP HCM, hiện hơn 50% đơn vị đăng ký hiến máu đã báo hủy do tình hình dịch Covid-19 diễn biến phức tạp. Lượng máu dự trữ tại Ngân hàng máu giảm đến ngưỡng báo động.', N'publish', 1, N'tp-hcm-50-don-vi-huy-hien-mau-do-dich-covid-19', CAST(N'2021-06-09T02:58:32.000' AS DateTime), N'https://nld.mediacdn.vn/291774122806476800/2021/6/9/img20210609091754-16232052001231337150406.jpg', 2080, 0, N'20210609092829476_nldcomvn', N'')
INSERT [dbo].[POSTS] ([ID], [USER_ID], [CREATED_AT], [CONTENT], [TITLE], [EXCERPT], [POST_STATUS], [COMMENT_STATUS], [POST_SLUG], [MODIFIED_AT], [MEDIA], [VIEWER], [FEATURED], [EXTERNAL_ID], [SOURCE]) VALUES (2, 1, CAST(N'2021-06-08T23:35:51.000' AS DateTime), N'<p>Bộ Y tế cho biết sáng 9-6, nước ta ghi nhận thêm 64 ca mắc <a href=\"https://nld.com.vn/covid-19.html\" title=\"Covid-19\" target=\"_blank\"><b>Covid-19</b></a> (BN9159-9222) trong đó 23 ca cách ly ngay sau khi nhập cảnh tại TP HCM (15), Bà Rịa - Vũng Tàu (7), Long An (1) và 41 ca ghi nhận trong nước tại Bắc Giang (24), Bắc Ninh (17) đều là các ca được phát hiện trong khu cách ly hoặc khu đã được phong toả.</p><div class=\"VCSortableInPreviewMode active\" type=\"Photo\" style=\"\"><div><img src=\"https://nld.mediacdn.vn/thumb_w/684/291774122806476800/2021/6/9/19258724810158448137913789850043325321685252n-16231937430081927273019.jpeg\" id=\"img_326861037461680128\" w=\"1242\" h=\"767\" alt=\"Sáng 9-6, thêm 64 ca mắc Covid-19, có 23 ca nhập cảnh - Ảnh 1.\" title=\"Sáng 9-6, thêm 64 ca mắc Covid-19, có 23 ca nhập cảnh - Ảnh 1.\" rel=\"lightbox\" photoid=\"326861037461680128\" type=\"photo\" style=\"max-width:100%;\" data-original=\"https://nld.mediacdn.vn/291774122806476800/2021/6/9/19258724810158448137913789850043325321685252n-16231937430081927273019.jpeg\" width=\"\" height=\"\"></div><div class=\"PhotoCMS_Caption\"><p data-placeholder=\"[nhập chú thích]\" class=\"\">Bản đồ dịch Covid-19- Nguồn: Bộ Y tế</p></div></div><div id=\"admsection2\"></div><p>&nbsp;<b>23 ca cách ly ngay sau khi nhập cảnh</b></p><p>- CA BỆNH BN9171-BN9177 được cách ly ngay sau khi nhập cảnh tại tỉnh Bà Rịa - Vũng Tàu: Là các thuyền viên, quốc tịch Việt Nam. Ngày 6-6, từ Ấn Độ nhập cảnh Việt Nam trên Tàu Golden Fridge và được cách ly ngay sau khi nhập cảnh tại tỉnh Bà Rịa - Vũng Tàu. Kết quả xét nghiệm ngày 7-6 dương tính với SARS-CoV-2. Hiện đang được cách ly, điều trị tại Trung tâm Y tế huyện Long Điền, tỉnh Bà Rịa - Vũng Tàu.</p><p>- CA BỆNH BN9198 được cách ly ngay sau khi nhập cảnh tại tỉnh Long An: Nam, 19 tuổi, là thuyền viên, địa chỉ tại huyện Yên Thành, tỉnh Nghệ An. Ngày 5-6, từ Indonesia nhập cảnh Việt Nam trên tàu VINH02 và được cách ly ngay sau khi nhập cảnh tại tỉnh Long An. Kết quả xét nghiệm ngày 8-6 dương tính với SARS-CoV-2. Hiện đang được cách ly, điều trị tại Bệnh viện Đa khoa Khu vực Cần Giuộc, tỉnh Long An.</p><p>- CA BỆNH BN9208 được cách ly ngay sau khi nhập cảnh tại TP HCM: Nam, 52 tuổi, là thuyền viên, quốc tịch Syria. Ngày 5-6, từ Malaysia nhập cảnh Việt Nam trên Tàu LAMAR và được cách ly ngay sau khi nhập cảnh tại TP HCM. Kết quả xét nghiệm ngày 7-6 dương tính với SARS-CoV-2. Hiện đang được cách ly, điều trị tại Bệnh viện điều trị Covid-19 Cần Giờ, TP HCM.</p><p>- CA BỆNH BN9209-BN9222 được cách ly ngay sau khi nhập cảnh tại TP HCM là các thuyền viên, quốc tịch Việt Nam. Ngày 4-6, từ Ấn Độ nhập cảnh Việt Nam trên Tàu PHUONG NAM 1 và được cách ly ngay sau khi nhập cảnh tại TP HCM. Kết quả xét nghiệm ngày 5-6 dương tính với SARS-CoV-2. Hiện đang được cách ly, điều trị tại Bệnh viện điều trị Covid-19 Cần Giờ, TP HCM.</p><p><b>41 ca ghi nhận trong nước</b><br></p><p>- CA BỆNH BN9178, BN9184-BN9197, BN9199-BN9207 ghi nhận tại tỉnh Bắc Giang trong khu cách ly và khu vực đã được phong tỏa, liên quan đến công nhân làm tại các Khu công nghiệp. Kết quả xét nghiệm dương tính với SARS-CoV-2.</p><p>- CA BỆNH BN9159-BN9170, BN9179-BN9183 ghi nhận tại tỉnh Bắc Ninh: Liên quan đến ổ dịch Khu công nghiệp Quế Võ. Kết quả xét nghiệm ngày 7 và 8-6 dương tính với SARS-CoV-2.</p><div id=\"admsection3\"></div><div class=\"VCSortableInPreviewMode active\" type=\"Photo\" style=\"\"><div><img src=\"https://nld.mediacdn.vn/thumb_w/684/291774122806476800/2021/6/9/197366005101584481379287893358771754205174429n-16231937429681481691823.jpeg\" id=\"img_326861037502332928\" w=\"1242\" h=\"765\" alt=\"Sáng 9-6, thêm 64 ca mắc Covid-19, có 23 ca nhập cảnh - Ảnh 2.\" title=\"Sáng 9-6, thêm 64 ca mắc Covid-19, có 23 ca nhập cảnh - Ảnh 2.\" rel=\"lightbox\" photoid=\"326861037502332928\" type=\"photo\" style=\"max-width:100%;\" data-original=\"https://nld.mediacdn.vn/291774122806476800/2021/6/9/197366005101584481379287893358771754205174429n-16231937429681481691823.jpeg\" width=\"\" height=\"\"></div><div class=\"PhotoCMS_Caption\"><p data-placeholder=\"[nhập chú thích]\" class=\"\">Bản đồ cách ly y tế</p></div></div><p>Đến nay, tổng số ca mắc Covid-19 ở nước ta là 9.222, trong đó 7.614 ca ghi nhận trong nước và 1.608 ca nhập cảnh. Số lượng ca mắc tính từ ngày 27-4 đến nay là 6.044 ca tại 39 tỉnh, thành phố.</p><p> Có 16 tỉnh (Yên Bái, Quảng Ngãi, Đồng Nai, Nghệ An, Quảng Ninh, Quảng Nam, Quảng Trị, Thừa Thiên Huế, Đắk Lắk, Nam Định, Hòa Bình, Tuyên Quang, Phú Thọ, Sơn La, Ninh Bình, Thanh Hóa) đã qua 14 ngày không ghi nhận trường hợp mắc mới.</p><p>Tổng số người tiếp xúc gần và nhập cảnh từ vùng dịch đang được theo dõi sức khỏe (cách ly): 184.443, trong đó, cách ly tập trung tại bệnh viện: 5.093; cách ly tập trung tại cơ sở khác: 20.792; cách ly tại nhà, nơi lưu trú: 158.558</p><p>Đến nay, nước ta đã thực hiện tiêm vắc-xin phòng Covid-19 đợt 1 và 2 tại các tỉnh/TP với 1.354.856 liều. Trong đó, số người đã được tiêm đủ 2 mũi vắc-xin là 42.115 người.</p><div class=\"VCSortableInPreviewMode noCaption active\" type=\"Photo\" style=\"\"><div><img src=\"https://nld.mediacdn.vn/thumb_w/684/291774122806476800/2021/6/6/1764716219261242979289184516590632068712348n-16223701367081549637442-1622993633124782517215.jpeg\" id=\"img_326021720348463104\" w=\"678\" h=\"1186\" alt=\"Sáng 9-6, thêm 64 ca mắc Covid-19, có 23 ca nhập cảnh - Ảnh 3.\" title=\"Sáng 9-6, thêm 64 ca mắc Covid-19, có 23 ca nhập cảnh - Ảnh 3.\" rel=\"lightbox\" photoid=\"326021720348463104\" type=\"photo\" style=\"max-width:100%;\" data-original=\"https://nld.mediacdn.vn/291774122806476800/2021/6/6/1764716219261242979289184516590632068712348n-16223701367081549637442-1622993633124782517215.jpeg\" width=\"\" height=\"\"></div><div class=\"PhotoCMS_Caption\"></div></div>                                              <!-- Bắt đầu Dable / Để được giải đáp, hãy truy cập http://dable.io -->                                                                                            <!-- Kết thúc / Để được giải đáp, hãy truy cập http://dable.io -->', N'S&#225;ng 9-6, th&#234;m 64 ca mắc Covid-19, c&#243; 23 ca nhập cảnh', N'Bộ Y tế cho biết 12 giờ qua, nước ta có thêm 64 ca mắc Covid-19, trong đó 23 ca nhập cảnh và 41 ca trong nước.', N'publish', 1, N'sang-9-6-them-64-ca-mac-covid-19-co-23-ca-nhap-canh', CAST(N'2021-06-08T23:35:51.000' AS DateTime), N'https://nld.mediacdn.vn/291774122806476800/2021/6/9/canh-1623195250904948813087.jpg', 7738, 1, N'20210608215143438_nldcomvn', N'')
SET IDENTITY_INSERT [dbo].[POSTS] OFF
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([ID], [ACCOUNT_TYPE], [EMAIL], [USERNAME], [PASSWORD], [FIRSTNAME], [LASTNAME], [SETTINGS], [PREFERENCES], [IS_ACTIVE], [DATE], [DATA], [BIO], [AVATAR], [PHONE_NUMBER], [VIEWER]) VALUES (1, N'admin', N'00xshen00@gmail.com', N'admin', N'$2y$10$5bovwCjaG6ATNdH2tUbFfe0vn.xSk7ufeWMuCq/7TglK3MjdcH3cW', N'Nguyễn', N'Hậu', N'{"social":{"facebook":"#123","pinterest":"#","tumblr":"#","vkontakte":"#","whatsapp":"#","telegram":"#"}}', N'{"timezone":"Asia/Ho_Chi_Minh","timeformat":"24","language":"en-US"}', 1, CAST(N'2021-05-19T08:17:08.000' AS DateTime), N'{}', N'Lorem ipsum dolor sit amet, vel in viderer invenire, eu vim primis disputationi. Quaerendum vituperatoribus eam in, at vero insolens duo, mucius probatus sed id. Id augue albucius vel, ad est facer bonorum, mea principes consulatu et. Te reformidans accommodare vis, ei unum aeterno periculis has, ne nam illum expetenda posidonium.', N'https://bmtopus.com/assets/uploads/1/images/user-10.jpeg', N'0333377665', 101)
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
/****** Object:  Index [UQ_CATPOST]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[CAT_POST] ADD  CONSTRAINT [UQ_CATPOST] UNIQUE NONCLUSTERED 
(
	[CAT_ID] ASC,
	[POST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CATEGORI__A43AD45CC6BE04B5]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[CATEGORIES] ADD UNIQUE NONCLUSTERED 
(
	[SLUG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__GENERAL___D9C1FA00F4D9AB4C]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[GENERAL_DATA] ADD UNIQUE NONCLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__OPTIONS__2ABCB59A7D5DEC7D]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[OPTIONS] ADD UNIQUE NONCLUSTERED 
(
	[OPTION_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_EXTERNAL_ID]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[POSTS] ADD  CONSTRAINT [UQ_EXTERNAL_ID] UNIQUE NONCLUSTERED 
(
	[EXTERNAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_POST]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[POSTS] ADD  CONSTRAINT [UQ_POST] UNIQUE NONCLUSTERED 
(
	[POST_SLUG] ASC,
	[EXTERNAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_POST_SLUG]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[POSTS] ADD  CONSTRAINT [UQ_POST_SLUG] UNIQUE NONCLUSTERED 
(
	[POST_SLUG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SUBSCRIB__161CF724E05013DB]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[SUBSCRIBERS] ADD UNIQUE NONCLUSTERED 
(
	[EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_SUB_EMAIL]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[SUBSCRIBERS] ADD  CONSTRAINT [UQ_SUB_EMAIL] UNIQUE NONCLUSTERED 
(
	[EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_PHONE_NUMBER]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[USERS] ADD  CONSTRAINT [UQ_PHONE_NUMBER] UNIQUE NONCLUSTERED 
(
	[PHONE_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_USER_EMAIL]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[USERS] ADD  CONSTRAINT [UQ_USER_EMAIL] UNIQUE NONCLUSTERED 
(
	[EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_USERNAME]    Script Date: 10/18/2021 4:59:40 PM ******/
ALTER TABLE [dbo].[USERS] ADD  CONSTRAINT [UQ_USERNAME] UNIQUE NONCLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMMENTS] ADD  DEFAULT ('') FOR [COMMENT_AUTHOR_EMAIL]
GO
ALTER TABLE [dbo].[COMMENTS] ADD  DEFAULT ('') FOR [COMMENT_AUTHOR_IP]
GO
ALTER TABLE [dbo].[COMMENTS] ADD  DEFAULT (getdate()) FOR [COMMENT_DATE]
GO
ALTER TABLE [dbo].[COMMENTS] ADD  DEFAULT ('MODERATED') FOR [COMMENT_STATUS]
GO
ALTER TABLE [dbo].[COMMENTS] ADD  DEFAULT ('') FOR [COMMENT_AGENT]
GO
ALTER TABLE [dbo].[COMMENTS] ADD  DEFAULT ((0)) FOR [COMMENT_PARENT]
GO
ALTER TABLE [dbo].[COMMENTS] ADD  DEFAULT ((0)) FOR [USER_ID]
GO
ALTER TABLE [dbo].[MENU] ADD  DEFAULT ((0)) FOR [PARENT]
GO
ALTER TABLE [dbo].[MENU] ADD  DEFAULT ((0)) FOR [POSITION]
GO
ALTER TABLE [dbo].[PAGES] ADD  DEFAULT ('PUBLISH') FOR [PAGE_STATUS]
GO
ALTER TABLE [dbo].[PAGES] ADD  DEFAULT (getdate()) FOR [CREATED_AT]
GO
ALTER TABLE [dbo].[PAGES] ADD  DEFAULT (getdate()) FOR [MODIFIED_AT]
GO
ALTER TABLE [dbo].[POSTS] ADD  DEFAULT ((0)) FOR [USER_ID]
GO
ALTER TABLE [dbo].[POSTS] ADD  DEFAULT (getdate()) FOR [CREATED_AT]
GO
ALTER TABLE [dbo].[POSTS] ADD  DEFAULT ('PUBLISH') FOR [POST_STATUS]
GO
ALTER TABLE [dbo].[POSTS] ADD  DEFAULT ((1)) FOR [COMMENT_STATUS]
GO
ALTER TABLE [dbo].[POSTS] ADD  DEFAULT ('') FOR [POST_SLUG]
GO
ALTER TABLE [dbo].[POSTS] ADD  DEFAULT (getdate()) FOR [MODIFIED_AT]
GO
ALTER TABLE [dbo].[POSTS] ADD  DEFAULT ((0)) FOR [VIEWER]
GO
ALTER TABLE [dbo].[POSTS] ADD  DEFAULT ((0)) FOR [FEATURED]
GO
ALTER TABLE [dbo].[SUBSCRIBERS] ADD  DEFAULT (getdate()) FOR [UPDATED_AT]
GO
ALTER TABLE [dbo].[SUBSCRIBERS] ADD  DEFAULT (getdate()) FOR [CREATED_AT]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ((0)) FOR [IS_ACTIVE]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT (getdate()) FOR [DATE]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ((0)) FOR [VIEWER]
GO
ALTER TABLE [dbo].[WIDGETS] ADD  CONSTRAINT [DF__WIDGETS__CAT_ID__5BE2A6F2]  DEFAULT ((1)) FOR [CAT_ID]
GO
ALTER TABLE [dbo].[WIDGETS] ADD  CONSTRAINT [DF__WIDGETS__LAYOUT__5CD6CB2B]  DEFAULT ('LAYOUT-GRID-1') FOR [LAYOUT]
GO
ALTER TABLE [dbo].[CAT_POST]  WITH CHECK ADD  CONSTRAINT [FK_CAT_POST_CATEGORIES] FOREIGN KEY([CAT_ID])
REFERENCES [dbo].[CATEGORIES] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CAT_POST] CHECK CONSTRAINT [FK_CAT_POST_CATEGORIES]
GO
ALTER TABLE [dbo].[CAT_POST]  WITH CHECK ADD  CONSTRAINT [FK_CAT_POST_POSTS] FOREIGN KEY([POST_ID])
REFERENCES [dbo].[POSTS] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CAT_POST] CHECK CONSTRAINT [FK_CAT_POST_POSTS]
GO
ALTER TABLE [dbo].[COMMENTS]  WITH CHECK ADD  CONSTRAINT [FK_COMMENTS_POSTS] FOREIGN KEY([POST_ID])
REFERENCES [dbo].[POSTS] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[COMMENTS] CHECK CONSTRAINT [FK_COMMENTS_POSTS]
GO
ALTER TABLE [dbo].[PAGES]  WITH CHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[USERS] ([ID])
GO
ALTER TABLE [dbo].[POSTS]  WITH CHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[USERS] ([ID])
GO
ALTER TABLE [dbo].[WIDGETS]  WITH CHECK ADD  CONSTRAINT [FK_WIDGETS_CATEGORIES1] FOREIGN KEY([CAT_ID])
REFERENCES [dbo].[CATEGORIES] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WIDGETS] CHECK CONSTRAINT [FK_WIDGETS_CATEGORIES1]
GO
USE [master]
GO
ALTER DATABASE [LTW_NEWS] SET  READ_WRITE 
GO
