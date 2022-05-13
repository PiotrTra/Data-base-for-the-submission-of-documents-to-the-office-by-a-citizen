set client_encoding to 'utf8';

INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('1','Piotr','57483957695','Makłowicz');
INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('2','Renata','05311050900','Smolińska');
INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('3','Gustaw','88090573853','Kot');
INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('4','Filip','94101125306','Makłowicz');
INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('5','Cezary','81082360714','Nawrocki');
INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('6','Kuba','57061615351','Wawrzyniak');
INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('7','Rafał','49081269410','Kłusowski');
INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('8','Piotr','20052858079','Kalinowski');
INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('9','Maciek','65079856032','Student');
INSERT INTO obywatel (nr,imie,pesel,nazwisko) values('10','Franek','20057578079','Nieciecholski');

INSERT INTO izba_kontrolna (data_kontroli,przebieg_kontroli,nr_izby) values ('25-11-2020','zakonczona','26');
INSERT INTO izba_kontrolna (data_kontroli,przebieg_kontroli,nr_izby) values ('12-07-2021',null,'14');
INSERT INTO izba_kontrolna (data_kontroli,przebieg_kontroli,nr_izby) values ('24-01-2019','zakonczona','13');
INSERT INTO izba_kontrolna (data_kontroli,przebieg_kontroli,nr_izby) values ('04-12-2022',null,'05');
INSERT INTO izba_kontrolna (data_kontroli,przebieg_kontroli,nr_izby) values (null,null,'75');
INSERT INTO izba_kontrolna (data_kontroli,przebieg_kontroli,nr_izby) values ('13-05-2017','zakonczona','42');
INSERT INTO izba_kontrolna (data_kontroli,przebieg_kontroli,nr_izby) values ('17-03-2020','zakonczona','67');
INSERT INTO izba_kontrolna (data_kontroli,przebieg_kontroli,nr_izby) values ('23-10-2022',null,'86');

INSERT INTO dokument(Typ_dokument,Numer_dokumentu,Nr_pesel) values ('wniosek podlaczenie wody do dzialki','1240','57483957695');
INSERT INTO dokument(Typ_dokument,Numer_dokumentu,Nr_pesel) values ('wniosek o wydanie paszportu','7469','05311050900');
INSERT INTO dokument(Typ_dokument,Numer_dokumentu,Nr_pesel) values ('wniosek o wydanie dowodu osobiestego','1345','88090573853');
INSERT INTO dokument(Typ_dokument,Numer_dokumentu,Nr_pesel) values ('zarejestrowanie auta','3256','94101125306');
INSERT INTO dokument(Typ_dokument,Numer_dokumentu,Nr_pesel) values ('wniosek o wydanie paszportu','7564','81082360714');
INSERT INTO dokument(Typ_dokument,Numer_dokumentu,Nr_pesel) values ('wniosek podlaczenie pradu do dzialki','9768','57061615351');
INSERT INTO dokument(Typ_dokument,Numer_dokumentu,Nr_pesel) values ('wniosek podlaczenie wody do dzialki','2164','49081269410');
INSERT INTO dokument(Typ_dokument,Numer_dokumentu,Nr_pesel) values ('zarejestrowanie auta','1647','20052858079');

INSERT INTO urzad (Nr_dokumentu,Nr_urzedu) values ('1240','25');
INSERT INTO urzad (Nr_dokumentu,Nr_urzedu) values ('7469','35');    
INSERT INTO urzad (Nr_dokumentu,Nr_urzedu) values ('1345','12');
INSERT INTO urzad (Nr_dokumentu,Nr_urzedu) values ('3256','68');
INSERT INTO urzad (Nr_dokumentu,Nr_urzedu) values ('7564','95');
INSERT INTO urzad (Nr_dokumentu,Nr_urzedu) values ('9768','32');
INSERT INTO urzad (Nr_dokumentu,Nr_urzedu) values ('2164','10');
INSERT INTO urzad (Nr_dokumentu,Nr_urzedu) values ('1647','23');


INSERT INTO informuje(decyzja,Nr_pesel_obw,Nr_dok_obw) values ('odrzucony','57483957695','1240');
INSERT INTO informuje(decyzja,Nr_pesel_obw,Nr_dok_obw) values ('zatwierdzony','05311050900','7469');
INSERT INTO informuje(decyzja,Nr_pesel_obw,Nr_dok_obw) values ('zatwierdzony','88090573853','1345');
INSERT INTO informuje(decyzja,Nr_pesel_obw,Nr_dok_obw) values ('odrzucony','94101125306','3256');
INSERT INTO informuje(decyzja,Nr_pesel_obw,Nr_dok_obw) values ('zatwierdzony','81082360714','7564');
INSERT INTO informuje(decyzja,Nr_pesel_obw,Nr_dok_obw) values ('zatwierdzony','57061615351','9768');
INSERT INTO informuje(decyzja,Nr_pesel_obw,Nr_dok_obw) values ('odrzucony','49081269410','2164');
INSERT INTO informuje(decyzja,Nr_pesel_obw,Nr_dok_obw) values ('zatwierdzony','20052858079','1647');



INSERT INTO przeprowadza_kontrole(opis_kontroli,Nr_iz,Nr_ur) values('kontrola wewnętrzna','26','25');
INSERT INTO przeprowadza_kontrole(opis_kontroli,Nr_iz,Nr_ur) values('kontrola finansowa','14','35');
INSERT INTO przeprowadza_kontrole(opis_kontroli,Nr_iz,Nr_ur) values('kontrola administracyjna','13','12');
INSERT INTO przeprowadza_kontrole(opis_kontroli,Nr_iz,Nr_ur) values('kontrola wewnętrzna','05','68');
INSERT INTO przeprowadza_kontrole(opis_kontroli,Nr_iz,Nr_ur) values('kontrola sanepidowska','75','95');
INSERT INTO przeprowadza_kontrole(opis_kontroli,Nr_iz,Nr_ur) values('kontrola finansowa','42','32');
INSERT INTO przeprowadza_kontrole(opis_kontroli,Nr_iz,Nr_ur) values('kontrola antymobingowa','67','10');
INSERT INTO przeprowadza_kontrole(opis_kontroli,Nr_iz,Nr_ur) values('kontrola administracyjna','86','23');



