--create table Theaters
--(
--	Id int primary key identity(1, 1),
--	[Name] varchar(200) not null,
--	City varchar(100) not null
--)


--Insert into Theaters
--Values
--('Balaji Moviplex', 'Kopar Khairane')


--select * from Theaters

--CREATE TABLE [Shows]
--(
--    Id        int IDENTITY(1, 1) PRIMARY KEY,
--    TheaterId int NOT NULL,
--    Title     varchar(150) NOT NULL,
--    StartAt   datetime NOT NULL,

--    CONSTRAINT Theater_Show_FK
--        FOREIGN KEY (TheaterId) REFERENCES Theaters(Id)
--);

--Insert into Shows
--values
--(1, 'Drishyam 3', '2026-10-17 12:30:00') 

--create table Seats
--(
--	Id int primary key identity(1, 1),
--	ShowId int not null,
--	RowNum int Not null,
--	SeatNum int not null,
--	[State] int not null,
--	HeldUntil DateTime not null,
--	HeldBy varchar(200),
--	[RowVersion] int not null,

--	CONSTRAINT Show_Seats_FK
--		Foreign key (ShowId) References Shows(Id)

	
--)

--ALTER TABLE Seats
--ALTER COLUMN HeldUntil datetime NULL;

--ALTER TABLE Seats
--ALTER COLUMN [RowVersion] datetime NULL;

--DECLARE @ShowId int = 1;

--WITH Rows AS
--(
--    SELECT 1 AS RowNum
--    UNION ALL
--    SELECT RowNum + 1
--    FROM Rows
--    WHERE RowNum < 20
--),
--SeatNumbers AS
--(
--    SELECT 1 AS SeatNum
--    UNION ALL
--    SELECT SeatNum + 1
--    FROM SeatNumbers
--    WHERE SeatNum < 30
--)
--INSERT INTO Seats (ShowId, RowNum, SeatNum, [State], HeldUntil, HeldBy)
--SELECT
--    @ShowId,
--    r.RowNum,
--    s.SeatNum,
--    0,          -- Available
--    NULL,       -- Not held
--    NULL        -- Not held by anyone
--FROM Rows r
--CROSS JOIN SeatNumbers s
--OPTION (MAXRECURSION 30);


--select * from seats


--select * from Theaters th
--inner join Shows sh
--on th.Id = sh.TheaterId
--inner join Seats st
--on sh.Id = st.ShowId