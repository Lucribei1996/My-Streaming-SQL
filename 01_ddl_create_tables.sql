-- 1. Criação da Tabela USUARIO
CREATE TABLE USUARIO (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL,
    data_cadastro DATE NOT NULL
);

-- 2. Criação da Tabela CONTEUDO_AUDIOVISUAL
CREATE TABLE CONTEUDO_AUDIOVISUAL (
    id_conteudo INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    tipo VARCHAR(10) NOT NULL,
    duracao_minutos INT,
    ano_lancamento INT,
    sinopse TEXT
);

-- 3. Criação da Tabela GENERO
CREATE TABLE GENERO (
    id_genero INT PRIMARY KEY AUTO_INCREMENT,
    nome_genero VARCHAR(50) NOT NULL UNIQUE
);

-- 4. Criação da Tabela Associativa PROGRESSO_AVALIACAO
CREATE TABLE PROGRESSO_AVALIACAO (
    id_usuario INT NOT NULL,
    id_conteudo INT NOT NULL,
    tempo_parada_segundos INT,
    nota_avaliacao INT,
    flag_favorito BOOLEAN,
    
    PRIMARY KEY (id_usuario, id_conteudo),
    
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
    FOREIGN KEY (id_conteudo) REFERENCES CONTEUDO_AUDIOVISUAL(id_conteudo)
);

-- 5. Criação da Tabela Associativa REL_CONTEUDO_GENERO
CREATE TABLE REL_CONTEUDO_GENERO (
    id_conteudo INT NOT NULL,
    id_genero INT NOT NULL,
    
    PRIMARY KEY (id_conteudo, id_genero),
    
    FOREIGN KEY (id_conteudo) REFERENCES CONTEUDO_AUDIOVISUAL(id_conteudo),
    FOREIGN KEY (id_genero) REFERENCES GENERO(id_genero)
);