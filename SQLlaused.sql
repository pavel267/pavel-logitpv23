
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

INSERT INTO inimene (nimi, synniaeg, telefon, pikkus, opilaskodu)
VALUES
('Dima Kaskak', '2011-12-29', '2568951', 94.5, 0),
('Kasper Kaskk', '2021-12-28', '2568953', 93.5, 0),
('Danik Kaskk', '2021-12-27', '2568954', 92.5, 0),
('Peeter Kaskk', '2021-12-26', '2568955', 91.5, 0)

SELECT * FROM inimene;

DELETE FROM inimene
WHERE inimeneID=3
CREATE TABLE elukoht(
elukohtID int PRIMARY KEY IDENTITY(1,1),
elukoht varchar(50) UNIQUE,
maakond varchar(50)
);
SELECT * FROM elukoht;
--andmete lisamine tabeli elukoht
INSERT INTO elukoht(elukoht, maakond)
VALUES ('TARTU', 'TARTUMAA'),
('PARNU', 'PARNUMAA')


--tabeli muutmine uue veergu lisamine 
ALTER TABLE inimene ADD elukohtID int;
SELECT * from inimene;
--foreign key lisamine
alter table inimene add constraint fk_elukoht
foreign key (elukohtID) references elukoht(elukohtID);



SELECT * FROM elukoht;
SELECT * FROM inimene;


insert into inimene
(nimi, synniaeg, telefon, pikkus, opilaskodu, elukohtID)
VALUES
('Dima Kaskaksq', '2001-12-29', '2568251', 94.5, 0, 3);
select * from inimene join elukoht
on inimene.elukohtID=elukoht.elukohtID;

select inimene.nimi, inimene.synniaeg, elukoht.elukoht from inimene join elukoht
on inimene.elukohtID=elukoht.elukohtID;

select i.nimi, i.synniaeg, e.elukoht 
from inimene i join elukoht e
on i.elukohtID=e.elukohtID;





CREATE TABLE auto(
autoID int PRIMARY KEY IDENTITY(1,1),
autoNR varchar (6) UNIQUE,
mudel varchar(50),
mark varchar(50),
v_aasta date 
);


alter table inimene add autoID int;
alter table inimene
add constraint fk_auto
foreign key (autoID)
references auto(autoID);

select * from auto;


INSERT INTO auto(autoNR, mudel, mark, v_aasta)
VALUES ('KLT657', 's-class', 'mersedes', '2000'),
('KRT647', 'a-class', 'mersedes', '2002'),
('KGT656', 'c-class', 'mersedes', '2001');

select a.autoNR, a.mudel, a.mark, a.v_aasta 
from auto a join inimene i
on 
on i.elukohtID=e.elukohtID;

select * from auto

insert into inimene 
(nimi, synniaeg, telefon, pikkus,  opilaskodu, elukohtID, autoID)
values ('ssl', '2003', '1414214', 100.00, 0, 1, 1)



select i.nimi, a.v_aasta, a.mark, a.mudel
from inimene i join auto a
on i.elukohtID=a.autoID;

DROp table auto;

DELETE FROM inimene
WHERE inimeneID=3

create database Pavel


use pavel
create table uusTabel(
 id int primary key identity(1,1),
testnimi varchar(25));

Insert into uusTabel(testnimi)
values ('test');
Select * from uusTabel

--lisabuus veerg
Alter table uusTabel ADD testvanus int;
--lustutab veerg
alter table uusTabel drop testvanus;
--teeme kasutaja kes saab tabeli strukteeri muuta
Grant alter on uusTabel to kasutajapavel;

grant alter to kasutajapavel;


--kasutaja saab luua tabeleid 
grant create table to kasutajapavel
grant control on schema ::dbo to kasutajapavel 

Select * from uusTabel 
alter table ussTabel add testvanus int;
alter table uusTabel drop column testvanus;
