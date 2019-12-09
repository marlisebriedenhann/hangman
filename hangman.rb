# frozen_string_literal: true

require 'random-word'

class Hangman
  @word = ''
  @guessedChars = []

  def initialize
    @word = RandomWord.nouns.next
    @unmaskedWord = mask
    @attempts = 6
  end

  def word
    @word
  end

  def mask
    @word.chars.map { |c| '_'}.to_s
  end

  def unmaskedWord
    @unmaskedWord
  end

  def attempts
    @attempts
  end

  def gameOver
    return (@unmaskedWord.count('_').zero? || @attempts.zero?)
  end

  def play(char)
    if char.scan(/[a-zA-Z]+/)
      if @word.include?(char)
        (@guessedChars ||= []) << char
        @guessedChars << char unless @guessedChars.any? { |c| c.include?(char) }
        @unmaskedWord = unmask(char)
      else
        @attempts =+ 1
      end
    end
  end

  private

  def unmask(char)
    offset = 0
    while not @word.index(char, offset).nil?
      @unmaskedWord.chars[@word.index(char)] = char
      offset = @word.index(char)
    end
    @unmaskedWord
  end
end
