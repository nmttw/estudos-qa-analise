# Plano de Teste – Fluxo de Cadastro e Login

## 1. Objetivo
Validar o correto funcionamento do fluxo de **cadastro e login** de um site fictício de e-commerce, garantindo que usuários consigam se cadastrar, autenticar e acessar o sistema com segurança.

## 2. Escopo

### 2.1 Testes Funcionais
- Cadastro de novo usuário
- Login com credenciais válidas
- Validação de campos obrigatórios
- Mensagens de erro para dados inválidos

### 2.2 Testes de Segurança (Básicos)
- Validação de força de senha
- Tentativas de SQL Injection em campos de entrada
- Bloqueio após múltiplas tentativas de login inválido (brute force)

## 3. Fora do Escopo (próximos passos de evolução)
- Testes de performance
- Testes automatizados
- Integrações com sistemas externos

## 4. Ambiente de Teste
- Tipo de aplicação: Web (e-commerce fictício)
- Navegador: Google Chrome
- Sistema Operacional: Windows 10/11
- Ferramentas de apoio:
- DevTools do navegador (Network, Console, Application)


## 5. Critérios de Aceite
- Usuário deve conseguir se cadastrar com dados válidos
- Sistema deve impedir acessos não autorizados
- Mensagens de erro devem ser claras e objetivas
