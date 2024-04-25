INSERT INTO pessoa (pessoa_id, nome, email, endereco, data_nascimento, telefone, cpf) VALUES
(1, 'João Silva', 'joao.silva@example.com', 'Rua ABC, 100, Cidade XYZ', '1980-03-15', '11987654321', '123.456.789-09'),
(2, 'Maria Fernandes', 'maria.fernandes@example.com', 'Av. DEF, 200, Cidade QRS', '1992-07-22', '21987654321', '987.654.321-00'),
(3, 'Carlos Oliveira', 'carlos.oliveira@example.com', 'Rua GHI, 300, Cidade TUV', '1985-11-10', '31987654321', '234.567.890-12'),
(4, 'Ana Santos', 'ana.santos@example.com', 'Av. JKL, 400, Cidade WXY', '1998-04-28', '41987654321', '345.678.901-23'),
(5, 'Luiz Pereira', 'luiz.pereira@example.com', 'Rua MNO, 500, Cidade PQR', '1976-09-03', '51987654321', '456.789.012-34'),
(6, 'Mariana Costa', 'mariana.costa@example.com', 'Av. STU, 600, Cidade LMN', '1989-12-20', '61987654321', '567.890.123-45'),
(7, 'Pedro Almeida', 'pedro.almeida@example.com', 'Rua VWX, 700, Cidade OPQ', '1995-02-14', '71987654321', '678.901.234-56'),
(8, 'Juliana Oliveira', 'juliana.oliveira@example.com', 'Av. YZA, 800, Cidade RST', '1983-06-08', '81987654321', '789.012.345-67'),
(9, 'Lucas Rodrigues', 'lucas.rodrigues@example.com', 'Rua BCD, 900, Cidade EFG', '2000-08-18', '91987654321', '890.123.456-78'),
(10, 'Camila Silva', 'camila.silva@example.com', 'Av. HIJ, 1000, Cidade CBA', '1993-01-25', '101987654321', '901.234.567-89');



INSERT INTO cliente (cliente_id) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);




INSERT INTO produto (produto_id, nome, descricao, preco_unitario, quantidade, categoria, quantidade_minima) VALUES
(1, 'Caderno', 'Caderno universitário 100 folhas', 10.00, 50, 'Papelaria', 10),
(2, 'Caneta', 'Caneta esferográfica azul', 1.50, 100, 'Papelaria', 20),
(3, 'Borracha', 'Borracha branca pequena', 1.00, 80, 'Papelaria', 15),
(4, 'Lápis', 'Lápis preto HB nº2', 0.50, 150, 'Papelaria', 30),
(5, 'Régua', 'Régua plástica transparente 30cm', 2.00, 60, 'Papelaria', 10),
(6, 'Apontador', 'Apontador simples', 0.75, 40, 'Papelaria', 8),
(7, 'Marcador de Texto', 'Marcador de texto amarelo', 1.50, 70, 'Papelaria', 12),
(8, 'Pasta', 'Pasta plástica com elástico', 3.00, 30, 'Papelaria', 5),
(9, 'Cola', 'Cola branca líquida 90g', 2.50, 50, 'Papelaria', 10),
(10, 'Caderno Universitário', 'Caderno universitário 200 folhas', 15.00, 40, 'Papelaria', 10);





INSERT INTO fornecedor (fornecedor_id, endereco, nome_fantasia, telefone) VALUES
(1, 'Rua GHI, 300, Cidade TUV', 'Papelaria ABC', '1134567890'),
(2, 'Av. LMN, 400, Cidade XYZ', 'Papelaria XYZ', '2234567890'),
(3, 'Rua OPQ, 500, Cidade RST', 'Papelaria RST', '3334567890'),
(4, 'Av. UVW, 600, Cidade VWX', 'Papelaria VWX', '4434567890'),
(5, 'Rua YZA, 700, Cidade ABC', 'Papelaria ABCD', '5534567890'),
(6, 'Av. BCD, 800, Cidade DEF', 'Papelaria DEFG', '6634567890'),
(7, 'Rua EFG, 900, Cidade GHI', 'Papelaria GHIJ', '7734567890'),
(8, 'Av. JKL, 1000, Cidade KLM', 'Papelaria KLMN', '8834567890'),
(9, 'Rua MNO, 1100, Cidade NOP', 'Papelaria NOPQ', '9934567890'),
(10, 'Av. PQR, 1200, Cidade QRS', 'Papelaria QRST', '1034567890');




