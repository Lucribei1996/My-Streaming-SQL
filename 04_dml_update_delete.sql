-- UPDATE 1: Atualiza o email do usuário 'Bruno Costa' (id_usuario = 2)
UPDATE USUARIO
SET email = 'bruno.novo@outlook.com'
WHERE id_usuario = 2;

-- Verifique o resultado:
SELECT * FROM USUARIO WHERE id_usuario = 2;


-- UPDATE 2: Altera a nota de avaliação do usuário 1 no conteúdo 1, de 5 para 4
UPDATE PROGRESSO_AVALIACAO
SET nota_avaliacao = 4
WHERE id_usuario = 1 AND id_conteudo = 1;

-- Verifique o resultado:
SELECT * FROM PROGRESSO_AVALIACAO WHERE id_usuario = 1 AND id_conteudo = 1;


-- UPDATE 3: Corrige o ano de lançamento do conteúdo 'A Última Fronteira' (id_conteudo = 2)
UPDATE CONTEUDO_AUDIOVISUAL
SET ano_lancamento = 2024
WHERE id_conteudo = 2;

-- Verifique o resultado:
SELECT titulo, ano_lancamento FROM CONTEUDO_AUDIOVISUAL WHERE id_conteudo = 2;


-- DELETE 1: Exclui o Gênero 'Drama' (id_genero = 3), que não possui nenhuma associação em REL_CONTEUDO_GENERO.
DELETE FROM GENERO
WHERE nome_genero = 'Drama';

-- Verifique:
SELECT * FROM GENERO;


-- DELETE 2: Exclui a associação do Conteúdo 1 com o Gênero 2 (Aventura)
-- ESSA EXCLUSÃO LIMPA A CHAVE ESTRANGEIRA
DELETE FROM REL_CONTEUDO_GENERO
WHERE id_conteudo = 1 AND id_genero = 2;

-- Verifique: Agora, o Conteúdo 1 só tem a associação 'Ficção Científica' (id_genero=1)
SELECT * FROM REL_CONTEUDO_GENERO;


-- DELETE 3: Exclui a interação completa do Usuário 2 com o Conteúdo 2
DELETE FROM PROGRESSO_AVALIACAO
WHERE id_usuario = 2 AND id_conteudo = 2;

-- Verifique: Agora, o Usuário 2 não tem mais interações registradas
SELECT * FROM PROGRESSO_AVALIACAO;
