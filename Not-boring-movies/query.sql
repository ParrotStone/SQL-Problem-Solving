-- Problem Description at -> https://leetcode.com/problems/not-boring-movies/

SELECT * FROM cinema
WHERE cinema.id % 2 <> 0
	 AND cinema.description <> 'boring'
		ORDER BY cinema.rating DESC;

