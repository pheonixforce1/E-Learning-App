USE [eLearning]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/15/2021 2:01:27 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Role] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[Id] [uniqueidentifier] NOT NULL,
	[QuestionId] [uniqueidentifier] NOT NULL,
	[AnswerValue] [nvarchar](max) NULL,
	[IsTrue] [bit] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Order] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Group] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[TeacherId] [uniqueidentifier] NOT NULL,
	[Duration] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[FilePath] [nvarchar](max) NULL,
	[FileType] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[MappingId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lessions]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lessions](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CourseId] [uniqueidentifier] NOT NULL,
	[VideoUrl] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Teacher] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Lessions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [uniqueidentifier] NOT NULL,
	[LessionId] [uniqueidentifier] NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[ExamId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentLessions]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentLessions](
	[Id] [uniqueidentifier] NOT NULL,
	[LessionId] [uniqueidentifier] NOT NULL,
	[StudentId] [uniqueidentifier] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_StudentLessions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Dob] [datetime2](7) NOT NULL,
	[School] [nvarchar](max) NULL,
	[Class] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 6/15/2021 2:01:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Dob] [datetime2](7) NOT NULL,
	[Gender] [bit] NULL,
	[Avatar] [nvarchar](max) NULL,
	[Degree] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210505020428___Init', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210505033552___AddTeacher', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210505035821___RemoveColumn', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210505101607___AddTableExam', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210511021140___AddColumnMappingId', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210609042719___AddQuestions', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210609042822___AddRelationQ_A', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210609080507___addAnswers', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210615021045___AddDurationColumn', N'5.0.5')
