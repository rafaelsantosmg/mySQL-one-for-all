SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.reproductions_history rh
INNER JOIN SpotifyClone.users u
ON u.user_id = rh.user_id
WHERE u.name = 'Bill';
