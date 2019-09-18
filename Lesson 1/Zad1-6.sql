CREATE DATABASE MINIONS

GO

USE MINIONS

CREATE TABLE Minions 
(
Id INT NOT NULL,
[Name] VARCHAR(50),
Age INT
)

CREATE TABLE Towns 
(
Id INT NOT NULL,
[Name] VARCHAR(50)
)

ALTER TABLE Minions
ADD CONSTRAINT PK_Id
PRIMARY KEY (Id)


ALTER TABLE Towns
ADD CONSTRAINT PK_TownId
PRIMARY KEY (Id)

GO

ALTER TABLE Minions
ADD TownID INT NOT NULL

ALTER TABLE Minions
ADD CONSTRAINT FK_TownId
FOREIGN KEY (TownId) REFERENCES Towns(Id)

GO

INSERT INTO Towns (Id, [Name]) VALUES
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna')

INSERT INTO Minions (Id, [Name], Age, TownId) VALUES
(1, 'Kevin', 22, 1),
(2, 'Bob', 15, 3),
(3, 'Steward', NULL, 2)

GO

TRUNCATE TABLE MINIONS

GO

DROP TABLE Minions

DROP TABLE Towns

