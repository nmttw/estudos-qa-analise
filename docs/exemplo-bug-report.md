# Exemplo de Bug Report – Falha de Segurança (Brute Force)

## Título
[Segurança] Login não aplica bloqueio após múltiplas tentativas inválidas

---

## Prioridade
🔴 Crítica

## Severidade
Alta

---

## Descrição
Atualmente, o sistema permite várias tentativas consecutivas de login com senha inválida sem aplicar qualquer tipo de bloqueio ou limitação.  
Esse comportamento expõe o fluxo de autenticação a ataques de **Brute Force**, aumentando o risco de comprometimento das contas dos usuários.

---

## Passos para Reproduzir
1. Acesse a página de login.
2. Informe um email válido já cadastrado.
3. Insira uma senha incorreta.
4. Repita a tentativa de login com senha inválida mais de 5 vezes consecutivas.
5. Observe que o sistema continua permitindo novas tentativas normalmente.

---

## Comportamento Atual
O sistema não impõe limites ou bloqueios após múltiplas falhas de autenticação, permitindo tentativas ilimitadas de login.

---

## Comportamento Esperado
Após um número definido de tentativas inválidas (ex: 5 tentativas), o sistema deve:
- Bloquear temporariamente novas tentativas de login
- Exibir a mensagem:  
  **"Muitas tentativas. Tente novamente mais tarde."**

---

## Impacto
- Risco de acesso não autorizado às contas
- Possível exposição de dados dos usuários
- Falha crítica no controle de segurança do login

---

## Ambiente
- Aplicação Web (e-commerce fictício)
- Navegador: Google Chrome (versão atual)
- Sistema Operacional: Windows 10/11

---