INSERT INTO funcionario (funcionario_id, carga_horaria, valor_hora, turno, departamento, setor_departamento, fk_pessoa_pessoa_id) VALUES
(1, 40, 30.00, 'Diurno', 'Administração', 'Financeiro', 1),
(2, 30, 25.00, 'Diurno', 'Administração', 'Recursos Humanos', 2),
(3, 35, 28.00, 'Noturno', 'TI', 'Desenvolvimento', 3),
(4, 40, 30.00, 'Diurno', 'Vendas', 'Loja', 4),
(5, 40, 30.00, 'Noturno', 'TI', 'Suporte', 5),
(6, 45, 35.00, 'Diurno', 'Marketing', 'Publicidade', 6),
(7, 20, 45.00, 'Diurno', 'Consultoria', 'Estratégia', 7),
(8, 40, 30.00, 'Noturno', 'Operações', 'Logística', 8),
(9, 40, 32.00, 'Diurno', 'Financeiro', 'Contabilidade', 9),
(10, 35, 28.00, 'Noturno', 'Jurídico', 'Assessoria Legal', 10);


INSERT INTO professor (professor_id, departamento_academico, titulacao, especialidade, fk_pessoa_pessoa_id) VALUES
(1, 'Matemática', 'Doutorado', 'Álgebra', 2),
(2, 'Física', 'Mestrado', 'Mecânica Clássica', 3),
(3, 'Química', 'Doutorado', 'Orgânica', 4),
(4, 'Biologia', 'Mestrado', 'Genética', 5),
(5, 'História', 'Doutorado', 'Moderna', 6),
(6, 'Geografia', 'Mestrado', 'Física', 7),
(7, 'Português', 'Doutorado', 'Literatura', 8),
(8, 'Inglês', 'Mestrado', 'Linguística Aplicada', 9),
(9, 'Artes', 'Doutorado', 'Pintura', 10),
(10, 'Educação Física', 'Mestrado', 'Desportiva', 1);


INSERT INTO aluno (aluno_id, matricula, email_institucional, ano_escolar, fk_pessoa_pessoa_id) VALUES
(1, '20230001', '20230001@inst.edu', '1º Ano', 1),
(2, '20230002', '20230002@inst.edu', '2º Ano', 2),
(3, '20230003', '20230003@inst.edu', '3º Ano', 3),
(4, '20230004', '20230004@inst.edu', '4º Ano', 4),
(5, '20230005', '20230005@inst.edu', '1º Ano', 5),
(6, '20230006', '20230006@inst.edu', '2º Ano', 6),
(7, '20230007', '20230007@inst.edu', '3º Ano', 7),
(8, '20230008', '20230008@inst.edu', '4º Ano', 8),
(9, '20230009', '20230009@inst.edu', '1º Ano', 9),
(10, '20230010', '20230010@inst.edu', '2º Ano', 10);




