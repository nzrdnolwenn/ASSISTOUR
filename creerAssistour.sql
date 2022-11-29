CREATE TABLE `TechnicienAssistance` (

`idTA` int PRIMARY KEY NOT NULL,
`nomTA` char(30),
`prenomTA` char(30)

);
	
CREATE TABLE `DossierSinistre` (

`numDossier` int PRIMARY KEY NOT NULL,
`dateSinistre` date,
`heureSinistre` varchar(5),
`causeSinistre` varchar(500),
`diagnosticSinistre` varchar(500),
`lieuSinistre` varchar(50),
`nbPassagers` int,
`idTA` int NOT NULL,
`idHotel` int DEFAULT NULL,
`idGarage` int DEFAULT NULL,
`idContrat` int DEFAULT NULL

);
	
CREATE TABLE `Hotel` (

`idHotel` int PRIMARY KEY NOT NULL,
`nomHotel` varchar(30),
`adresseHotel` varchar(30),
`telHotel` int(10),
`prixNuit` int

);
	
CREATE TABLE `Hebergement` (

`dateArrivee` date PRIMARY KEY NOT NULL,
`nbNuitees` int,
`idHotel` int NOT NULL,
`numDossier` int NOT NULL

);
	
CREATE TABLE `Garage` (

`idGarage` int PRIMARY KEY NOT NULL,
`nomGarage` char(30),
`adresseGarage` varchar(30),
`marque` char(30),
`telGarage` int(10),
`forfaits` char(30),
`avanceOK` boolean

);
	
CREATE TABLE `Etapes` (

`numOrdre` int PRIMARY KEY NOT NULL,
`cout` int,
`horaire` int DEFAULT NULL,
`villeDepart` char(30),
`villeArrivee` char(30),
`idTransport` int NOT NULL,
`idTransporteur` int NOT NULL,
`numDossier` int NOT NULL

);
	
CREATE TABLE `Transporteur` (

`idTransporteur` int NOT NULL,
`nom` char(30),
PRIMARY KEY (`idTransporteur`)

);
	
CREATE TABLE `Transport` (

`idTransport` int PRIMARY KEY NOT NULL,
`libelle` char(30)

);
	
CREATE TABLE `Contrat` (

`idContrat` int PRIMARY KEY NOT NULL,
`prixNegocie` int,
`immatriculation` varchar(15),
`marque` char(30),
`type` char(30),
`modele` char(30),
`dateMiseEnCirculation` date,
`numAdherent` int NOT NULL,
`idTypeContrat` int NOT NULL

);
	
CREATE TABLE `Adherent` (

`numAdherent` int PRIMARY KEY NOT NULL,
`nomAdherent` char(30),
`prenomAdherent` char(30),
`adresseAdherent` varchar(30),
`codePostalAdherent` int,
`villeAdherent` char(30),
`telAdherent` int(10)

);
	
CREATE TABLE `TypeContrat` (

`idTypeContrat` int PRIMARY KEY NOT NULL,
`nomTypeContrat` char(30)

);
	
ALTER TABLE `DossierSinistre` ADD FOREIGN KEY (`idTA`) REFERENCES `TechnicienAssistance` (`idTA`);
	
ALTER TABLE `DossierSinistre` ADD FOREIGN KEY (`idHotel`) REFERENCES `Hotel` (`idHotel`);
	
ALTER TABLE `DossierSinistre` ADD FOREIGN KEY (`idGarage`) REFERENCES `Garage` (`idGarage`);
	
ALTER TABLE `DossierSinistre` ADD FOREIGN KEY (`idContrat`) REFERENCES `Contrat` (`idContrat`);
	
ALTER TABLE `Hebergement` ADD FOREIGN KEY (`idHotel`) REFERENCES `Hotel` (`idHotel`);
	
ALTER TABLE `Hebergement` ADD FOREIGN KEY (`numDossier`) REFERENCES `DossierSinistre` (`numDossier`);
	
ALTER TABLE `Etapes` ADD FOREIGN KEY (`idTransporteur`) REFERENCES `Transporteur` (`idTransporteur`);
	
ALTER TABLE `Etapes` ADD FOREIGN KEY (`idTransport`) REFERENCES `Transport` (`idTransport`);
	
ALTER TABLE `Etapes` ADD FOREIGN KEY (`numDossier`) REFERENCES `DossierSinistre` (`numDossier`);
	
ALTER TABLE `Contrat` ADD FOREIGN KEY (`numAdherent`) REFERENCES `Adherent` (`numAdherent`);
	
ALTER TABLE `Contrat` ADD FOREIGN KEY (`idTypeContrat`) REFERENCES `TypeContrat` (`idTypeContrat`);
