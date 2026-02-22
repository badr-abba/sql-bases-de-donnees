-- Création des tables pour notre Bibliothèque factice

CREATE TABLE IF NOT EXISTS auteurs (
    id INTEGER PRIMARY KEY,
    nom TEXT NOT NULL,
    pays TEXT
);

CREATE TABLE IF NOT EXISTS livres (
    id INTEGER PRIMARY KEY,
    titre TEXT NOT NULL,
    annee_pub INTEGER,
    genre TEXT,
    auteur_id INTEGER,
    prix DECIMAL(5, 2),
    FOREIGN KEY (auteur_id) REFERENCES auteurs(id)
);

-- Insertion de données de test
INSERT INTO auteurs (nom, pays) VALUES 
('J.K. Rowling', 'UK'),
('George R.R. Martin', 'USA'),
('J.R.R. Tolkien', 'UK'),
('Victor Hugo', 'France');

INSERT INTO livres (titre, annee_pub, genre, auteur_id, prix) VALUES 
('Harry Potter à l''école des sorciers', 1997, 'Fantasy', 1, 10.99),
('Harry Potter et la Chambre des secrets', 1998, 'Fantasy', 1, 12.50),
('A Game of Thrones', 1996, 'Fantasy', 2, 15.00),
('Le Hobbit', 1937, 'Fantasy', 3, 9.99),
('Les Misérables', 1862, 'Roman', 4, 18.00),
('Notre-Dame de Paris', 1831, 'Roman', 4, 14.50);
