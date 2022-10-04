
-- Copiando estrutura do banco de dados para escola
CREATE USER escola IDENTIFIED BY Risosintensos1Rilitros;
GRANT UNLIMITED TABLESPACE TO escola;
ALTER SESSION SET CURRENT_SCHEMA = escola;

/


-- Copiando estrutura para tabela escola.aluno
CREATE TABLE aluno (
  aluno_id number(10) NOT NULL,
  nome varchar2(300) DEFAULT NULL,
  sexo char(1) DEFAULT NULL,
  data_nascimento date DEFAULT NULL,
  avatar blob,
  endereco varchar2(50) DEFAULT NULL,
  numero_endereco number(10) DEFAULT NULL,
  cep varchar2(50) DEFAULT NULL,
  bairro varchar2(50) DEFAULT NULL,
  cidade varchar2(50) DEFAULT NULL,
  estado varchar2(50) DEFAULT NULL,
  descricao varchar2(4000) DEFAULT NULL,
  PRIMARY KEY (aluno_id)
)  ;
/

-- Generate ID using sequence and trigger
CREATE SEQUENCE aluno_seq START WITH 29 INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER aluno_seq_tr
 BEFORE INSERT ON aluno FOR EACH ROW
 WHEN (NEW.aluno_id IS NULL)
BEGIN
 SELECT aluno_seq.NEXTVAL INTO :NEW.aluno_id FROM DUAL;
END;
/


 alter SESSION set NLS_DATE_FORMAT = 'YYYY-MM-DD';
INSERT INTO aluno (aluno_id, nome, sexo, data_nascimento, endereco, numero_endereco, cep, bairro, cidade, estado, descricao)
	 SELECT 1, 'Marcelo Cauã da Cruz', 'M', '1978-06-09',  'Quadra 1006 Sul Alameda 3 A', 354, '77023-549', 'Plano Diretor Sul', 'Palmas', 'TO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 2, 'Evelyn Francisca Luciana Pires', 'F', '1959-04-19',  'Rua II', 602, '69313-325', 'Cambará', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 3, 'Anderson Kauê Carlos Figueiredo', 'M', '1991-10-01',  'Rua Vânia Monteiro Cavalcante', 689, 'rn58430-025rn', 'Bodocongó', 'Campina Grande', 'PB', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 4, 'Liz Aparecida Vitória Nascimento', 'F', '1989-10-01',  'Rua São Salvador', 191, '65915-768', 'Parque Alvorada II', 'Imperatriz', 'MA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 5, 'Josefa Amanda das Neves', 'F', '1988-03-04',  'Rua Professor Manoel Belém', 586, '69090-650', 'Cidade Nova', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 6, 'Bárbara Isis Assunção', 'F', '1989-05-01',  'Rua Nordeste', 737, '77808-646', 'Setor Palmas', 'Araguaína', 'TO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 7, 'Julio Bernardo Cardoso', 'M', '1991-10-01',  'Rua Vânia Monteiro Cavalcante', 191, '77808-646', 'Parque Alvorada II', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 8, 'Oliver Ryan Pietro Aragão', 'M', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 9, 'Débora Sebastiana Olivia Martins', 'F', '1986-02-01',  'Avenida Interventor Mário Câmara', 319, '59062-600', 'Nossa Senhora de Nazaré', 'Natal', 'RN', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 10, 'Sérgio José Nunes', 'M', '1959-04-19',  'Rua II', 602, '69313-325', 'Cambará', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 11, 'César Leonardo Corte Real', 'M', '1991-09-09',  'Rua Vânia Monteiro Cavalcante', 191, '77808-646', 'Parque Alvorada II', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 12, 'Martin Lorenzo Alves', 'F', '1989-05-01',  'Rua Nordeste', 737, '77808-646', 'Setor Palmas', 'Araguaína', 'TO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 13, 'Laura Giovana Fabiana da Paz', 'F', '1988-03-04',  'Rua Professor Manoel Belém', 586, '69090-650', 'Cidade Nova', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 14, 'Marcela Alícia Evelyn Peixoto', 'F', '1986-02-06',  'Avenida Interventor Mário Câmara', 319, '59062-600', 'Nossa Senhora de Nazaré', 'Natal', 'RN', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 15, 'Manuel Antonio Gomes', 'F', '1989-10-01',  'Rua São Salvador', 191, '65915-768', 'Parque Alvorada II', 'Imperatriz', 'MA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 16, 'Benício Raimundo da Rocha', 'M', '1989-05-01',  'Rua Nordeste', 737, '77808-646', 'Setor Palmas', 'Araguaína', 'TO', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 17, 'Beatriz Mariah Kamilly Pereira', 'F', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 18, 'Julio Tomás Vieira', 'M', '1959-04-19',  'Rua II', 602, '69313-325', 'Cambará', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 19, 'Fernando Edson Pinto', 'M', '1991-10-01',  'Rua Vânia Monteiro Cavalcante', 689, 'rn58430-025rn', 'Bodocongó', 'Campina Grande', 'PB', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 20, 'Gael Sérgio Vieira', 'X', '1988-03-04',  'Rua Professor Manoel Belém', 586, '69090-650', 'Cidade Nova', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 21, 'Otávio Oliver Pietro Dias', 'M', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 22, 'Marina Juliana Figueiredo', 'F', '1988-03-04',  'Rua Professor Manoel Belém', 586, '69090-650', 'Cidade Nova', 'Manaus', 'AM', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 23, 'Thales Benjamin Benedito da Luz', 'M', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 24, 'Thiago Augusto Ian Jesus', 'M', '1991-10-01',  'Rua Vânia Monteiro Cavalcante', 689, 'rn58430-025rn', 'Bodocongó', 'Campina Grande', 'PB', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 25, 'Maitê Rayssa Antonella da Mata', 'F', '1989-10-01',  'Rua São Salvador', 191, '65915-768', 'Parque Alvorada II', 'Imperatriz', 'MA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 26, 'Lívia Louise Antônia Porto da Silva Contente Joanne Carlotta Joaquina', 'F', '1986-02-06',  'Avenida Interventor Mário Câmara', 319, '59062-600', 'Nossa Senhora de Nazaré', 'Natal', 'RN', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 27, 'Débora Antonella Carolina Galvão', 'F', '1959-04-19',  'Rua II', 602, '69313-325', 'Cambará', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual UNION ALL 
	 SELECT 28, 'Daiane Kamilly Cristiane Cavalcanti', 'F', '1989-07-10',  'Rua Ouro Verde', 636, '69314-246', 'Jardim Primavera', 'Boa Vista', 'RR', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor, dolor quis blandit laoreet, ex risus vestibulum urna, in varius erat orci nec sem. Maecenas ut tempor lacus. Maecenas a ligula ac nibh volutpat malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elementum enim nec tellus venenatis, ac gravida turpis venenatis. Integer vel orci sit amet tortor scelerisque tincidunt quis sit amet arcu. Nam congue tortor aliquam diam condimentum auctor. Quisque eget lectus leo. Proin et lorem lectus. Donec nec lacus felis.' FROM dual;

-- Copiando estrutura para tabela escola.escolaridade
CREATE TABLE escolaridade (
  escolaridade_id number(10) NOT NULL,
  nome varchar2(200) DEFAULT '' NOT NULL,
  PRIMARY KEY (escolaridade_id)
)  ;
/
-- Generate ID using sequence and trigger
CREATE SEQUENCE escolaridade_seq START WITH 5 INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER escolaridade_seq_tr
 BEFORE INSERT ON escolaridade FOR EACH ROW
 WHEN (NEW.escolaridade_id IS NULL)
BEGIN
 SELECT escolaridade_seq.NEXTVAL INTO :NEW.escolaridade_id FROM DUAL;
END;
/