GO
INSERT [dbo].[Accounts] ([Id], [Username], [Password], [Role], [CreatedAt], [UpdatedAt]) VALUES (N'b1377636-a591-4431-a8a9-2ed7a156c494', N'admin', N'admin', 1, CAST(N'2021-05-05T10:08:10.4500000' AS DateTime2), CAST(N'2021-05-05T10:08:10.4500000' AS DateTime2))
GO
INSERT [dbo].[Answers] ([Id], [QuestionId], [AnswerValue], [IsTrue], [CreatedAt], [UpdatedAt]) VALUES (N'13903e9d-c5c3-472d-b104-0865e7e1626d', N'a5689b14-68ab-4e9b-a913-b688f9fc9647', N'a', 0, CAST(N'2021-06-09T16:20:36.6408524' AS DateTime2), CAST(N'2021-06-09T16:20:36.6408558' AS DateTime2))
INSERT [dbo].[Answers] ([Id], [QuestionId], [AnswerValue], [IsTrue], [CreatedAt], [UpdatedAt]) VALUES (N'81769cf4-d16c-4cf6-a1d0-261169fc1def', N'3bc52e6f-879b-4b3c-92b2-d69b1543ab3c', N'Deb', 0, CAST(N'2021-06-09T15:25:59.5070504' AS DateTime2), CAST(N'2021-06-09T15:25:59.5070507' AS DateTime2))
INSERT [dbo].[Answers] ([Id], [QuestionId], [AnswerValue], [IsTrue], [CreatedAt], [UpdatedAt]) VALUES (N'efe4bf28-2872-44a2-ac3f-37d4131cb44a', N'3bc52e6f-879b-4b3c-92b2-d69b1543ab3c', N'Fiona', 0, CAST(N'2021-06-09T15:25:59.4802338' AS DateTime2), CAST(N'2021-06-09T15:25:59.4802376' AS DateTime2))
INSERT [dbo].[Answers] ([Id], [QuestionId], [AnswerValue], [IsTrue], [CreatedAt], [UpdatedAt]) VALUES (N'698c3fa5-b6b7-4bbc-8c3f-41351a0d9b31', N'a5689b14-68ab-4e9b-a913-b688f9fc9647', N'b', 0, CAST(N'2021-06-09T16:20:36.6439468' AS DateTime2), CAST(N'2021-06-09T16:20:36.6439492' AS DateTime2))
INSERT [dbo].[Answers] ([Id], [QuestionId], [AnswerValue], [IsTrue], [CreatedAt], [UpdatedAt]) VALUES (N'1d5cc39f-a7be-43e5-a97e-78d59a80cb37', N'3bc52e6f-879b-4b3c-92b2-d69b1543ab3c', N'Lip', 0, CAST(N'2021-06-09T15:25:59.5067629' AS DateTime2), CAST(N'2021-06-09T15:25:59.5067668' AS DateTime2))
INSERT [dbo].[Answers] ([Id], [QuestionId], [AnswerValue], [IsTrue], [CreatedAt], [UpdatedAt]) VALUES (N'5d278ab5-4473-45f9-876d-cd6fc9babd39', N'a5689b14-68ab-4e9b-a913-b688f9fc9647', N'd', 0, CAST(N'2021-06-09T16:20:36.6440327' AS DateTime2), CAST(N'2021-06-09T16:20:36.6440330' AS DateTime2))
INSERT [dbo].[Answers] ([Id], [QuestionId], [AnswerValue], [IsTrue], [CreatedAt], [UpdatedAt]) VALUES (N'3cb8b63e-7953-4b01-8aa8-e9a7086ee251', N'3bc52e6f-879b-4b3c-92b2-d69b1543ab3c', N'Ian', 0, CAST(N'2021-06-09T15:25:59.5070042' AS DateTime2), CAST(N'2021-06-09T15:25:59.5070081' AS DateTime2))
INSERT [dbo].[Answers] ([Id], [QuestionId], [AnswerValue], [IsTrue], [CreatedAt], [UpdatedAt]) VALUES (N'bfa78ae5-9555-458f-97f5-ffcfec3a3414', N'a5689b14-68ab-4e9b-a913-b688f9fc9647', N'c', 0, CAST(N'2021-06-09T16:20:36.6440133' AS DateTime2), CAST(N'2021-06-09T16:20:36.6440137' AS DateTime2))
GO
INSERT [dbo].[Courses] ([Id], [Name], [Order], [Description], [Group], [CreatedAt], [UpdatedAt], [TeacherId], [Duration]) VALUES (N'469c5266-a51e-42cd-74e6-08d92bf98afe', N'CSharp Basic Tutorial', 1, N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
', 1, CAST(N'2021-06-10T17:21:42.8269701' AS DateTime2), CAST(N'2021-06-10T17:21:42.8278619' AS DateTime2), N'114451d9-c56b-4abd-81b0-7f3ee10c30e7', 120)
INSERT [dbo].[Courses] ([Id], [Name], [Order], [Description], [Group], [CreatedAt], [UpdatedAt], [TeacherId], [Duration]) VALUES (N'cf19ff54-98bb-4b91-74e7-08d92bf98afe', N'JS Tutorial For Beginner', 2, N'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
', 2, CAST(N'2021-06-10T17:22:20.3758845' AS DateTime2), CAST(N'2021-06-10T17:22:20.3758890' AS DateTime2), N'7d3deb5b-fe05-4967-b1ee-d88c31ec965c', 120)
INSERT [dbo].[Courses] ([Id], [Name], [Order], [Description], [Group], [CreatedAt], [UpdatedAt], [TeacherId], [Duration]) VALUES (N'f6f3ef1d-b98f-4adc-e003-08d92fa23fc7', N'VueJS Tutorial', 2, N'<h2>Why do we use it?</h2>

<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
', 1, CAST(N'2021-06-15T09:06:55.0775173' AS DateTime2), CAST(N'2021-06-15T09:06:55.0782208' AS DateTime2), N'114451d9-c56b-4abd-81b0-7f3ee10c30e7', 120)
INSERT [dbo].[Courses] ([Id], [Name], [Order], [Description], [Group], [CreatedAt], [UpdatedAt], [TeacherId], [Duration]) VALUES (N'a28df26f-1649-4376-ce4f-08d92fa36da5', N'Swift Tutorials', 2, N'<h2>Where can I get some?</h2>

<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
', 2, CAST(N'2021-06-15T09:15:21.5167067' AS DateTime2), CAST(N'2021-06-15T09:15:21.5173635' AS DateTime2), N'7d3deb5b-fe05-4967-b1ee-d88c31ec965c', 100)
GO
INSERT [dbo].[Exam] ([Id], [Name], [Description], [CreatedAt], [UpdatedAt]) VALUES (N'99925d6d-756c-4f3c-912a-86c820c83161', N'Middle Level', N'<p>&lt;p&gt;Middle Level&lt;/p&gt;</p>
', CAST(N'2021-06-07T14:22:39.3389824' AS DateTime2), CAST(N'2021-06-15T13:59:32.9077703' AS DateTime2))
INSERT [dbo].[Exam] ([Id], [Name], [Description], [CreatedAt], [UpdatedAt]) VALUES (N'993ca7b7-1d8a-480f-a6ac-8849b3872493', N'Senior Level', NULL, CAST(N'2021-06-15T10:52:18.6425165' AS DateTime2), CAST(N'2021-06-15T10:52:18.6431733' AS DateTime2))
GO
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'5299f0f9-d595-4146-8d67-06519f43a5fa', N'89a24c75-5492-47e8-beb3-0a1af304423e.JPG', N'', 2, CAST(N'2021-06-07T09:57:57.0484174' AS DateTime2), CAST(N'2021-06-07T09:57:57.0491927' AS DateTime2), N'622ed557-df05-4d77-ef54-08d929600d70')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'53cde126-6204-49e1-94f4-0a34b580fe99', N'860e3098-fa73-478d-ab1c-024abaa99389.jpg', N'', 2, CAST(N'2021-06-10T17:22:20.3920477' AS DateTime2), CAST(N'2021-06-10T17:22:20.3920560' AS DateTime2), N'cf19ff54-98bb-4b91-74e7-08d92bf98afe')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'c0d6b95a-ccd5-47a6-9be1-14434e986306', N'e6b33433-d283-4ad0-ab6f-61ca9aee64ea.jpg', N'', 2, CAST(N'2021-06-10T14:26:10.0853117' AS DateTime2), CAST(N'2021-06-10T14:26:10.0853195' AS DateTime2), N'0daf653e-aabc-46d4-43ae-08d92be0dd23')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'853a2f7d-ee5b-4613-9040-16c0d2275d75', N'b9dda40f-9b95-4050-bcee-e705ff382464.JPG', N'', 2, CAST(N'2021-05-13T10:58:33.4131433' AS DateTime2), CAST(N'2021-05-13T10:58:33.4137245' AS DateTime2), N'aa5f4b50-b819-49e9-53da-08d915c3608a')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'15c2ff75-eec3-475d-a1ff-1c9908b7905d', N'd0927df0-4dde-4b12-80ef-6a7ae24b32df.JPG', N'', 2, CAST(N'2021-05-11T09:34:47.1067054' AS DateTime2), CAST(N'2021-05-11T09:34:47.1076615' AS DateTime2), N'2d820380-c95e-41aa-7969-08d9142554e2')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'fb3985a8-9842-48bf-876f-1e13c846552f', N'1e986f97-d396-49fc-96ea-33d1513e9542.jpg', N'', 2, CAST(N'2021-06-10T17:21:42.8877236' AS DateTime2), CAST(N'2021-06-10T17:21:42.8882514' AS DateTime2), N'469c5266-a51e-42cd-74e6-08d92bf98afe')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'c39cdfb4-9c66-4432-9027-23264d678f28', N'9a60ac10-3892-4c10-a4ca-b41b86950820.png', N'', 1, CAST(N'2021-06-07T11:29:31.3894891' AS DateTime2), CAST(N'2021-06-07T11:29:31.3901263' AS DateTime2), N'114451d9-c56b-4abd-81b0-7f3ee10c30e7')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'ae2229e3-9bc1-4f8a-94bc-30f5ed9cff52', N'6cddd8b3-efcb-4507-9103-a0e27f0dc4fd.jpg', N'', 2, CAST(N'2021-06-10T14:25:03.2774418' AS DateTime2), CAST(N'2021-06-10T14:25:03.2780329' AS DateTime2), N'e9861fb7-e9a5-4369-43ab-08d92be0dd23')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'90f64379-271b-49c9-8712-32f5e0d047ae', N'40910193-9bed-4b27-8273-892ea240ad7c.png', N'', 1, CAST(N'2021-06-10T16:55:51.3131100' AS DateTime2), CAST(N'2021-06-10T16:55:51.3136316' AS DateTime2), N'7d3deb5b-fe05-4967-b1ee-d88c31ec965c')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'38f22913-1773-4638-b5e7-44dd5a37acb8', N'f57f4921-9fbd-4549-8697-4dcc78e933bf.JPG', N'', 1, CAST(N'2021-06-07T10:46:02.3112540' AS DateTime2), CAST(N'2021-06-07T10:46:02.3118362' AS DateTime2), N'8c4da87b-fddf-4c92-a553-79728b500958')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'0de09a40-9463-4685-b423-45a0991ed24d', N'e0a3a6ce-38fd-4ae7-8dcf-53d40fc66ef7.JPG', N'', 2, CAST(N'2021-05-13T17:52:14.6204168' AS DateTime2), CAST(N'2021-05-13T17:52:14.6214380' AS DateTime2), N'eef8986d-27a5-444e-7829-08d915fd2b25')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'd7a4aedd-5fc7-429f-b79d-48610b70b3f7', N'63108ea5-1667-4aaf-8120-8fbb3e1f19f7.jpg', N'', 4, CAST(N'2021-06-15T10:52:21.0360755' AS DateTime2), CAST(N'2021-06-15T10:52:21.0366648' AS DateTime2), N'993ca7b7-1d8a-480f-a6ac-8849b3872493')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'54924e8d-cd5e-4d24-9520-54a45f29250e', N'2eca9830-cf2f-431b-acf2-d3ff7e5c689a.png', N'', 1, CAST(N'2021-06-07T11:27:54.6354930' AS DateTime2), CAST(N'2021-06-07T11:27:54.6359968' AS DateTime2), N'f849dbc7-6901-4d54-97ae-b8b743ec67d4')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'79cb9e8e-a157-47b1-b528-66be4730475c', N'fedd971f-7513-44f7-acb5-457c9c5f7426.jpg', N'', 2, CAST(N'2021-06-10T14:25:24.1711842' AS DateTime2), CAST(N'2021-06-10T14:25:24.1711919' AS DateTime2), N'88483ea3-e025-442d-43ac-08d92be0dd23')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'6a2ea918-7992-40e4-85cc-841cd98b2f0a', N'd57a0354-ead8-438d-84b5-ff234e7819ba.JPG', N'', 2, CAST(N'2021-05-11T09:14:35.4514132' AS DateTime2), CAST(N'2021-05-11T09:14:35.4521861' AS DateTime2), N'47e83c83-a8f3-4628-4d41-08d9142284c7')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'444a50f5-1a3c-473e-99b3-85b31963e39c', N'4034852a-a99c-4a7c-9f80-0fbeab1a3afc.png', N'', 2, CAST(N'2021-06-15T09:06:55.1345563' AS DateTime2), CAST(N'2021-06-15T09:06:55.1351325' AS DateTime2), N'f6f3ef1d-b98f-4adc-e003-08d92fa23fc7')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'f437d77c-c91c-4c3f-9f74-8956fc5ce7ed', N'f8b5680c-cf6b-4909-8879-51f4d8356102.jpg', N'', 2, CAST(N'2021-06-15T09:15:21.7038274' AS DateTime2), CAST(N'2021-06-15T09:15:21.7047942' AS DateTime2), N'a28df26f-1649-4376-ce4f-08d92fa36da5')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'719014b0-8c15-49c3-8e80-96a63d791319', N'338369de-223e-48b6-9743-54d590941e64.png', N'', 4, CAST(N'2021-06-15T13:59:33.1335864' AS DateTime2), CAST(N'2021-06-15T13:59:33.1341107' AS DateTime2), N'99925d6d-756c-4f3c-912a-86c820c83161')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'803c42d3-73d8-40bf-92c8-a23c216209b6', N'b9163863-2026-4076-8af6-60c1c71af109.jpg', N'', 2, CAST(N'2021-06-07T11:31:06.2181650' AS DateTime2), CAST(N'2021-06-07T11:31:06.2181712' AS DateTime2), N'5189a51d-a0c6-4327-7643-08d9296d10e9')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'481a44c7-610f-40e5-a0e1-b10a7b1340a0', N'b5ddbec6-b32f-4eed-9b13-809485f5933e.JPG', N'', 2, CAST(N'2021-05-13T09:35:33.7429830' AS DateTime2), CAST(N'2021-05-13T09:35:33.7435628' AS DateTime2), N'fcf5b4aa-2c32-42de-e1fc-08d915b7c5ef')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'381292a5-8f5e-47e5-8e8e-dda577dcf525', N'009a4ca4-df82-4219-b8f9-42371c9fe7a6.jpg', N'', 2, CAST(N'2021-06-10T14:25:41.1871316' AS DateTime2), CAST(N'2021-06-10T14:25:41.1871385' AS DateTime2), N'f044ff6f-937d-465d-43ad-08d92be0dd23')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'47562036-a1ac-4d33-9a3e-ded94ba5406e', N'9e6bb77f-ad55-45ad-9554-c2852504b678.JPG', N'', 2, CAST(N'2021-06-07T10:41:43.8692701' AS DateTime2), CAST(N'2021-06-07T10:41:43.8703695' AS DateTime2), N'5a5bb9da-864e-484a-229a-08d929662b22')
INSERT [dbo].[Files] ([Id], [Name], [FilePath], [FileType], [CreatedAt], [UpdatedAt], [MappingId]) VALUES (N'a8c2fa02-a2ba-4135-8ecc-fd94e90433b6', N'2e3d39a7-b6f8-4589-96cc-f9e37b14068f.jpg', N'', 2, CAST(N'2021-06-10T17:22:39.6265130' AS DateTime2), CAST(N'2021-06-10T17:22:39.6265215' AS DateTime2), N'4e2f4d4b-ba92-47c0-74e8-08d92bf98afe')
GO
INSERT [dbo].[Lessions] ([Id], [Name], [CourseId], [VideoUrl], [Content], [Teacher], [CreatedAt], [UpdatedAt]) VALUES (N'5dfcacda-9806-4077-8032-c31591310cc0', N'Lession 1: Setup env', N'469c5266-a51e-42cd-74e6-08d92bf98afe', NULL, N'<h2>Where can I get some?</h2>

<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
', NULL, CAST(N'2021-06-15T13:35:59.0522619' AS DateTime2), CAST(N'2021-06-15T13:35:59.0530819' AS DateTime2))
GO
INSERT [dbo].[Questions] ([Id], [LessionId], [Content], [CreatedAt], [UpdatedAt], [ExamId]) VALUES (N'a5689b14-68ab-4e9b-a913-b688f9fc9647', NULL, N'<p>Where?</p>
', CAST(N'2021-06-09T16:20:36.4765417' AS DateTime2), CAST(N'2021-06-09T16:20:36.4769829' AS DateTime2), N'99925d6d-756c-4f3c-912a-86c820c83161')
INSERT [dbo].[Questions] ([Id], [LessionId], [Content], [CreatedAt], [UpdatedAt], [ExamId]) VALUES (N'3bc52e6f-879b-4b3c-92b2-d69b1543ab3c', NULL, N'<p>Who?</p>
', CAST(N'2021-06-09T15:25:59.2833165' AS DateTime2), CAST(N'2021-06-09T15:25:59.2839623' AS DateTime2), N'99925d6d-756c-4f3c-912a-86c820c83161')
GO
INSERT [dbo].[Students] ([Id], [Username], [Password], [Dob], [School], [Class], [Name], [Email], [Phone], [Address], [CreatedAt], [UpdatedAt]) VALUES (N'dff61168-8dd8-410e-a78c-fa5be1394d80', N'trongnhan', N'nhan', CAST(N'1994-09-10T00:00:00.0000000' AS DateTime2), N'HUMG', N'CNPM', N'Phạm Trọng Nhân', N'trongnhan1110i@gmail.com', N'0775331777', N'Co Nhue, Tu Liem, Ha Noi.', CAST(N'2021-06-10T15:37:14.3665282' AS DateTime2), CAST(N'2021-06-10T15:37:14.3670931' AS DateTime2))
GO
INSERT [dbo].[Teacher] ([Id], [Name], [Dob], [Gender], [Avatar], [Degree], [CreatedAt], [UpdatedAt]) VALUES (N'114451d9-c56b-4abd-81b0-7f3ee10c30e7', N'Đoàn Như Quỳnh', CAST(N'1994-02-25T00:00:00.0000000' AS DateTime2), 0, N'', N'Master', CAST(N'2021-06-07T11:29:31.1142504' AS DateTime2), CAST(N'2021-06-07T11:29:31.1146852' AS DateTime2))
INSERT [dbo].[Teacher] ([Id], [Name], [Dob], [Gender], [Avatar], [Degree], [CreatedAt], [UpdatedAt]) VALUES (N'7d3deb5b-fe05-4967-b1ee-d88c31ec965c', N'Nguyễn Phương Hoa', CAST(N'2021-06-01T00:00:00.0000000' AS DateTime2), 0, N'', N'Doctor', CAST(N'2021-06-10T16:55:51.1522527' AS DateTime2), CAST(N'2021-06-10T16:55:51.1526055' AS DateTime2))
GO
ALTER TABLE [dbo].[Courses] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [TeacherId]
GO
ALTER TABLE [dbo].[Courses] ADD  DEFAULT ((0)) FOR [Duration]
GO
ALTER TABLE [dbo].[Files] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [MappingId]
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions_QuestionId]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Teacher_TeacherId] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Teacher_TeacherId]
GO
ALTER TABLE [dbo].[Lessions]  WITH CHECK ADD  CONSTRAINT [FK_Lessions_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lessions] CHECK CONSTRAINT [FK_Lessions_Courses_CourseId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Exam_ExamId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Lessions_LessionId] FOREIGN KEY([LessionId])
REFERENCES [dbo].[Lessions] ([Id])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Lessions_LessionId]
GO
ALTER TABLE [dbo].[StudentLessions]  WITH CHECK ADD  CONSTRAINT [FK_StudentLessions_Lessions_LessionId] FOREIGN KEY([LessionId])
REFERENCES [dbo].[Lessions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentLessions] CHECK CONSTRAINT [FK_StudentLessions_Lessions_LessionId]
GO
ALTER TABLE [dbo].[StudentLessions]  WITH CHECK ADD  CONSTRAINT [FK_StudentLessions_Students_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentLessions] CHECK CONSTRAINT [FK_StudentLessions_Students_StudentId]
GO
