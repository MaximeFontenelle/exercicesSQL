-- SQLite
DROP TABLE vehicule;

CREATE TABLE vehicule (
    numero_immatriculation INT NOT NULL,
    kilometrage INT,
    marque VARCHAR(50),
    coutLocation INT,
    etat_carosserie_sortie VARCHAR(15),
    etat_carosserie_retour CARCHAR(15),
    id_vehicule_essence INT,
    id_vehicule_electrique INT,
    PRIMARY KEY (numero_immatriculation),
    CONSTRAINT FK_id_vehicule_essence FOREIGN KEY (id_vehicule_essence)
    REFERENCES vehicule_essence(id)
    CONSTRAINT FK_id_vehicule_electrique FOREIGN KEY (id_vehicule_electrique)
    REFERENCES vehicule_electrique(id)
)

DROP TABLE vehicule_essence;

CREATE TABLE vehicule_essence (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    niveau_carburant_entree INT CHECK (niveau_carburant_entree >= 0),
    niveau_carburant_sortie INT CHECK (niveau_carburant_sortie >= 0),
    etat_moteur_thermique_entree VARCHAR(15),
    etat_moteur_thermique_sortie VARCHAR(15)
)

DROP TABLE vehicule_electrique;

CREATE TABLE vehicule_electrique (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    niveau_batterie_entree INT,
    niveau_batterie_sortie INT,
    etat_moteur_electrique_entree VARCHAR(15) CHECK (niveau_batterie_entree >= 0),
    etat_moteur_electrique_sortie VARCHAR(15) CHECK (niveau_batterie_sortie >= 0)
)

DROP TABLE agence_location;

CREATE TABLE agence_location (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    adresse VARCHAR(255),
    nom VARCHAR (50)
);

DROP TABLE conducteur;

CREATE TABLE conducteur (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    telephone VARCHAR(50),
    identifiant_permis VARCHAR(15),
    trajet VARCHAR(50)
);

DROP TABLE facture;

CREATE TABLE facture (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    date DATE,
    montant_location CHECK (montant_location >= 0),
    montant_reparation CHECK (montant_reparation >= 0),
    numero_immatriculation FOREIGN_KEY REFERENCES vehicule(numero_immatriculation)
);