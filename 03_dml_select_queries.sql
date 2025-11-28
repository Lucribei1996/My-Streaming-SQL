SELECT 
    U.nome AS Usuario,
    C.titulo AS Conteudo,
    P.nota_avaliacao AS Nota
FROM USUARIO U
JOIN PROGRESSO_AVALIACAO P ON U.id_usuario = P.id_usuario
JOIN CONTEUDO_AUDIOVISUAL C ON P.id_conteudo = C.id_conteudo
WHERE U.nome = 'Ana Silva' -- Filtro (WHERE)
ORDER BY P.nota_avaliacao DESC; -- Ordenação (ORDER BY)

-- Resultado Esperado: O nome do Usuário 'Ana Silva', o Conteúdo avaliado e a Nota (5).


SELECT 
    C.titulo,
    C.ano_lancamento,
    G.nome_genero
FROM CONTEUDO_AUDIOVISUAL C
JOIN REL_CONTEUDO_GENERO RCG ON C.id_conteudo = RCG.id_conteudo
JOIN GENERO G ON RCG.id_genero = G.id_genero
WHERE G.nome_genero = 'Ficção Científica'; -- Filtro (WHERE)

-- Resultado Esperado: 'O Enigma do Tempo' (que foi associado a Ficção Científica).


SELECT 
    C.titulo,
    U.nome AS MarcadoPor
FROM PROGRESSO_AVALIACAO P
JOIN CONTEUDO_AUDIOVISUAL C ON P.id_conteudo = C.id_conteudo
JOIN USUARIO U ON P.id_usuario = U.id_usuario
WHERE P.flag_favorito = TRUE
LIMIT 1; -- Limite de resultados (LIMIT)

-- Resultado Esperado: 'O Enigma do Tempo', marcado por 'Ana Silva'.


SELECT 
    titulo,
    ano_lancamento
FROM CONTEUDO_AUDIOVISUAL
WHERE tipo = 'Série' AND ano_lancamento >= 2023 -- Filtro composto (AND)
ORDER BY titulo ASC; -- Ordenação crescente (ASC)

-- Resultado Esperado: 'A Última Fronteira' (Se você executou o INSERT).


SELECT 
    U.nome AS Usuario,
    C.titulo AS Conteudo,
    P.tempo_parada_segundos AS SegundosAssistidos
FROM PROGRESSO_AVALIACAO P
JOIN USUARIO U ON P.id_usuario = U.id_usuario
JOIN CONTEUDO_AUDIOVISUAL C ON P.id_conteudo = C.id_conteudo
WHERE P.tempo_parada_segundos > 3600; -- Filtro numérico (WHERE)

-- Resultado Esperado: Ana Silva (7500 segundos) e Bruno Costa (3600 segundos).
