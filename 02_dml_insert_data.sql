-- 1. Insere 2 Usuários
INSERT INTO USUARIO (nome, email, senha_hash, data_cadastro) VALUES
('Ana Silva', 'ana@email.com', 'hash_ana_123', '2025-01-10'),
('Bruno Costa', 'bruno@email.com', 'hash_bruno_456', '2025-02-15');

-- 2. Insere 2 Conteúdos
INSERT INTO CONTEUDO_AUDIOVISUAL (titulo, tipo, duracao_minutos, ano_lancamento, sinopse) VALUES
('O Enigma do Tempo', 'Filme', 125, 2024, 'Um detetive viaja no tempo para resolver um crime.'),
('A Última Fronteira', 'Série', NULL, 2023, 'Uma saga espacial sobre a colonização de novos planetas.');

-- 3. Insere 3 Gêneros
INSERT INTO GENERO (nome_genero) VALUES
('Ficção Científica'),
('Aventura'),
('Drama');

-- 4. Associa Conteúdo 1 ('O Enigma do Tempo') aos Gêneros 'Ficção Científica' (1) e 'Aventura' (2)
INSERT INTO REL_CONTEUDO_GENERO (id_conteudo, id_genero) VALUES
(1, 1),
(1, 2);

-- 5. Usuário 1 ('Ana') registra progresso e avaliação para o Conteúdo 1
INSERT INTO PROGRESSO_AVALIACAO (id_usuario, id_conteudo, tempo_parada_segundos, nota_avaliacao, flag_favorito) VALUES
(1, 1, 7500, 5, TRUE);

-- 6. Usuário 2 ('Bruno') registra progresso para o Conteúdo 2
INSERT INTO PROGRESSO_AVALIACAO (id_usuario, id_conteudo, tempo_parada_segundos, nota_avaliacao, flag_favorito) VALUES
(2, 2, 3600, 4, FALSE);