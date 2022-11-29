insert into Adherent Values
(1, "IVANIVITCH", "Sacha", "14 boulevard du Temple" , "75003", "Paris", 092882953);

insert into TypeContrat values
(1, "Plénitude");

insert into Contrat VALUES
(1, 100, "3412-CV-75", "Citroën", "Citadine", "C3", "2003-04-15", 1, 1),
(2, 150, "BJ-83-AE", "Renault", "SUV", "Kadjar", "2019-10-10", 1, 1);


insert into TechnicienAssistance VALUES
(1, "BENTOU", "Olivia");
	
insert into Garage VALUES
(1, "Garage De la Sansonnais", "rue du Général De Gaulle", "Citroën", "0296854098", "210€", FALSE);
	
insert into Hotel VALUES
(1, "Hôtel théâtre", "2 rue Sainte Claire", "0296390691", 65),
(2, "Hôtel Océan", "9 place du 11 novembre 1918", "0296854361", 79);
	
insert into DossierSinistre(numDossier, dateSinistre, heureSinistre, causeSinistre, diagnosticSinistre, lieuSinistre, nbPassagers, idTA, idHotel, idGarage, idContrat) VALUES
(1, "2022-05-20", "13h27", "Sortie de route", "Déformation modérée des éléments de direction", "Ville de Dinan, 22100", 1, 1, 1, 1, 1);
	
insert into Hebergement VALUES
("2022-05-20", 2, 1, 1),
("2022-07-20", 1, 2, 1),
("2022-08-20", 1, 1, 1);
	
	
insert into Adherent VALUES
(2, "BELKACEM", "Marwan", "2 rue de la Maspero", "75016", "Paris", 0673939905);
	
insert into TypeContrat VALUES
(2, "Tout risques ECO");
	
insert into Contrat VALUES
(3, 250, "GN-92-DE", "Renault", "Tourisme", "Koleos", "2020-01-03", 2, 2);
	
insert into Garage VALUES
(2, "Garage Citroën de Guéret", "22 rue du Maréchal Leclerc", "Citroën", "0555524852", "190€", FALSE);
	
insert into Transport VALUES
(1, "Taxi"),
(2, "Train TER"),
(3, "Intercités");
	
insert into Transporteur VALUES 
(1, "BATY TAXI"),
(2, "SNCF");
	
insert into DossierSinistre(numDossier, dateSinistre, heureSinistre, causeSinistre, diagnosticSinistre, lieuSinistre, nbPassagers, idTA, idContrat) VALUES
(2, "2022-06-03", "19h30", "Percuté par un poids lourd", "Véhicule totalement irrécupérable", "Nationale N145, entrée de la ville de Saint Vaury", 2, 1, 3);
	
insert into Etapes(numOrdre, cout, villeDepart, villeArrivee, idTransport, idTransporteur, numDossier) VALUES
(1, 22, "Saint Vaury", "Guéret", 1, 1, 2),
(2, 24, "Guéret", "Limoges", 2, 2, 2),
(3, 68, "Limoges", "Paris-Austerlitz", 3, 2, 2);


