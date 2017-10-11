USE codeup_test_db;

SELECT 'All albums in your table' AS '';
UPDATE albums
SET sales = sales * 10;

SELECT 'All albums released before 1980' AS '';
UPDATE albums
SET release_date = release_date - 1000
WHERE release_date <= 1980;

SELECT 'All albums by Michael Jackson' AS '';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
