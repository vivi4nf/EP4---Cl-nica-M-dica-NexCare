-- 4_DML_Atualizacao_Delete.sql
-- Atualizações (UPDATE) e Exclusões (DELETE)
-- Banco: clinica_nexcare

USE clinica_nexcare;


                  UPDATE                      


Atualizar telefone de um usuário (ex.: recepcionista id = 3)
 UPDATE usuario
SET telefone = '11990001111'
WHERE id_usuario = 3;

Atualizar e-mail de um paciente (id_paciente = 1)
UPDATE paciente
SET email = 'mariana.souza.novo@gmail.com'
WHERE id_paciente = 1;

Atualizar especialidade de um médico (id_medico = 1)
UPDATE medico
SET especialidade = 'Cardiologia Preventiva'
WHERE id_medico = 1;

Atualizar status de uma consulta (id_consulta = 1)
UPDATE consulta
SET status = 'Realizada'
WHERE id_consulta = 1;

Atualizar status do pagamento (id_pagamento = 1)
UPDATE pagamento
SET status_pagamento = 'Pago'
WHERE id_pagamento = 1;



                  DELETE                    


Excluir pagamento (id_pagamento = 1)
DELETE FROM pagamento
WHERE id_pagamento = 1;

Excluir consulta (id_consulta = 1)
DELETE FROM consulta
WHERE id_consulta = 1;

Excluir paciente (id_paciente = 1)
- paciente não pode ter consultas vinculadas

DELETE FROM paciente
WHERE id_paciente = 1;


Excluir médico (id_medico = 1)
- médico não pode ter consultas vinculadas

DELETE FROM medico
WHERE id_medico = 1;


Excluir usuário (id_usuario = 3)
- só deletar se não estiver vinculado a médico/paciente

DELETE FROM usuario
WHERE id_usuario = 3;