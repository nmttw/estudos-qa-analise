Feature: Login de Usuário
  Como um usuário cadastrado
  Quero acessar minha conta
  Para ver meus pedidos

  Scenario: Login com sucesso
    Given que estou na página de login
    When insiro um email válido e senha correta
    Then devo ser redirecionado para a dashboard

  # Cenários de Segurança
  
  Scenario: Tentativa de Brute Force (Segurança)
    Given que tentei logar com a senha errada 5 vezes
    When tento a 6ª vez
    Then o sistema deve bloquear meu IP temporariamente
    And exibir a mensagem "Muitas tentativas. Tente mais tarde."