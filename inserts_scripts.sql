INSERT INTO aluno (matricula_aluno, nome, sobrenome, email, mensalidade) VALUES 
(1001, 'João', 'Silva', 'joao.silva@email.com', 500.00),
(1002, 'Maria', 'Santos', 'maria.santos@email.com', 550.00),
(1003, 'Pedro', 'Ferreira', 'pedro.ferreira@email.com', 520.00),
(1004, 'Ana', 'Oliveira', 'ana.oliveira@email.com', 480.00),
(1005, 'Lucas', 'Rodrigues', 'lucas.rodrigues@email.com', 510.00),
(1006, 'Juliana', 'Martins', 'juliana.martins@email.com', 530.00),
(1007, 'Carlos', 'Souza', 'carlos.souza@email.com', 490.00),
(1008, 'Camila', 'Almeida', 'camila.almeida@email.com', 525.00),
(1009, 'Gabriel', 'Lima', 'gabriel.lima@email.com', 540.00),
(1010, 'Fernanda', 'Costa', 'fernanda.costa@email.com', 500.00),
(1011, 'João', 'Santos', 'joao.santos@email.com', 500.00),
(1012, 'Fernanda', 'Ferreira', 'fernanda.ferreira@email.com', 500.00),
(1013, 'Gabriel', 'Almeida', 'gabriel.almeida@email.com', 540.00),
(1014, 'Carlos', 'Oliveira', 'carlos.oliveira@email.com', 490.00),
(1015, 'Isaque', 'Ferreira', 'isaque.ferreira@email.com', 520.00),
(1016, 'Gabriela', 'Martins', 'gabriela.martins@email.com', 530.00),
(1017, 'Ana', 'Martins', 'ana.martins@email.com', 480.00),
(1018, 'Gabriela', 'Ferreira', 'gabriela.ferreira@email.com', 480.00),
(1019, 'Pedro', 'Silva', 'pedro.silva@email.com', 480.00),
(1020, 'Ana', 'Silva', 'ana.silva@email.com', 480.00),
(1021, 'Rafael', 'Pereira', 'rafael.pereira@email.com', 490.00),
(1022, 'Amanda', 'Gomes', 'amanda.gomes@email.com', 515.00),
(1023, 'Felipe', 'Ribeiro', 'felipe.ribeiro@email.com', 525.00),
(1024, 'Laura', 'Dias', 'laura.dias@email.com', 495.00),
(1025, 'Mateus', 'Carvalho', 'mateus.carvalho@email.com', 530.00),
(1026, 'Isabela', 'Mendes', 'isabela.mendes@email.com', 500.00),
(1027, 'Rodrigo', 'Oliveira', 'rodrigo.oliveira@email.com', 510.00),
(1028, 'Larissa', 'Sousa', 'larissa.sousa@email.com', 535.00),
(1029, 'Daniel', 'Martins', 'daniel.martins@email.com', 480.00),
(1030, 'Mariana', 'Silveira', 'mariana.silveira@email.com', 520.00),
(1031, 'Thiago', 'Albuquerque', 'thiago.albuquerque@email.com', 550.00),
(1032, 'Bianca', 'Pereira', 'bianca.pereira@email.com', 485.00),
(1033, 'Vinicius', 'Nascimento', 'vinicius.nascimento@email.com', 510.00),
(1034, 'Natália', 'Fernandes', 'natalia.fernandes@email.com', 495.00),
(1035, 'Guilherme', 'Barbosa', 'guilherme.barbosa@email.com', 530.00),
(1036, 'Carolina', 'Araújo', 'carolina.araujo@email.com', 540.00),
(1037, 'Luciana', 'Rocha', 'luciana.rocha@email.com', 515.00),
(1038, 'Fernando', 'Melo', 'fernando.melo@email.com', 525.00),
(1039, 'Patrícia', 'Cardoso', 'patricia.cardoso@email.com', 500.00),
(1040, 'Ricardo', 'Cavalcanti', 'ricardo.cavalcanti@email.com', 490.00);

INSERT INTO disciplina (nome) VALUES 
('Matemática Discreta'),
('Algoritmos e Estruturas de Dados'),
('Cálculo I'),
('Física Geral'),
('Programação Orientada a Objetos'),
('Banco de Dados'),
('Estatística'),
('Engenharia de Software'),
('Redes de Computadores'),
('Inteligência Artificial');

INSERT INTO turma (cod_cred, horario, id_disciplina) VALUES 
(101, '08:00:00', 1),
(102, '10:00:00', 2),
(103, '14:00:00', 3),
(104, '08:00:00', 4),
(105, '10:00:00', 5),
(106, '14:00:00', 6),
(107, '08:00:00', 7),
(108, '10:00:00', 8),
(109, '14:00:00', 9),
(110, '08:00:00', 10);

