# frozen_string_literal: true

class PageOther < Page
  def initialize(url)
    @url = url
  end

  def switch_tab
    window = page.driver.browser.window_handles.last # salva dentro da variavel window a ultima janela aberta
    page.driver.browser.switch_to.window(window) # muda a tab para a salva dentro da variavel window
  end
end
