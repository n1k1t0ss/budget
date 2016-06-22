CREATE TABLE [dbo].[Category] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50) NOT NULL,
    [ParentId] INT            NULL,
    [UserId]   INT            NOT NULL,
    [ParentPath] [sys].[hierarchyid] NULL, 
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([Id] ASC)
);

