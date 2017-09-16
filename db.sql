/*MAKE THE DATABASE IN DDL FORMAT*/
CREATE DATABASE EaglePetStoreDB_Johnson
ON 
(NAME = EalgePet_dat,
FILENAME = 'E:\SQL_Data\SQL07\Project05\EaglePet_dat.mdf',
SIZE = 3 ,
FILEGROWTH = 8%)

LOG ON 
(NAME = EaglePet_log,
FILENAME = 'E:\SQL_Data\SQL07\Project05\EaglePet_log.ldf',
SIZE = 1MB,
FILEGROWTH = 500KB
);











