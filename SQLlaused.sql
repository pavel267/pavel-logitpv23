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
