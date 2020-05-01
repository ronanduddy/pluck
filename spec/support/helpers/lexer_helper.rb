# frozen_string_literal: true

require 'lexer'

module Helpers
  module LexerHelper
    def mocked_lexer
      instance_double(Lexer)
    end
  end
end

RSpec.configure do |config|
  config.include Helpers::LexerHelper
end