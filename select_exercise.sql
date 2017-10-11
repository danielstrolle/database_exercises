USE codeup_test_db;


SELECT name AS 'All Albums by Pink Floyd:' FROM albums where artist = 'Pink Floyd';

SELECT release_date as 'Year Sgt. Pepper\'s Lonely Hearts Club Band was released:' FROM albums where name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT genre as 'Genre for \'Nevermind\':' FROM albums WHERE name = 'Nevermind';

SELECT name AS 'Albums released in the 1990s:' FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT name as 'Albums with less than 20 Million Certified Sales:' FROM albums WHERE sales < 20;

SELECT name as 'Albums with \'Rock\' as Genre:' FROM albums WHERE genre = 'Rock';