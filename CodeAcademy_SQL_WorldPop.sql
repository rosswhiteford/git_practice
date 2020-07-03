-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

SELECT MAX(population)
FROM population_years
WHERE country = 'Gabon';

SELECT country, population AS 'Lowest pop. 2005'
FROM population_years
WHERE year = '2005'
ORDER BY population ASC
LIMIT 10;

SELECT DISTINCT country AS 'Population over 100m in 2010'
FROM population_years
WHERE year = '2010'
 AND population > 100;

SELECT DISTINCT country AS 'Countries with "Islands" in name'
FROM population_years
WHERE country LIKE '%islands%';

SELECT year, population AS 'Indonesia Population 2000-2010'
FROM population_years
WHERE country = 'Indonesia'
  AND year = '2000'
  OR country = 'Indonesia'
  AND year = 2010;

SELECT 242.96834-214.67661 
FROM population_years
LIMIT 1;