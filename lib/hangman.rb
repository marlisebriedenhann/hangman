# frozen_string_literal: true

class Hangman
  attr_reader :masked_word

  def initialize(new_word:)
    @masked_word = new_word.chars.map { '_' }.join.to_s
  end
end
