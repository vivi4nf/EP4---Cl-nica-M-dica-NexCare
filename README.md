# EP4---Cl-nica-M-dica-NexCare

🏥 Sistema de Gestão da Clínica Médica NexCare  
## Experiência Prática 4 — Implementação e Manipulação de Dados (SQL)

Este repositório contém a implementação do banco de dados do sistema de gestão da Clínica Médica **NexCare**, desenvolvido para a disciplina de **Modelagem de Banco de Dados**.

A EP4 tem como objetivo aplicar conhecimentos de **DDL, DML e DQL**, organizando o projeto em scripts SQL funcionais e bem estruturados.

---

📂 Estrutura do Repositório

/sql ├── 1_DDL_Criacao_Tabelas.sql ├── 2_DML_Insercao_Dados.sql ├── 3_DQL_Consultas.sql └── 4_DML_Atualizacao_Delete.sql README.md

---

🧱 1. DDL – Criação das Tabelas  
Arquivo: **1_DDL_Criacao_Tabelas.sql**

Contém:

- Criação de todas as tabelas do projeto  
- Definição de chaves primárias (PK)  
- Definição de chaves estrangeiras (FK)  
- Tipos de dados compatíveis com MySQL  
- Regras de integridade referencial

---

📥 2. DML – Inserção de Dados  
Arquivo: **2_DML_Insercao_Dados.sql**

Contém:

- Dados fictícios coerentes com o mini-mundo  
- Inserção ordenada respeitando as FKs  
- População das tabelas: usuário, paciente, médico, consulta e pagamento


🔎 3. DQL – Consultas SQL  
Arquivo: **3_DQL_Consultas.sql**

Inclui entre 2 e 5 consultas, utilizando:

- SELECT com filtros (WHERE)
- Ordenação (ORDER BY)
- Limitação (LIMIT)
- JOIN entre tabelas  
- Relatórios simples (consultas por médico, paciente, datas etc.)

---

✏️ 4. DML – Atualização e Exclusão  
Arquivo: **4_DML_Atualizacao_Delete.sql**

Contém:

- **3 comandos UPDATE** com condições  
- **3 comandos DELETE** com condições  
- Exclusão segura respeitando relacionamentos


▶️ Como Executar os Scripts

Você pode rodar os scripts em:

✔️ Ambiente local (MySQL Workbench)  
Ou  
✔️ PostgreeSQL

### 📌 Ordem recomendada de execução:

1. `1_DDL_Criacao_Tabelas.sql`  
2. `2_DML_Insercao_Dados.sql`  
3. `3_DQL_Consultas.sql`  
4. `4_DML_Atualizacao_Delete.sql`