-- Copiando dados para a tabela escola.escolaridade: ~4 rows (aproximadamente)
INSERT INTO escolaridade (escolaridade_id, nome)
	 SELECT 1, 'Ensino Médio' FROM dual UNION ALL 
	 SELECT 2, 'Ensino Superior' FROM dual UNION ALL 
	 SELECT 3, 'Mestrado' FROM dual UNION ALL 
	 SELECT 4, 'Doutorado' FROM dual;

/
-- Copiando estrutura para tabela escola.professor
CREATE TABLE professor (
  professor_id number(10) NOT NULL,
  nome varchar2(300) NOT NULL,
  data_nascimento date NOT NULL,
  escolaridade_id number(10) NOT NULL,
  PRIMARY KEY (professor_id)
 ,
  CONSTRAINT FK_professor_escolaridade FOREIGN KEY (escolaridade_id) REFERENCES escolaridade (escolaridade_id)
)  ;
/

-- Generate ID using sequence and trigger
CREATE SEQUENCE professor_seq START WITH 7 INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER professor_seq_tr
 BEFORE INSERT ON professor FOR EACH ROW
 WHEN (NEW.professor_id IS NULL)
BEGIN
 SELECT professor_seq.NEXTVAL INTO :NEW.professor_id FROM DUAL;
END;
/

-- Copiando dados para a tabela escola.professor: ~6 rows (aproximadamente)

 alter SESSION set NLS_DATE_FORMAT = 'YYYY-MM-DD';
INSERT INTO professor (professor_id, nome, data_nascimento, escolaridade_id)
	 SELECT 1, 'Samuel Rodrigo Pereira', '1970-04-17', 3 FROM dual UNION ALL 
	 SELECT 2, 'Sophia Larissa Isabelly Baptista', '1970-03-01', 4 FROM dual UNION ALL 
	 SELECT 3, 'Adriana Louise Monteiro', '1975-01-01', 2 FROM dual UNION ALL 
	 SELECT 4, 'Sebastião Alexandre Enzo Lima', '1972-06-01', 1 FROM dual UNION ALL 
	 SELECT 5, 'Carlos Yago Pedro Henrique Alves', '1971-01-01', 4 FROM dual UNION ALL 
	 SELECT 6, 'Fernando Carlos Caleb Lopes', '1970-07-07', 4 FROM dual;
/


-- Copiando estrutura para tabela escola.disciplina
CREATE TABLE disciplina (
  disciplina_id number(10) NOT NULL,
  nome varchar2(300) DEFAULT NULL,
  descricao varchar2(4000) DEFAULT NULL,
  cor varchar2(50) DEFAULT NULL,
  carga_horaria number(5) DEFAULT NULL,
  PRIMARY KEY (disciplina_id)
)  ;
/
-- Generate ID using sequence and trigger
CREATE SEQUENCE disciplina_seq START WITH 10 INCREMENT BY 1;
/
CREATE OR REPLACE TRIGGER disciplina_seq_tr
 BEFORE INSERT ON disciplina FOR EACH ROW
 WHEN (NEW.disciplina_id IS NULL)
BEGIN
 SELECT disciplina_seq.NEXTVAL INTO :NEW.disciplina_id FROM DUAL;
END;
/

INSERT INTO disciplina (disciplina_id, nome, descricao, cor, carga_horaria)
	 SELECT 1, 'Português', 'A <b>língua portuguesa</b>, também designada português, é uma língua românica flexiva ocidental originada no galego-português falado no Reino da Galiza e no norte de Portugal. Com a criação do Reino de Portugal em 1139 e a expansão para o sul como parte da Reconquista deu-se a difusão da língua pelas terras conquistadas e mais tarde, com as descobertas portuguesas, para o Brasil, África e outras partes do mundo.[3] O português foi usado, naquela época, não somente nas cidades conquistadas pelos portugueses, mas também por muitos governantes locais nos seus contatos com outros estrangeiros poderosos. Especialmente nessa altura a língua portuguesa também influenciou várias línguas.', '', 40 FROM dual UNION ALL 
	 SELECT 2, 'Matemática', 'A <b>matemática</b> é a ciência do raciocínio lógico e abstrato, que estuda quantidades, medidas, espaços, estruturas, variações e estatísticas. Um trabalho matemático consiste em procurar por padrões, formular conjecturas e, por meio de deduções rigorosas a partir de axiomas e definições, estabelecer novos resultados. A matemática desenvolveu-se principalmente na Mesopotâmia, no Egito, na Grécia, na Índia e no Oriente Médio. A partir da Renascença, o desenvolvimento da matemática intensificou-se na Europa, quando novas descobertas científicas levaram a um crescimento acelerado que dura até os dias de hoje', NULL, 20 FROM dual UNION ALL 
	 SELECT 3, 'Física', '<b>Física</b> é a ciência que estuda a natureza e seus fenômenos em seus aspectos mais gerais. Analisa suas relações e propriedades, além de descrever e explicar a maior parte de suas consequências. Busca a compreensão científica dos comportamentos naturais e gerais do mundo em nosso torno, desde as partículas elementares até o universo como um todo.[1][2] Com o amparo do método científico e da lógica, e tendo a matemática como linguagem natural, esta ciência descreve a natureza através de modelos científicos. É considerada a ciência fundamental, sinônimo de ciência natural: as ciências naturais, como a química e a biologia, têm raízes na física. Sua presença no cotidiano é muito ampla, sendo praticamente impossível uma completíssima descrição dos fenômenos físicos em nossa volta. A aplicação da física para o benefício humano contribuiu de uma forma inestimável para o desenvolvimento de toda a tecnologia moderna, desde o automóvel até os computadores quânticos.', NULL, 120 FROM dual UNION ALL 
	 SELECT 4, 'Química', 'Química é a ciência que estuda a composição, estrutura, propriedades da matéria, as mudanças sofridas por ela durante as reações químicas e a sua relação com a energia.[2][3]. É considerada uma ciência exata e é chamada muitas vezes de ciência central porque é a ponte entre outras ciências naturais[4][nota 2] como Física, Matemática e Biologia. A Química possui papel fundamental no desenvolvimento tecnológico, pois a utilização dos conceitos e técnicas dessa ciência permite a obtenção de novas substâncias, além de preocupar-se com a prevenção de danos e exploração sustentável do meio ambiente.', NULL, 30 FROM dual UNION ALL 
	 SELECT 5, 'Biologia', 'Biologia é a ciência que estuda a vida e os organismos vivos.[1][2] A biologia está dividida em vários campos especializados que abrangem a morfologia, fisiologia, anatomia, comportamento, origem, evolução[2][3] e distribuição da matéria viva, além dos processos vitais e das relações entre os seres vivos.[1][4] As subdisciplinas da biologia são definidas pela escala em que a vida é estudada, os tipos de organismos estudados e os métodos utilizados para estudá-los: a bioquímica examina a química rudimentar da vida; a biologia molecular estuda as interações complexas entre as moléculas biológicas; a biologia celular examina o bloco básico de construção de toda a vida, a célula; a fisiologia examina as funções físicas e químicas dos tecidos, órgãos e sistemas de órgãos; a ecologia examina como os organismos interagem em seu ambiente; e a biologia evolutiva examina os processos evolutivos que provavelmente produziram a diversidade da vida.[5] Apesar do amplo escopo e da complexidade da ciência, existem certos conceitos unificadores que o consolidam em um único campo coerente. Geralmente, a biologia reconhece a célula como a unidade básica da vida, os genes como a unidade básica da hereditariedade, e a evolução como o motor que impulsiona a criação de novas espécies.', NULL, 20 FROM dual UNION ALL 
	 SELECT 6, 'Geografia', 'A Geografia é uma ciência que tem por objetivo o estudo da superfície terrestre e a distribuição espacial de fenômenos significativos na paisagem. Também estuda a relação recíproca entre o homem e o meio ambiente (Geografia Humana). Para alguns a Geografia também pode ser uma prática humana de conhecer onde se vive para compreender e planejar o espaço onde se vive. Um dos temas centrais da geografia é a relação homem-natureza. A natureza é entendida aqui como as forças que geraram ou contribuem para moldar o espaço geográfico, isto é, a dinâmica e interações que existem entre a atmosfera, litosfera, hidrosfera e biosfera. O homem é entendido como um organismo capaz de modificar consideravelmente as forças da natureza através da tecnologia..', NULL, 50 FROM dual UNION ALL 
	 SELECT 7, 'História', 'História é a ciência que estuda o ser humano e sua ação no tempo e no espaço concomitantemente à análise de processos e eventos ocorridos no passado. O termo "História" também pode significar toda a informação do passado arquivada em todas as línguas por todo o mundo, por intermédio de registos históricos.', NULL, 20 FROM dual UNION ALL 
	 SELECT 8, 'Educação Física', 'Educação física é uma área do conhecimento humano ligada às práticas corporais historicamente produzidas pela humanidade. A educação física é o processo pedagógico que visa à formação do homem capaz de se conduzir plenamente em suas atividades. Trabalha num sentido amplo, visando à prevenção de determinadas doenças.', NULL, 100 FROM dual UNION ALL 
	 SELECT 9, 'Filosofia', 'Filosofia é o estudo de questões gerais e fundamentais[5][6][7] sobre a existência, conhecimento, valores, razão, mente, e linguagem; frequentemente colocadas como problemas[8][9] a se resolver. O termo provavelmente foi cunhado por Pitágoras (c. 570  495 BCE). Os métodos filosóficos incluem o questionamento, a discussão crítica, o argumento racional e a apresentação sistemática.[10] As questões filosóficas clássicas incluem: É possível saber qualquer coisa e provar que se sabe?[11][12][13] O que é mais real? Os filósofos também colocam questões mais práticas e concretas, como: Existe uma maneira melhor de se viver? É melhor ser justo ou injusto (se haver como se safar)? Os seres humanos têm livre arbítrio?', NULL, 40 FROM dual;


