SELECT u.`name` AS usuario,
COUNT(m.music_id) AS 'qtde_musicas_ouvidas',
ROUND(SUM(m.duration_seconds / 60), 2) AS 'total_minutos'
FROM SpotifyClone.reproductions_history r
INNER JOIN SpotifyClone.users u
ON u.user_id = r.user_id
INNER JOIN SpotifyClone.musics m
ON r.music_id = m.music_id
GROUP BY usuario
ORDER BY usuario;
