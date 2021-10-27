USE [WorkSara]
GO

/****** Object:  Table [dbo].[Prodacts]    Script Date: 24/10/2021 21:37:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Prodacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[NameProduct] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Prodacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Prodacts]  WITH CHECK ADD  CONSTRAINT [FK_Prodacts_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO

ALTER TABLE [dbo].[Prodacts] CHECK CONSTRAINT [FK_Prodacts_Categories]
GO


