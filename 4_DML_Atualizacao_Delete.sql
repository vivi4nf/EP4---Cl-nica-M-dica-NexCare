-- 4_DML_Atualizacao_Delete.sql
USE clinica_nexcare;

-- UPDATEs (exemplos)
-- Atualizar telefone do paciente id_paciente = 1
UPDATE paciente
SET telefone = '11977777777'
WHERE id_paciente = 1;

-- Alterar status da consulta id_consulta = 1 (sem acento para evitar encoding)
UPDATE consulta
SET status = 'Concluida'
WHERE id_consulta = 1;

-- Atualizar valor do pagamento id_pagamento = 1
UPDATE pagamento
SET valor = 180.00
WHERE id_pagamento = 1;

-- DELETEs (exemplos seguros)
-- Deletar um pagamento (ex: id_pagamento = 1)
DELETE FROM pagamento
WHERE id_pagamento = 1;

-- Deletar uma consulta (ex: id_consulta = 1)
-- Note: como fk_pagamento_consulta tem ON DELETE CASCADE, pagamentos relacionados serão removidos automaticamente.
DELETE FROM consulta
WHERE id_consulta = 1;

-- Exemplo comentado: deletar paciente (apenas se não houver consultas ativas)
-- DELETE FROM paciente WHERE id_paciente = 1;