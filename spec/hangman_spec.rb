# frozen_string_literal: true

require './lib/hangman'

RSpec.describe Hangman do
  describe ".start" do
    let!(:word) { "supercalifragilisticexpialidocious" }
    subject { described_class.new(new_word: word) }

    it "should return a concealed word" do
      expect(subject.masked_word.count('_')).to eq(word.length)
    end
  end
end
