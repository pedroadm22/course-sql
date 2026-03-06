CREATE DATABASE IF NOT EXISTS clinica_vida_cuidado;

USE clinica_vida_cuidado;

CREATE TABLE pacientes(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR (100) NOT NULL,
  cpf VARCHAR (14) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  data_nascimento DATE 
);


CREATE TABLE profissionais(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  especialidade VARCHAR(100),
  telefone VARCHAR(20)
);


CREATE TABLE servicos(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome_servico VARCHAR(100),
  valor DECIMAL(10,2),
  duracao_minutos INT
);

CREATE TABLE agendamentos(
  id INT AUTO_INCREMENT PRIMARY KEY,
  paciente_id INT,
  profissional_id INT,
  servico_id INT,
  data_agendamento DATE,
  hora_agendamento TIME,
  FOREIGN KEY (paciente_id) REFERENCES pacientes(id),
  FOREIGN KEY (profissional_id) REFERENCES profissionais(id),
  FOREIGN KEY (servico_id) REFERENCES servicos(id)
 );
  
 INSERT INTO pacientes(nome, cpf, telefone, data_nascimento) VALUES
	("Pedro", "90128341324", "85987765442", "2001-03-20"), 
	("Matheus", "02128341324", "8598906542", "2020-09-21"),
    ("Afonso", "02128214324", "8598906501", "2019-04-10"); 
 
   
 INSERT INTO profissionais (nome,especialidade,telefone) VALUES
 	("thiago","radiologista","85946825978"),
    ("davi","pediatra","88984567912");
     
INSERT INTO servicos (nome_servico,valor,duracao_minutos) VALUES
	("consulta de pediatra",80,60),
    ("raio-x",100,60),
    ("consulta de dentista",200,120);
     
INSERT INTO agendamentos ( paciente_id,profissional_id,servico_id,data_agendamento,hora_agendamento) VALUES
	INSERT INTO `agendamentos` (`id`, `paciente_id`, `profissional_id`, `servico_id`, `data_agendamento`, `hora_agendamento`) VALUES 
    ('1', '1', '1', '2026-03-12', '14:30:00'),
    ('2', '2', '2', '2026-03-20', '13:30:00'), 
    ('1', '1', '1', '2026-05-12', '15:30:00'),
    ('2', '2', '2', '2026-04-12', '14:30:00'),
    ('3', '2', '1', '2026-04-12', '16:30:00');

    
