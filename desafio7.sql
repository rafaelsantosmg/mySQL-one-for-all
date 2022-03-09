SELECT ar.name AS artista,
al.album AS album,
COUNT(fa.user_id) AS seguidores
FROM SpotifyClone.albuns al
INNER JOIN SpotifyClone.artists ar
ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.following_artists fa
ON fa.artist_id = ar.artist_id
GROUP BY ar.artist_id, al.album
ORDER BY seguidores DESC, artista, album;
