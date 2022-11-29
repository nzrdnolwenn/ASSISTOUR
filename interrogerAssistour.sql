SELECT Adherent.numAdherent, Hotel.idHotel, Hotel.nomHotel FROM DossierSinistre
	INNER JOIN Contrat ON Contrat.idContrat = DossierSinistre.idContrat
	INNER JOIN Adherent ON Adherent.numAdherent = Contrat.numAdherent
	INNER JOIN Hebergement ON Hebergement.numDossier = DossierSinistre.numDossier
	INNER JOIN Hotel ON Hotel.idHotel = Hebergement.idHotel
	WHERE nomAdherent = "IVANOVITCH" ;
	
	SELECT Adherent.numAdherent, SUM(nbNuitees) FROM DossierSinistre
	INNER JOIN Contrat ON Contrat.idContrat = DossierSinistre.idContrat
	INNER JOIN Adherent ON Adherent.numAdherent = Contrat.numAdherent
	INNER JOIN Hebergement ON Hebergement.numDossier = DossierSinistre.numDossier
	INNER JOIN Hotel ON Hotel.idHotel = Hebergement.idHotel
	WHERE nomAdherent = "IVANOVITCH" ;
	
	SELECT Adherent.numAdherent, Adherent.nomAdherent, Etapes.numOrdre, Etapes.villeDepart, Etapes.villeArrivee FROM DossierSinistre
	INNER JOIN Contrat ON Contrat.idContrat = DossierSinistre.idContrat
	INNER JOIN Adherent ON Adherent.numAdherent = Contrat.numAdherent
	INNER JOIN Etapes ON Etapes.numDossier = DossierSinistre.numDossier
	WHERE DossierSinistre.numDossier = 2;
	
	SELECT Adherent.numAdherent, Adherent.nomAdherent, SUM(Etapes.cout) FROM DossierSinistre
	INNER JOIN Contrat ON Contrat.idContrat = DossierSinistre.idContrat
	INNER JOIN Adherent ON Adherent.numAdherent = Contrat.numAdherent
	INNER JOIN Etapes ON Etapes.numDossier = DossierSinistre.numDossier
	WHERE DossierSinistre.numDossier = 2;--
