SELECT COUNT(*), g.name
FROM track t
JOIN genre g
ON t.genre_id = g.genre_id
GROUP BY g.name;

SELECT COUNT(*), g.name
FROM track t
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.name ;

SELECT COUNT(*) AS album_count, a.name
FROM artist a
JOIN album
ON a.artist_id = album.artist_id
GROUP BY a.name;

 