-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-01-29 14:56:33.082

-- tables
-- Table: Ceremonia
CREATE TABLE Ceremonia (
    Numer integer  NOT NULL,
    Rok date  NOT NULL,
    CONSTRAINT Ceremonia_pk PRIMARY KEY (Numer,Rok)
) ;

-- Table: Czlowiek
CREATE TABLE Czlowiek (
    IdCzlowiek integer  NOT NULL,
    Imie varchar2(20)  NOT NULL,
    Nazwisko varchar2(20)  NOT NULL,
    DataNarodzenia date  NOT NULL,
    Kraj varchar2(20)  NOT NULL,
    Plec varchar2(1)  NOT NULL,
    CONSTRAINT Czlowiek_pk PRIMARY KEY (IdCzlowiek)
) ;

-- Table: Film
CREATE TABLE Film (
    IdFilm integer  NOT NULL,
    Nazwa varchar2(30)  NOT NULL,
    Premiera date  NOT NULL,
    CONSTRAINT Film_pk PRIMARY KEY (IdFilm)
) ;

-- Table: NadJakimFilmemPracolaw
CREATE TABLE NadJakimFilmemPracolaw (
    idnjfp int  NOT NULL,
    Film_IdFilm int  NOT NULL,
    Role_IdRoli int  NOT NULL,
    Czlowiek_IdCzlowiek int  NOT NULL,
    CONSTRAINT NadJakimFilmemPracolaw_pk PRIMARY KEY (idnjfp)
) ;

-- Table: Nagroda
CREATE TABLE Nagroda (
    IdNagroda integer  NOT NULL,
    Kategoria varchar2(40)  NOT NULL,
    Ceremonia_Numer integer  NOT NULL,
    Ceremonia_Rok date  NOT NULL,
    CONSTRAINT Nagroda_pk PRIMARY KEY (IdNagroda)
) ;

-- Table: Role
CREATE TABLE Role (
    IdRoli integer  NOT NULL,
    Rola varchar2(25)  NOT NULL,
    CONSTRAINT Role_pk PRIMARY KEY (IdRoli)
) ;

-- Table: ZwyciezcaCzlowiek
CREATE TABLE ZwyciezcaCzlowiek (
    Nagroda_IdNagroda int  NOT NULL,
    Czlowiek_IdCzlowiek int  NOT NULL,
    CONSTRAINT ZwyciezcaCzlowiek_pk PRIMARY KEY (Nagroda_IdNagroda)
) ;

-- Table: ZwyciezcaFilm
CREATE TABLE ZwyciezcaFilm (
    Nagroda_IdNagroda int  NOT NULL,
    Film_IdFilm int  NOT NULL,
    CONSTRAINT ZwyciezcaFilm_pk PRIMARY KEY (Nagroda_IdNagroda)
) ;

-- foreign keys
-- Reference: NadJakimFilmem_Czlowiek (table: NadJakimFilmemPracolaw)
ALTER TABLE NadJakimFilmemPracolaw ADD CONSTRAINT NadJakimFilmem_Czlowiek
    FOREIGN KEY (Czlowiek_IdCzlowiek)
    REFERENCES Czlowiek (IdCzlowiek);

-- Reference: NadJakimFilmem_Film (table: NadJakimFilmemPracolaw)
ALTER TABLE NadJakimFilmemPracolaw ADD CONSTRAINT NadJakimFilmem_Film
    FOREIGN KEY (Film_IdFilm)
    REFERENCES Film (IdFilm);

-- Reference: NadJakimFilmem_Role (table: NadJakimFilmemPracolaw)
ALTER TABLE NadJakimFilmemPracolaw ADD CONSTRAINT NadJakimFilmem_Role
    FOREIGN KEY (Role_IdRoli)
    REFERENCES Role (IdRoli);

-- Reference: Nagroda_Ceremonia (table: Nagroda)
ALTER TABLE Nagroda ADD CONSTRAINT Nagroda_Ceremonia
    FOREIGN KEY (Ceremonia_Numer,Ceremonia_Rok)
    REFERENCES Ceremonia (Numer,Rok);

-- Reference: Table_17_Film (table: ZwyciezcaFilm)
ALTER TABLE ZwyciezcaFilm ADD CONSTRAINT Table_17_Film
    FOREIGN KEY (Film_IdFilm)
    REFERENCES Film (IdFilm);

-- Reference: ZwyciezcaClowiek_Czlowiek (table: ZwyciezcaCzlowiek)
ALTER TABLE ZwyciezcaCzlowiek ADD CONSTRAINT ZwyciezcaClowiek_Czlowiek
    FOREIGN KEY (Czlowiek_IdCzlowiek)
    REFERENCES Czlowiek (IdCzlowiek);

-- Reference: ZwyciezcaClowiek_Nagroda (table: ZwyciezcaCzlowiek)
ALTER TABLE ZwyciezcaCzlowiek ADD CONSTRAINT ZwyciezcaClowiek_Nagroda
    FOREIGN KEY (Nagroda_IdNagroda)
    REFERENCES Nagroda (IdNagroda);

-- Reference: ZwyciezcaFilm_Nagroda (table: ZwyciezcaFilm)
ALTER TABLE ZwyciezcaFilm ADD CONSTRAINT ZwyciezcaFilm_Nagroda
    FOREIGN KEY (Nagroda_IdNagroda)
    REFERENCES Nagroda (IdNagroda);

-- End of file.

