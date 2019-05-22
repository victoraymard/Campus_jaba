CREATE TABLE Ecole(
    ID_Ecole int(11) PRIMARY KEY AUTO_INCREMENT,
	Nom_Ecole varchar(255) NOT NULL,
	Annee_Fondation int(11) NOT NULL
);

CREATE TABLE Classe(
    ID_Classe int(11) PRIMARY KEY AUTO_INCREMENT,
    ID_Ecole int(11),
    ID_Niveau int(11),
    ID_AnneeScolaire int(11),
    FOREIGN KEY (ID_Ecole) REFERENCES Ecole(ID_Ecole),
    FOREIGN KEY (ID_Niveau) REFERENCES Ecole(ID_Niveau),
    FOREIGN KEY (ID_AnneeScolaire) REFERENCES Ecole(ID_AnneeScolaire),
);

CREATE TABLE Effectif(
    ID_Effectif int(11) PRIMARY KEY AUTO_INCREMENT,
    ID_Classe int(11),
    ID_Eleve int(11),
    FOREIGN KEY ID_Classe REFERENCES Classe(ID_Classe),
    FOREIGN KEY ID_Eleve REFERENCES Eleve(ID_Eleve)
);

CREATE TABLE Niveau(
    ID_Niveau int(11) PRIMARY KEY AUTO_INCREMENT,
    Nom_Niveau varchar(255) NOT NULL
);
CREATE TABLE AnneeScolaire(
    ID_AnneeScolaire int(11) PRIMARY KEY AUTO_INCREMENT,
    Debut int(11) NOT NULL,
    Fin int(11) NOT NULL
);

CREATE TABLE Trimestre(
    ID_Trimestre int(11 PRIMARY KEY AUTO_INCREMENT,
    Numero int(11) NOT NULL,
    ID_AnneScolaire int(11),
    FOREIGN KEY (ID_AnneeScolaire) REFERENCES AnneeScolaire(ID_AnneeScolaire)
);

CREATE TABLE Bulletin(
    ID_Bulletin int(11) PRIMARY KEY AUTO_INCREMENT,
    ID_Trimestre int(11),
    ID_Effectif int(11),
    Appreciation_Bulletin varchar(255) NOT NULL,
    FOREIGN KEY ID_Trimestre REFERENCES Trimestre(ID_Trimestre),
    FOREIGN KEY ID_Effectif REFERENCES Effectif(ID_Effectif)
);

CREATE TABLE DetailBulletin(
    ID_Detail int(11) PRIMARY KEY AUTO_INCREMENT,
    ID_Bulletin int(11),
    ID_Enseignement int(11),
    Appreciation_Detail varchar(255) NOT NULL,
    FOREIGN KEY ID_Bulletin REFERENCES Bulletin (ID_Bulletin),
    FOREIGN KEY ID_Effectif REFERENCES Effectif(ID_Effectif)
);

CREATE TABLE Note(
    ID_Note int(11) PRIMARY KEY AUTO_INCREMENT,
    ID_Detail int(11),
    Note int(11) NOT NULL,
    Appreciation_Note varchar(255) NOT NULL,
    FOREIGN KEY ID_Detail REFERENCES DetailBulletin(ID_Detail)
);

CREATE TABLE Discipline(
    ID_Discipline int(11) PRIMARY KEY AUTO_INCREMENT,
    Nom_Discipline varchar(255) NOT NULL
);

CREATE TABLE Cours(
    ID_Cours int(11) PRIMARY KEY AUTO_INCREMENT,
    ID_Classe int(11),
    ID_Discipline int(11),
    ID_Prof int(11),
    FOREIGN KEY ID_Classe REFERENCES Classe(ID_Classe),
    FOREIGN KEY ID_Discipline REFERENCES Discipline(ID_Discipline),
    FOREIGN KEY ID_Prof REFERENCES Professeur(ID_Professeur)
);

CREATE TABLE Personne(
    ID_Personne int(11) PRIMARY KEY AUTO_INCREMENT,
    Nom varchar(255) NOT NULL,
    Prenom varchar(255) NOT NULL
);

CREATE TABLE Professeur(
    ID_Prof int(11) PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Eleve(
    ID_Eleve int(11) PRIMARY KEY AUTO_INCREMENT
);

--INSERT INTO Item(Nom, Description, Categorie, QuantiteTot, Prix, Pseudo_Vendeur, Remise, NombreVentes) VALUES ('Madame Bovary','Livre de Flaubert','Livre', 20, 15, 'Thomas', 10, 10);