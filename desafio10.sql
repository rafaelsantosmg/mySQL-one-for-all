SELECT m.music AS nome,
COUNT(rh.user_id) AS reproducoes
FROM SpotifyClone.reproductions_history rh
INNER JOIN SpotifyClone.musics m
ON m.music_id = rh.music_id
INNER JOIN SpotifyClone.users u
ON u.user_id = rh.user_id
INNER JOIN SpotifyClone.plans p
ON p.plan_id = u.plan_id
WHERE p.plan = 'gratuito' OR p.plan = 'pessoal'
GROUP BY nome
ORDER BY nome;
