
-- 1_DDL_CRIACAO_TABELAS.SQL




-- ======================
-- Tabela USUARIO
-- ======================

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    login VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15)
);

-- ======================
-- Tabela PACIENTE
-- ======================

CREATE TABLE paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE,
    telefone VARCHAR(15),
    email VARCHAR(100),
    endereco VARCHAR(150),
    id_usuario INT UNIQUE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- ======================
-- Tabela MEDICO
-- ======================
CREATE TABLE medico (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    especialidade VARCHAR(50),
    cpf CHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    email VARCHAR(100),
    id_usuario INT UNIQUE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- ======================
-- Tabela CONSULTA
-- ======================

CREATE TABLE consulta (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    data_consulta DATE NOT NULL,
    hora TIME NOT NULL,
    status VARCHAR(20),
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);

-- ======================
-- Tabela PAGAMENTO
-- ======================

CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATE,
    forma_pagamento VARCHAR(20),
    status_pagamento VARCHAR(20),
    id_consulta INT UNIQUE,
    FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta)
);