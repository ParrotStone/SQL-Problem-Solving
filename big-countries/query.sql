
-- Problem Description at -> https://leetcode.com/problems/big-countries/

SELECT name, area, population FROM World
WHERE area > 3000000 OR population > 25000000

-- Another solution(Slightly Faster)
SELECT name, area, population FROM World WHERE area > 3000000
UNION
SELECT name, area, population FROM World WHERE population > 25000000;

