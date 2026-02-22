-- 01_select.sql
-- Les bases de la récupération de données

-- 1. Tout sélectionner (*)
-- ⚠️ À éviter sur de très grosses tables en prod !
SELECT * FROM livres;

-- 2. Sélectionner des colonnes spécifiques
-- C'est beaucoup plus performant.
SELECT titre, prix FROM livres;

-- 3. Renommer des colonnes (Alias)
-- Utile pour clarifier les rapports.
SELECT titre AS "Nom du Livre", prix AS "Coût (€)" 
FROM livres;

-- 4. Éliminer les doublons
-- Affiche la liste des genres uniques.
SELECT DISTINCT genre FROM livres;

-- 5. Limiter les résultats
-- Affiche seulement les 3 premiers livres.
SELECT * FROM livres LIMIT 3;
