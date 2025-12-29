# Relatório de Testes - Allure

Este documento apresenta um resumo dos testes realizados no fluxo de **Cadastro e Login** de um e-commerce fictício, com foco em **qualidade funcional** e **segurança**.

---

## 📊 Visão Geral dos Testes

| Tipo de Teste        | Quantidade |
|---------------------|------------|
| Testes Funcionais   | 4          |
| Testes de Segurança | 4          |
| Total               | 8          |

---

## ✅ Status dos Cenários

| Cenário                                         | Tipo        | Status  |
|------------------------------------------------|-------------|---------|
| Cadastro com dados válidos                      | Funcional   | ✅ Passou |
| Cadastro com campos obrigatórios vazios         | Funcional   | ✅ Passou |
| Login com credenciais válidas                   | Funcional   | ✅ Passou |
| Login com senha inválida                        | Funcional   | ✅ Passou |
| Bloqueio após múltiplas tentativas de login     | Segurança   | ❌ Falhou |
| SQL Injection no campo de login                 | Segurança   | ❌ Falhou |
| SQL Injection no cadastro                       | Segurança   | ❌ Falhou |
| Validação de força de senha                     | Segurança   | ❌ Falhou |

---

## ❌ Detalhes dos Cenários com Falha

### Bloqueio após múltiplas tentativas de login (Brute Force)
**Descrição:**  
O sistema permite tentativas ilimitadas de login com senha inválida, sem aplicar bloqueio temporário.

**Impacto:**  
Risco elevado de comprometimento de contas por ataque de força bruta.

---

### Tentativa de SQL Injection no login
**Descrição:**  
Entradas com comandos SQL não são sanitizadas adequadamente, permitindo comportamento inesperado.

**Impacto:**  
Possível exposição de dados sensíveis e falha de segurança.

---

### Tentativa de SQL Injection no cadastro
**Descrição:**  
Campos de texto aceitam comandos SQL sem validação.

**Impacto:**  
Risco de manipulação indevida de dados no sistema.

---

### Validação de força de senha
**Descrição:**  
O sistema permite o cadastro com senhas fracas, sem critérios mínimos de segurança.

**Impacto:**  
Aumento da vulnerabilidade das contas de usuários.

---

## 📌 Observações Gerais
- Os testes funcionais atenderam aos critérios esperados.
- As principais falhas encontradas estão relacionadas à **camada de segurança**, especialmente no controle de acesso e validação de entradas.
- Recomenda-se priorizar correções relacionadas a autenticação e sanitização de dados.

---

## 🛠️ Ambiente de Teste
- Aplicação Web (e-commerce fictício)
- Navegador: Google Chrome (versão atual)
- Sistema Operacional: Windows 10/11
- Execução: Testes manuais

---