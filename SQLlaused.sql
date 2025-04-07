--kommentaar
--SQL SERVER Mangement Stuudio
--Conect To:
--Server name: (localdb)\MSSQLLocalDB
-- Authentification 2 tüüpi:
--1. Windows Auth - localdb admini õigused
--2.SQL Server auth - kontrallida varem tehtud kasutajad

CREATE DATABASE solovjovLOGITpv23;
USE solovjovLOGITpv23;

--tabeli loomine
--identity(1,1)-ise taidab tabeli 1,2,3...
CREATE TABLE inimene(
inimeneID int Primary key identity(1,1),
nimi varchar(50) unique,
synniaeg date,
telefon char(12),
pikkus decimal(5,2),
opilaskodu bit,
);
SELECT * FROM inimene;

--tabeli kustutamine
DROp table inimene;

--andmete lisamine
--DDL - datadefinition language
--DML - data manipulation language

INSERT INTO inimene(nimi, synniaeg, telefon, pikkus, opilaskodu)
VALUES
('Dima Kaskk', '2021-12-29', '2568951', 94.5, 0),
('Kasper Kaskk', '2021-12-28', '2568953', 93.5, 0),
('Danik Kaskk', '2021-12-27', '2568954', 92.5, 0),
('Peeter Kaskk', '2021-12-26', '2568955', 91.5, 0)

SELECT * FROM inimene;

DELETE FROM inimene
WHERE inimeneID=3
