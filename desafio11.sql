SELECT m.music AS nome_musica,
CASE
  WHEN m.music LIKE '%Streets' THEN REPLACE(m.music, 'Streets', 'Code Review')
  WHEN m.music LIKE '%Her Own' THEN REPLACE(m.music, 'Her Own', 'Trybe')
  WHEN m.music LIKE '%Inner Fire' THEN REPLACE(m.music, 'Inner Fire', 'Project')
  WHEN m.music LIKE '%Silly' THEN REPLACE(m.music, 'Silly', 'Nice')
  WHEN m.music LIKE '%Circus' THEN REPLACE(m.music, 'Circus', 'Pull Request')
END AS novo_nome
FROM SpotifyClone.musics m
WHERE m.music LIKE '%Streets%'
OR m.music LIKE '%Her Own%'
OR m.music LIKE '%Inner Fire%'
OR m.music LIKE '%Silly%'
OR m.music LIKE '%Circus%'
ORDER BY nome_musica;