INSERT INTO pedido (pedido_id, data_pedido, data_pagamento, metodo_pagamento, valor_total, endereco_entrega, codigo_rastreamento, status_pedido, status_pagamento, status_entrega, data_entrega, fk_cliente_cliente_id) VALUES
(1, '2024-04-23', '2024-04-24', 'Cartão de Crédito', 50.00, 'Rua ABC, 100, Cidade XYZ', 'BR123456789XX', 'Processando', 'Pago', 'Em Trânsito', '2024-04-29', 1),
(2, '2024-04-24', '2024-04-25', 'Dinheiro', 30.00, 'Av. DEF, 200, Cidade QRS', 'BR987654321XX', 'Processando', 'Pago', 'Em Trânsito', '2024-04-30', 2),
(3, '2024-04-25', '2024-04-26', 'Débito', 45.00, 'Rua GHI, 300, Cidade TUV', 'BR765432198XX', 'Processando', 'Pago', 'Em Trânsito', '2024-05-01', 3),
(4, '2024-04-26', '2024-04-27', 'Cartão de Crédito', 60.00, 'Av. JKL, 400, Cidade WXY', 'BR654321987XX', 'Processando', 'Pago', 'Em Trânsito', '2024-05-02', 4),
(5, '2024-04-27', '2024-04-28', 'Dinheiro', 20.00, 'Rua MNO, 500, Cidade PQR', 'BR543210876XX', 'Processando', 'Pago', 'Em Trânsito', '2024-05-03', 5),
(6, '2024-04-28', '2024-04-29', 'Débito', 75.00, 'Av. STU, 600, Cidade LMN', 'BR432109765XX', 'Processando', 'Pago', 'Em Trânsito', '2024-05-04', 6),
(7, '2024-04-29', '2024-04-30', 'Cartão de Crédito', 100.00, 'Rua VWX, 700, Cidade OPQ', 'BR321098654XX', 'Processando', 'Pago', 'Em Trânsito', '2024-05-05', 7),
(8, '2024-04-30', '2024-05-01', 'Dinheiro', 50.00, 'Av. YZA, 800, Cidade RST', 'BR210987543XX', 'Processando', 'Pago', 'Em Trânsito', '2024-05-06', 8),
(9, '2024-05-01', '2024-05-02', 'Débito', 25.00, 'Rua BCD, 900, Cidade EFG', 'BR109876432XX', 'Processando', 'Pago', 'Em Trânsito', '2024-05-07', 9),
(10, '2024-05-02', '2024-05-03', 'Cartão de Crédito', 85.00, 'Av. HIJ, 1000, Cidade CBA', 'BR098765321XX', 'Processando', 'Pago', 'Em Trânsito', '2024-05-08', 10);

 
 
 
 
INSERT INTO editora (editora_id, nome, endereco, email, telefone) VALUES
(1, 'Editora Alfa', 'Rua Alfa, 100, Cidade ABC', 'contato@editoraalfa.com', '1112345678'),
(2, 'Editora Beta', 'Av. Beta, 200, Cidade DEF', 'contato@editorabeta.com', '2223456789'),
(3, 'Editora Gamma', 'Rua Gamma, 300, Cidade GHI', 'contato@editoragamma.com', '3334567890'),
(4, 'Editora Delta', 'Av. Delta, 400, Cidade JKL', 'contato@editoradelta.com', '4445678901'),
(5, 'Editora Epsilon', 'Rua Epsilon, 500, Cidade MNO', 'contato@editoraepsilon.com', '5556789012'),
(6, 'Editora Zeta', 'Av. Zeta, 600, Cidade PQR', 'contato@editorazeta.com', '6667890123'),
(7, 'Editora Eta', 'Rua Eta, 700, Cidade STU', 'contato@editoraeta.com', '7778901234'),
(8, 'Editora Theta', 'Av. Theta, 800, Cidade VWX', 'contato@editoratheta.com', '8889012345'),
(9, 'Editora Iota', 'Rua Iota, 900, Cidade YZA', 'contato@editoraiota.com', '9990123456'),
(10, 'Editora Kappa', 'Av. Kappa, 1000, Cidade BCD', 'contato@editorakappa.com', '1012345678');




INSERT INTO biblioteca (biblioteca_id, nome, endereco) VALUES
(1, 'Biblioteca Central', 'Rua Central, 100, Cidade ABC'),
(2, 'Biblioteca Setorial', 'Av. Setorial, 200, Cidade DEF'),
(3, 'Biblioteca Comunitária', 'Rua Comunitária, 300, Cidade GHI'),
(4, 'Biblioteca Universitária', 'Av. Universitária, 400, Cidade JKL'),
(5, 'Biblioteca Escolar', 'Rua Escolar, 500, Cidade MNO'),
(6, 'Biblioteca Municipal', 'Av. Municipal, 600, Cidade PQR'),
(7, 'Biblioteca Regional', 'Rua Regional, 700, Cidade STU'),
(8, 'Biblioteca Digital', 'Av. Digital, 800, Cidade VWX'),
(9, 'Biblioteca Pública', 'Rua Pública, 900, Cidade YZA'),
(10, 'Biblioteca Nacional', 'Av. Nacional, 1000, Cidade BCD');




