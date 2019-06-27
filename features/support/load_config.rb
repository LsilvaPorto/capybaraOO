# frozen_string_literal: true

require 'yaml'
class LoadConfig
  attr_accessor :url, :login, :senha, :campo_login, :campo_senha, :botao_login

  def initialize(file)
    info = YAML::load_file(File.join(Dir.pwd, "features/support/config/#{file}.yaml"))
    @url = info['url']
    @login = info['email_login']
    @senha = info['senha_login']
    @campo_login = info['campo_login']
    @campo_senha = info['campo_senha']
    @botao_login = info['botao_login']
  end
end
