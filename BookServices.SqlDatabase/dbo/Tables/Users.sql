﻿CREATE TABLE [dbo].[Users] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (50) NOT NULL,
    [LastName] NVARCHAR (50) NOT NULL,
    [Email]           NVARCHAR (100) NOT NULL,
    [HashedPassword]  NVARCHAR (200) NOT NULL,
    [Type] NVARCHAR(20) NOT NULL,
    [RegisterDate]    DATETIMEOFFSET  NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE unique INDEX [UQ_Users_Email] ON [dbo].[Users] ([Email])