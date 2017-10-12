USE codeup_test_db;

SELECT 'ALL ALBUMS';
SELECT * FROM albums;

SELECT 'All albums released after 1991:' AS '';
SELECT * FROM albums WHERE release_date > 1991;
# DELETE from albums WHERE id in (4, 9, 12, 13, 17, 18, 19, 24, 28);
DELETE FROM albums WHERE release_date > 1991;
SELECT 'All albums released after 1991:' AS '';
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'All albums where the genre is Disco:' AS '';
SELECT * FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE id = 7;
SELECT 'All albums where the genre is Disco:' AS '';
SELECT * FROM albums WHERE genre = 'disco';

SELECT 'All albums by Whitney Houston:' AS '';
SELECT * FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE id = 4;
SELECT 'All albums by Whitney Houston:' AS '';
SELECT * FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;
