-- 1) select name, population from world where population is between 1,000,000 and 1,250,000
SELECT name, population
FROM world
WHERE population BETWEEN 1000000 AND 1250000

-- 2) select name, population from world where name starts with 'Al'
SELECT name, population
FROM world
WHERE name LIKE "Al%"

-- 3) select name from world where name starts with 'a' and end with 'l'
SELECT name
FROM world
WHERE name LIKE 'a%' OR name LIKE '%l'

-- 4) select name, length of name from world where length of name is 5 and region is europe
SELECT name, length(name)
FROM world
WHERE length(name)=5 and region='Europe'

-- 5) select name, area*2 from world where population = 64,000
SELECT name, area*2
FROM world
WHERE population = 64000

-- 6) select name, area, population from world where area is from 50,000 to 10,000,000
SELECT name, area, population
FROM world
WHERE area > 50000 AND population < 10000000

-- 7) select name, density(population/area) from world where name is China, Nigeria, France and Australia
SELECT name, population/area
FROM world
WHERE name IN ('China', 'Nigeria', 'France', 'Australia')
