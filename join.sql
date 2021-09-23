SELECT * 
FROM invoice_line AS i
JOIN invoice as inv
ON i.invoice_id = inv.invoice_id 
WHERE i.unit_price > 0.99;

SELECT i.invoice_id, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c 
ON i.customer_id = c.customer_id;

SELECT c.first_name AS customer_first, c.last_name AS customer_last, e.first_name AS employee_first, e.last_name AS employee_last
FROM employee e
JOIN customer c 
ON e.employee_id = c.support_rep_id;

SELECT a.title AS album, ar.name AS artist
FROM album a
JOIN artist ar
ON a.artist_id = ar.artist_id;

SELECT p.track_id, playlist.name
FROM playlist_track p
JOIN playlist
ON playlist.playlist_id = p.playlist_id
WHERE playlist.name = 'Music';

SELECT track.name AS track, playlist.name AS playlist
FROM playlist_track p
JOIN playlist
ON playlist.playlist_id = p.playlist_id
JOIN track
ON track.track_id = p.playlist_id;

SELECT track.name AS track, album.title AS album
FROM track
JOIN album
ON track.album_id = album.album_id
JOIN genre
ON genre.genre_id = track.genre_id
WHERE genre.name = 'Alternative & Punk';
