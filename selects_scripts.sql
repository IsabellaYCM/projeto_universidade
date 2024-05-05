-- select dos dependentes que os pais
-- foram contratados entre 2000 e 2014
create or replace view dependentes_pais_2000_2014 as
select d.id "Código dependente: ",
concat(d.nome, ' ', d.sobrenome) "Nome dependente: ",
concat(c.nome, ' ', c.sobrenome) "Nome contratado: ", 
c.data_inicio "Admissão contratado: "
from dependente d 
inner join contratado c on c.id = d.id_contratado 
and c.data_inicio between '2000-01-01' and '2014-12-30';

-- select dos contratados e a soma dos dependentes de cada um
create or replace view contrados_qtd_dependentes as
select concat(c.nome, ' ', c.sobrenome) "Contratado",
count(d.id_contratado) "Nº dependentes"
from contratado c 
inner join dependente d on d.id_contratado = c.id 
group by "Contratado"; 

-- select dos contratados que só tem 1 dependente
create or replace view contratados_1_dependente as
select concat(c.nome, ' ', c.sobrenome) "Contratado",
count(d.id_contratado) "Nº dependentes"
from contratado c 
inner join dependente d on d.id_contratado = c.id 
group by "Contratado" having count(d.id_contratado) <= 1 ; 

-- select da soma de salários pago por unidade
create or replace view salarios_por_unidade as
select u.id "Id unidade: ", 
u.nome "Nome unidade", sum(c.salario) "Soma salários unidade: "
from unidade u 
inner join contratado c on c.id_unidade = u.id 
group by u.id, u.nome; 

-- select salário médio por unidade
create or replace view salario_medio_unidade as
select u.id "Id unidade: ", 
u.nome "Nome unidade", 
cast(avg(cast (c.salario as decimal)) as numeric(10, 2)) "Média salários unidade: "
from unidade u 
inner join contratado c on c.id_unidade = u.id 
group by u.id, u.nome; 

-- select do professor, a unidade em que ele trabalha
-- turma, horário e o nome da disciplina
create or replace view professor_unidade_turma_horario_disciplina as
select concat(c.nome, ' ', c.sobrenome) "Nome completo: ",
c.email "E-mail: ",
c.cargo "Cargo: ",
u.nome "Leciona na unidade: ",
d.nome "Nome disciplina",
t.horario "Horário aula"
from contratado c 
inner join unidade u on u.id = c.id_unidade
inner join professor p on p.id_contratado = c.id 
inner join professor_turma pt on pt.id_professor = p.id 
inner join turma t on t.id = pt.id_turma 
inner join disciplina d on d.id = pt.id_turma 
where c.cargo = 'Professor'

-- select quantos alunos tem em cada turma por semetre
-- e professor responsável
create or replace view qtd_aluno_turma_semestre as
select t.cod_cred "Código turma: ",
d.nome "Nome disciplina: ",
count(at2.id_aluno) "Nº Alunos:",
at2.numero_semestre "Semestre: ",
concat(c.nome, ' ', c.sobrenome) "Professor Responsável:"
from aluno_turma at2 
inner join turma t on t.id  = at2.id_turma 
inner join disciplina d on d.id = t.id_disciplina 
inner join professor_turma pt on pt.id_turma = at2.id_turma 
inner join professor p on p.id = pt.id_professor 
inner join contratado c on c.id = p.id_contratado 
group by t.cod_cred, d.nome, at2.numero_semestre, 
"Professor Responsável:";

-- select de alunos que não estão matriculados em
-- nenhuma turma
create or replace view alunos_sem_turma as
select a.id "ID Aluno", concat(a.nome, ' ', a.sobrenome) "Nome: ",
coalesce (cast(at2.id_turma as varchar(100)), 
'SEM MATRÍCULA EM TURMA') "ID Turma"
from aluno a 
left join aluno_turma at2 on at2.id_aluno = a.id 
where at2.id_turma is null;

-- select da quantidade de turmas que cada aluno está matriculado
create or replace view qtd_turma_aluno as
select a.matricula_aluno "Código de matrícula: ",
concat(a.nome, ' ', a.sobrenome) "Nome Aluno: ",
count(at2.id_turma) "Nº turmas matriculado: "
from aluno a 
inner join aluno_turma at2 on at2.id_aluno = a.id 
group by "Nome Aluno: ", a.matricula_aluno; 

select * from dependentes_pais_2000_2014;
select * from contrados_qtd_dependentes;
select * from contratados_1_dependente;
select * from salarios_por_unidade;
select * from salario_medio_unidade;
select * from professor_unidade_turma_horario_disciplina;
select * from qtd_aluno_turma_semestre;
select * from alunos_sem_turma;
select * from qtd_turma_aluno;


