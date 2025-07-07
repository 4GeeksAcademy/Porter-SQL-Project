-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
SELECT * from observations
LIMIT 10;

-- MISSION 2
SELECT DISTINCT region_id from observations;


-- MISSION 3
SELECT COUNT(DISTINCT species_id) as total_species from observations;


-- MISSION 4
SELECT * from observations where region_id = 2;


-- MISSION 5
SELECT * from observations where observation_date = '1998-08-08';


-- MISSION 6
SELECT region_id, COUNT(*) AS total_observations FROM observations GROUP BY region_iORDER BY total_observations DESC;


-- MISSION 7
SELECT species_id COUNT (*) AS total_records FROM observations GROUP BY species_id 
ORDER BY total_records DESC LIMIT 5;


-- MISSION 8
SELECT species_id, COUNT(*) as observation_count from observations group by species_id 
having observation_count < 5;

-- Mission 9
SELECT observer, COUNT(*) as total from observations group by observer order by total
DESC;

-- Mission 10
SELECT regions.name as region_name, COUNT(observations.id) as total_observations
from observations
JOIN regions on observations.region_id = regions.id;

-- Mission 11
SELECT observations.id, species.scientific_name 
FROM observations
JOIN species on observations.species_id = species.id;

-- Mission 12
SELECT regions.name as region, species.scientific_name, COUNT(*) as total
from observations
join species on observations.species_id = species.id
join regions on observations.region_id = regions.id
group by region, species.scientific_name
order by region, total DESC;
