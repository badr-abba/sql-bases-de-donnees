# 🔗 Module 3 : Jointures et Agrégations

C'est ici que le SQL devient puissant. Nous allons croiser les données de plusieurs tables et faire des statistiques.

## 🎯 Objectifs
- Relier des tables entre elles avec `JOIN`.
- Calculer des KPI (Totaux, Moyennes) avec `GROUP BY`.

## 🤝 Les Jointures (JOIN)
Imaginez deux cercles qui se croisent (Diagramme de Venn).
- **INNER JOIN** : Seule l'intersection (Ce qui existe dans les DEUX tables).
- **LEFT JOIN** : Tout ce qui est à gauche, et les correspondances de droite (si elles existent, sinon NULL).
- **RIGHT JOIN** : L'inverse (Rarement utilisé, on préfère souvent inverser l'ordre et faire un LEFT).

## 📊 Les Agrégations
Transformer 1000 lignes en 1 seule ligne de résumé.
- `COUNT(*)` : Compter.
- `SUM(colonne)` : Somme.
- `AVG(colonne)` : Moyenne.
- `MAX` / `MIN` : Extremums.

Ces fonctions s'utilisent souvent avec `GROUP BY` (Grouper par catégorie).
