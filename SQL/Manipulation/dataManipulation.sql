-- Alterando dados na tabela aluno

	-- Updating na tabela aluno:
	UPDATE aluno 
	SET ano_escolar = '1º Ano' 
	WHERE aluno_id = 21;

	-- Deletando um Aluno
		--Deletando as relacoes de Aluno antes de deletar ele:
		DELETE FROM faz_aval
		WHERE fk_aluno_aluno_id = 21;
	DELETE FROM ALUNO
	WHERE aluno_id = 21;

	-- Inserindo um novo aluno:
		--Inserindo uma pessoa antes:
			INSERT INTO pessoa (email, endereco, data_nascimento, telefone, pessoa_id, cpf, nome) VALUES
			('marcos.silva@example.com', 'Rua das Flores, 133, Recife', '1990-04-15', '+00 123 1987654321', 31, '123.456.569-00', 'Marcos da Silva Santos');
	INSERT INTO aluno (aluno_id, matricula, email_institucional, ano_escolar, fk_pessoa_pessoa_id) VALUES
	(31, '20230001', '20230001@inst.edu', '1º Ano', 31);

-- Alterando dados na tabela professor
	-- Updating na tabela professor:
	UPDATE professor 
	SET titulacao = 'Phd' 
	WHERE professor_id = 11;
	-- Deletando dados na tabela professor
		-- Deletando as relacoes do professor antes
			DELETE FROM leciona_disc
			WHERE fk_professor_professor_id = 11;
		DELETE FROM professor
		WHERE professor_id = 11;
	-- Inserindo um novo professor:
	INSERT INTO professor (professor_id, departamento_academico, titulacao, especialidade, fk_pessoa_pessoa_id) VALUES
	(11, 'Matemática', 'Doutorado', 'Álgebra', 11);

-- Alterando dados na tabela funcionario
	-- Updating na tabela funcionario:
	UPDATE funcionario
	SET valor_hora = 1000
	WHERE funcionario_id= 1;
	-- Deletando dados na tabela funcionario:
	DELETE FROM funcionario
	WHERE funcionario_id = 1;
	-- Inserindo novo funcionario:
	INSERT INTO funcionario (funcionario_id, carga_horaria, valor_hora, turno, departamento, setor_departamento, fk_pessoa_pessoa_id) VALUES
(1, 40, 30.00, 'Diurno', 'TI', 'Analista de Dados', 1);

SELECT *
FROM aluno;
SELECT *
FROM professor;
SELECT *
FROM funcionario;