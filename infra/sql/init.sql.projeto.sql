-- RESPOSTA 2 SERIAL/ UNIQUE/ NOT NULL
   
  
   CREATE TABLE Alunos (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
	sobrenome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    celular VARCHAR(20) NOT NULL
    
);

CREATE TABLE Cursos (
    id_curso SERIAL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    categoria VARCHAR(100),
	carga_horaria VARCHAR(10) NOT NULL
    
);

CREATE TABLE Matricula (
    id_matricula SERIAL PRIMARY KEY,
    id_aluno INT NULL,
	id_curso INT NOT NULL,
    data_matricula DATE NOT NULL,
	status VARCHAR(200) NOT NULL
	
    
);


INSERT INTO Alunos (id_aluno, nome, sobrenome,cpf, celular)
VALUES
    ('1','Ana Carol', 'Neto', '41860522030', ' 11987654321'),
    ('2','Pedro', 'Andrew', '93578145002', ' 21991234567'),
    ('3','Livia', 'Pereira', '6084923105', ' 31998765432'),
	('4','Lucas', 'Andre', '32704989001', ' 41999887766'),
    ('5','Maria', 'Silva', '71236817064', ' 51991112233');

SELECT * FROM Alunos;


INSERT INTO Cursos (id_curso, nome, categoria,carga_horaria)
VALUES
    ('1','Introducao a Programacao', 'Tecnologia', '40'),
    ('2','Marketing Digital', 'Marketing', '30'),
    ('3','Gestao de Projetos', 'Administracao', '60'),
	('4','Excel', 'Produtividade', '20'),
    ('5','Fundamentos de Design', 'Design', '35');

	SELECT * FROM Cursos;

	INSERT INTO Matricula (id_matricula, id_aluno, id_curso,data_matricula, status)
VALUES
    ('1','2', '3', '12-04-2025', 'Ativo'),
    ('2','3', '4', '30-03-2024', 'Pendente'),
    ('3','4', '5', '22-01-2023', 'Trancada'),
	('4','1', '2', '11-11-2023', 'Ativo'),
    ('5','5', '1', '04-04-2022', 'Trancada');

SELECT * FROM Matricula;