INSERT INTO aluno_turma (id_aluno, id_turma, numero_semestre) VALUES 
(4, 1, 1),
(4, 2, 1),
(4, 3, 1),
(4, 1, 1),
(18, 2, 1),
(18, 3, 1),
(18, 4, 1),
(19, 1, 1),
(19, 2, 1),
(19, 3, 1),
(20, 1, 1),
(20, 2, 1),
(20, 3, 1),
(21, 1, 1),
(21, 2, 1),
(21, 3, 1),
(22, 1, 1),
(22, 4, 1),
(23, 8, 2),
(23, 6, 2),
(23, 7, 2),
(24, 8, 2),
(24, 5, 2),
(24, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(26, 8, 2),
(26, 9, 2),
(27, 10, 2),
(27, 8, 2),
(28, 9, 2),
(28, 10, 2);

INSERT INTO unidade (codigo_unidade, nome) VALUES 
(100, 'Unidade Vila Madalena'),
(200, 'Unidade Paulista'),
(300, 'Unidade Liberdade'),
(400, 'Unidade Brooklin'),
(500, 'Unidade Itaim Bibi');

INSERT INTO contratado (data_inicio, nome, sobrenome, email, salario, formacao, cargo, id_unidade) VALUES 
('2014-01-10', 'João', 'Silva', 'joao.silva@email.com', 15000.00, 'Engenharia de Computação', 'Professor', 1),
('2004-02-15', 'Maria', 'Santos', 'maria.santos@email.com', 20500.00, 'Ciência da Computação', 'Professor', 2),
('2020-03-20', 'Pedro', 'Ferreira', 'pedro.ferreira@email.com', 12200.00, 'Sistemas de Informação', 'Professor', 3),
('2020-04-25', 'Ana', 'Oliveira', 'ana.oliveira@email.com', 10000.00, 'Tecnologia da Informação', 'Professor', 4),
('2016-05-10', 'Lucas', 'Rodrigues', 'lucas.rodrigues@email.com', 5100.00, 'Administração', 'Gerente', 5),
('2016-06-15', 'Juliana', 'Martins', 'juliana.martins@email.com', 5300.00, 'Administração', 'Analista de RH', 1),
('2014-07-20', 'Carlos', 'Souza', 'carlos.souza@email.com', 4900.00, 'Administração', 'Analista de RH', 2),
('2021-08-25', 'Camila', 'Almeida', 'camila.almeida@email.com', 5250.00, 'Ciência Contábeis', 'Analista Financeiro', 3),
('2021-09-10', 'Gabriel', 'Lima', 'gabriel.lima@email.com', 5400.00, 'Ciência Contábeis', 'Analista Financeiro', 4),
('2021-10-15', 'Fernanda', 'Costa', 'fernanda.costa@email.com', 17000.00, 'Ciências da Computação', 'Gerente de TI', 5),
('2020-11-20', 'Rafael', 'Pereira', 'rafael.pereira@email.com', 8900.00, 'Engenharia Elétrica', 'Desenvolvedor Backend', 1),
('2004-12-25', 'Amanda', 'Gomes', 'amanda.gomes@email.com', 11150.00, 'Sistemas de Informação', 'Analista de Suporte', 2),
('2005-01-10', 'Felipe', 'Ribeiro', 'felipe.ribeiro@email.com', 17050.00, 'Engenharia de Computação', 'Engenheiro de Dados', 3),
('2010-02-15', 'Laura', 'Dias', 'laura.dias@email.com', 19950.00, 'Ciência da Computação', 'Analista de Segurança', 4),
('2010-03-20', 'Mateus', 'Carvalho', 'mateus.carvalho@email.com', 9300.00, 'Tecnologia da Informação', 'Desenvolvedor Mobile', 5);

insert into dependente (nome, sobrenome, id_contratado)  values
('Elias', 'Silva', 1),
('Ana Sophia', 'Silva', 1),
('Kaique', 'Martins', 6),
('Cleiton', 'Martins', 6),
('Leonardo', 'Gomes', 12),
('Micaela', 'Gomes', 12),
('Elena', 'Rodrigues', 5),
('Carol', 'Almeida', 8),
('Diogo', 'Carvalho', 15),
('Ricardo', 'Carvalho', 15),
('Raquel', 'Pereira', 11),
('Julia', 'Ribeiro', 13),
('Elias', 'Ribeiro', 13),
('Caio', 'Ribeiro', 13),
('Luana', 'Lima', 9),
('Caroline', 'Lima', 9);

insert into funcionario (matricula_funcionario, id_contratado) values
(7600, 5),
(7601, 6),
(7602, 7),
(7603, 8),
(7604, 9),
(7605, 10),
(7606, 11),
(7607, 12),
(7608, 13),
(7609, 14),
(7610, 15);

insert into professor  (matricula_professor , id_contratado) values
(8600, 1),
(8601, 2),
(8602, 3),
(8603, 4);

insert into professor_turma (id_professor, id_turma) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(1, 5),
(2, 6),
(3, 7),
(4, 8),
(1, 9),
(2, 10);