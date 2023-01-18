CREATE TABLE `Cursos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `disciplina` varchar(255),
  `id_Turmas` int
);

CREATE TABLE `Turmas` (
  `id` int PRIMARY KEY,
  `turno` varchar(255),
  `id_Professores` int,
  `id_Alunos` int
);

CREATE TABLE `Professores` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `nascimento` varchar(255),
  `cpf` varchar(255),
  `id_Turmas` int,
  `id_Cursos` int
);

CREATE TABLE `Alunos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `nascimento` varchar(255),
  `cpf` varchar(255),
  `email` varchar(255),
  `id_Cursos` int
);

ALTER TABLE `Cursos` ADD FOREIGN KEY (`id_Turmas`) REFERENCES `Turmas` (`id`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`id_Professores`) REFERENCES `Professores` (`id`);

ALTER TABLE `Turmas` ADD FOREIGN KEY (`id_Alunos`) REFERENCES `Alunos` (`id`);

ALTER TABLE `Professores` ADD FOREIGN KEY (`id_Turmas`) REFERENCES `Turmas` (`id`);

ALTER TABLE `Professores` ADD FOREIGN KEY (`id_Cursos`) REFERENCES `Cursos` (`id`);

ALTER TABLE `Alunos` ADD FOREIGN KEY (`id_Cursos`) REFERENCES `Cursos` (`id`);
