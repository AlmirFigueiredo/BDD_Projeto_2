CREATE TABLE pessoa (
    email VARCHAR,
    endereco VARCHAR,
    data_nascimento DATE,
    telefone VARCHAR,
    pessoa_id INTEGER PRIMARY KEY,
    cpf VARCHAR,
    nome VARCHAR
);

CREATE TABLE funcionario (
    funcionario_id INTEGER,
    carga_horaria INTEGER,
    valor_hora DECIMAL,
    turno VARCHAR,
    departamento VARCHAR,
    setor_departamento VARCHAR,
    fk_pessoa_pessoa_id INTEGER,
    PRIMARY KEY (funcionario_id, fk_pessoa_pessoa_id)
);

CREATE TABLE professor (
    professor_id INTEGER,
    departamento_academico VARCHAR,
    titulacao VARCHAR,
    especialidade VARCHAR,
    fk_pessoa_pessoa_id INTEGER,
    PRIMARY KEY (professor_id, fk_pessoa_pessoa_id)
);

CREATE TABLE cliente (
    cliente_id INTEGER PRIMARY KEY
);

CREATE TABLE aluno (
    aluno_id INTEGER,
    matricula VARCHAR,
    email_institucional VARCHAR,
    ano_escolar VARCHAR,
    fk_pessoa_pessoa_id INTEGER,
    PRIMARY KEY (aluno_id, fk_pessoa_pessoa_id)
);

CREATE TABLE pedido (
    pedido_id INTEGER PRIMARY KEY,
    data_pedido DATE,
    data_pagamento DATE,
    metodo_pagamento VARCHAR,
    valor_total DECIMAL,
    endereco_entrega VARCHAR,
    codigo_rastreamento VARCHAR,
    status_pedido VARCHAR,
    status_pagamento VARCHAR,
    status_entrega VARCHAR,
    data_entrega DATE,
    fk_cliente_cliente_id INTEGER
);

CREATE TABLE produto (
    produto_id INTEGER PRIMARY KEY,
    nome VARCHAR,
    descricao VARCHAR,
    preco_unitario DECIMAL,
    quantidade INTEGER,
    categoria VARCHAR,
    quantidade_minima INTEGER
);

CREATE TABLE fornecedor (
    fornecedor_id INTEGER PRIMARY KEY,
    endereco VARCHAR,
    nome_fantasia VARCHAR,
    telefone VARCHAR
);

CREATE TABLE livro (
    livro_id INTEGER PRIMARY KEY,
    genero VARCHAR,
    titulo VARCHAR,
    setor VARCHAR,
    disponivel BOOLEAN,
    fk_editora_editora_id INTEGER,
    fk_biblioteca_biblioteca_id INTEGER
);

CREATE TABLE distribuidora (
    distribuidora_id INTEGER PRIMARY KEY,
    telefone VARCHAR,
    endereco VARCHAR,
    nome_fantasia VARCHAR,
    email VARCHAR
);

CREATE TABLE autor (
    autor_id INTEGER PRIMARY KEY,
    email VARCHAR,
    telefone VARCHAR,
    nome VARCHAR,
    data_nascimento DATE,
    data_falecimento DATE
);

CREATE TABLE editora (
    editora_id INTEGER PRIMARY KEY,
    endereco VARCHAR,
    email VARCHAR,
    telefone VARCHAR,
    nome VARCHAR
);

CREATE TABLE biblioteca (
    biblioteca_id INTEGER PRIMARY KEY,
    nome VARCHAR,
    endereco VARCHAR
);

