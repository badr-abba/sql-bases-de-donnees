-- 02_aggregations.sql
-- Faire parler les chiffres

-- 1. Compter le nombre total de livres
SELECT COUNT(*) AS total_livres FROM livres;

-- 2. Moyenne de prix des livres
SELECT AVG(prix) AS prix_moyen FROM livres;

-- 3. GROUP BY (Grouper par...)
-- Combien de livres par Genre ?
SELECT genre, COUNT(*) AS nombre
FROM livres
GROUP BY genre;

-- 4. Somme et Tri
-- Quel auteur a généré le plus de valeur en stock (Somme des prix) ?
-- On regroupe par auteur, et on trie par montant décroissant.
SELECT a.nom, SUM(l.prix) AS valeur_stock
FROM livres l
JOIN auteurs a ON l.auteur_id = a.id
GROUP BY a.nom
ORDER BY valeur_stock DESC;

-- 5. HAVING
-- Filtrer APRES avoir groupé. (WHERE filtre AVANT)
-- Montrez-moi les genres qui ont PLUS de 1 livre.
SELECT genre, COUNT(*) 
FROM livres
GROUP BY genre
HAVING COUNT(*) > 1;
