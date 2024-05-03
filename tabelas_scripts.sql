create table aluno (
id serial primary key,
matricula_aluno int unique,
nome varchar(100),
sobrenome varchar(100),
email varchar(100),
mensalidade money
);


create table disciplina (
id serial primary key,
nome varchar(100)
);

create table turma (
id serial primary key,
cod_cred int,
horario time,
id_disciplina int,
constraint FK_disciplina foreign key(id_disciplina) references disciplina(id)
);

create table aluno_turma (
id serial primary key,
id_aluno int,
id_turma int,
numero_semestre int,
constraint FK_aluno foreign key(id_aluno) references aluno(id),
constraint FK_turma foreign key(id_turma) references turma(id)
);

create table unidade (
id serial primary key,
codigo_unidade int,
nome varchar(100)
);

create table contratado (
id serial primary key,
data_inicio date,
id_unidade int,
constraint FK_unidade foreign key(id_unidade) references unidade(id)
);

create table dependente (
id serial primary key,
nome varchar(100),
sobrenome varchar(100),
id_contratado int,
constraint FK_contratado foreign key(id_contratado) references contratado(id)
);

create table funcionario (
id serial primary key,
matricula_funcionario int unique,
nome varchar(100),
sobrenome varchar(100),
email varchar(100) unique,
salario money,
cargo varchar(100),
id_contratado int,
constraint FK_contratado foreign key(id_contratado) references contratado(id)
);

create table professor (
id serial primary key,
matricula_professor int unique,
nome varchar(100),
sobrenome varchar(100),
email varchar(100) unique,
salario money,
formacao varchar(150),
id_contratado int,
constraint FK_contratado foreign key(id_contratado) references contratado(id)
);

create table professor_turma (
id serial primary key,
id_professor int,
id_turma int,
constraint FK_professor foreign key(id_professor) references professor(id),
constraint FK_turma foreign key(id_turma) references turma(id)
);

select * from aluno;
select * from aluno_turma;
select * from contratado;
select * from dependente;
select * from disciplina;
select * from funcionario;
select * from professor;
select * from professor_turma;
select * from turma;
select * from unidade;