SELECT 
	tb_usuarios.id_usuario, tb_usuarios.nome,
    tb_alugados.data_aluguel, tb_alugados.data_devolucao, tb_alugados.valor,
    tb_livros.id_livro, tb_livros.titulo
FROM
	tb_livros
JOIN tb_itens_alugados
	ON tb_livros.id_livro = tb_itens_alugados.id_livro
JOIN tb_alugados
	ON tb_itens_alugados.id_aluguel = tb_alugados.id_aluguel
JOIN tb_usuarios
	ON tb_usuarios.id_usuario = tb_alugados.id_usuario
WHERE tb_alugados.data_aluguel BETWEEN '2024-11-01'AND '2024-11-30'
ORDER BY tb_alugados.data_aluguel;