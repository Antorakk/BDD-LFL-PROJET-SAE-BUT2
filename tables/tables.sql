-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ --
-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ --
-- ■■■■■■       ■■■■■■■            ■■■■       ■■■■■■■■■■ --
-- ■■■■■■  ■■   ■■■■■■■   ■■■■■■■  ■■■■  ■■   ■■■■■■■■■■ --
-- ■■■■■■  ■■   ■■■■■■■   ■■       ■■■■  ■■   ■■■■■■■■■■ --
-- ■■■■■■  ■■      ■■■■   ■■■■   ■■■■■■  ■■       ■■■■■■ --
-- ■■■■■■  ■■■■■   ■■■■   ■■     ■■■■■■  ■■■■■■   ■■■■■■ --
-- ■■■■■■  ■■■■■   ■■■■   ■■   ■■■■■■■■  ■■■■■■   ■■■■■■ --
-- ■■■■■■          ■■■■        ■■■■■■■■           ■■■■■■ --
-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ --
-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ --
-- Auteur : Eluecque Anthony, Fournier Benjamin, Dournel Frédéric

-- TABLES POUR LA DATABASE LEAGUE OF LEGENDS LFL 2022 --



CREATE DATABASE LFL;

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Table Joueurs
Description : Table contenant les informations relatif à un joueur League Of Legends.  

-- Explication supplémentaire 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */
CREATE TABLE Joueurs(
    id_joueur SERIAL PRIMARY KEY,
    pseudo VARCHAR(50) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    id_nationalite NOT NULL REFERENCES Nationnalites(id_nationalite),
    id_equipe NOT NULL REFERENCES Equipes(id_equipe)
);

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Table Jouer_Dans
Description : Table contenant la liste des joueurs de chaque équipe, avec leur role

-- Explication supplémentaire 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */
CREATE TABLE Jouer_dans(
    id_role NOT NULL REFERENCES Roles(id_role),
    id_joueur NOT NULL REFERENCES Joueurs(id_joueur),
    id_equipe NOT NULL REFERENCES Equipes(id_equipe),
    debut_contrat VARCHAR(50),
    fin_contrat VARCHAR(50)
)

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Table Equipees
Description : Table contenant les informations d'une équipe e-sport sur le jeu League Of Legend pticipant à la LFL.

-- Explication supplémentaiaire : 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */
CREATE TABLE Equipes(
    id_equipe SERIAL PRIMARY KEY,
    nom_equipe VARCHAR(50) NOT NULL,
    date_creation DATE NOT NULL,
    id_coach NOT NULL REFERENCES Coachs(id_coach)
);

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Table Roles
Description : Table référensant les différents rôles dans le jeu League Of Legends.
 
-- Explication supplémentaire : 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */
CREATE TABLE Roles(
    id_role SERIAL PRIMARY KEY,
    nom_role VARCHAR(50)
);

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Table Champions
Description : Table composée des différents champions jouablent dans le jeu League Of Legends.

-- Explication supplémentaire : 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */
CREATE TABLE Champions(
    id_champion SERIAL PRIMARY KEY,
    nom_champion VARCHAR(50)
);

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Table Coachs 
Description : Table référensant les Coachs des différentes équipes e-sport League Of Legends participant à la LFL 2022.

-- Explication supplémentaire
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */
CREATE TABLE Coachs(
    id_coach SERIAL PRIMARY KEY,
    pseudo_coach VARCHAR(50) NOT NULL,
    nom_coach VARCHAR(50) NOT NULL,
    prenom_coach VARCHAR(50) NOT NULL,
    id_nationalite NOT NULL REFERENCES Nationnalites(id_nationalite)
);

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Table Nationnalites
Description : Table Répertoriant des nationalités.

-- Explication supplémentaire
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */
CREATE TABLE Nationnalites(
    id_nationalite SERIAL PRIMARY KEY,
    libelle_nationalite VARCHAR(50)
);

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Table StatistiquesJoueursParMatch
Description : Table contenant différentes statistiques sur les joueurs professionnel de League Of Legends participant à la LFL 2022.

-- Explication supplémentaire
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */
CREATE TABLE StatistiquesJoueursParMatch(
    id_match NOT NULL REFERENCES Matchs(id_match) ,
    id_joueur NOT NULL REFERENCES Joueurs(id_joueur),
    nb_kills INTEGER,
    morts INTEGER,
    assists INTEGER,
    total_creeps INTEGER,
);

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Table Matchs
Description : Table répertoriant les matchs joué durant la LFL 2022.

Explication supplémentaire
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */
CREATE TABLE Matchs(
    id_match SERIAL PRIMARY KEY,
    id_equipe_1  NOT NULL REFERENCES Equipes(id_equipe),
    id_equipe_2  NOT NULL REFERENCES Equipes(id_equipe),
    date_match DATE NOT NULL,
    duree_match INTEGER NOT NULL,
);

/* ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
                                        FIN DU SCRIPT
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ */