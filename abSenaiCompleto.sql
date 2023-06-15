-- criar entidade Departamentos
CREATE TABLE departamentos(
	idDepartamento INT PRIMARY KEY,
	siglaDepartamento VARCHAR(3) NOT NULL,
	nomeDepartamento VARCHAR(30) NOT NULL
);

-- renomeando as colunas
ALTER TABLE departamentos RENAME COLUMN idDepartamento TO id_departamento;
ALTER TABLE departamentos RENAME COLUMN siglaDepartamento TO sigla_departamento;
ALTER TABLE departamentos RENAME COLUMN nomeDepartamento TO nome_departamento;


-- vizualiza entidades criadas
SELECT * FROM departamentos;
SELECT * FROM cursos;
SELECT * FROM disciplinas;
SELECT * FROM alunos;
SELECT * FROM disciplinas_alunos;


-- criando entidade cursos
CREATE TABLE cursos(
	id_curso INT PRIMARY KEY,
	id_departamento INT REFERENCES departamentos,
	sigla_curso VARCHAR(3) NOT NULL,
	nome_curso VARCHAR(30) NOT NULL
);

-- alterando a tabela cursos
ALTER TABLE cursos ALTER COLUMN nome_curso TYPE varchar(50);


-- criando entidade disciplina
CREATE TABLE disciplinas(
	id_disciplina INT PRIMARY KEY,
	id_curso INT REFERENCES cursos,
	sigla_disciplina VARCHAR(4) NOT NULL,
	nome_disciplina VARCHAR(50),
	optativa BOOLEAN DEFAULT FALSE
);

-- criando entidade alunos
CREATE TABLE alunos(
	ra INT PRIMARY KEY,
	cpf VARCHAR(14) NOT NULL UNIQUE,
	nome_aluno VARCHAR(50) NOT NULL,
	data_nascimento DATE CHECK (AGE(CURRENT_DATE, data_nascimento)>='14 years')
);

-- alterando a tabela alunos
ALTER TABLE alunos ADD COLUMN status BOOLEAN DEFAULT TRUE;

-- criando entidade disciplinas_alunos
CREATE TABLE disciplinas_alunos(
	id_disciplina_aluno INT PRIMARY KEY,
	id_disciplina INT REFERENCES disciplinas,
    ra INT REFERENCES alunos,
	data_matricula DATE 
);


ALTER TABLE departamentos ALTER COLUMN nome_departamento TYPE varchar(50);

INSERT INTO departamentos VALUES (1,'CST','Curso Superior em Tecnologia');
INSERT INTO departamentos VALUES (2,'CT','Curso Tecnico');
INSERT INTO departamentos VALUES (3,'CAI','Curso de Aprendizagem Industrial');
INSERT INTO departamentos VALUES (4,'FIC', 'Formação Inicial e Continuada');

SELECT COUNT

INSERT INTO cursos VALUES
 (1,1, 'ADS', 'Tecnólogo em Análise e Desenvolvimento de Sistemas'),
(2,1, 'MEC', 'Tecnólogo em Mecatrônica'),
(3,2, 'DEV', 'Técnico em Desenvolvimento de Sistemas'),
 (4,2, 'MEC', 'Técnico em Mecatrônica'),
(5,3, 'EME', 'Eletricista de Manutenção Eletroeletrônico'),
(6,3, 'MUS', 'Mecânico de Usinagem'), (7,3,'ADM', 'Administração'),
(8,4,'CLP', 'Controladores Lógicos Programáveis'),
(9,4,'EXC', 'Excel'),
 (10,4,'PBI', 'Power BI'),
(11,4, 'ROB', 'Robótica Industrial'),
(12,4,'EIN', 'Eletricista Instalador'),
(13,4, 'HDR', 'Hidráulica'),
(14,4,'PNE', 'Pneumática'),
 (15,4, 'FER', 'Ferramenteiro');


SELECT * FROM cursos;


