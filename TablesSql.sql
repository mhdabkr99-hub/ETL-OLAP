-- Table de dimension Prestation
CREATE TABLE Prestation (
    code_prestation TEXT PRIMARY KEY,
    nom TEXT NOT NULL,
    categorie TEXT NOT NULL
);

-- Table de dimension Date
CREATE TABLE Date (
    id_date INTEGER PRIMARY KEY,
    date TEXT NOT NULL,
    heure_debut TEXT NOT NULL,
    heure_fin TEXT NOT NULL,
    annee INTEGER NOT NULL,
    trimestre INTEGER NOT NULL,
    mois INTEGER NOT NULL,
    nom_mois TEXT NOT NULL,
    jour_mois INTEGER NOT NULL,
    nom_jour_semaine TEXT NOT NULL
);

-- Table de dimension Lieu
CREATE TABLE Lieu (
    id_lieu INTEGER PRIMARY KEY,
    adresse TEXT NOT NULL,
    code_postal TEXT NOT NULL,
    ville TEXT NOT NULL,
    departments_id INTEGER NOT NULL,
    departments_code TEXT NOT NULL,
    departments_name TEXT NOT NULL,
    region_id INTEGER NOT NULL,
    code TEXT NOT NULL,
    region_name TEXT NOT NULL
);

-- Table de dimension Client
CREATE TABLE Client (
    num_client INTEGER PRIMARY KEY,
    nom TEXT NOT NULL,
    prenom TEXT NOT NULL,
    adresse TEXT NOT NULL,
    code_postal TEXT NOT NULL,
    ville TEXT NOT NULL
);

-- Table de faits FaitsVentes
CREATE TABLE FaitsVentes (
    id INTEGER PRIMARY KEY,
    id_clients INTEGER NOT NULL,
    id_prestation TEXT NOT NULL,
    id_date INTEGER NOT NULL,
    id_lieu INTEGER NOT NULL,
    prix REAL NOT NULL,
    duree_intervention INTEGER NOT NULL,
    FOREIGN KEY (id_clients) REFERENCES DimClient(num_client),
    FOREIGN KEY (id_prestation) REFERENCES DimPrestation(code_prestation),
    FOREIGN KEY (id_date) REFERENCES DimDate(id_date),
    FOREIGN KEY (id_lieu) REFERENCES DimLieu(id_lieu)
);





