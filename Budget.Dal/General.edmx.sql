
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/17/2016 00:45:00
-- Generated from EDMX file: D:\DEV\Budget\Budget.Dal\General.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [dbbudget];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_OperationCategory_Category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OperationCategory] DROP CONSTRAINT [FK_OperationCategory_Category];
GO
IF OBJECT_ID(N'[dbo].[FK_OperationCategory_Operation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OperationCategory] DROP CONSTRAINT [FK_OperationCategory_Operation];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Category]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Category];
GO
IF OBJECT_ID(N'[dbo].[Operation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Operation];
GO
IF OBJECT_ID(N'[dbo].[OperationCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OperationCategory];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Operation'
CREATE TABLE [dbo].[Operation] (
    [Id] int  NOT NULL,
    [Amount] decimal(19,4)  NOT NULL,
    [Date] datetime  NOT NULL,
    [Type] tinyint  NOT NULL,
    [UserId] int  NULL,
    [IsPlaned] bit  NOT NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Email] varchar(100)  NOT NULL,
    [Password] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Category'
CREATE TABLE [dbo].[Category] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [ParentId] int  NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'OperationCategory'
CREATE TABLE [dbo].[OperationCategory] (
    [Operations_Id] int  NOT NULL,
    [Categories_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Operation'
ALTER TABLE [dbo].[Operation]
ADD CONSTRAINT [PK_Operation]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Category'
ALTER TABLE [dbo].[Category]
ADD CONSTRAINT [PK_Category]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Operations_Id], [Categories_Id] in table 'OperationCategory'
ALTER TABLE [dbo].[OperationCategory]
ADD CONSTRAINT [PK_OperationCategory]
    PRIMARY KEY CLUSTERED ([Operations_Id], [Categories_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Operations_Id] in table 'OperationCategory'
ALTER TABLE [dbo].[OperationCategory]
ADD CONSTRAINT [FK_OperationCategory_Operation]
    FOREIGN KEY ([Operations_Id])
    REFERENCES [dbo].[Operation]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Categories_Id] in table 'OperationCategory'
ALTER TABLE [dbo].[OperationCategory]
ADD CONSTRAINT [FK_OperationCategory_Category]
    FOREIGN KEY ([Categories_Id])
    REFERENCES [dbo].[Category]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OperationCategory_Category'
CREATE INDEX [IX_FK_OperationCategory_Category]
ON [dbo].[OperationCategory]
    ([Categories_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------