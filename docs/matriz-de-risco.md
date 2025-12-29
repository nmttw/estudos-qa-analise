# Matriz de Risco – Fluxo de Login e Cadastro

Esta matriz tem como objetivo priorizar os testes com base no impacto para o usuário e para a segurança do sistema.

| Risco                                   | Impacto | Probabilidade | Prioridade | Ação de Teste |
|----------------------------------------|---------|---------------|------------|---------------|
| Senha fraca aceita no cadastro         | Alto    | Média         | Alta       | Validar regras de senha |
| Múltiplas tentativas de login sem bloqueio | Alto | Alta          | Crítica    | Testar bloqueio por tentativas |
| SQL Injection em campos de entrada     | Alto    | Média         | Alta       | Testar sanitização de inputs |
| Mensagens de erro confusas             | Médio   | Média         | Média      | Validar textos de erro |
| Campos obrigatórios sem validação      | Médio   | Alta          | Alta       | Testar validação de campos |
