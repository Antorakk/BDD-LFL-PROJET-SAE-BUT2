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

-- TUPLES POUR LA TABLE STATISTIQUESJOUEURSPARMATCH DE LA DATABASE LEAGUE OF LEGENDS LFL 2022 --

insert into StatistiquesJoueursParMatch (id_match , id_joueur, nb_kills, morts, assists, total_creeps) VALUES

-- ■■■■■■■■■■■■■■■■■■■■ WEEK 1 ■■■■■■■■■■■■■■■■■■■■ --

-- BDS VS LDLC OL
(1,6, 2, 3, 4, 284),
(1,7, 5, 2, 4, 203),
(1,8, 4, 1, 4, 285),
(1,9, 1, 7, 4, 298),
(1,10, 0, 4, 9, 26),

(1,1, 6, 3, 4, 311),
(1,2, 4, 1, 5, 217),
(1,3, 3, 3, 5, 293),
(1,4, 3, 0, 5, 334),
(1,5, 1, 5, 8, 34),

-- GO vs SOLARY
(2,26, 5, 3, 4, 207),
(2,27, 4, 0, 9, 156),
(2,28, 2, 0, 10, 231),
(2,29, 5, 1, 7, 265),
(2,30, 1, 1, 12, 42),

(2,31, 0, 3, 1, 192),
(2,32, 0, 3, 4, 157),
(2,33, 1, 5, 2, 236),
(2,34, 3, 4, 2, 224),
(2,35, 1, 2, 4, 31),

-- Gameward vs Misfits
(3,36, 1, 0, 6, 333),
(3,37, 4, 3, 3, 200),
(3,38, 2, 0, 7, 267),
(3,39, 4, 0, 3, 334),
(3,40, 0, 0, 7, 31),

(3,21, 0, 1, 2, 305),
(3,22, 2, 4, 1, 187),
(3,23, 1, 0, 2, 298),
(3,24, 0, 2, 2, 353),
(3,25, 0, 4, 2, 37),

-- Karmine vs Oplon
(4,11, 8, 1, 3, 247),
(4,12, 2, 1, 11, 114),
(4,13, 5, 0, 10, 208),
(4,14, 7, 1, 4, 246),
(4,15, 1, 1, 12, 33),

(4,46, 0, 6, 1, 160),
(4,47, 1, 8, 2, 120),
(4,48, 1, 2, 2, 200),
(4,49, 0, 4, 1, 190),
(4,50, 2, 3, 2, 25),

-- Vitality bee vs Mirage Elyandra
(5,16, 7, 1, 4, 223),
(5,17 , 7, 1, 5, 175),
(5,18, 2, 0, 5, 258),
(5,19, 2, 1, 4, 251),
(5,20, 1, 1, 12, 32),

(5,41, 2, 5, 0, 176),
(5,42, 1, 2, 1, 161),
(5,43, 0, 5, 2, 230),
(5,44, 1, 2, 1, 269),
(5,45, 0, 5, 3, 33),

-- Team GO VS Misfits
(6,26, 3, 2, 4, 220),
(6,27, 6, 1, 8, 213),
(6,28, 4, 2, 7, 200),
(6,29, 0, 1, 9, 145),
(6,30, 4, 1, 5, 41),

(6,21, 2, 4, 2, 199),
(6,22, 2, 3, 4, 155),
(6,23, 1, 4, 3, 243),
(6,24, 1, 4, 2, 209),
(6,25, 1, 2, 3, 29),

-- Mirange Elyandra vs BDSA
(7,41, 8, 1, 9, 245),
(7,42, 5, 0, 8, 222),
(7,43, 3, 0, 10, 275),
(7,44, 7, 0, 8, 332),
(7,45, 1, 1, 14, 37),

(7,6, 1, 4, 0, 313),
(7,7, 1, 5, 0, 144),
(7,8, 0, 5, 1, 264),
(7,9, 0, 5, 0, 291),
(7,10, 0, 5, 0, 29),

-- Gameward vs Karmin Corp
(8,36, 1, 1, 7, 244),
(8,37, 4, 1, 9, 195),
(8,38, 4, 3, 5, 238),
(8,39, 9, 0, 4, 272),
(8,40, 0, 0, 16, 11),

(8,11, 1, 5, 0, 271),
(8,12, 1, 4, 2, 151),
(8,13, 2, 3, 2, 316),
(8,14, 1, 2, 1, 309),
(8,15, 0, 4, 3, 4),

-- Vitality.bee vs Solary
(9,31, 0, 5, 2, 215),
(9,32, 1, 4, 1, 139),
(9,33, 1, 4, 1, 224),
(9,34, 1, 3, 0, 233),
(9,35, 0, 4, 2, 28),

(9,16, 4, 1, 6, 246),
(9,17, 2, 0, 8, 194),
(9,18, 7, 0, 9, 231),
(9,19, 7, 0, 6, 241),
(9,20, 0, 2, 18, 41),

-- Team Oplon vs LDLC OL
(10,46, 3, 2, 3, 269),
(10,47, 2, 4, 6, 173),
(10,48, 3, 6, 3, 24),
(10,49, 2, 2, 6, 324),
(10,50, 1, 2, 7, 30),

(10,1, 3, 2, 7, 294),
(10,2, 5, 3, 7, 242),
(10,3, 5, 2, 4, 265),
(10,4, 3, 2, 7, 321),
(10,5, 0, 2, 13, 27);

-- ■■■■■■■■■■■■■■■■■■■■ WEEK 2 ■■■■■■■■■■■■■■■■■■■■ --

