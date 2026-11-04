## Dicionário de dados

### Table: clientes

| Campo | Tipo | Restrições | Descrição |
|-------|------|-----------|-----------|
| `id` | INT | PRIMARY KEY / UNIQUE AUTOINCREMENT | ID do item |
| `nome` | VARCHAR(100) | NOT NULL | Nome do Cliente |
| `telefone` | VARCHAR(15) | NOT NULL | Telefone do Cliente |
| `email` | VARCHAR(150) | - | Email do Cliente |
| `data_cad` | TIMESTAMP | NOT NULL | Data de cadastro |

### Table: animais

| Campo | Tipo | Restrições | Descrição |
|-------|------|-----------|-----------|
| `id` | INT | PRIMARY KEY / UNIQUE AUTOINCREMENT | ID do item |
| `id_cliente` | INT | FOREIGN KEY / NOT NULL | ID do cliente |
| `nome` | VARCHAR(50) | NOT NULL | Nome do Animal |
| `especie` | VARCHAR(20) | NOT NULL | Espécie do Animal |
| `raca` | VARCHAR(30) | - | Raça do Animal |
| `data_nasc` | YEAR | - | Ano de nascimento do animal |
| `data_cad` | TIMESTAMP | NOT NULL | Data de cadastro |

### Table: consultas

| Campo | Tipo | Restrições | Descrição |
|-------|------|-----------|-----------|
| `id` | INT | PRIMARY KEY / UNIQUE AUTOINCREMENT | ID do item |
| `id_animal` | INT | FOREIGN KEY / NOT NULL | ID do animal da consulta |
| `data_consulta` | DATE | NOT NULL | Data que foi realizada a consulta |
| `descricao` | VARCHAR(250) | NOT NULL | Descrição da consulta |
| `data_cad` | TIMESTAMP | NOT NULL | Data de cadastro |