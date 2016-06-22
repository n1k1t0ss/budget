CREATE TABLE [dbo].[OperationCategory] (
    [Operations_Id] INT NOT NULL,
    [Categories_Id] INT NOT NULL,
    CONSTRAINT [PK_OperationCategory] PRIMARY KEY CLUSTERED ([Operations_Id] ASC, [Categories_Id] ASC),
    CONSTRAINT [FK_OperationCategory_Category] FOREIGN KEY ([Categories_Id]) REFERENCES [dbo].[Category] ([Id]),
    CONSTRAINT [FK_OperationCategory_Operation] FOREIGN KEY ([Operations_Id]) REFERENCES [dbo].[Operation] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_FK_OperationCategory_Category]
    ON [dbo].[OperationCategory]([Categories_Id] ASC);

