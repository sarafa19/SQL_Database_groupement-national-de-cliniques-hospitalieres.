use encore;
CREATE TABLE CLINIQUE(
   ID_clinique INT,
   Nom_clinique VARCHAR(50),
   Adresse_clinique VARCHAR(50),
   PRIMARY KEY(ID_clinique)
);
CREATE TABLE LOCALISATION(
   Num_batîment VARCHAR(50),
   PRIMARY KEY(Num_batîment)
);
CREATE TABLE PERSONNEL(
   ID_personnel INT,
   Nom_personnel VARCHAR(50),
   Prenom VARCHAR(50),
   PRIMARY KEY(ID_personnel)
);
CREATE TABLE DOSSIER_MEDICAL(
   ID_test INT,
   Résultat VARCHAR(50),
   Date_test DATE,
   PRIMARY KEY(ID_test)
);
CREATE TABLE PATIENTS(
   NSS VARCHAR(15),
   Nom_Patient VARCHAR(50),
   Prenom_patient VARCHAR(50),
   Adresse_patient VARCHAR(50),
   Nom_mutuelle VARCHAR(50),
   PRIMARY KEY(NSS)
);
CREATE TABLE SERVICE(
   ID_service INT,
   Nom_service VARCHAR(50),
   num_étage INT,
   ID_personnel INT NOT NULL,
   Num_batîment VARCHAR(50) NOT NULL,
   ID_clinique INT NOT NULL,
   PRIMARY KEY(ID_service),
   FOREIGN KEY(ID_personnel) REFERENCES PERSONNEL(ID_personnel),
   FOREIGN KEY(Num_batîment) REFERENCES LOCALISATION(Num_batîment),
   FOREIGN KEY(ID_clinique) REFERENCES CLINIQUE(ID_clinique)
);
CREATE TABLE HOSPITALISER(
   NSS VARCHAR(15),
   date_admission DATE,
   date_sortie DATE,
   num_chambre INT,
   ID_service INT NOT NULL,
   PRIMARY KEY(NSS),
   FOREIGN KEY(NSS) REFERENCES PATIENTS(NSS),
   FOREIGN KEY(ID_service) REFERENCES SERVICE(ID_service)
);
CREATE TABLE Avoir(
   ID_test INT,
   NSS VARCHAR(15),
   PRIMARY KEY(ID_test, NSS),
   FOREIGN KEY(ID_test) REFERENCES DOSSIER_MEDICAL(ID_test),
   FOREIGN KEY(NSS) REFERENCES PATIENTS(NSS)
);
alter table DOSSIER_MEDICAL
add constraint testp check (Résultat in ("positif", "négatif"));
alter table HOSPITALISER
add constraint datee check (date_admission < date_sortie);

Insert into CLINIQUE values (1,'Espérance','62 rue lecoubre');
Insert into CLINIQUE values (2,'Kenneya','74 rue Amisarfa');
Insert into CLINIQUE values (3,'merveille','03 rue Adzope');
Insert into CLINIQUE values (4,'Santé','28 rue Salam');
Insert into CLINIQUE values (5,'SOSbonheur','49 rue Pile foutou');

Insert into SERVICE values (1,'ophtamologie',4,5);
Insert into SERVICE values (2,'pédiatrie',2,8);
Insert into SERVICE values (3,'maternité',2,8);
Insert into SERVICE values (4,'chirurgie',3,4);
Insert into SERVICE values (5,'rhumatologie',1,2);
Insert into SERVICE values (6,'radiologie',3,2);


Insert into PERSONNEL values (1,'KONE','ABOU');
Insert into PERSONNEL values (2,'SIDIBE','KASSIM');
Insert into PERSONNEL values (3,'TAPSOBA','CALEB');
Insert into PERSONNEL values (4,'BERTHE','AZIZ');
Insert into PERSONNEL values (5,'DIOMANDE','OUMAR');
Insert into PERSONNEL values (6,'BLAIS','LINE');
Insert into PERSONNEL values (7,'TAN','TOALY');
Insert into PERSONNEL values (8,'TOURE','MOUNIA');
Insert into PERSONNEL values (9,'KRAMOKO','SIDIK');
Insert into PERSONNEL values (10,'MEITE','BABACAR');

Insert into LOCALISATION values ('Bat A');
Insert into LOCALISATION values ('Bat B');
Insert into LOCALISATION values ('Bat C');
Insert into LOCALISATION values ('Bat D');