INSERT INTO livro (livro_id, genero, titulo, setor, disponivel, fk_editora_editora_id, fk_biblioteca_biblioteca_id) VALUES
(1, 'Ficção', 'Viagem no Tempo', 'Ficção Científica', TRUE, 1, 1),
(2, 'História', 'A Revolução', 'Histórico', TRUE, 2, 2),
(3, 'Educação', 'Educar com Sucesso', 'Educação', TRUE, 3, 3),
(4, 'Ciência', 'O Mundo dos Átomos', 'Ciências', TRUE, 4, 4),
(5, 'Arte', 'A Arte da Guerra', 'Artes', TRUE, 5, 5),
(6, 'Literatura', 'Poemas Escolhidos', 'Literatura', TRUE, 6, 6),
(7, 'Tecnologia', 'AI e Você', 'Tecnologia', TRUE, 7, 7),
(8, 'Psicologia', 'Mentes Brilhantes', 'Psicologia', TRUE, 8, 8),
(9, 'Biografia', 'A Vida de Einstein', 'Biografias', TRUE, 9, 9),
(10, 'Fantasia', 'Reinos de Ash', 'Fantasia', TRUE, 10, 10);



INSERT INTO autor (autor_id, nome, email, telefone, data_nascimento, data_falecimento) VALUES
(1, 'Joana D Arc', 'joana@example.com', '1109876543', '1984-06-01', NULL),
(2, 'Miguel de Cervantes', 'miguel@example.com', '2209876543', '1974-09-29', NULL),
(3, 'Isaac Newton', 'isaac@example.com', '3309876543', '1965-01-04', NULL),
(4, 'Leonardo da Vinci', 'leonardo@example.com', '4409876543', '1955-04-15', NULL),
(5, 'Marie Curie', 'marie@example.com', '5509876543', '1933-11-07', NULL),
(6, 'Albert Einstein', 'albert@example.com', '6609876543', '1879-03-14', '1955-04-18'),
(7, 'Charles Dickens', 'charles@example.com', '7709876543', '1812-02-07', '1870-06-09'),
(8, 'Jane Austen', 'jane@example.com', '8809876543', '1775-12-16', '1817-07-18'),
(9, 'William Shakespeare', 'william@example.com', '9909876543', '1564-04-26', '1616-04-23'),
(10, 'Agatha Christie', 'agatha@example.com', '10109876543', '1890-09-15', '1976-01-12');

 
 
 
 INSERT INTO distribuidora (distribuidora_id, telefone, endereco, nome_fantasia, email) VALUES
