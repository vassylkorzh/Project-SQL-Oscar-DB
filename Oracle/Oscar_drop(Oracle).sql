-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-06-12 09:31:54.787

-- foreign keys
ALTER TABLE NadJakimFilmemPracolaw
    DROP CONSTRAINT NadJakimFilmem_Czlowiek;

ALTER TABLE NadJakimFilmemPracolaw
    DROP CONSTRAINT NadJakimFilmem_Film;

ALTER TABLE NadJakimFilmemPracolaw
    DROP CONSTRAINT NadJakimFilmem_Role;

ALTER TABLE Nagroda
    DROP CONSTRAINT Nagroda_Ceremonia;

ALTER TABLE ZwyciezcaFilm
    DROP CONSTRAINT Table_17_Film;

ALTER TABLE ZwyciezcaCzlowiek
    DROP CONSTRAINT ZwyciezcaClowiek_Czlowiek;

ALTER TABLE ZwyciezcaCzlowiek
    DROP CONSTRAINT ZwyciezcaClowiek_Nagroda;

ALTER TABLE ZwyciezcaFilm
    DROP CONSTRAINT ZwyciezcaFilm_Nagroda;

-- tables
DROP TABLE Ceremonia;

DROP TABLE Czlowiek;

DROP TABLE Film;

DROP TABLE NadJakimFilmemPracolaw;

DROP TABLE Nagroda;

DROP TABLE Role;

DROP TABLE ZwyciezcaCzlowiek;

DROP TABLE ZwyciezcaFilm;

-- End of file.

