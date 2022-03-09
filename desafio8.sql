SELECT ar.name AS artista,
al.album AS album
FROM SpotifyClone.artists ar
INNER JOIN SpotifyClone.albuns al
ON al.artist_id = ar.artist_id
WHERE ar.name = 'Walter Phoenix'
ORDER BY album;
