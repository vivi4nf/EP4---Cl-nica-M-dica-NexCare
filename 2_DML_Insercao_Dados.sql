
-- 2_DML_INSERCAO_DADOS.SQL
-- Inserção de dados de exemplo


USE clinica_nexcare;

-- Inserindo usuários
INSERT INTO usuario (nome, login, senha, tipo, email, telefone)
VALUES 
('João Silva', 'joaos', '123', 'paciente', 'joao@gmail.com', '11999999999'),
('Dra. Ana Costa', 'anac', '456', 'medico', 'ana@clinica.com', '11988888888');

-- Inserindo paciente
INSERT INTO paciente (nome, cpf, data_nascimento, telefone, email, endereco, id_usuario)
VALUES 
('João Silva', '12345678901', '1990-05-10', '11999999999', 'joao@gmail.com', 'Rua A, 123', 1);

-- Inserindo médico
INSERT INTO medico (nome, crm, especialidade, cpf, telefone, email, id_usuario)
VALUES 
('Dra. Ana Costa', 'CRM12345', 'Clínico Geral', '98765432100', '11988888888', 'ana@clinica.com', 2);

-- Inserindo consulta
INSERT INTO consulta (data_consulta, hora, status, id_paciente, id_medico)
VALUES 
('2025-11-30', '14:00:00', 'Agendada', 1, 1);

-- Inserindo pagamento
INSERT INTO pagamento (valor, data_pagamento, forma_pagamento, status_pagamento, id_consulta)
VALUES 
(150.00, '2025-11-30', 'Cartão', 'Pago', 1);