CREATE
DATABASE Mediatheque;
USE
Mediatheque;

CREATE TABLE Livre
(
    idLivre           INT PRIMARY KEY,
    titre             VARCHAR(100) NOT NULL,
    auteur            VARCHAR(100) NOT NULL,
    datePublication   DATE,
    genre             VARCHAR(50),
    nombreExemplaires INT
);

CREATE TABLE Adherent
(
    idAdherent      INT PRIMARY KEY,
    nom             VARCHAR(50),
    prenom          VARCHAR(50),
    dateInscription DATE,
    telephone       VARCHAR(20)
);

CREATE TABLE Emprunt
(
    idEmprunt   INT PRIMARY KEY,
    idLivre     INT,
    idAdherent  INT,
    dateEmprunt DATE,
    dateRetour  DATE NULL
);


INSERT INTO Livre (idLivre, titre, auteur, datePublication, genre, nombreExemplaires)
VALUES (1, 'Le Petit Prince', 'Antoine de Saint-Exupéry', '1943-04-06', 'Conte', 3),
       (2, '1984', 'George Orwell', '1949-06-08', 'Dystopie', 5),
       (3, 'L\'Étranger', 'Albert Camus', '1942-01-01', 'Roman', 2),
(4, 'Harry Potter à l\'école des sorciers', 'J.K. Rowling', '1997-06-26', 'Fantasy', 4),
       (5, 'Les Misérables', 'Victor Hugo', '1862-01-01', 'Roman', 2);

INSERT INTO Adherent (idAdherent, nom, prenom, dateInscription, telephone)
VALUES (1, 'Dupont', 'Marie', '2021-01-15', '0606060606'),
       (2, 'Martin', 'Jean', '2022-05-20', '0707070707'),
       (3, 'Leblanc', 'Sophie', '2022-09-01', '0101010101');

INSERT INTO Emprunt (idEmprunt, idLivre, idAdherent, dateEmprunt, dateRetour)
VALUES (1, 1, 1, '2023-02-01', '2023-02-10'),
       (2, 2, 1, '2023-03-01', NULL),
       (3, 3, 2, '2023-03-05', NULL);
