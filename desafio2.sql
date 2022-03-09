SELECT COUNT(m.music) AS cancoes,
COUNT(ar.artist_id) AS artistas,
COUNT(al.album_id) AS albuns
FROM SpotifyClone.musics m
LEFT JOIN SpotifyClone.albuns al
ON al.album_id = m.music_id
LEFT JOIN SpotifyClone.artists ar
ON ar.artist_id = al.album_id;
