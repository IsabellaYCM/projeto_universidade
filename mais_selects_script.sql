--mensalidade máxima
SELECT MAX(mensalidade) AS max_mensalidade FROM aluno;

--mensalidade mínima
SELECT MIN(mensalidade) AS min_mensalidade FROM aluno;

--média da mensalidade
SELECT AVG(cast(mensalidade as numeric(10,2))) AS avg_mensalidade FROM aluno;

--soma total das mensalidades
SELECT SUM(mensalidade) AS total_mensalidade FROM aluno;

--contagem de alunos
SELECT COUNT(*) AS total_alunos FROM aluno;

--salário máximo
SELECT MAX(salario) AS max_salario FROM contratado;

--salário mínimo
SELECT MIN(salario) AS min_salario FROM contratado;

--média do salário
SELECT AVG(cast(salario AS numeric(10,2))) AS avg_salario FROM contratado;

--soma total dos salários
SELECT SUM(salario) AS total_salario FROM contratado;

--contagem de contratados
SELECT COUNT(*) AS total_contratados FROM contratado;

--contagem de dependentes para cada contratado:
SELECT c.nome, c.sobrenome, COUNT(d.id) AS total_dependentes
FROM contratado c
LEFT JOIN dependente d ON c.id = d.id_contratado
GROUP BY c.nome, c.sobrenome;


--contagem de turmas para cada disciplina:
SELECT d.nome AS disciplina, COUNT(t.id) AS total_turmas
FROM disciplina d
LEFT JOIN turma t ON d.id = t.id_disciplina
GROUP BY d.nome;


--contagem de alunos matriculados em cada turma:
SELECT t.id AS id_turma, COUNT(at.id) AS total_alunos
FROM turma t
LEFT JOIN aluno_turma at ON t.id = at.id_turma
GROUP BY t.id;