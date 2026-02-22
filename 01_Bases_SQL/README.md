# 🔍 Module 1 : Les Fondamentaux du SQL

Bienvenue dans le cours SQL. Ici, on apprend à parler aux bases de données.
Le SQL (Structured Query Language) est le standard absolu pour interagir avec les données.

## 🎯 Objectifs
- Comprendre la structure d'une Base de Données Relationnelle (Tables, Colonnes, Lignes).
- Écrire vos premières requêtes de lecture (`SELECT`).
- Filtrer les résultats avec précision (`WHERE`).

## 🧱 Concepts Clés
- **Table** : Comme un onglet Excel. Contient des données structurées.
- **Colonne (Champ)** : Un type d'information (ex: `email`, `prix`).
- **Ligne (Enregistrement)** : Une entrée unique dans la table.

## 📝 Syntaxe de Base
L'ordre des mots est strict en SQL :

```sql
SELECT colonne1, colonne2  -- Quoi ?
FROM ma_table              -- D'où ?
WHERE condition            -- Lequel ?
ORDER BY colonne1 ASC      -- Quel ordre ?
LIMIT 10;                  -- Combien ?
```

## 📂 Structure de l'exercice
Nous allons utiliser une base de données factice de **Bibliothèque**.
1.  Importez `data/schema.sql` (si vous avez un outil comme DBeaver ou SQLite Browser).
2.  Exécutez les fichiers `.sql` pour tester vos connaissances.
