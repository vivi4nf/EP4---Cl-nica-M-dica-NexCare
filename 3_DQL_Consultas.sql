
-- 3_DQL_CONSULTAS.SQL
-- Consultas para relatórios


USE clinica_nexcare;

-- 1. Listar todos os pacientes
SELECT * FROM paciente;

-- 2. Listar todos os médicos e especialidades
SELECT nome, especialidade FROM medico;

-- 3. Consultas agendadas com nome do paciente e médico
SELECT 
    c.id_consulta,
    c.data_consulta,
    c.hora,
    p.nome AS paciente,
    m.nome AS medico
FROM consulta c
JOIN paciente p ON c.id_paciente = p.id_paciente
JOIN medico m ON c.id_medico = m.id_medico;

-- 4. Pagamentos realizados
SELECT * FROM pagamento WHERE status_pagamento = 'Pago';

-- 5. Consultas com pagamento associado
SELECT 
    c.id_consulta,
    p.nome AS paciente,
    pag.valor,
    pag.status_pagamento
FROM consulta c
LEFT JOIN pagamento pag ON c.id_consulta = pag.id_consulta
LEFT JOIN paciente p ON c.id_paciente = p.id_paciente;