(1, '1123456789', 'Rua Distrib, 100, Cidade ABC', 'Distribuidora Alfa', 'distribalfa@example.com'),
(2, '2234567890', 'Av. Distrib, 200, Cidade DEF', 'Distribuidora Beta', 'distribbeta@example.com'),
(3, '3345678901', 'Rua Distrib, 300, Cidade GHI', 'Distribuidora Gamma', 'distribgamma@example.com'),
(4, '4456789012', 'Av. Distrib, 400, Cidade JKL', 'Distribuidora Delta', 'distribdelta@example.com'),
(5, '5567890123', 'Rua Distrib, 500, Cidade MNO', 'Distribuidora Epsilon', 'distriepsilon@example.com'),
(6, '6678901234', 'Av. Distrib, 600, Cidade PQR', 'Distribuidora Zeta', 'distribzeta@example.com'),
(7, '7789012345', 'Rua Distrib, 700, Cidade STU', 'Distribuidora Eta', 'distrieta@example.com'),
(8, '8890123456', 'Av. Distrib, 800, Cidade VWX', 'Distribuidora Theta', 'distribtheta@example.com'),
(9, '9901234567', 'Rua Distrib, 900, Cidade YZA', 'Distribuidora Iota', 'distribiota@example.com'),
(10, '1012345678', 'Av. Distrib, 1000, Cidade BCD', 'Distribuidora Kappa', 'distribkappa@example.com');

 
 
 
 
 INSERT INTO escreveu_liv (fk_autor_autor_id, fk_livro_livro_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

 
 INSERT INTO fornece_livro (fk_distribuidora_distribuidora_id, fk_livro_livro_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

 
 INSERT INTO disciplina (disciplina_id, nome) VALUES
(1, 'Matemática'),
(2, 'Física'),
(3, 'Química'),
(4, 'Biologia'),
(5, 'História'),
(6, 'Geografia'),
(7, 'Português'),
(8, 'Inglês'),
(9, 'Artes'),
(10, 'Educação Física');

 
 INSERT INTO aula (aula_id, horario, dia_da_semana, fk_disciplina_disciplina_id) VALUES
(1, '08:00:00', 'Segunda-feira', 1),
(2, '09:00:00', 'Terça-feira', 2),
(3, '10:00:00', 'Quarta-feira', 3),
(4, '11:00:00', 'Quinta-feira', 4),
(5, '12:00:00', 'Sexta-feira', 5),
(6, '13:00:00', 'Segunda-feira', 6),
(7, '14:00:00', 'Terça-feira', 7),
(8, '15:00:00', 'Quarta-feira', 8),
(9, '16:00:00', 'Quinta-feira', 9),
(10, '17:00:00', 'Sexta-feira', 10);

 
 INSERT INTO turma (turma_id, ano_escolar) VALUES
(1, '1º Ano'),
(2, '2º Ano'),
(3, '3º Ano'),
(4, '4º Ano'),
(5, '5º Ano'),
(6, '6º Ano'),
(7, '7º Ano'),
(8, '8º Ano'),
(9, '9º Ano'),
(10, '10º Ano');

 
 INSERT INTO sala (sala_id, capacidade_maxima, numero, bloco, fk_biblioteca_biblioteca_id) VALUES
(1, 30, 101, 'A', 1),
(2, 30, 102, 'A', 2),
(3, 30, 103, 'A', 3),
(4, 30, 104, 'A', 4),
(5, 30, 105, 'A', 5),
(6, 30, 106, 'A', 6),
(7, 30, 107, 'A', 7),
(8, 30, 108, 'A', 8),
(9, 30, 109, 'A', 9),
(10, 30, 110, 'A', 10);

 
 INSERT INTO avaliacao (avalicao_id, pontuacao, nome, fk_professor_professor_id, fk_professor_fk_pessoa_pessoa_id) VALUES
(1, 9.5, 'Prova de Matemática', 1, 2),
(2, 8.5, 'Prova de Física', 2, 3),
(3, 7.0, 'Prova de Química', 3, 4),
(4, 6.5, 'Prova de Biologia', 4, 5),
(5, 8.0, 'Prova de História', 5, 6),
(6, 7.5, 'Prova de Geografia', 6, 7),
(7, 9.0, 'Prova de Português', 7, 8),
(8, 6.0, 'Prova de Inglês', 8, 9),
(9, 8.2, 'Prova de Artes', 9, 10),
(10, 7.8, 'Prova de Educação Física', 10, 1);

 

INSERT INTO mensalidade (mensalidade_id, data_de_liberacao, data_de_vencimento, valor_liquido, valor_bruto, desconto, fk_aluno_aluno_id, fk_aluno_fk_pessoa_pessoa_id) VALUES
(1, '2024-01-05', '2024-01-25', 200.00, 220.00, 20.00, 1, 1),
(2, '2024-02-05', '2024-02-25', 200.00, 220.00, 20.00, 2, 2),
(3, '2024-03-05', '2024-03-25', 200.00, 220.00, 20.00, 3, 3),
(4, '2024-04-05', '2024-04-25', 200.00, 220.00, 20.00, 4, 4),
(5, '2024-05-05', '2024-05-25', 200.00, 220.00, 20.00, 5, 5),
(6, '2024-06-05', '2024-06-25', 200.00, 220.00, 20.00, 6, 6),
(7, '2024-07-05', '2024-07-25', 200.00, 220.00, 20.00, 7, 7),
(8, '2024-08-05', '2024-08-25', 200.00, 220.00, 20.00, 8, 8),
(9, '2024-09-05', '2024-09-25', 200.00, 220.00, 20.00, 9, 9),
(10, '2024-10-05', '2024-10-25', 200.00, 220.00, 20.00, 10, 10);

 
 
 INSERT INTO inclui_prod (fk_produto_produto_id, fk_pedido_pedido_id) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(1, 4),
(2, 4),
(1, 5),
(2, 5),
(1, 6),
(2, 6),
(1, 7),
(2, 7),
(1, 8),
(2, 8),
(1, 9),
(2, 9),
(1, 10),
(2, 10);

 
INSERT INTO fornece_prod (fk_fornecedor_fornecedor_id, fk_produto_produto_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

 
INSERT INTO emprestimo (emprestimo_id, fk_cliente_cliente_id, fk_livro_livro_id, valor_multa, data_realizada, data_limite_devolucao) VALUES
(1, 1, 1, 0.00, '2024-04-01', '2024-04-15'),
(2, 2, 2, 0.00, '2024-04-02', '2024-04-16'),
(3, 3, 3, 0.00, '2024-04-03', '2024-04-17'),
(4, 4, 4, 0.00, '2024-04-04', '2024-04-18'),
(5, 5, 5, 0.00, '2024-04-05', '2024-04-19'),
(6, 6, 6, 0.00, '2024-04-06', '2024-04-20'),
(7, 7, 7, 0.00, '2024-04-07', '2024-04-21'),
(8, 8, 8, 0.00, '2024-04-08', '2024-04-22'),
(9, 9, 9, 0.00, '2024-04-09', '2024-04-23'),
(10, 10, 10, 0.00, '2024-04-10', '2024-04-24');

 
 INSERT INTO leciona_disc (fk_professor_professor_id, fk_professor_fk_pessoa_pessoa_id, fk_disciplina_disciplina_id) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 5, 4),
(5, 6, 5),
(6, 7, 6),
(7, 8, 7),
(8, 9, 8),
(9, 10, 9),
(10, 1, 10);

 
 INSERT INTO possui_tur (fk_aula_aula_id, fk_turma_turma_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

 
 
INSERT INTO fica_em_sal (fk_turma_turma_id, fk_sala_sala_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

 
 
 
INSERT INTO faz_aval (fk_aluno_aluno_id, fk_aluno_fk_pessoa_pessoa_id, fk_avaliacao_avalicao_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);



SELECT * FROM aluno;

--alterando dados na tabela aluno
UPDATE aluno 
SET ano_escolar = '1º Ano' 
WHERE aluno_id = 1;

DELETE FROM ALUNO
WHERE aluno_id = 1;

INSERT INTO aluno (aluno_id, matricula, email_institucional, ano_escolar, fk_pessoa_pessoa_id) VALUES
(1, '20230001', '20230001@inst.edu', '1º Ano', 1);

--alterando dados na tabela professor
UPDATE professor 
SET titulacao = 'Phd' 
WHERE professor_id = 1;

DELETE FROM professor
WHERE professor_id = 1;

INSERT INTO professor (professor_id, departamento_academico, titulacao, especialidade, fk_pessoa_pessoa_id) VALUES
(1, 'Matemática', 'Doutorado', 'Álgebra', 2);

--alterando dados na tabela funcionario
UPDATE funcionario
SET valor_hora = 1000
WHERE funcionario_id= 1;

DELETE FROM funcionario
WHERE funcionario_id = 1;

INSERT INTO professor (professor_id, departamento_academico, titulacao, especialidade, fk_pessoa_pessoa_id) VALUES
(1, 'Matemática', 'Doutorado', 'Álgebra', 2);

SELECT * FROM FUNCIONARIO;
