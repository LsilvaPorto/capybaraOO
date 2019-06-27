# frozen_string_literal: true

Quando('eu me logo') do
  po = @page_other
  pl = @page_login

  visit po.url
  click_link 'Entre'
  pl.logar

end

Quando('faço uma pesquisa') do
  find_field('_nkw').send_keys('fone')
  click_button 'Pesquisar'
end

Então('eu quero que essa pesquisa retorne a palavra chave pesquisada') do
  expect(@page_other).to have_content('Fone')
end
