-- 01_create_tables.sql
-- Conception de tables et Contraintes

-- Suppression propre si elle existe déjà
DROP TABLE IF EXISTS adherents;

-- Création complète
CREATE TABLE adherents (
    id INTEGER PRIMARY KEY,          -- Identifiant unique
    nom TEXT NOT NULL,               -- Obligatoire
    email TEXT UNIQUE,               -- Pas de doublons d'email !
    date_inscription DATE DEFAULT CURRENT_DATE, -- Date auto
    actif BOOLEAN DEFAULT TRUE       -- Par défaut, l'adhérent est actif
);

-- Ajouter une colonne après coup (ALTER)
-- On a oublié le numéro de téléphone !
ALTER TABLE adherents ADD COLUMN telephone TEXT;

-- Clé Étrangère (Exemple conceptuel)
-- Si on avait une table 'emprunts' :
-- FOREIGN KEY (adherent_id) REFERENCES adherents(id)
