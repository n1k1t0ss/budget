CREATE TABLE [dbo].[Operation] (
    [Id]       INT             NOT NULL,
    [Amount]   MONEY NOT NULL,
    [Date]     DATETIME        NOT NULL,
    [UserId]   INT             NULL,
    [IsPlaned] BIT             NOT NULL,
    CONSTRAINT [PK_Operation] PRIMARY KEY CLUSTERED ([Id] ASC)
);



