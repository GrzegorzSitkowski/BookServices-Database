﻿CREATE TABLE [dbo].[Reservations]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Name] VARCHAR(50) NOT NULL,
	[UserName] VARCHAR(100) NOT NULL,
	[WorkerName] VARCHAR(50) NOT NULL,
	[VenueName] VARCHAR(100) NOT NULL,
	[UserId] INT NOT NULL,
	[VenueId] INT NOT NULL,
	[WorkerId] INT NOT NULL,
	[ServiceId] INT NOT NULL,
	[DateFrom] DATETIMEOFFSET NOT NULL,
	[DateTo] DATETIMEOFFSET NOT NULL,
	[Status] VARCHAR(20) NOT NULL,
	[CreatedDate] DATETIMEOFFSET NOT NULL,
	CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Reservations_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_Reservations_Venues] FOREIGN KEY ([VenueId]) REFERENCES [dbo].[Venues] ([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_Reservations_Workers] FOREIGN KEY ([WorkerId]) REFERENCES [dbo].[Workers] ([Id])
)
