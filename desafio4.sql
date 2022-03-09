SELECT u.name AS usuario,
IF(YEAR(MAX(r.play_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.reproductions_history r
ON r.user_id = u.user_id
GROUP BY usuario
ORDER BY usuario;
