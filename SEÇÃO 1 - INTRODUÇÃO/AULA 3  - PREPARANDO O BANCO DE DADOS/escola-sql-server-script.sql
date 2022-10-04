CREATE DATABASE escola;
USE [escola];

CREATE TABLE aluno (
  [aluno_id] int NOT NULL IDENTITY,
  [nome] varchar(300) DEFAULT NULL,
  [sexo] char(1) DEFAULT NULL,
  [data_nascimento] date DEFAULT NULL,
  [avatar] varbinary(max),
  [endereco] varchar(50) DEFAULT NULL,
  [numero_endereco] int DEFAULT NULL,
  [cep] varchar(50) DEFAULT NULL,
  [bairro] varchar(50) DEFAULT NULL,
  [cidade] varchar(50) DEFAULT NULL,
  [estado] varchar(50) DEFAULT NULL,
  [descricao] varchar(4000) DEFAULT NULL,
  PRIMARY KEY ([aluno_id])
)  ;

set identity_insert aluno on;

INSERT INTO aluno ([aluno_id], [nome], [sexo], [data_nascimento], [endereco], [numero_endereco], [cep], [bairro], [cidade], [estado], [descricao]) VALUES
	(1, 'Marcelo Cauã da Cruz', 'M', '1978-06-09',  'Quadra 1006 Sul Alameda 3 A', 354, '77023-549', 'Plano Diretor Sul', 'Palmas', 'TO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(2, 'Evelyn Francisca Luciana Pires', 'F', '1959-04-19',  'Rua II', 602, '69313-325', 'Cambará', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(3, 'Anderson Kauê Carlos Figueiredo', 'M', '1991-10-01',  'Rua Vânia Monteiro Cavalcante', 689, 'rn58430-025rn', 'Bodocongó', 'Campina Grande', 'PB', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(4, 'Liz Aparecida Vitória Nascimento', 'F', '1989-10-01',  'Rua São Salvador', 191, '65915-768', 'Parque Alvorada II', 'Imperatriz', 'MA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(5, 'Josefa Amanda das Neves', 'F', '1988-03-04',  'Rua Professor Manoel Belém', 586, '69090-650', 'Cidade Nova', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(6, 'Bárbara Isis Assunção', 'F', '1989-05-01',  'Rua Nordeste', 737, '77808-646', 'Setor Palmas', 'Araguaína', 'TO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(7, 'Julio Bernardo Cardoso', 'M', '1991-10-01',  'Rua Vânia Monteiro Cavalcante', 191, '77808-646', 'Parque Alvorada II', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(8, 'Oliver Ryan Pietro Aragão', 'M', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(9, 'Débora Sebastiana Olivia Martins', 'F', '1986-02-01',  'Avenida Interventor Mário Câmara', 319, '59062-600', 'Nossa Senhora de Nazaré', 'Natal', 'RN', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(10, 'Sérgio José Nunes', 'M', '1959-04-19',  'Rua II', 602, '69313-325', 'Cambará', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(11, 'César Leonardo Corte Real', 'M', '1991-09-09',  'Rua Vânia Monteiro Cavalcante', 191, '77808-646', 'Parque Alvorada II', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(12, 'Martin Lorenzo Alves', 'F', '1989-05-01',  'Rua Nordeste', 737, '77808-646', 'Setor Palmas', 'Araguaína', 'TO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(13, 'Laura Giovana Fabiana da Paz', 'F', '1988-03-04',  'Rua Professor Manoel Belém', 586, '69090-650', 'Cidade Nova', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(14, 'Marcela Alícia Evelyn Peixoto', 'F', '1986-02-06',  'Avenida Interventor Mário Câmara', 319, '59062-600', 'Nossa Senhora de Nazaré', 'Natal', 'RN', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(15, 'Manuel Antonio Gomes', 'F', '1989-10-01',  'Rua São Salvador', 191, '65915-768', 'Parque Alvorada II', 'Imperatriz', 'MA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(16, 'Benício Raimundo da Rocha', 'M', '1989-05-01',  'Rua Nordeste', 737, '77808-646', 'Setor Palmas', 'Araguaína', 'TO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(17, 'Beatriz Mariah Kamilly Pereira', 'F', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(18, 'Julio Tomás Vieira', 'M', '1959-04-19',  'Rua II', 602, '69313-325', 'Cambará', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(19, 'Fernando Edson Pinto', 'M', '1991-10-01',  'Rua Vânia Monteiro Cavalcante', 689, 'rn58430-025rn', 'Bodocongó', 'Campina Grande', 'PB', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(20, 'Gael Sérgio Vieira', 'X', '1988-03-04',  'Rua Professor Manoel Belém', 586, '69090-650', 'Cidade Nova', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(21, 'Otávio Oliver Pietro Dias', 'M', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(22, 'Marina Juliana Figueiredo', 'F', '1988-03-04',  'Rua Professor Manoel Belém', 586, '69090-650', 'Cidade Nova', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(23, 'Thales Benjamin Benedito da Luz', 'M', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(24, 'Thiago Augusto Ian Jesus', 'M', '1991-10-01',  'Rua Vânia Monteiro Cavalcante', 689, 'rn58430-025rn', 'Bodocongó', 'Campina Grande', 'PB', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(25, 'Maitê Rayssa Antonella da Mata', 'F', '1989-10-01',  'Rua São Salvador', 191, '65915-768', 'Parque Alvorada II', 'Imperatriz', 'MA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(26, 'Lívia Louise Antônia Porto da Silva Contente Joanne Carlotta Joaquina', 'F', '1986-02-06',  'Avenida Interventor Mário Câmara', 319, '59062-600', 'Nossa Senhora de Nazaré', 'Natal', 'RN', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(27, 'Débora Antonella Carolina Galvão', 'F', '1959-04-19',  'Rua II', 602, '69313-325', 'Cambará', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.'),
	(28, 'Daiane Kamilly Cristiane Cavalcanti', 'F', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.');

set identity_insert aluno off;
	
-- Copiando estrutura para tabela escola.escolaridade
CREATE TABLE escolaridade (
  [escolaridade_id] int NOT NULL IDENTITY,
  [nome] varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY ([escolaridade_id])
)  ;

set identity_insert escolaridade on;

INSERT INTO escolaridade ([escolaridade_id], [nome]) VALUES

	(1, 'Ensino Médio'),
	(2, 'Ensino Superior'),
	(3, 'Mestrado'),
	(4, 'Doutorado');

set identity_insert escolaridade off;

-- Copiando estrutura para tabela escola.professor
CREATE TABLE professor (
  [professor_id] int NOT NULL IDENTITY,
  [nome] varchar(300) NOT NULL,
  [data_nascimento] date NOT NULL,
  [escolaridade_id] int NOT NULL,
  PRIMARY KEY ([professor_id])
 ,
  CONSTRAINT [FK_professor_escolaridade] FOREIGN KEY ([escolaridade_id]) REFERENCES escolaridade ([escolaridade_id])
)  ;


set identity_insert professor on;

INSERT INTO professor ([professor_id], [nome], [data_nascimento], [escolaridade_id]) VALUES
	(1, 'Samuel Rodrigo Pereira', '1970-04-17', 3),
	(2, 'Sophia Larissa Isabelly Baptista', '1970-03-01', 4),
	(3, 'Adriana Louise Monteiro', '1975-01-01', 2),
	(4, 'Sebastião Alexandre Enzo Lima', '1972-06-01', 1),
	(5, 'Carlos Yago Pedro Henrique Alves', '1971-01-01', 4),
	(6, 'Fernando Carlos Caleb Lopes', '1970-07-07', 4);

	set identity_insert professor off;

	-- Copiando estrutura para tabela escola.disciplina
	CREATE TABLE disciplina (
	  [disciplina_id] int NOT NULL IDENTITY,
	  [nome] varchar(300) DEFAULT NULL,
	  [descricao] varchar(4000) DEFAULT NULL,
	  [cor] varchar(50) DEFAULT NULL,
	  [carga_horaria] smallint DEFAULT NULL,
	  PRIMARY KEY ([disciplina_id])
	)  ;

	set identity_insert disciplina on;

	INSERT INTO disciplina ([disciplina_id], [nome], [descricao], [cor], [carga_horaria]) VALUES
		(1, 'Português', 'A <b>língua portuguesa</b>, também designada português, é uma língua românica flexiva ocidental originada no galego-português falado no Reino da Galiza e no norte de Portugal. Com a criação do Reino de Portugal em 1139 e a expansão para o sul como parte da Reconquista deu-se a difusão da língua pelas terras conquistadas e mais tarde, com as descobertas portuguesas, para o Brasil, África e outras partes do mundo.[3] O português foi usado, naquela época, não somente nas cidades conquistadas pelos portugueses, mas também por muitos governantes locais nos seus contatos com outros estrangeiros poderosos. Especialmente nessa altura a língua portuguesa também influenciou várias línguas.', '', 40),
		(2, 'Matemática', 'A <b>matemática</b> é a ciência do raciocínio lógico e abstrato, que estuda quantidades, medidas, espaços, estruturas, variações e estatísticas. Um trabalho matemático consiste em procurar por padrões, formular conjecturas e, por meio de deduções rigorosas a partir de axiomas e definições, estabelecer novos resultados. A matemática desenvolveu-se principalmente na Mesopotâmia, no Egito, na Grécia, na Índia e no Oriente Médio. A partir da Renascença, o desenvolvimento da matemática intensificou-se na Europa, quando novas descobertas científicas levaram a um crescimento acelerado que dura até os dias de hoje', NULL, 20),
		(3, 'Física', '<b>Física</b> é a ciência que estuda a natureza e seus fenômenos em seus aspectos mais gerais. Analisa suas relações e propriedades, além de descrever e explicar a maior parte de suas consequências. Busca a compreensão científica dos comportamentos naturais e gerais do mundo em nosso torno, desde as partículas elementares até o universo como um todo.[1][2] Com o amparo do método científico e da lógica, e tendo a matemática como linguagem natural, esta ciência descreve a natureza através de modelos científicos. É considerada a ciência fundamental, sinônimo de ciência natural: as ciências naturais, como a química e a biologia, têm raízes na física. Sua presença no cotidiano é muito ampla, sendo praticamente impossível uma completíssima descrição dos fenômenos físicos em nossa volta. A aplicação da física para o benefício humano contribuiu de uma forma inestimável para o desenvolvimento de toda a tecnologia moderna, desde o automóvel até os computadores quânticos.', NULL, 120),
		(4, 'Química', 'Química é a ciência que estuda a composição, estrutura, propriedades da matéria, as mudanças sofridas por ela durante as reações químicas e a sua relação com a energia.[2][3]. É considerada uma ciência exata e é chamada muitas vezes de ciência central porque é a ponte entre outras ciências naturais[4][nota 2] como Física, Matemática e Biologia. A Química possui papel fundamental no desenvolvimento tecnológico, pois a utilização dos conceitos e técnicas dessa ciência permite a obtenção de novas substâncias, além de preocupar-se com a prevenção de danos e exploração sustentável do meio ambiente.', NULL, 30),
		(5, 'Biologia', 'Biologia é a ciência que estuda a vida e os organismos vivos.[1][2] A biologia está dividida em vários campos especializados que abrangem a morfologia, fisiologia, anatomia, comportamento, origem, evolução[2][3] e distribuição da matéria viva, além dos processos vitais e das relações entre os seres vivos.[1][4] As subdisciplinas da biologia são definidas pela escala em que a vida é estudada, os tipos de organismos estudados e os métodos utilizados para estudá-los: a bioquímica examina a química rudimentar da vida; a biologia molecular estuda as interações complexas entre as moléculas biológicas; a biologia celular examina o bloco básico de construção de toda a vida, a célula; a fisiologia examina as funções físicas e químicas dos tecidos, órgãos e sistemas de órgãos; a ecologia examina como os organismos interagem em seu ambiente; e a biologia evolutiva examina os processos evolutivos que provavelmente produziram a diversidade da vida.[5] Apesar do amplo escopo e da complexidade da ciência, existem certos conceitos unificadores que o consolidam em um único campo coerente. Geralmente, a biologia reconhece a célula como a unidade básica da vida, os genes como a unidade básica da hereditariedade, e a evolução como o motor que impulsiona a criação de novas espécies.', NULL, 20),
		(6, 'Geografia', 'A Geografia é uma ciência que tem por objetivo o estudo da superfície terrestre e a distribuição espacial de fenômenos significativos na paisagem. Também estuda a relação recíproca entre o homem e o meio ambiente (Geografia Humana). Para alguns a Geografia também pode ser uma prática humana de conhecer onde se vive para compreender e planejar o espaço onde se vive. Um dos temas centrais da geografia é a relação homem-natureza. A natureza é entendida aqui como as forças que geraram ou contribuem para moldar o espaço geográfico, isto é, a dinâmica e interações que existem entre a atmosfera, litosfera, hidrosfera e biosfera. O homem é entendido como um organismo capaz de modificar consideravelmente as forças da natureza através da tecnologia..', NULL, 50),
		(7, 'História', 'História é a ciência que estuda o ser humano e sua ação no tempo e no espaço concomitantemente à análise de processos e eventos ocorridos no passado. O termo "História" também pode significar toda a informação do passado arquivada em todas as línguas por todo o mundo, por intermédio de registos históricos.', NULL, 20),
		(8, 'Educação Física', 'Educação física é uma área do conhecimento humano ligada às práticas corporais historicamente produzidas pela humanidade. A educação física é o processo pedagógico que visa à formação do homem capaz de se conduzir plenamente em suas atividades. Trabalha num sentido amplo, visando à prevenção de determinadas doenças.', NULL, 100),
		(9, 'Filosofia', 'Filosofia é o estudo de questões gerais e fundamentais[5][6][7] sobre a existência, conhecimento, valores, razão, mente, e linguagem; frequentemente colocadas como problemas[8][9] a se resolver. O termo provavelmente foi cunhado por Pitágoras (c. 570 – 495 BCE). Os métodos filosóficos incluem o questionamento, a discussão crítica, o argumento racional e a apresentação sistemática.[10] As questões filosóficas clássicas incluem: É possível saber qualquer coisa e provar que se sabe?[11][12][13] O que é mais real? Os filósofos também colocam questões mais práticas e concretas, como: Existe uma maneira melhor de se viver? É melhor ser justo ou injusto (se haver como se safar)? Os seres humanos têm livre arbítrio?', NULL, 40);

	set identity_insert disciplina off;



-- Copiando estrutura para tabela escola.turma
CREATE TABLE turma (
  [turma_id] int NOT NULL IDENTITY,
  [disciplina_id] int DEFAULT NULL,
  [professor_id] int DEFAULT NULL,
  [data_inicio] date DEFAULT NULL,
  [data_fim] date DEFAULT NULL,
  [ano_letivo] int DEFAULT NULL,
  PRIMARY KEY ([turma_id]),
  CONSTRAINT [FK_turma_disciplina] FOREIGN KEY ([disciplina_id]) REFERENCES disciplina ([disciplina_id]),
  CONSTRAINT [FK_turma_professor] FOREIGN KEY ([professor_id]) REFERENCES professor ([professor_id])
)  ;

set identity_insert turma on;

INSERT INTO turma ([turma_id], [disciplina_id], [professor_id], [data_inicio], [data_fim], [ano_letivo]) VALUES
	(1, 1, 5, '2020-02-01', '2020-06-30', 2020),
	(2, 2, 1, '2020-02-01', '2020-06-30', 2020),
	(3, 3, 5, '2020-02-01', '2020-06-30', 2020),
	(4, 4, 3, '2020-02-01', '2020-06-30', 2020),
	(5, 5, 6, '2020-02-01', '2020-06-30', 2020),
	(6, 6, 1, '2020-02-01', '2020-06-30', 2020),
	(7, 7, 4, '2020-02-01', '2020-06-30', 2020),
	(8, 8, 2, '2020-02-01', '2020-06-30', 2020),
	(9, 9, 4, '2020-02-01', '2020-06-30', 2020);

set identity_insert turma off;


CREATE TABLE aluno_turma (
  [aluno_turma_id] int NOT NULL IDENTITY,
  [aluno_id] int DEFAULT NULL,
  [turma_id] int DEFAULT NULL,
  [nota] float DEFAULT NULL,
  [qtd_faltas] int DEFAULT NULL,
  [codigo_validacao] varchar(100) DEFAULT NULL,
  PRIMARY KEY ([aluno_turma_id]),
  CONSTRAINT [aluno_id_turma_id] UNIQUE  ([aluno_id],[turma_id]),
  CONSTRAINT [FK_aluno_turma_aluno] FOREIGN KEY ([aluno_id]) REFERENCES aluno ([aluno_id]),
  CONSTRAINT [FK_aluno_turma_turma] FOREIGN KEY ([turma_id]) REFERENCES turma ([turma_id])
);

set identity_insert aluno_turma on;


INSERT INTO aluno_turma ([aluno_turma_id], [aluno_id], [turma_id], [nota], [qtd_faltas], [codigo_validacao]) VALUES
	(16, 1, 4, 8.3, 1, 'aKx6AkxkA19'),
	(17, 2, 5, 4.8, 0, 'aKx6AkxkA19'),
	(18, 3, 8, 9.1, 0, 'aKx6AkxkA19'),
	(19, 4, 3, 1.1, 0, 'aKx6AkxkA19'),
	(20, 6, 4, 8.1, 2, 'aKx6AkxkA19'),
	(21, 8, 3, 7.4, 2, 'aKx6AkxkA19'),
	(22, 10, 3, 2.6, 0, 'aKx6AkxkA19'),
	(23, 11, 5, 0.8, 2, 'aKx6AkxkA19'),
	(24, 13, 4, 6.1, 2, 'aKx6AkxkA19'),
	(25, 14, 4, 8, 0, 'aKx6AkxkA19'),
	(26, 16, 4, 1.7, 0, 'aKx6AkxkA19'),
	(27, 19, 6, 4.5, 1, 'aKx6AkxkA19'),
	(28, 21, 7, 7.5, 2, 'aKx6AkxkA19'),
	(29, 22, 3, 4.1, 0, 'aKx6AkxkA19'),
	(30, 23, 8, 7.9, 2, 'aKx6AkxkA19'),
	(31, 24, 9, 7.2, 0, 'aKx6AkxkA19'),
	(32, 25, 7, 2.1, 2, 'aKx6AkxkA19'),
	(33, 26, 4, 9.2, 0, 'aKx6AkxkA19'),
	(34, 27, 2, 9.5, 2, 'aKx6AkxkA19'),
	(35, 28, 2, 9.9, 0, 'aKx6AkxkA19'),
	(36, 1, 1, 0.9, 1, 'aKx6AkxkA19'),
	(37, 2, 1, 4.7, 1, 'aKx6AkxkA19'),
	(38, 3, 1, 0.9, 1, 'aKx6AkxkA19'),
	(39, 4, 1, 0.6, 1, 'aKx6AkxkA19'),
	(40, 5, 1, 0.1, 2, 'aKx6AkxkA19'),
	(41, 6, 1, 8.8, 0, 'aKx6AkxkA19'),
	(42, 7, 1, 3.8, 2, 'aKx6AkxkA19'),
	(43, 8, 1, 2.6, 2, 'aKx6AkxkA19'),
	(44, 9, 1, 1.7, 1, 'aKx6AkxkA19'),
	(45, 10, 1, 0.6, 0, 'aKx6AkxkA19'),
	(46, 11, 1, 7.8, 0, 'aKx6AkxkA19'),
	(47, 12, 1, 7.4, 2, 'aKx6AkxkA19'),
	(48, 13, 1, 3.6, 2, 'aKx6AkxkA19'),
	(49, 14, 1, 5.9, 2, 'aKx6AkxkA19'),
	(50, 15, 1, 8.6, 0, 'aKx6AkxkA19'),
	(51, 16, 1, 5.2, 0, 'aKx6AkxkA19'),
	(52, 17, 1, 0.3, 0, 'aKx6AkxkA19'),
	(53, 18, 1, 6, 0, 'aKx6AkxkA19'),
	(54, 19, 1, 8.9, 2, 'aKx6AkxkA19'),
	(55, 20, 1, 6.7, 1, 'aKx6AkxkA19'),
	(56, 21, 1, 6.9, 0, 'aKx6AkxkA19'),
	(57, 22, 1, 4.2, 2, 'aKx6AkxkA19'),
	(58, 23, 1, 0.4, 1, 'aKx6AkxkA19'),
	(59, 24, 1, 9.2, 1, 'aKx6AkxkA19'),
	(60, 25, 1, 4.9, 1, 'aKx6AkxkA19'),
	(61, 26, 1, 6.7, 1, 'aKx6AkxkA19'),
	(62, 27, 1, 9, 1, 'aKx6AkxkA19'),
	(63, 28, 1, 4.6, 1, 'aKx6AkxkA19'),
	(66, 1, 7, 6.4, 1, 'aKx6AkxkA19'),
	(67, 2, 7, 8, 2, 'aKx6AkxkA19'),
	(68, 3, 2, 1, 0, 'aKx6AkxkA19'),
	(69, 4, 7, 0.9, 1, 'aKx6AkxkA19'),
	(70, 5, 9, 1.5, 2, 'aKx6AkxkA19'),
	(71, 6, 6, 4.7, 2, 'aKx6AkxkA19'),
	(72, 7, 3, 8.9, 0, 'aKx6AkxkA19'),
	(73, 8, 6, 0.4, 1, 'aKx6AkxkA19'),
	(74, 9, 4, 5.5, 1, 'aKx6AkxkA19'),
	(75, 10, 9, 6.2, 2, 'aKx6AkxkA19'),
	(76, 11, 4, 4.5, 1, 'aKx6AkxkA19'),
	(77, 12, 3, 3.7, 0, 'aKx6AkxkA19'),
	(79, 1, 5, 5.3, 0, 'aKx6AkxkA19'),
	(80, 2, 6, 5.1, 0, 'aKx6AkxkA19'),
	(81, 3, 3, 9.8, 2, 'aKx6AkxkA19'),
	(82, 4, 6, 3.5, 1, 'aKx6AkxkA19'),
	(85, 7, 9, 8, 2, 'aKx6AkxkA19'),
	(86, 8, 5, 9.7, 1, 'aKx6AkxkA19'),
	(87, 9, 5, 4.6, 0, 'aKx6AkxkA19'),
	(89, 11, 8, 3.6, 1, 'aKx6AkxkA19'),
	(90, 12, 8, 4.5, 0, 'aKx6AkxkA19'),
	(91, 13, 6, 1.6, 0, 'aKx6AkxkA19'),
	(92, 14, 5, 4.6, 0, 'aKx6AkxkA19'),
	(93, 15, 6, 8.3, 1, 'aKx6AkxkA19'),
	(94, 16, 6, 7.4, 2, 'aKx6AkxkA19'),
	(96, 18, 5, 2.2, 0, 'aKx6AkxkA19'),
	(97, 19, 4, 8.7, 2, 'aKx6AkxkA19'),
	(98, 20, 5, 6.9, 2, 'aKx6AkxkA19'),
	(99, 21, 3, 8.7, 2, 'aKx6AkxkA19'),
	(100, 22, 2, 2.5, 1, 'aKx6AkxkA19'),
	(101, 23, 6, 6.5, 2, 'aKx6AkxkA19'),
	(103, 25, 6, 4.8, 0, 'aKx6AkxkA19'),
	(106, 28, 6, 4.7, 0, 'aKx6AkxkA19'),
	(107, 1, 3, 9.2, 0, 'aKx6AkxkA19'),
	(108, 2, 9, 2, 1, 'aKx6AkxkA19'),
	(109, 3, 6, 2.1, 0, 'aKx6AkxkA19'),
	(110, 4, 4, 4.7, 0, 'aKx6AkxkA19'),
	(115, 9, 6, 7, 0, 'aKx6AkxkA19'),
	(117, 11, 2, 1, 1, 'aKx6AkxkA19'),
	(119, 13, 5, 3.9, 0, 'aKx6AkxkA19'),
	(120, 14, 6, 6.7, 0, 'aKx6AkxkA19'),
	(121, 15, 5, 1.5, 1, 'aKx6AkxkA19'),
	(122, 16, 5, 7.7, 0, 'aKx6AkxkA19'),
	(123, 17, 9, 3.9, 0, 'aKx6AkxkA19'),
	(124, 18, 2, 6.3, 1, 'aKx6AkxkA19'),
	(125, 19, 2, 10, 0, 'aKx6AkxkA19'),
	(127, 21, 2, 1, 1, 'aKx6AkxkA19'),
	(128, 22, 6, 4.8, 2, 'aKx6AkxkA19'),
	(129, 23, 3, 1.2, 0, 'aKx6AkxkA19'),
	(130, 24, 6, 1.5, 1, 'aKx6AkxkA19'),
	(131, 25, 3, 4, 1, 'aKx6AkxkA19'),
	(132, 26, 8, 5.6, 2, 'aKx6AkxkA19'),
	(133, 27, 9, 6.1, 1, 'aKx6AkxkA19'),
	(134, 28, 4, 3.5, 1, 'aKx6AkxkA19'),
	(135, 1, 2, 9.3, 0, 'aKx6AkxkA19'),
	(137, 3, 9, 5.9, 1, 'aKx6AkxkA19'),
	(138, 4, 2, 1.7, 2, 'aKx6AkxkA19'),
	(139, 5, 3, 0.9, 1, 'aKx6AkxkA19'),
	(140, 6, 8, 9.2, 2, 'aKx6AkxkA19'),
	(142, 8, 9, 3.5, 0, 'aKx6AkxkA19'),
	(143, 9, 9, 9.8, 1, 'aKx6AkxkA19'),
	(144, 10, 7, 8.6, 0, 'aKx6AkxkA19'),
	(145, 11, 6, 3.4, 1, 'aKx6AkxkA19'),
	(150, 16, 2, 1.2, 2, 'aKx6AkxkA19'),
	(152, 18, 9, 6.1, 1, 'aKx6AkxkA19'),
	(154, 20, 9, 6.6, 1, 'aKx6AkxkA19'),
	(156, 22, 4, 4.9, 1, 'aKx6AkxkA19'),
	(157, 23, 7, 4.7, 1, 'aKx6AkxkA19'),
	(160, 26, 2, 8.5, 2, 'aKx6AkxkA19'),
	(161, 27, 5, 8.7, 1, 'aKx6AkxkA19'),
	(162, 28, 3, 8, 1, 'aKx6AkxkA19'),
	(165, 3, 4, 4, 0, 'aKx6AkxkA19'),
	(166, 4, 5, 5.9, 0, 'aKx6AkxkA19'),
	(167, 5, 6, 7.7, 2, 'aKx6AkxkA19'),
	(171, 9, 2, 0.6, 2, 'aKx6AkxkA19'),
	(173, 11, 3, 10, 2, 'aKx6AkxkA19'),
	(176, 14, 9, 8, 0, 'aKx6AkxkA19'),
	(177, 15, 7, 0.1, 0, 'aKx6AkxkA19'),
	(178, 16, 7, 6.7, 1, 'aKx6AkxkA19'),
	(179, 17, 3, 2.9, 0, 'aKx6AkxkA19'),
	(180, 18, 4, 4.5, 0, 'aKx6AkxkA19'),
	(183, 21, 9, 3.8, 2, 'aKx6AkxkA19'),
	(184, 22, 7, 5.4, 2, 'aKx6AkxkA19'),
	(189, 27, 8, 5.9, 1, 'aKx6AkxkA19'),
	(190, 28, 9, 3.1, 0, 'aKx6AkxkA19'),
	(195, 5, 8, 7.7, 1, 'aKx6AkxkA19'),
	(196, 6, 9, 9.5, 2, 'aKx6AkxkA19'),
	(199, 9, 3, 4.2, 1, 'aKx6AkxkA19'),
	(200, 10, 5, 2.7, 2, 'aKx6AkxkA19'),
	(201, 11, 7, 0.8, 0, 'aKx6AkxkA19'),
	(203, 13, 9, 5.9, 1, 'aKx6AkxkA19'),
	(204, 14, 8, 7, 0, 'aKx6AkxkA19'),
	(206, 16, 9, 7.4, 0, 'aKx6AkxkA19'),
	(208, 18, 7, 6.1, 0, 'aKx6AkxkA19'),
	(209, 19, 7, 8.2, 0, 'aKx6AkxkA19'),
	(210, 20, 2, 2.7, 1, 'aKx6AkxkA19'),
	(218, 28, 7, 9, 2, 'aKx6AkxkA19'),
	(221, 3, 7, 7, 2, 'aKx6AkxkA19'),
	(223, 5, 4, 7.7, 2, 'aKx6AkxkA19'),
	(225, 7, 8, 7.8, 0, 'aKx6AkxkA19'),
	(231, 13, 7, 5.9, 2, 'aKx6AkxkA19'),
	(238, 20, 7, 6.1, 2, 'aKx6AkxkA19'),
	(240, 22, 8, 2.9, 1, 'aKx6AkxkA19'),
	(241, 23, 4, 6.2, 1, 'aKx6AkxkA19'),
	(242, 24, 7, 2.4, 0, 'aKx6AkxkA19'),
	(244, 26, 3, 3.2, 0, 'aKx6AkxkA19'),
	(247, 1, 6, 8.8, 2, 'aKx6AkxkA19'),
	(252, 6, 3, 4.4, 0, 'aKx6AkxkA19'),
	(253, 7, 4, 5.8, 0, 'aKx6AkxkA19'),
	(256, 10, 4, 5.7, 2, 'aKx6AkxkA19'),
	(258, 12, 2, 1.1, 0, 'aKx6AkxkA19'),
	(260, 14, 2, 8.2, 0, 'aKx6AkxkA19'),
	(263, 17, 4, 8, 2, 'aKx6AkxkA19'),
	(264, 18, 3, 5.4, 0, 'aKx6AkxkA19'),
	(270, 24, 5, 2.8, 1, 'aKx6AkxkA19'),
	(271, 25, 5, 8, 2, 'aKx6AkxkA19'),
	(273, 27, 6, 1.7, 0, 'aKx6AkxkA19'),
	(274, 28, 5, 4.2, 2, 'aKx6AkxkA19'),
	(275, 1, 9, 5.9, 1, 'aKx6AkxkA19'),
	(277, 3, 5, 7.1, 1, 'aKx6AkxkA19'),
	(279, 5, 5, 7.8, 0, 'aKx6AkxkA19'),
	(280, 6, 7, 7.5, 2, 'aKx6AkxkA19'),
	(282, 8, 7, 4, 1, 'aKx6AkxkA19'),
	(286, 12, 7, 7.8, 0, 'aKx6AkxkA19'),
	(289, 15, 8, 7.1, 1, 'aKx6AkxkA19'),
	(294, 20, 8, 1.9, 1, 'aKx6AkxkA19'),
	(295, 21, 6, 8.1, 0, 'aKx6AkxkA19'),
	(299, 25, 4, 4.8, 2, 'aKx6AkxkA19'),
	(300, 26, 7, 9.7, 2, 'aKx6AkxkA19');

	
	set identity_insert aluno_turma off;
	
	
	update aluno
	set avatar = 0x89504E470D0A1A0A0000000D49484452000000640000004308030000005D9550E8000002B5504C544522233986AABB7C827BCBEDFF80A5B7799CB1C9EBFE7395ACD1F3FE82A7B8CEEEFB7699AE7DA2B6CEEEFFD0F0FE1E24397CA0B36F91A9C1E5F71D243D6A89A493BACB93B8C68AAFBF8FB5C38CB1C183A8BBC6EAFE3D221C89ADBC6C8DA776777097BCCE605B51595C57C2E5F1BC9C8EC7E9F845271E9BC1D3D4F4FE7D807667676280837BD2F1FB72706A9EC6D66886A153352D777A7690B6C866839DC8EEFECEB1A283877E88A9B7797C72171F36C2E7FC6D6C6725263EB59588130D0A71736F7E99A37B919AA4C6D3BBE1F460625C99BCC72A304B361B15522F264A2C268CB3C5CDF2FFCCAA991F110E84A5B3A48A8387ACC02D2C402F201F815341829DA88CA8B3797E7B735B586C63679FC3CD5A5B5F8B8C86D0B4A6C3A19196B5C0AC9287784D3E637F9A42282688A3AD96A6A88E7A784C3F3DC29C854737388F604C737275959591806E6DCBA88F26171665625893B1B98E9FA0CDEDF6A6CED8382C2E7F81848FADB8C0A498766B6FC0DBDF746160A0A6A8877174885A499869555E413E6E4E466B6E698B685F60799598C0CE76807E9EB2B96C4135937F779D837D7F615777574E7175697F8C89768287B1CACEACC5C67B6566D8EFF594766F81A2AE7993A2B8DAE1CAE7EF8C989A7567676F767C5146486C7473C6E1E8CAB0A2696F755A3B3545312F9BAEB0BAD2D66063667C8890A5B9B946454CD1AB94966F619B9F9C6E493D5B4D4EDAF6FDA782719FB7C4A6C8D97C72778A9293838F9286969F695D5F644945342627545157A5765E9D7C74BDE0EF7E6A63C4AB9E89756B97847DAC8C803C343C98674BB5A49FCB9D897E7B6F2B3C556C524F5D362DB38F7B4E627A623D3097A9B21C2B44B39890BC94809B7869D7AE9AA6C0C5AB9A9A65545782594F8C8184D3E9EE394B645C71853D3B48626770C3AFAB9A8E89B083787E7A81A4AFB26F8AA2C0CDCFCFDBDDBE8B78445872C6C7C970D29A590000108C4944415458C35CD68F4B9A6B1B077031DE10A18080CE0EEB20AD8CB24730884E6C341BEBB0A26D03ADDCBB439B949996D5121D2B534D304B2B4BB7556964D5AAD28AE9FAB968D55B5434A8756AC139B4A20EE7EF78AFEB7E1E5B9CAFFA94FA787D9EEBBEEFE751D67D4CDCFDB8B8DB4C6EDE8CBE09898EC647264974540C86CBE5C6444547474745C16B37E135FA7DB23BE6F6CD488DDB717150F23E9D4F9F5804B82690FA1828971945EA7133692353CBE570B9B198CCCCC24CD430F4EE57D23505994F7067C52111779B1F1108919919C5A41092899BC2D8588AABD56A29F7C989DBCDE56AE155BAC1EB0CD4C05271881003904F88F0E3F8B7F97C7E8488548F81128531B1854C288A72BB075C2D8ADEDE7AC3F9E5899BD26AB9318CF2A3A1683E60508F20714968402749F02F81F8FC687A4FF8400C1318180E07044E612A459D5CF48E8E43944A6F70EECC7071E2D66A39B00BE370A3B98C120DB5A020D44D0205C24AE227D1813770621922960E8743C5A2924AB90714558B5EAF4A3534A452AACCE6E0EBA98B93692D2C8658B224B8DC282DCE23224401041582BC8BA461A0A747CB8DBD2600C149A5A015CE3435ED7ABF781434ABCACACA86FC66B3191E419EE1D24D511CD8911BCB65A2E573F95A6224450288CBE5EA3A8474B94680D11206AA471C2802999E6EE85F3C9A9FF783515620325B9C01BB3DB0DD587DE176C30E1485ABE28743981E7E520FA3B086158AFA8F1F3FD6D70F8F7511868B0DC43287164BA5928CBC1FF77ACDF3E60240121E94892CC7727B2060E9FEF68F7B3A1515CC9502065D7F2069E013DC589D9DB67E5B7FBFADB3A35771C530061E203106DE2FFEA952F9E7E74505056509090BA058A572A9DCD2080ABC4F31219FD3F27B7A9206DE355C4DC43BD6A0CFE7ABF26564645C677067BC53542A953A3DED3E1CFC737D5DE5375B2C01B35F044E8AF9D861944AE572C7E925BC4F311076D1D333D0D0D03082D3D0D575080F978B355825AEAA0223A3846DB345982458351C3AA9144CC8D8281880381D56ABC31910A53C48B1584D6AB5547A6C9D3A714FD3889622C2C888AB6B6C7858514F47A118660D3206282536BA1BD7C83B5C697868788200A2185F5FF72A61BEAD0707939356A73FE581E8D8A4DE00C6F1ADCB0DF392CAA1B427D80311EA431D9DFDBE418CAFBFBF937565A0028CAD23A4383F64961A8DB84FC2700A7A83B215CFC1CCF7999999036B203FC56EDA80A88F574FFFB93CE9810C5C82708880CDD73C0A791609ABCA57C5ABE2F188622B29D1DB6CFA8E102C359AE11672A854F7C85FE35E6550D6ED599E59DBDDDDDDDFDF9D94E7EF189736364C26E371DB1F9717300B0D17175D638A5E107CCD82D13C46B9B5B878EB194B2CAE128BC5BC482BC0E8F5367D988C1A32B03CDDF5CF16BDC1A3EED5D6B6B59CFD4A0C2A7282988C939EFF8D61CE0D44F035370B9AF3F246F340A06FB758B401AD64C32DAD849D9EAED7A7B3D9B006E81347AB758FF4C3F524286BAA687BF222A7B2B206B3ABDEB32F2D6D2C01623A68FDBDA3231CEEC81037D31108F248A03E6431113A1113251B90B48C34362AE9E9E925B006428A962E57C3C98062745CA53CEAAE68FDFC648D41262A0FE47B8098964C6AE3E4EA160F3AF089854224847718E4562434027DD04903233D1D366C36AEE870FD70976BAC7F7C5DA73CD220F22227B9148D9AD2EFC73BA62535B4A2969A3CA088DBC1100AEFDC813B416EFD0BC13E50C84E834E98E8B3700B8C2234BAAED329E76824B9B4B466626202C6CBBA675C52ABE12E577B5635D0447B33412082BAAB46700BC3C5C3804087FD2359241D1D255E1D22AF9B2A0852F31032F1307932209F544B978C46F9B17555A311B6436844809DD4D5D5252626E2239120D9A4916B44890DA606C68C20EC3B4ADD824E85082CAEE45214A097D2034B60D22885BB5CEA58D168785788E08E60549057374794C42344DAE946B2094194343C27D96472D2B3D2B33212550B129D6EAEAF6915CE93DD1C546052723C96800911B9DCE2048520ED42B2B604A3A3D809D34A3091256CE781B3B5B5859D90C269D970B6B0E1491A4E3F5B1CD4491616168EFABABB1D4EA7E3600DA7BEF2BBD5E2DF816B970910BB4526D3F0506916D2A325C81330083D5C30593C446803C6271D5AC2458C0874962180D15A90488E1A35159F3D0E8BD3B3960CC6A4737B7E4F6D4424B017D8DE5ED9DA22C325A4115C5E5748908583B5C5D4CFFA9D84FE83CFC1120701A9AD5D98EBD368BA1B650EA763199003C7F6BCD97FAC96AA8D81C08E7FDEB25251B185E19169790A7392471C22B14ACE4ACED8E94CFD6A12F833555D1DA2A13EA54A2701A4B1AF2F382429336F6F5B4BBFEE5B2D430F6A0B8E8D88EC8944FE7947EBE7CF6414B279916E705B47868DA5C740BD502804B599180C86A9A9DE5E00B3E6940B6048748D7D472AA5795BB322B3267FAD9C71CC973DC897C2A41803FE025064A7A7A7D57858EC0C31B9BA3C1592BC16F6F50959E17038140E857A21F8056320393F3F876F1D78369506D35EFBA856A2EAD374CBB6652BAD4D1A4FF2D7CD5DABCC5C902F3549A552BB3F25BF40B47DFA07745F1D0A77E8E10233E8AB827CA8FA80E16DB13E32A1BFC4BE0C63CECF5B3063C3E753AF831289E4D123402A2A3C9ED6CFAD4D4D9EE48989FD19ABD32C920322DF13A514A494CD7F3318E027497D6F38DC4947DFA93FB39DC1309D65B1DE6272738B728B8A8ACACB8B8B5FBD7A0969790E996D390F3DF50272F79164A80F4FC59C174F5A2BDA926B6A36F7971D969D002EE01D514A4A4282F28361F8CB17F2CBE71EC9FBAB7484190499A2A237E58F8B19E6797CFC6FB3B32DEFE7949205E86441D5C820154D6DC95F273637F7279D7B76939A20090965CAA7869696972F5F1517979717C111E7E6E6DE7B0B1690E17B3482BDE422525EFE2B8DDC00E4F9ACA2644EA9D3491EDDD5791B9BF0A292F3C403C8C39ACDCDCD19A37DCF6892DAF7F211395AEC6D9985EEC179F5EAD7C78F1FBF79F3A608290CEB5E2484C1012BC6469EFF0639ACE73D550E0D21126C6C5AFE9E9393D3D6D4DDBDBC7BB05BB9F9F786DD2E571BEDF60240868E16F52DB3F1F1F1376EDCF8E9975F7E65184CD17F8A22C8DB88017D10E1BF1040E610B97BB756176CF22CAFE5BCF0ACC8B6AD07934B95957F2FC9ED3BB082EDF905D08977F1AF2FF0A9F8F8E7377EFEF9A7FF3761072E6D5E6B18C04F2021840889A8A609A9E48228174043828890CA5D4013836AE2BD6262D55C6DADA13AE945A7E2BCABB78A4D15DC465BB8C6A1155A6C3731DAB5D649632716EBD268D76613A3B64568FF8F3DEF39DF177D4DD2A6C8F7CB73DE734ECE5728C4C810FB076F0807A8EDD764C259E4747EF79FAB7F03D2535E5E5E131AEE08D70583E1EFBFEFBEBDD4F9E5C39784B86FFEFBA79B568AD2377374295021333C8CE44062FFE2C5054E88104EE7726F6FEF7797238B57E6DB6B80946F7663AB0F06EB5EDCAABBD0F9F6EDDB879DBFFC73C7ED7E7DF326A6B0D95CBF190162A9C8E14366901572F477D825EAB62068A0646499906F139119197926BEB4EAEAEA822D2F817CD9B9F4E78EDB6C75BFBE8729DCDEBE19190F8C8D1182B650144569A9A65653AB04C31A1A4A1B6A1B4AFBFBF948E59E0DD2DB3B3EB5762554CF917A3F2175B76FDC78F4E897A54F9D6FDEE05B1EC7D5023786ABA07D3E74341EB08C5964841462341AA552C94A79F5979EEF371AB138722BC6C602812291A4F7DD174D8490D2B3383C1CAE5B9F1C19F9F3BF389F7EF3CDD2D284D58C2AB0623556CD6FDE4F046070C4488842A1309980D4A691D2F3E70D06E339818C15A2E95C7136CCCD84EACB79F54D0F7720C9A3F50F1F3EBD4490DF7E9FAC7299F15385FB09777B28322E0C1B47C8D06878908C0C56AAA01F85406CB9B9393992E22C8212FDB969F319CDAEF29A9A3FBABB37C2EBB7D7D7973E7C7AD3893D72D555434801C6CB3A3FF3F81D8C1C9BCDE3F1180D5E290637F48C8452181C41141B214512B2BC9C882CE02B0B555FB338DDBD81932ACE5E205E62B7B7F6002970A1F9D8EC67FE1FCD21C463F318BD5E2F37D00E65865EAF671AC45228B8020459284A61A18C7C9B983B64BEC305DF42FDA27F7AFAF94638983F50FD109BFDEF233DE535680910ABDBDA1E7A1CE541CE79C460C9864034269349C1198391182816284545CBCB78389DAD0FE2A9D4D4D4FDB5FB7EBF1F616EE1BC8255B23489A95DE3921077D5CCCF51D1F57352D33942845EC5787734A6D32C688BC552480AAF8033D07A2DDA1A7D1299F3FB9F0E0D3DDFC0EED2F9DBD264410DCA65A69EB80BDCA1A6CB84A4D78886CFAB3B1977F477802839A2002345C10CB3A495655250810014204F1B1B2768A54CBC36F7C0E83157B95CEE7B55ED57161F442B3CD2C43A2F2696182ABD4A0544799AC5C0156A0B57A430F8B3D019789710491A1B27274770D7687641A9C76815EC58CD7D6B5389284D5E69199AC4BC920C4294C2492B84480A2E0F849840E032103F218D9323D7ABAA80F4B8CCB8DF463FE69B9E8C5710212FF533FD5069B55A96912129260DF5C568F4D86C36A18C59781858D805A24F800CF90582DB6CB3CB85AE1798ABDC6E188881A96BA4C1A225A2519E8E1521FA0C2A252198655E83D123144B7AC8968B0A2D63816B534794649A9491EB56DAB07080C041A5FD5908FDA04548BB895821C2A0912203889E333CCD1945841133A0D059D17AE901CD2EAC149C221B5FADDEBBE7E6656DAFAFEF3B4AB47AA485EEE54B5D0C9544A8D56AC63991460905BF6694199B70A20D7753A954646ED03F3D0804CAAB57ABABD75FEFECECAC5E0F3DFDF845A2B5950CAF58E882903210A1CE645AAEA8781E62145E1E868F9925C7A36F8B1F54666DC7E77E1814C51530931338166F74747D3DDE6ACC3DA7A0105EAF89864A8C9404A833518C7B92A24C2B8251D83F6FEF96A10E8EE6AE7202876EAAA1A1891BD829C32FDEFFF875A2165F77FDFD068128A51CB241481E53ABB55A09E2694C346406A3417F370521AB8CD7E151E4EACA203F7576773F4781A8FB35180CEE6D6D6DFD78F17F4D4D475377D54A18194A4EA855728A3C14A3375AF5699A0CFCAAA1F62475000125105D53449C6B8751D8F171CF85CD786F6F2F7F602006A76B70C15779104F9DA0BB2ABD56A5CD3C63646733FE36CD600E28957A7B7C7B77B7EC0C82281F573EFEBDA3A3234C8F70F8D6AFB8D98600632006E63879F590556E1FC447D52A2DBFBE5A4A919D4D084A3862C8542A3588321D005D964EA7430C5D19636B5FEDEFE3E22F6EA15EE04091366231BCCC1E1F2757D67C959595DBF14CEA8624802846B13CAEA41D957EF460972E8E4B4B4F588CF9E61E5F844087159C5882384B7224169B8DCD9694CCCE1E27F7FD9B30A09CC803452140D8ED0C5CA69486C64C658791C518D3312EE1953239D8C2575D5CC0A11BFDCECF978DD966CE3427DFFBFB7894ED789B9C82C7B003C9E6FF901E34751CDDC027E745085E813087AFA92B19DCDBBB70811E84B408A3A4B9992709BEFF63D35749CC41FC24F33405AA8DD1BB3C09CACB548F6EE3833B64841142FD673EE6F32793491EE1025E3B5B703F4F093852321B4B5E5CF0F97C0E0729A99353C1DED62690EC3CD939F99C367432C57812E6385C4926B706F279B590514DC66C33AFE3E4C74D20CCC19B6F2FB673A38DD728A361CB2ECE9602B521489903E3C4B298434E94457FC3050E57B6B606065A3841FFC552C24B42BA9A7CBE4AC691CA83D133028AD98B79D11066E715A7B0C6F1A9B37831078A2781E2C0E75CD887424235E5A82EA9960920FB87E8874EE7F03976298A648C4A489B5D76F0FC8CD5273A8E5945191CF4E498ACC45AAA63D5720C39CCF1F15334C4C774E80AC27C1EC565450AAABF00DCB98F0859F8ECB80000000049454E44AE426082;
	
	
	