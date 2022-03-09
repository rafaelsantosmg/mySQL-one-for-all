SELECT m.music AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.reproductions_history r
INNER JOIN SpotifyClone.musics m
ON m.music_id = r.music_id
GROUP BY m.music
ORDER BY reproducoes DESC, cancao
LIMIT 2;
