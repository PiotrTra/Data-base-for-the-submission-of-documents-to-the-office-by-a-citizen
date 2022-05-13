set client_encoding to 'utf8';
CREATE TABLE obywatel
(   
    nr serial,
    imie varchar(16) not null,
    pesel varchar(11) not null,
    nazwisko varchar(32) not null,
    data_modyfikacji date not null,
    CONSTRAINT nr_pk PRIMARY KEY(nr),	
    CONSTRAINT pesel_pk UNIQUE(pesel)
);
CREATE TABLE izba_kontrolna
(
    data_kontroli date,
    przebieg_kontroli varchar(16),
    nr_izby serial,
    CONSTRAINT nr_izby_pk PRIMARY KEY(nr_izby)
);
CREATE TABLE dokument
(
    Typ_dokument varchar(64),
    Numer_dokumentu varchar(16) not null,
    Nr_pesel varchar(11) not null,
    CONSTRAINT nr_dok_pk PRIMARY KEY(Numer_dokumentu),
    CONSTRAINT pesel_fk FOREIGN KEY(Nr_pesel)
                        REFERENCES obywatel(pesel)
);
CREATE TABLE urzad
( 
    Nr_dokumentu varchar(16) not null,
    Nr_urzedu serial,
    CONSTRAINT Nr_ur_pk PRIMARY KEY(Nr_urzedu),
    CONSTRAINT pesel_fk FOREIGN KEY(Nr_dokumentu)
                        REFERENCES dokument(Numer_dokumentu)
);
CREATE TABLE informuje
(
decyzja varchar(15),
Nr_pesel_obw varchar(11) not null,
Nr_dok_obw varchar(16) not null,
CONSTRAINT informuje_obw_pk PRIMARY KEY(Nr_pesel_obw,Nr_dok_obw),
CONSTRAINT nr_pesel_fk FOREIGN KEY(Nr_pesel_obw)
                        REFERENCES obywatel(pesel),
CONSTRAINT nr_dokumentu_fk FOREIGN KEY (Nr_dok_obw)
                         REFERENCES dokument(Numer_dokumentu)
);
CREATE TABLE przeprowadza_kontrole
(
  opis_kontroli varchar(15),
  Nr_iz int not null,
  Nr_ur int not null,
  CONSTRAINT nr_budynkow PRIMARY KEY (Nr_iz,Nr_ur),
  CONSTRAINT nr_budynku_fk FOREIGN KEY(Nr_iz)
                            REFERENCES izba_kontrolna(nr_izby),
  CONSTRAINT nr_bud_fk FOREIGN KEY(Nr_ur)
                            REFERENCES izba_kontrolna(Nr_urzedu)
);