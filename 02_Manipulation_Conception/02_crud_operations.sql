-- 02_crud_operations.sql
-- C.R.U.D manipulations

-- 1. INSERT (Créer)
INSERT INTO adherents (nom, email) VALUES 
('Alice Dupont', 'alice@example.com'),
('Bob Martin', 'bob@example.com');

-- Insertion multiple
INSERT INTO adherents (nom, email, telephone) VALUES 
('Charlie O', 'charlie@otest.com', '0601020304');

-- 2. UPDATE (Modifier)
-- ⚠️ ATTENTION : Toujours mettre un WHERE (sinon tout est modifié !)
UPDATE adherents 
SET telephone = '0700000000' 
WHERE nom = 'Alice Dupont';

-- 3. DELETE (Supprimer)
-- ⚠️ ATTENTION : Toujours mettre un WHERE (sinon tout est supprimé !)
DELETE FROM adherents 
WHERE id = 2; -- Bye bye Bob

-- Vérification finale
SELECT * FROM adherents;