/

-- Copiando estrutura para tabela escola.turma
CREATE TABLE turma (
  turma_id number(10) NOT NULL,
  disciplina_id number(10) DEFAULT NULL,
  professor_id number(10) DEFAULT NULL,
  data_inicio date DEFAULT NULL,
  data_fim date DEFAULT NULL,
  ano_letivo number(10) DEFAULT NULL,
  PRIMARY KEY (turma_id),
  CONSTRAINT FK_turma_disciplina FOREIGN KEY (disciplina_id) REFERENCES disciplina (disciplina_id),
  CONSTRAINT FK_turma_professor FOREIGN KEY (professor_id) REFERENCES professor (professor_id)
)  ;
/

-- Generate ID using sequence and trigger
CREATE SEQUENCE turma_seq START WITH 10 INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER turma_seq_tr
 BEFORE INSERT ON turma FOR EACH ROW
 WHEN (NEW.turma_id IS NULL)
BEGIN
 SELECT turma_seq.NEXTVAL INTO :NEW.turma_id FROM DUAL;
END;
/


-- Copiando dados para a tabela escola.turma: ~9 rows (aproximadamente)
INSERT INTO turma (turma_id, disciplina_id, professor_id, data_inicio, data_fim, ano_letivo)
	 SELECT 1, 1, 5, '2020-02-01', '2020-06-30', 2020 FROM dual UNION ALL 
	 SELECT 2, 2, 1, '2020-02-01', '2020-06-30', 2020 FROM dual UNION ALL 
	 SELECT 3, 3, 5, '2020-02-01', '2020-06-30', 2020 FROM dual UNION ALL 
	 SELECT 4, 4, 3, '2020-02-01', '2020-06-30', 2020 FROM dual UNION ALL 
	 SELECT 5, 5, 6, '2020-02-01', '2020-06-30', 2020 FROM dual UNION ALL 
	 SELECT 6, 6, 1, '2020-02-01', '2020-06-30', 2020 FROM dual UNION ALL 
	 SELECT 7, 7, 4, '2020-02-01', '2020-06-30', 2020 FROM dual UNION ALL 
	 SELECT 8, 8, 2, '2020-02-01', '2020-06-30', 2020 FROM dual UNION ALL 
	 SELECT 9, 9, 4, '2020-02-01', '2020-06-30', 2020 FROM dual;

/


-- Copiando estrutura para tabela escola.aluno_turma
CREATE TABLE aluno_turma (
  aluno_turma_id number(10) NOT NULL,
  aluno_id number(10) DEFAULT NULL,
  turma_id number(10) DEFAULT NULL,
  nota binary_double DEFAULT NULL,
  qtd_faltas number(10) DEFAULT NULL,
  codigo_validacao varchar2(100) DEFAULT NULL,
  PRIMARY KEY (aluno_turma_id),
  CONSTRAINT aluno_id_turma_id UNIQUE  (aluno_id,turma_id),
  CONSTRAINT FK_aluno_turma_aluno FOREIGN KEY (aluno_id) REFERENCES aluno (aluno_id),
  CONSTRAINT FK_aluno_turma_turma FOREIGN KEY (turma_id) REFERENCES turma (turma_id)
)  ;
/
-- Generate ID using sequence and trigger
CREATE SEQUENCE aluno_turma_seq START WITH 301 INCREMENT BY 1;
/
CREATE OR REPLACE TRIGGER aluno_turma_seq_tr
 BEFORE INSERT ON aluno_turma FOR EACH ROW
 WHEN (NEW.aluno_turma_id IS NULL)
BEGIN
 SELECT aluno_turma_seq.NEXTVAL INTO :NEW.aluno_turma_id FROM DUAL;
END;
/

