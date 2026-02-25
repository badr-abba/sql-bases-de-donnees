-- 01_joins.sql
-- Connecter les tables 'livres' et 'auteurs'

-- 1. INNER JOIN (Le classique)
-- Je veux le titre du livre ET le nom de l'auteur.
-- Seuls les livres ayant un auteur connu (et vice-versa) ressortent.
SELECT livres.titre, auteurs.nom AS auteur
FROM livres
INNER JOIN auteurs ON livres.auteur_id = auteurs.id;

-- 2. LEFT JOIN (L'inclusif)
-- Je veux TOUS les auteurs, même ceux qui n'ont pas écrit de livres dans ma base.
-- Si un auteur n'a pas de livre, la colonne titre sera 'NULL'.
SELECT auteurs.nom, livres.titre
FROM auteurs
LEFT JOIN livres ON auteurs.id = livres.auteur_id;

-- 3. Utilisation d'Alias (Raccourcis)
-- C'est plus court à écrire ! (a = auteurs, l = livres)
SELECT l.titre, a.pays
FROM livres l
JOIN auteurs a ON l.auteur_id = a.id
WHERE a.pays = 'UK';