CREATE TABLE disciplina (
    disciplina_id INTEGER PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE aula (
    aula_id INTEGER PRIMARY KEY,
    horario TIME,
    dia_da_semana VARCHAR,
    fk_disciplina_disciplina_id INTEGER
);

CREATE TABLE turma (
    turma_id INTEGER PRIMARY KEY,
    ano_escolar VARCHAR
);

CREATE TABLE sala (
    sala_id INTEGER PRIMARY KEY,
    capacidade_maxima INTEGER,
    numero INTEGER,
    bloco VARCHAR,
    fk_biblioteca_biblioteca_id INTEGER
);

CREATE TABLE avaliacao (
    avalicao_id INTEGER PRIMARY KEY,
    pontuacao DECIMAL,
    nome VARCHAR,
    fk_professor_professor_id INTEGER,
    fk_professor_fk_pessoa_pessoa_id INTEGER
);

CREATE TABLE mensalidade (
    data_de_liberacao DATE,
    data_de_vencimento DATE,
    valor_liquido DECIMAL,
    valor_bruto DECIMAL,
    mensalidade_id INTEGER PRIMARY KEY,
    desconto DECIMAL,
    fk_aluno_aluno_id INTEGER,
    fk_aluno_fk_pessoa_pessoa_id INTEGER
);

CREATE TABLE inclui_prod (
    fk_produto_produto_id INTEGER,
    fk_pedido_pedido_id INTEGER
);

CREATE TABLE fornece_prod (
    fk_fornecedor_fornecedor_id INTEGER,
    fk_produto_produto_id INTEGER
);

CREATE TABLE emprestimo (
    fk_cliente_cliente_id INTEGER,
    fk_livro_livro_id INTEGER,
    emprestimo_id INTEGER PRIMARY KEY,
    valor_multa DECIMAL,
    data_realizada DATE,
    data_limite_devolucao DATE
);

CREATE TABLE fornece_livro (
    fk_distribuidora_distribuidora_id INTEGER,
    fk_livro_livro_id INTEGER
);

CREATE TABLE escreveu_liv (
    fk_autor_autor_id INTEGER,
    fk_livro_livro_id INTEGER
);

CREATE TABLE leciona_disc (
    fk_professor_professor_id INTEGER,
    fk_professor_fk_pessoa_pessoa_id INTEGER,
    fk_disciplina_disciplina_id INTEGER
);

CREATE TABLE possui_tur (
    fk_aula_aula_id INTEGER,
    fk_turma_turma_id INTEGER
);

CREATE TABLE fica_em_sal (
    fk_turma_turma_id INTEGER,
    fk_sala_sala_id INTEGER
);

CREATE TABLE faz_aval (
    fk_aluno_aluno_id INTEGER,
    fk_aluno_fk_pessoa_pessoa_id INTEGER,
    fk_avaliacao_avalicao_id INTEGER
);
 
ALTER TABLE funcionario ADD CONSTRAINT FK_funcionario_2
    FOREIGN KEY (fk_pessoa_pessoa_id)
    REFERENCES pessoa (pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE professor ADD CONSTRAINT FK_professor_2
    FOREIGN KEY (fk_pessoa_pessoa_id)
    REFERENCES pessoa (pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE aluno ADD CONSTRAINT FK_aluno_2
    FOREIGN KEY (fk_pessoa_pessoa_id)
    REFERENCES pessoa (pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE pedido ADD CONSTRAINT FK_pedido_2
    FOREIGN KEY (fk_cliente_cliente_id)
    REFERENCES cliente (cliente_id)
    ON DELETE CASCADE;
 
ALTER TABLE livro ADD CONSTRAINT FK_livro_2
    FOREIGN KEY (fk_editora_editora_id)
    REFERENCES editora (editora_id)
    ON DELETE RESTRICT;
 
ALTER TABLE livro ADD CONSTRAINT FK_livro_3
    FOREIGN KEY (fk_biblioteca_biblioteca_id)
    REFERENCES biblioteca (biblioteca_id)
    ON DELETE CASCADE;
 
ALTER TABLE aula ADD CONSTRAINT FK_aula_2
    FOREIGN KEY (fk_disciplina_disciplina_id)
    REFERENCES disciplina (disciplina_id)
    ON DELETE CASCADE;
 
ALTER TABLE sala ADD CONSTRAINT FK_sala_2
    FOREIGN KEY (fk_biblioteca_biblioteca_id)
    REFERENCES biblioteca (biblioteca_id)
    ON DELETE CASCADE;
 
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_2
    FOREIGN KEY (fk_professor_professor_id, fk_professor_fk_pessoa_pessoa_id)
    REFERENCES professor (professor_id, fk_pessoa_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE mensalidade ADD CONSTRAINT FK_mensalidade_2
    FOREIGN KEY (fk_aluno_aluno_id, fk_aluno_fk_pessoa_pessoa_id)
    REFERENCES aluno (aluno_id, fk_pessoa_pessoa_id)
    ON DELETE CASCADE;
 
ALTER TABLE inclui_prod ADD CONSTRAINT FK_inclui_prod_1
    FOREIGN KEY (fk_produto_produto_id)
    REFERENCES produto (produto_id)
    ON DELETE RESTRICT;
 
ALTER TABLE inclui_prod ADD CONSTRAINT FK_inclui_prod_2
    FOREIGN KEY (fk_pedido_pedido_id)
    REFERENCES pedido (pedido_id)
    ON DELETE SET NULL;
 
ALTER TABLE fornece_prod ADD CONSTRAINT FK_fornece_prod_1
    FOREIGN KEY (fk_fornecedor_fornecedor_id)
    REFERENCES fornecedor (fornecedor_id)
    ON DELETE RESTRICT;
 
ALTER TABLE fornece_prod ADD CONSTRAINT FK_fornece_prod_2
    FOREIGN KEY (fk_produto_produto_id)
    REFERENCES produto (produto_id)
    ON DELETE SET NULL;
 
ALTER TABLE emprestimo ADD CONSTRAINT FK_emprestimo_2
    FOREIGN KEY (fk_cliente_cliente_id)
    REFERENCES cliente (cliente_id)
    ON DELETE RESTRICT;
 
ALTER TABLE emprestimo ADD CONSTRAINT FK_emprestimo_3
    FOREIGN KEY (fk_livro_livro_id)
    REFERENCES livro (livro_id)
    ON DELETE RESTRICT;
 
ALTER TABLE fornece_livro ADD CONSTRAINT FK_fornece_livro_1
    FOREIGN KEY (fk_distribuidora_distribuidora_id)
    REFERENCES distribuidora (distribuidora_id)
    ON DELETE RESTRICT;
 
ALTER TABLE fornece_livro ADD CONSTRAINT FK_fornece_livro_2
    FOREIGN KEY (fk_livro_livro_id)
    REFERENCES livro (livro_id)
    ON DELETE SET NULL;
 
ALTER TABLE escreveu_liv ADD CONSTRAINT FK_escreveu_liv_1
    FOREIGN KEY (fk_autor_autor_id)
    REFERENCES autor (autor_id)
    ON DELETE RESTRICT;
 
ALTER TABLE escreveu_liv ADD CONSTRAINT FK_escreveu_liv_2
    FOREIGN KEY (fk_livro_livro_id)
    REFERENCES livro (livro_id)
    ON DELETE RESTRICT;
 
ALTER TABLE leciona_disc ADD CONSTRAINT FK_leciona_disc_1
    FOREIGN KEY (fk_professor_professor_id, fk_professor_fk_pessoa_pessoa_id)
    REFERENCES professor (professor_id, fk_pessoa_pessoa_id)
    ON DELETE RESTRICT;
 
ALTER TABLE leciona_disc ADD CONSTRAINT FK_leciona_disc_2
    FOREIGN KEY (fk_disciplina_disciplina_id)
    REFERENCES disciplina (disciplina_id)
    ON DELETE RESTRICT;
 
ALTER TABLE possui_tur ADD CONSTRAINT FK_possui_tur_1
    FOREIGN KEY (fk_aula_aula_id)
    REFERENCES aula (aula_id)
    ON DELETE SET NULL;
 
ALTER TABLE possui_tur ADD CONSTRAINT FK_possui_tur_2
    FOREIGN KEY (fk_turma_turma_id)
    REFERENCES turma (turma_id)
    ON DELETE SET NULL;
 
ALTER TABLE fica_em_sal ADD CONSTRAINT FK_fica_em_sal_1
    FOREIGN KEY (fk_turma_turma_id)
    REFERENCES turma (turma_id)
    ON DELETE SET NULL;
 
ALTER TABLE fica_em_sal ADD CONSTRAINT FK_fica_em_sal_2
    FOREIGN KEY (fk_sala_sala_id)
    REFERENCES sala (sala_id)
    ON DELETE SET NULL;
 
ALTER TABLE faz_aval ADD CONSTRAINT FK_faz_aval_1
    FOREIGN KEY (fk_aluno_aluno_id, fk_aluno_fk_pessoa_pessoa_id)
    REFERENCES aluno (aluno_id, fk_pessoa_pessoa_id)
    ON DELETE RESTRICT;
 
ALTER TABLE faz_aval ADD CONSTRAINT FK_faz_aval_2
    FOREIGN KEY (fk_avaliacao_avalicao_id)
    REFERENCES avaliacao (avalicao_id)
    ON DELETE SET NULL;