INSERT INTO aluno_turma (aluno_turma_id, aluno_id, turma_id, nota, qtd_faltas, codigo_validacao)
	 SELECT 16, 1, 4, 8.3, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 17, 2, 5, 4.8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 18, 3, 8, 9.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 19, 4, 3, 1.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 20, 6, 4, 8.1, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 21, 8, 3, 7.4, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 22, 10, 3, 2.6, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 23, 11, 5, 0.8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 24, 13, 4, 6.1, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 25, 14, 4, 8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 26, 16, 4, 1.7, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 27, 19, 6, 4.5, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 28, 21, 7, 7.5, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 29, 22, 3, 4.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 30, 23, 8, 7.9, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 31, 24, 9, 7.2, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 32, 25, 7, 2.1, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 33, 26, 4, 9.2, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 34, 27, 2, 9.5, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 35, 28, 2, 9.9, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 36, 1, 1, 0.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 37, 2, 1, 4.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 38, 3, 1, 0.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 39, 4, 1, 0.6, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 40, 5, 1, 0.1, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 41, 6, 1, 8.8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 42, 7, 1, 3.8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 43, 8, 1, 2.6, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 44, 9, 1, 1.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 45, 10, 1, 0.6, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 46, 11, 1, 7.8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 47, 12, 1, 7.4, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 48, 13, 1, 3.6, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 49, 14, 1, 5.9, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 50, 15, 1, 8.6, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 51, 16, 1, 5.2, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 52, 17, 1, 0.3, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 53, 18, 1, 6, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 54, 19, 1, 8.9, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 55, 20, 1, 6.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 56, 21, 1, 6.9, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 57, 22, 1, 4.2, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 58, 23, 1, 0.4, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 59, 24, 1, 9.2, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 60, 25, 1, 4.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 61, 26, 1, 6.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 62, 27, 1, 9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 63, 28, 1, 4.6, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 66, 1, 7, 6.4, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 67, 2, 7, 8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 68, 3, 2, 1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 69, 4, 7, 0.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 70, 5, 9, 1.5, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 71, 6, 6, 4.7, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 72, 7, 3, 8.9, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 73, 8, 6, 0.4, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 74, 9, 4, 5.5, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 75, 10, 9, 6.2, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 76, 11, 4, 4.5, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 77, 12, 3, 3.7, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 79, 1, 5, 5.3, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 80, 2, 6, 5.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 81, 3, 3, 9.8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 82, 4, 6, 3.5, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 85, 7, 9, 8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 86, 8, 5, 9.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 87, 9, 5, 4.6, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 89, 11, 8, 3.6, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 90, 12, 8, 4.5, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 91, 13, 6, 1.6, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 92, 14, 5, 4.6, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 93, 15, 6, 8.3, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 94, 16, 6, 7.4, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 96, 18, 5, 2.2, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 97, 19, 4, 8.7, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 98, 20, 5, 6.9, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 99, 21, 3, 8.7, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 100, 22, 2, 2.5, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 101, 23, 6, 6.5, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 103, 25, 6, 4.8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 106, 28, 6, 4.7, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 107, 1, 3, 9.2, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 108, 2, 9, 2, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 109, 3, 6, 2.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 110, 4, 4, 4.7, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 115, 9, 6, 7, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 117, 11, 2, 1, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 119, 13, 5, 3.9, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 120, 14, 6, 6.7, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 121, 15, 5, 1.5, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 122, 16, 5, 7.7, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 123, 17, 9, 3.9, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 124, 18, 2, 6.3, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 125, 19, 2, 10, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 127, 21, 2, 1, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 128, 22, 6, 4.8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 129, 23, 3, 1.2, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 130, 24, 6, 1.5, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 131, 25, 3, 4, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 132, 26, 8, 5.6, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 133, 27, 9, 6.1, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 134, 28, 4, 3.5, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 135, 1, 2, 9.3, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 137, 3, 9, 5.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 138, 4, 2, 1.7, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 139, 5, 3, 0.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 140, 6, 8, 9.2, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 142, 8, 9, 3.5, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 143, 9, 9, 9.8, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 144, 10, 7, 8.6, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 145, 11, 6, 3.4, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 150, 16, 2, 1.2, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 152, 18, 9, 6.1, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 154, 20, 9, 6.6, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 156, 22, 4, 4.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 157, 23, 7, 4.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 160, 26, 2, 8.5, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 161, 27, 5, 8.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 162, 28, 3, 8, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 165, 3, 4, 4, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 166, 4, 5, 5.9, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 167, 5, 6, 7.7, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 171, 9, 2, 0.6, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 173, 11, 3, 10, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 176, 14, 9, 8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 177, 15, 7, 0.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 178, 16, 7, 6.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 179, 17, 3, 2.9, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 180, 18, 4, 4.5, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 183, 21, 9, 3.8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 184, 22, 7, 5.4, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 189, 27, 8, 5.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 190, 28, 9, 3.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 195, 5, 8, 7.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 196, 6, 9, 9.5, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 199, 9, 3, 4.2, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 200, 10, 5, 2.7, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 201, 11, 7, 0.8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 203, 13, 9, 5.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 204, 14, 8, 7, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 206, 16, 9, 7.4, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 208, 18, 7, 6.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 209, 19, 7, 8.2, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 210, 20, 2, 2.7, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 218, 28, 7, 9, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 221, 3, 7, 7, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 223, 5, 4, 7.7, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 225, 7, 8, 7.8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 231, 13, 7, 5.9, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 238, 20, 7, 6.1, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 240, 22, 8, 2.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 241, 23, 4, 6.2, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 242, 24, 7, 2.4, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 244, 26, 3, 3.2, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 247, 1, 6, 8.8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 252, 6, 3, 4.4, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 253, 7, 4, 5.8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 256, 10, 4, 5.7, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 258, 12, 2, 1.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 260, 14, 2, 8.2, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 263, 17, 4, 8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 264, 18, 3, 5.4, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 270, 24, 5, 2.8, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 271, 25, 5, 8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 273, 27, 6, 1.7, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 274, 28, 5, 4.2, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 275, 1, 9, 5.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 277, 3, 5, 7.1, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 279, 5, 5, 7.8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 280, 6, 7, 7.5, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 282, 8, 7, 4, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 286, 12, 7, 7.8, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 289, 15, 8, 7.1, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 294, 20, 8, 1.9, 1, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 295, 21, 6, 8.1, 0, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 299, 25, 4, 4.8, 2, 'aKx6AkxkA19' FROM dual UNION ALL 
	 SELECT 300, 26, 7, 9.7, 2, 'aKx6AkxkA19' FROM dual;
\

DECLARE
  buf BLOB; 
BEGIN

