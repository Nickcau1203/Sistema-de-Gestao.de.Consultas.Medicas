CREATE DATABASE atividade_hospital;
\c atividade_hospital;

/*Criação da tabela de pacientes*/
CREATE TABLE pacientes (
id_paciente SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
telefone VARCHAR(130) NOT NULL,
email VARCHAR(130) UNIQUE NOT NULL
);
SELECT * FROM pacientes;

/*Criação da tabela de medicos*/
CREATE TABLE medicos (
id_medicos SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(130) UNIQUE NOT NULL
);
SELECT * FROM medicos;

/*Criação da tabela de consultas*/
CREATE TABLE consultas (
id_consultas SERIAL PRIMARY KEY,
data VARCHAR(100) NOT NULL,
horario VARCHAR(100) NOT NULL,
tipo_de_consulta VARCHAR(130) UNIQUE NOT NULL
);
SELECT * FROM consultas;

/*Tabela de pacientes*/
INSERT INTO pacientes (nome, telefone, email)
VALUES
('Victoria Cau', '(19)98206-5491', 'victoriacau@gmail.com');
SELECT * FROM pacientes;

INSERT INTO pacientes (nome, telefone, email)
VALUES
('Aparecida Sella', '(19)98206-5491', 'aparecidasella@gmail.com');
SELECT * FROM pacientes;

INSERT INTO pacientes (nome, telefone, email)
VALUES
('Pedro Souza da Silva', '(19)78654-3901', 'pedrosouzadasilva@gmail.com');
SELECT * FROM pacientes;

INSERT INTO pacientes (nome, telefone, email)
VALUES
('Vincenzo Maestrelli', '(19)67349-0912', 'vincenzomaestrelli@gmail.com');
SELECT * FROM pacientes;

/*Tabela de medicos*/
INSERT INTO medicos (nome, especialidade)
VALUES
('Dr.Tânia', 'Pediatra');
SELECT * FROM medicos;

INSERT INTO medicos (nome, especialidade)
VALUES
('Dr.Alessandro', 'Oftalmologista');
SELECT * FROM medicos;

INSERT INTO medicos (nome, especialidade)
VALUES
('Dr.José Aldair Morsch', 'Cardiologista');
SELECT * FROM medicos;

INSERT INTO medicos (nome, especialidade)
VALUES
('Dr.Maria Laryssa da Silva Pontes', 'Geriatra');
SELECT * FROM medicos;

/*Tabela de consultas*/
INSERT INTO consultas (data, horario, tipo_de_consulta)
VALUES
('12/11/2024', '8:30', 'Pediatria');
SELECT * FROM consultas;

INSERT INTO consultas (data, horario, tipo_de_consulta)
VALUES
('08/11/2024', '14:20', 'Oftalmologista');
SELECT * FROM consultas;

INSERT INTO consultas (data, horario, tipo_de_consulta)
VALUES
('27/11/2024', '10:00', 'Cardiologista');
SELECT * FROM consultas;

INSERT INTO consultas (data, horario, tipo_de_consulta)
VALUES
('13/01/2025', '16:10', 'Geriatra');
SELECT * FROM consultas;