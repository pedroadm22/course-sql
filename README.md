git<div align="center">

# 💾 Course SQL – Banco de Dados

<img src="https://img.shields.io/badge/SQL-Database-blue?style=for-the-badge&logo=postgresql&logoColor=white"/>
<img src="https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Linguagem-SQL-orange?style=for-the-badge"/>
<img src="https://img.shields.io/github/repo-size/pedroadm22/course-sql?style=for-the-badge"/>

<img width="500px" src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNzFqZzR0NmJ2NHZ2czh4OTR4ZmRtb2t1YW1nZXg0dTBsdWl1OW9qNyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/l3vR85PnGsBwu1PFK/giphy.gif"/>

### 📚 Repositório criado para estudos e prática de **SQL e Banco de Dados**

</div>

---

# 📖 Sobre o Projeto

Este repositório contém scripts SQL desenvolvidos durante o aprendizado de **modelagem e manipulação de banco de dados**.

O objetivo do projeto é praticar conceitos fundamentais como:

* 📦 Criação de tabelas
* 🔗 Relacionamentos entre entidades
* 🧠 Consultas SQL
* 🔎 Filtragem de dados
* 🔄 Joins
* 📊 Manipulação e organização de informações

O projeto simula um **sistema de gerenciamento de clínica**, contendo tabelas como:

* `pacientes`
* `profissionais`
* `servicos`
* `agendamentos`

---

# 🗄️ Estrutura do Banco

Exemplo simplificado da estrutura do banco:

```
clinica_vida_cuidado
│
├── pacientes
│
├── profissionais
│
├── servicos
│
└── agendamentos
```

Relacionamento básico:

```
pacientes
     │
     │
     ▼
agendamentos
     ▲
     │
profissionais

agendamentos → servicos
```

---

# 🧠 Conceitos Praticados

✔ **DDL**

```sql
CREATE TABLE
ALTER TABLE
DROP TABLE
```

✔ **DML**

```sql
INSERT
UPDATE
DELETE
```

✔ **DQL**

```sql
SELECT
WHERE
ORDER BY
GROUP BY
HAVING
```

✔ **Relacionamentos**

```sql
JOIN
INNER JOIN
LEFT JOIN
```

---

# 🔎 Exemplo de Consulta

```sql
SELECT 
    p.nome AS paciente,
    pr.nome AS profissional,
    s.nome_servico AS servico,
    a.data_agendamento
FROM agendamentos a
JOIN pacientes p 
    ON p.id = a.id_paciente
JOIN profissionais pr 
    ON pr.id = a.id_profissional
JOIN servicos s 
    ON s.id = a.id_servico;
```

Resultado esperado:

| Paciente | Profissional | Serviço  | Data  |
| -------- | ------------ | -------- | ----- |
| João     | Dr. Carlos   | Consulta | 10/03 |

---

# 🚀 Tecnologias Utilizadas

<div>

<a href="https://www.postgresql.org/" style="text-decoration: none; color: inherit;">
    <img src="https://skillicons.dev/icons?i=postgresql" alt="Imagem Postgresql"/>
</a>
<a href="https://www.mysql.com/">
    <img src="https://skillicons.dev/icons?i=mysql" alt="Imagem MySQL"/>
</a>
<a href="https://git-scm.com/">
    <img src="https://skillicons.dev/icons?i=git" alt="Imagem Git/">
</a>
<a href="https://github.com/">
    <img src="https://skillicons.dev/icons?i=github" alt="Imagem GitHub"/>
</a>
<a href="https://code.visualstudio.com/">
    <img src="https://skillicons.dev/icons?i=vscode" alt="Imagem VSCode"/>
</a>

</div>

* SQL
* PostgreSQL / MySQL
* Git
* GitHub

---

# 🎯 Objetivos do Repositório

Este projeto foi criado para:

* praticar **banco de dados relacionais**
* entender **modelagem de dados**
* aprender **consultas SQL**
* evoluir habilidades para **desenvolvimento backend**

---

# 📌 Possíveis melhorias futuras

* 📊 Inserção de dados de teste
* 📈 Consultas mais complexas
* 🔐 Implementação de constraints
* 🧩 Procedures e triggers
* 📑 Documentação do schema

---

# 👨‍💻 Autor

**Pedro Lucas**

💻 Estudante de Análise e Desenvolvimento de Sistemas
📚 Focado em **Backend | Banco de Dados | Infraestrutura**

---

<div align="center">

### ⭐ Se este projeto te ajudou ou serviu de referência, considere dar uma estrela no repositório!

</div>
