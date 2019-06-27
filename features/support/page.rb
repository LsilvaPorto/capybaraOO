# frozen_string_literal: true

class Page
  include Capybara::DSL
  attr_accessor :url
end