dbms_lob.createtemporary(buf, FALSE);
dbms_lob.append(buf, HEXTORAW('89504E470D0A1A0A0000000D49484452'));
dbms_lob.append(buf, HEXTORAW('000000640000004308030000005D9550'));
dbms_lob.append(buf, HEXTORAW('E8000002B5504C544522233986AABB7C'));
dbms_lob.append(buf, HEXTORAW('827BCBEDFF80A5B7799CB1C9EBFE7395'));
dbms_lob.append(buf, HEXTORAW('ACD1F3FE82A7B8CEEEFB7699AE7DA2B6'));
dbms_lob.append(buf, HEXTORAW('CEEEFFD0F0FE1E24397CA0B36F91A9C1'));
dbms_lob.append(buf, HEXTORAW('E5F71D243D6A89A493BACB93B8C68AAF'));
dbms_lob.append(buf, HEXTORAW('BF8FB5C38CB1C183A8BBC6EAFE3D221C'));
dbms_lob.append(buf, HEXTORAW('89ADBC6C8DA776777097BCCE605B5159'));
dbms_lob.append(buf, HEXTORAW('5C57C2E5F1BC9C8EC7E9F845271E9BC1'));
dbms_lob.append(buf, HEXTORAW('D3D4F4FE7D807667676280837BD2F1FB'));
dbms_lob.append(buf, HEXTORAW('72706A9EC6D66886A153352D777A7690'));
dbms_lob.append(buf, HEXTORAW('B6C866839DC8EEFECEB1A283877E88A9'));
dbms_lob.append(buf, HEXTORAW('B7797C72171F36C2E7FC6D6C6725263E'));
dbms_lob.append(buf, HEXTORAW('B59588130D0A71736F7E99A37B919AA4'));
dbms_lob.append(buf, HEXTORAW('C6D3BBE1F460625C99BCC72A304B361B'));
dbms_lob.append(buf, HEXTORAW('15522F264A2C268CB3C5CDF2FFCCAA99'));
dbms_lob.append(buf, HEXTORAW('1F110E84A5B3A48A8387ACC02D2C402F'));
dbms_lob.append(buf, HEXTORAW('201F815341829DA88CA8B3797E7B735B'));
dbms_lob.append(buf, HEXTORAW('586C63679FC3CD5A5B5F8B8C86D0B4A6'));
dbms_lob.append(buf, HEXTORAW('C3A19196B5C0AC9287784D3E637F9A42'));
dbms_lob.append(buf, HEXTORAW('282688A3AD96A6A88E7A784C3F3DC29C'));
dbms_lob.append(buf, HEXTORAW('854737388F604C737275959591806E6D'));
dbms_lob.append(buf, HEXTORAW('CBA88F26171665625893B1B98E9FA0CD'));
dbms_lob.append(buf, HEXTORAW('EDF6A6CED8382C2E7F81848FADB8C0A4'));
dbms_lob.append(buf, HEXTORAW('98766B6FC0DBDF746160A0A6A8877174'));
dbms_lob.append(buf, HEXTORAW('885A499869555E413E6E4E466B6E698B'));
dbms_lob.append(buf, HEXTORAW('685F60799598C0CE76807E9EB2B96C41'));
dbms_lob.append(buf, HEXTORAW('35937F779D837D7F615777574E717569'));
dbms_lob.append(buf, HEXTORAW('7F8C89768287B1CACEACC5C67B6566D8'));
dbms_lob.append(buf, HEXTORAW('EFF594766F81A2AE7993A2B8DAE1CAE7'));
dbms_lob.append(buf, HEXTORAW('EF8C989A7567676F767C5146486C7473'));
dbms_lob.append(buf, HEXTORAW('C6E1E8CAB0A2696F755A3B3545312F9B'));
dbms_lob.append(buf, HEXTORAW('AEB0BAD2D66063667C8890A5B9B94645'));
dbms_lob.append(buf, HEXTORAW('4CD1AB94966F619B9F9C6E493D5B4D4E'));
dbms_lob.append(buf, HEXTORAW('DAF6FDA782719FB7C4A6C8D97C72778A'));
dbms_lob.append(buf, HEXTORAW('9293838F9286969F695D5F6449453426'));
dbms_lob.append(buf, HEXTORAW('27545157A5765E9D7C74BDE0EF7E6A63'));
dbms_lob.append(buf, HEXTORAW('C4AB9E89756B97847DAC8C803C343C98'));
dbms_lob.append(buf, HEXTORAW('674BB5A49FCB9D897E7B6F2B3C556C52'));
dbms_lob.append(buf, HEXTORAW('4F5D362DB38F7B4E627A623D3097A9B2'));
dbms_lob.append(buf, HEXTORAW('1C2B44B39890BC94809B7869D7AE9AA6'));
dbms_lob.append(buf, HEXTORAW('C0C5AB9A9A65545782594F8C8184D3E9'));
dbms_lob.append(buf, HEXTORAW('EE394B645C71853D3B48626770C3AFAB'));
dbms_lob.append(buf, HEXTORAW('9A8E89B083787E7A81A4AFB26F8AA2C0'));
dbms_lob.append(buf, HEXTORAW('CDCFCFDBDDBE8B78445872C6C7C970D2'));
dbms_lob.append(buf, HEXTORAW('9A590000108C4944415458C35CD68F4B'));
dbms_lob.append(buf, HEXTORAW('9A6B1B077031DE10A18080CE0EEB20AD'));
dbms_lob.append(buf, HEXTORAW('8CB24730884E6C341BEBB0A26D03ADDC'));
dbms_lob.append(buf, HEXTORAW('BB439B949996D5121D2B534D304B2B4B'));
dbms_lob.append(buf, HEXTORAW('B7556964D5AAD28AE9FAB968D55B5434'));
dbms_lob.append(buf, HEXTORAW('A8756AC139B4A20EE7EF78AFEB7E1E5B'));
dbms_lob.append(buf, HEXTORAW('9CAFFA94FA787D9EEBBEEFE751D67D4C'));
dbms_lob.append(buf, HEXTORAW('DCFDB8B8DB4C6EDE8CBE09898EC64726'));
dbms_lob.append(buf, HEXTORAW('4974540C86CBE5C6444547474745C16B'));
dbms_lob.append(buf, HEXTORAW('37E135FA7DB23BE6F6CD488DDB717150'));
dbms_lob.append(buf, HEXTORAW('F23E9D4F9F5804B82690FA1828971945'));
dbms_lob.append(buf, HEXTORAW('EA7133692353CBE570B9B198CCCCC24C'));
dbms_lob.append(buf, HEXTORAW('D430F4EE57D23505994F7067C5211177'));
dbms_lob.append(buf, HEXTORAW('9B1F1108919919C5A41092899BC2D858'));
dbms_lob.append(buf, HEXTORAW('8AABD56A29F7C989DBCDE56AE155BAC1'));
dbms_lob.append(buf, HEXTORAW('EB0CD4C05271881003904F88F0E3F8B7'));
dbms_lob.append(buf, HEXTORAW('F97C7E8488548F81128531B1854C288A'));
dbms_lob.append(buf, HEXTORAW('72BB075C2D8ADEDE7AC3F9E5899BD26A'));
dbms_lob.append(buf, HEXTORAW('B9318CF2A3A1683E60508F2071496840'));
dbms_lob.append(buf, HEXTORAW('2749F02F81F8FC687A4FF8400C131818'));
dbms_lob.append(buf, HEXTORAW('0E07044E612A459D5CF48E8E43944A6F'));
dbms_lob.append(buf, HEXTORAW('70EECC7071E2D66A39B00BE370A3B98C'));
dbms_lob.append(buf, HEXTORAW('120DB5A020D44D0205C24AE227D18137'));
dbms_lob.append(buf, HEXTORAW('70621922960E8743C5A2924AB9071455'));
dbms_lob.append(buf, HEXTORAW('8B5EAF4A3534A452AACCE6E0EBA98B93'));
dbms_lob.append(buf, HEXTORAW('692D2C8658B224B8DC282DCE23224401'));
dbms_lob.append(buf, HEXTORAW('041582BC8BA461A0A747CB8DBD2600C1'));
dbms_lob.append(buf, HEXTORAW('49A5A015CE3435ED7ABF781434ABCACA'));
dbms_lob.append(buf, HEXTORAW('CA86FC66B3191E419EE1D24D511CD891'));
dbms_lob.append(buf, HEXTORAW('1BCB65A2E573F95A6224450288CBE5EA'));
dbms_lob.append(buf, HEXTORAW('3A8474B94680D11206AA471C2802999E'));
dbms_lob.append(buf, HEXTORAW('6EE85F3C9A9FF783515620325B9C01BB'));
dbms_lob.append(buf, HEXTORAW('3DB0DD587DE176C30E1485ABE2874398'));
dbms_lob.append(buf, HEXTORAW('1E7E520FA3B086158AFA8F1F3FD6D70F'));
dbms_lob.append(buf, HEXTORAW('8F7511868B0DC43287164BA5928CBC1F'));
dbms_lob.append(buf, HEXTORAW('F77ACDF3E60240121E94892CC7727B20'));
dbms_lob.append(buf, HEXTORAW('60E9FEF68F7B3A1515CC9502065D7F20'));
dbms_lob.append(buf, HEXTORAW('69E013DC589D9DB67E5B7FBFADB3A357'));
dbms_lob.append(buf, HEXTORAW('71C530061E203106DE2FFEA952F9E7E7'));
dbms_lob.append(buf, HEXTORAW('4505056509090BA058A572A9DCD2080A'));
dbms_lob.append(buf, HEXTORAW('BC4F31219FD3F27B7A9206DE355C4DC4'));
dbms_lob.append(buf, HEXTORAW('3BD6A0CFE7ABF26564645C677067BC53'));
dbms_lob.append(buf, HEXTORAW('542A953A3DED3E1CFC737D5DE5375B2C'));
dbms_lob.append(buf, HEXTORAW('01B35F044E8AF9D861944AE572C7E925'));
dbms_lob.append(buf, HEXTORAW('BC4F311076D1D333D0D0D03082D3D0D5'));
dbms_lob.append(buf, HEXTORAW('75080F978B355825AEAA0223A3846DB3'));
dbms_lob.append(buf, HEXTORAW('45982458351C3AA9144CC8D828188038'));
dbms_lob.append(buf, HEXTORAW('1D56ABC31910A53C48B1584D6AB5547A'));
dbms_lob.append(buf, HEXTORAW('6C9D3A714FD3889622C2C888AB6B6C78'));
dbms_lob.append(buf, HEXTORAW('58514F47A118660D3206282536BA1BD7'));
dbms_lob.append(buf, HEXTORAW('C83B5C697868788200A2185F5FF72A61'));
dbms_lob.append(buf, HEXTORAW('BEAD0707939356A73FE581E8D8A4DE00'));
dbms_lob.append(buf, HEXTORAW('C6F1ADCB0DF392CAA1B427D80311EA43'));
dbms_lob.append(buf, HEXTORAW('1D9DFDBE418CAFBFBF937565A0028CAD'));
dbms_lob.append(buf, HEXTORAW('23A4383F64961A8DB84FC2700A7A83B2'));
dbms_lob.append(buf, HEXTORAW('15CFC1CCF7999999036B203FC56EDA80'));
dbms_lob.append(buf, HEXTORAW('A88F574FFFB93CE9810C5C82708880CD'));
dbms_lob.append(buf, HEXTORAW('D73C0A791609ABCA57C5ABE2F188622B'));
dbms_lob.append(buf, HEXTORAW('29D1DB6CFA8E102C359AE11672A854F7'));
dbms_lob.append(buf, HEXTORAW('C85FE35E6550D6ED599E59DBDDDDDDDF'));
dbms_lob.append(buf, HEXTORAW('DF9D94E7EF189736364C26E371DB1F97'));
dbms_lob.append(buf, HEXTORAW('17300B0D17175D638A5E107CCD82D13C'));
dbms_lob.append(buf, HEXTORAW('46B9B5B878EB194B2CAE128BC5BC482B'));
dbms_lob.append(buf, HEXTORAW('C0E8F5367D988C1A32B03CDDF5CF16BD'));
dbms_lob.append(buf, HEXTORAW('C1A3EED5D6B6B59CFD4A0C2A7282988C'));
dbms_lob.append(buf, HEXTORAW('939EFF8D61CE0D44F035370B9AF3F246'));
dbms_lob.append(buf, HEXTORAW('F340A06FB758B401AD64C32DAD849D9E'));
dbms_lob.append(buf, HEXTORAW('AED7A7B3D9B006E81347AB758FF4C3F5'));
dbms_lob.append(buf, HEXTORAW('24286BAA687BF222A7B2B206B3ABDEB3'));
dbms_lob.append(buf, HEXTORAW('2F2D6D2C01623A68FDBDA3231CEEC810'));
dbms_lob.append(buf, HEXTORAW('37D31108F248A03E6431113A1113251B'));
dbms_lob.append(buf, HEXTORAW('90B48C34362AE9E9E925B006428A962E'));
dbms_lob.append(buf, HEXTORAW('57C3C98062745CA53CEAAE68FDFC648D'));
dbms_lob.append(buf, HEXTORAW('41262A0FE47B8098964C6AE3E4EA160F'));
dbms_lob.append(buf, HEXTORAW('3AF089854224847718E4562434027DD0'));
dbms_lob.append(buf, HEXTORAW('4903233D1D366C36AEE870FD70976BAC'));
dbms_lob.append(buf, HEXTORAW('7F7C5DA73CD220F22227B9148D9AD2EF'));
dbms_lob.append(buf, HEXTORAW('C73BA62535B4A2969A3CA088DBC1100A'));
dbms_lob.append(buf, HEXTORAW('EFDC813B416EFD0BC13E50C84E834E98'));
dbms_lob.append(buf, HEXTORAW('E8B3700B8C2234BAAED329E76824B9B4'));
dbms_lob.append(buf, HEXTORAW('B466626202C6CBBA675C52ABE12E577B'));
dbms_lob.append(buf, HEXTORAW('5635D0447B33412082BAAB46700BC3C5'));
dbms_lob.append(buf, HEXTORAW('C3804087FD2359241D1D255E1D22AF9B'));
dbms_lob.append(buf, HEXTORAW('2A0852F31032F1307932209F544B978C'));
dbms_lob.append(buf, HEXTORAW('46F9B17555A311B6436844809DD4D5D5'));
dbms_lob.append(buf, HEXTORAW('252626E2239120D9A4916B44890DA606'));
dbms_lob.append(buf, HEXTORAW('C68C20EC3B4ADD824E85082CAEE45214'));
dbms_lob.append(buf, HEXTORAW('A097D2034B60D22885BB5CEA58D16878'));
dbms_lob.append(buf, HEXTORAW('5788E08E60549057374794C42344DAE9'));
dbms_lob.append(buf, HEXTORAW('46B2094194343C27D96472D2B3D2B332'));
dbms_lob.append(buf, HEXTORAW('12550B129D6EAEAF6915CE93DD1C5460'));
dbms_lob.append(buf, HEXTORAW('52723C96800911B9DCE2048520ED42B2'));
dbms_lob.append(buf, HEXTORAW('B604A3A3D809D34A3091256CE781B3B5'));
dbms_lob.append(buf, HEXTORAW('B5859D90C269D970B6B0E1491A4E3F5B'));
dbms_lob.append(buf, HEXTORAW('1CD4491616168EFABABB1D4EA7E3600D'));
dbms_lob.append(buf, HEXTORAW('A7BEF2BBD5E2DF816B970910BB4526D3'));
dbms_lob.append(buf, HEXTORAW('F0506916D2A325C81330083D5C30593C'));
dbms_lob.append(buf, HEXTORAW('446803C6271D5AC2458C0874962180D1'));
dbms_lob.append(buf, HEXTORAW('5A90488E1A35159F3D0E8BD3B3960CC6'));
dbms_lob.append(buf, HEXTORAW('A4737B7E4F6D4424B017D8DE5ED9DA22'));
dbms_lob.append(buf, HEXTORAW('C325A4115C5E5748908583B5C5D4CFFA'));
dbms_lob.append(buf, HEXTORAW('9D84FE83CFC1120701A9AD5D98EBD368'));
dbms_lob.append(buf, HEXTORAW('BA1B650EA763199003C7F6BCD97FAC96'));
dbms_lob.append(buf, HEXTORAW('AA8D81C08E7FDEB25251B185E1916979'));
dbms_lob.append(buf, HEXTORAW('0A7392471C22B14ACE4ACED8E94CFD6A'));
dbms_lob.append(buf, HEXTORAW('12F833555D1DA2A13EA54A2701A4B1AF'));
dbms_lob.append(buf, HEXTORAW('2F382429336F6F5B4BBFEE5B2D430F6A'));
dbms_lob.append(buf, HEXTORAW('0B8E8D88EC8944FE7947EBE7CF6414B2'));
dbms_lob.append(buf, HEXTORAW('79916E705B47868DA5C740BD502804B5'));
dbms_lob.append(buf, HEXTORAW('99180C86A9A9DE5E00B3E6940B604874'));
dbms_lob.append(buf, HEXTORAW('8D7D472AA5795BB322B3267FAD9C71CC'));
dbms_lob.append(buf, HEXTORAW('973DC897C2A41803FE025064A7A7A7D5'));
dbms_lob.append(buf, HEXTORAW('7858EC0C31B9BA3C1592BC16F6F50959'));
dbms_lob.append(buf, HEXTORAW('E17038140E857A21F8056320393F3F87'));
dbms_lob.append(buf, HEXTORAW('6F1D78369506D35EFBA856A2EAD374CB'));
dbms_lob.append(buf, HEXTORAW('B6652BAD4D1A4FF2D7CD5DABCC5C902F'));
dbms_lob.append(buf, HEXTORAW('3549A552BB3F25BF40B47DFA07745F1D'));
dbms_lob.append(buf, HEXTORAW('0A77E8E10233E8AB827CA8FA80E16DB1'));
dbms_lob.append(buf, HEXTORAW('3E32A1BFC4BE0C63CECF5B3063C3E753'));
dbms_lob.append(buf, HEXTORAW('AF831289E4D123402A2A3C9ED6CFAD4D'));
dbms_lob.append(buf, HEXTORAW('4D9EE48989FD19ABD32C920322DF13A5'));
dbms_lob.append(buf, HEXTORAW('14A494CD7F3318E027497D6F38DC4947'));
dbms_lob.append(buf, HEXTORAW('DFA93FB39DC1309D65B1DE6272738B72'));
dbms_lob.append(buf, HEXTORAW('8B8A8ACACB8B8B5FBD7A0969790E996D'));
dbms_lob.append(buf, HEXTORAW('390F3DF50272F79164A80F4FC59C174F'));
dbms_lob.append(buf, HEXTORAW('5A2BDA926B6A36F7971D969D002EE01D'));
dbms_lob.append(buf, HEXTORAW('514A4A4282F28361F8CB17F2CBE71EC9'));
dbms_lob.append(buf, HEXTORAW('FBAB7484190499A2A237E58F8B19E679'));
dbms_lob.append(buf, HEXTORAW('7CFC6FB3B32DEFE7949205E86441D5C8'));
dbms_lob.append(buf, HEXTORAW('20154D6DC95F273637F7279D7B76939A'));
dbms_lob.append(buf, HEXTORAW('20090965CAA7869696972F5F15179797'));
dbms_lob.append(buf, HEXTORAW('17C111E7E6E6DE7B0B1690E17B3482BD'));
dbms_lob.append(buf, HEXTORAW('E422525EFE2B8DDC00E4F9ACA2644EA9'));
dbms_lob.append(buf, HEXTORAW('D3491EDDD5791B9BF0A292F3C403C8C3'));
dbms_lob.append(buf, HEXTORAW('9ACDCDCD19A37DCF6892DAF7F211395A'));
dbms_lob.append(buf, HEXTORAW('EC6D9985EEC179F5EAD7C78F1FBF79F3'));
dbms_lob.append(buf, HEXTORAW('A608290CEB5E2484C1012BC6469EFF06'));
dbms_lob.append(buf, HEXTORAW('39ACE73D550E0D21126C6C5AFE9E9393'));
dbms_lob.append(buf, HEXTORAW('D3D6D4DDBDBC7BB05BB9F9F786DD2E57'));
dbms_lob.append(buf, HEXTORAW('1BEDF60240868E16F52DB3F1F1F1376E'));
dbms_lob.append(buf, HEXTORAW('DCF8E9975F7E65184CD17F8A22C8DB88'));
dbms_lob.append(buf, HEXTORAW('017D10E1BF1040E610B97BB756176CF2'));
dbms_lob.append(buf, HEXTORAW('2CAFE5BCF0ACC8B6AD07934B95957F2F'));
dbms_lob.append(buf, HEXTORAW('C9ED3BB082EDF905D08977F1AF2FF0A9'));
dbms_lob.append(buf, HEXTORAW('F8F8E7377EFEF9A7FF3761072E6D5E6B'));
dbms_lob.append(buf, HEXTORAW('18C04F2021840889A8A609A9E4822817'));
dbms_lob.append(buf, HEXTORAW('4043828890CA5D4013836AE2BD6262D5'));
dbms_lob.append(buf, HEXTORAW('5C6DADA13AE945A7E2BCABB78A4D15DC'));
dbms_lob.append(buf, HEXTORAW('465BB8C6A1155A6C3731DAB5D6496327'));
dbms_lob.append(buf, HEXTORAW('16EBD268D76613A3B64568FF8F3DEF39'));
dbms_lob.append(buf, HEXTORAW('DF177D4DD2A6C8F7CB73DE734ECE5728'));
dbms_lob.append(buf, HEXTORAW('C4C810FB076F0807A8EDD764C259E474'));
dbms_lob.append(buf, HEXTORAW('7EF79FAB7F03D2535E5E5E131AEE08D7'));
dbms_lob.append(buf, HEXTORAW('0583E1EFBFEFBEBDD4F9E5C39784B86F'));
dbms_lob.append(buf, HEXTORAW('FEFBA79B568AD2377374295021333C8C'));
dbms_lob.append(buf, HEXTORAW('E44062FFE2C5054E88104EE7726F6FEF'));
dbms_lob.append(buf, HEXTORAW('7797238B57E6DB6B80946F7663AB0F06'));
dbms_lob.append(buf, HEXTORAW('EB5EDCAABBD0F9F6EDDB879DBFFC73C7'));
dbms_lob.append(buf, HEXTORAW('ED7E7DF326A6B0D95CBF190162A9C8E1'));
dbms_lob.append(buf, HEXTORAW('4366901572F477D825EAB62068A06464'));
dbms_lob.append(buf, HEXTORAW('99906F139119197926BEB4EAEAEA822D'));
dbms_lob.append(buf, HEXTORAW('2F817CD9B9F4E78EDB6C75BFBE8729DC'));
dbms_lob.append(buf, HEXTORAW('DEBE19190F8C8D1182B650144569A9A6'));
dbms_lob.append(buf, HEXTORAW('5653AB04C31A1A4A1B6A1B4AFBFBF948'));
dbms_lob.append(buf, HEXTORAW('E59E0DD2DB3B3EB5762554CF917A3F21'));
dbms_lob.append(buf, HEXTORAW('75B76FDC78F4E897A54F9D6FDEE05B1E'));
dbms_lob.append(buf, HEXTORAW('C7D5023786ABA07D3E74341EB08C5964'));
dbms_lob.append(buf, HEXTORAW('841462341AA552C94A79F5979EEF371A'));
dbms_lob.append(buf, HEXTORAW('B138722BC6C602812291A4F7DD174D84'));
dbms_lob.append(buf, HEXTORAW('90D2B3383C1CAE5B9F1C19F9F3BF389F'));
dbms_lob.append(buf, HEXTORAW('7EF3CDD2D284D58C2AB0623556CD6FDE'));
dbms_lob.append(buf, HEXTORAW('4F046070C4488842A1309980D4A691D2'));
dbms_lob.append(buf, HEXTORAW('F3E70D06E339818C15A2E95C7136CCCD'));
dbms_lob.append(buf, HEXTORAW('84EACB79F54D0F7720C9A3F50F1F3EBD'));
dbms_lob.append(buf, HEXTORAW('4490DF7E9FAC7299F15385FB09777B28'));
dbms_lob.append(buf, HEXTORAW('322E0C1B47C8D06878908C0C56AAA01F'));
dbms_lob.append(buf, HEXTORAW('85406CB9B9393992E22C8212FDB969F3'));
dbms_lob.append(buf, HEXTORAW('19CDAEF29A9A3FBABB37C2EBB7D7D797'));
dbms_lob.append(buf, HEXTORAW('3E7C7AD3893D72D555434801C6CB3A3F'));
dbms_lob.append(buf, HEXTORAW('F3F81D8C1C9BCDE3F1180D5E290637F4'));
dbms_lob.append(buf, HEXTORAW('8C8452181C41141B214512B2BC9C882C'));
dbms_lob.append(buf, HEXTORAW('E02B0B555FB338DDBD81932ACE5E205E'));
dbms_lob.append(buf, HEXTORAW('62B7B7F6002970A1F9D8EC67FE1FCD21'));
dbms_lob.append(buf, HEXTORAW('C463F318BD5E2F37D00E65865EAF671A'));
dbms_lob.append(buf, HEXTORAW('C45228B8020459284A61A18C7C9B983B'));
dbms_lob.append(buf, HEXTORAW('64BEC305DF42FDA27F7AFAF94638983F'));
dbms_lob.append(buf, HEXTORAW('50FD109BFDEF233DE535680910ABDBDA'));
dbms_lob.append(buf, HEXTORAW('1E7A1CE541CE79C460C9864034269349'));
dbms_lob.append(buf, HEXTORAW('C1198391182816284545CBCB78389DAD'));
dbms_lob.append(buf, HEXTORAW('0FE2A9D4D4D4FDB5FB7EBF1F616EE1BC'));
dbms_lob.append(buf, HEXTORAW('8255B23489A95DE3921077D5CCCF51D1'));
dbms_lob.append(buf, HEXTORAW('F57352D33942845EC5787734A6D32C68'));
dbms_lob.append(buf, HEXTORAW('8BC552480AAF8033D07A2DDA1A7D1299'));
dbms_lob.append(buf, HEXTORAW('F3FB9F0E0D3DDFC0EED2F9DBD264410D'));
dbms_lob.append(buf, HEXTORAW('CA65A69EB80BDCA1A6CB84A4D78886CF'));
dbms_lob.append(buf, HEXTORAW('AB3B1977F477802839A2002345C10CB3'));
dbms_lob.append(buf, HEXTORAW('A495655250810014204F1B1B2768A54C'));
dbms_lob.append(buf, HEXTORAW('BC36F7C0E83157B95CEE7B55ED57161F'));
dbms_lob.append(buf, HEXTORAW('442B3CD2C43A2F2696182ABD4A054479'));
dbms_lob.append(buf, HEXTORAW('9AC5C0156A0B57A430F8B3D019789710'));
dbms_lob.append(buf, HEXTORAW('491A1B27274770D7687641A9C76815EC'));
dbms_lob.append(buf, HEXTORAW('58CD7D6B5389284D5E69199AC4BC920C'));
dbms_lob.append(buf, HEXTORAW('4294C2492B84480A2E0F849840E03210'));
dbms_lob.append(buf, HEXTORAW('3F218D9323D7ABAA80F4B8CCB8DF463F'));
dbms_lob.append(buf, HEXTORAW('E69B9E8C5710212FF533FD5069B55A96'));
dbms_lob.append(buf, HEXTORAW('912129260DF5C568F4D86C36A18C5978'));
dbms_lob.append(buf, HEXTORAW('1858D805A24F800CF90582DB6CB3CB85'));
dbms_lob.append(buf, HEXTORAW('AE1798ABDC6E188881A96BA4C1A225A2'));
dbms_lob.append(buf, HEXTORAW('519E8E1521FA0C2A252198655E83D123'));
dbms_lob.append(buf, HEXTORAW('144B7AC8968B0A2D63816B534794649A'));
dbms_lob.append(buf, HEXTORAW('9491EB56DAB07080C041A5FD5908FDA0'));
dbms_lob.append(buf, HEXTORAW('4548BB895821C2A0912203889E333CCD'));
dbms_lob.append(buf, HEXTORAW('1945841133A0D059D17AE901CD2EAC14'));
dbms_lob.append(buf, HEXTORAW('9C221B5FADDEBBE7E6656DAFAFEF3B4A'));
dbms_lob.append(buf, HEXTORAW('B47AA485EEE54B5D0C9544A8D56AC639'));
dbms_lob.append(buf, HEXTORAW('91460905BF6694199B70A20D7753A954'));
dbms_lob.append(buf, HEXTORAW('646ED03F3D0804CAAB57ABABD75FEFEC'));
dbms_lob.append(buf, HEXTORAW('ECAC5E0F3DFDF845A2B5950CAF58E882'));
dbms_lob.append(buf, HEXTORAW('903210A1CE645AAEA8781E62145E1E86'));
dbms_lob.append(buf, HEXTORAW('8F9925C7A36F8B1F54666DC7E77E1814'));
dbms_lob.append(buf, HEXTORAW('C51530931338166F74747D3DDE6ACC3D'));
dbms_lob.append(buf, HEXTORAW('A7A0105EAF89864A8C9404A833518C7B'));
dbms_lob.append(buf, HEXTORAW('92A24C2B8251D83F6FEF96A10E8EE6AE'));
dbms_lob.append(buf, HEXTORAW('7202876EAAA1A1891BD829C32FDEFFF8'));
dbms_lob.append(buf, HEXTORAW('75A2165F77FDFD068128A51CB241481E'));
dbms_lob.append(buf, HEXTORAW('53ABB55A09E2694C346406A3417F3705'));
dbms_lob.append(buf, HEXTORAW('21AB8CD7E151E4EACA203F7576773F47'));
dbms_lob.append(buf, HEXTORAW('81A8FB35180CEE6D6D6DFD78F17F4D4D'));
dbms_lob.append(buf, HEXTORAW('475377D54A18194A4EA855728A3C14A3'));
dbms_lob.append(buf, HEXTORAW('375AF5699A0CFCAAA1F6247500012510'));
dbms_lob.append(buf, HEXTORAW('5D53449C6B8751D8F171CF85CD786F6F'));
dbms_lob.append(buf, HEXTORAW('2F7F602006A76B70C15779104F9DA0BB'));
dbms_lob.append(buf, HEXTORAW('2ABD56A5CD3C63646733FE36CD600E28'));
dbms_lob.append(buf, HEXTORAW('957A7B7C7B77B7EC0C82281F573EFEBD'));
dbms_lob.append(buf, HEXTORAW('A3A3234C8F70F8D6AFB8D98600632006'));
dbms_lob.append(buf, HEXTORAW('E63879F590556E1FC447D52A2DBFBE5A'));
dbms_lob.append(buf, HEXTORAW('4A919D4D084A3862C8542A3588321D00'));
dbms_lob.append(buf, HEXTORAW('5D964EA7430C5D19636B5FEDEFE3E22F'));
dbms_lob.append(buf, HEXTORAW('6EA15EE04091366231BCCC1E1F2757D6'));
dbms_lob.append(buf, HEXTORAW('7C959595DBF14CEA8624802846B13CAE'));
dbms_lob.append(buf, HEXTORAW('A41D957EF460972E8E4B4B4F588CF9E6'));
dbms_lob.append(buf, HEXTORAW('1E5F844087159C5882384B7224169B8D'));
dbms_lob.append(buf, HEXTORAW('CD9694CCCE1E27F7FD9B30A09CC80345'));
dbms_lob.append(buf, HEXTORAW('2140D8ED0C5CA69486C64C658791C518'));
dbms_lob.append(buf, HEXTORAW('D3312EE1953239D8C2575D5CC0A11BFD'));
dbms_lob.append(buf, HEXTORAW('CECF978DD966CE3427DFFBFB7894ED78'));
dbms_lob.append(buf, HEXTORAW('9B9C82C7B003C9E6FF901E34751CDDC0'));
dbms_lob.append(buf, HEXTORAW('27E745085E813087AFA92B19DCDBBB70'));
dbms_lob.append(buf, HEXTORAW('811E84B408A3A4B9992709BEFF63D357'));
dbms_lob.append(buf, HEXTORAW('49CC41FC24F33405AA8DD1BB3C09CACB'));
dbms_lob.append(buf, HEXTORAW('548F6EE3833B64841142FD673EE6F327'));
dbms_lob.append(buf, HEXTORAW('93491EE1025E3B5B703F4F093852321B'));
dbms_lob.append(buf, HEXTORAW('4B5E5CF0F97C0E0729A99353C1DED626'));
dbms_lob.append(buf, HEXTORAW('90EC3CD939F99C367432C57812E6385C'));
dbms_lob.append(buf, HEXTORAW('4926B706F279B590514DC66C33AFE3E4'));
dbms_lob.append(buf, HEXTORAW('C74D20CCC19B6F2FB673A38DD728A361'));
dbms_lob.append(buf, HEXTORAW('CB2ECE9602B521489903E3C4B298434E'));
dbms_lob.append(buf, HEXTORAW('94457FC3050E57B6B606065A3841FFC5'));
dbms_lob.append(buf, HEXTORAW('52C24B42BA9A7CBE4AC691CA83D13302'));
dbms_lob.append(buf, HEXTORAW('8AD98B79D11066E715A7B0C6F1A9B378'));
dbms_lob.append(buf, HEXTORAW('31078A2781E2C0E75CD887424235E5A8'));
dbms_lob.append(buf, HEXTORAW('2EA9960920FB87E8874EE7F03976298A'));
dbms_lob.append(buf, HEXTORAW('648C4A489B5D76F0FC8CD5273A8E5945'));
dbms_lob.append(buf, HEXTORAW('191CF4E498ACC45AAA63D5720C39CCF1'));
dbms_lob.append(buf, HEXTORAW('F15334C4C774E80AC27C1EC565450AAA'));
dbms_lob.append(buf, HEXTORAW('BF00DCB98F0859F8ECB8000000004945'));
dbms_lob.append(buf, HEXTORAW('4E44AE426082'));
dbms_lob.append(buf, HEXTORAW('0EC1D7FA6B411DA58149'));
dbms_lob.append(buf, HEXTORAW('0EC1D7FA6B411DA58149'));

UPDATE aluno
SET avatar = buf;

END;

