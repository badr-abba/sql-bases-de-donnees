-- 02_filter.sql
-- Filtrer les données avec WHERE

-- 1. Égalité simple
SELECT * FROM livres 
WHERE annee_pub = 1997;

-- 2. Comparaisons (> , < , >= , <=)
-- Livres coûtant plus de 12€
SELECT titre, prix FROM livres 
WHERE prix > 12.00;

-- 3. Opérateurs logiques (AND, OR)
-- Livres de Fantasy publiés après 1990
SELECT * FROM livres 
WHERE genre = 'Fantasy' AND annee_pub > 1990;

-- 4. Liste de valeurs (IN)
-- Livre écrit par l'auteur 1 ou 3
SELECT * FROM livres 
WHERE auteur_id IN (1, 3);

-- 5. Recherche partielle (LIKE)
-- % remplace n'importe quelle chaîne de caractères
-- Tous les livres commençant par "Harry"
SELECT * FROM livres 
WHERE titre LIKE 'Harry%';
