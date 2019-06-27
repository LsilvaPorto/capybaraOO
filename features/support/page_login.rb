# frozen_string_literal: true

class PageLogin < Page
  attr_accessor :login, :senha, :campo_login, :campo_senha, :botao_login

  def initialize(login, senha, campo_login, campo_senha, botao_login)
    @login = login
    @senha = senha
    @url = url
    @campo_login = campo_login
    @campo_senha = campo_senha
    @botao_login = botao_login
  end

  def logar
    fill_in @campo_login, with: @login # insere o email na parte de login
    fill_in @campo_senha, with: @senha # insere a senha no login
    click_link_or_button @botao_login # clica no botão "entrar"
  end
end
