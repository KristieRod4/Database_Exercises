USE codeup_test_db;

SELECT * from albums;
SELECT name AS 'ALL albums in the table' FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT  * FROM albums;

SELECT name AS 'albums released before 1980'
FROM albums
WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date -100; 
-- have to change migration table from DATE format to VARCHAR or 
-- some other format that accepts 1800.

SELECT artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums;
SET artist = 'Peter Jackson';
WHERE artist = 'Michael Jackson';

SELECT * FROM albums;