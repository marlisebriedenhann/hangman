# frozen_string_literal: true

require './hangman'

RSpec.describe Hangman do
  describe ".initialize" do
    let!(:subject) { described_class.new }
    let!(:maskedWord) { subject.word.chars.map { |c| '_ '}.to_s }
    context "when the game starts" do
      it "generates a random word" do
        expect(subject.word).not_to eq('')
      end
      it "displays the word as dashes" do
        expect(subject.mask).to eq(maskedWord)
      end
      it "sets the remaining attempts to six" do
        expect(subject.attempts).to eq(6)
      end
    end
  end
  describe ".play" do
    context "when the game is not over" do
      context "and the user guesses a character in the word" do
          context "when there is only one character to reveal" do
            it "reveals the character(s) in the word" do
            end
            it "signifies game over" do
            end
          end
          context "when there are more than one character to reveal" do
            it "reveals the character in the word" do
            end
          end
      end
      context "and the user guesses a character not in the word" do
        context "when there are remaining attempts" do
          it "decrements the remaining attempts" do
          end
        end
        context "when there are no remaining attempts" do
          it "signifies game over" do
          end
        end
      end
      context "and the user guesses a revealed character" do
        it "lets play continue" do
        end
      end
      context "and the user guesses a non-character" do
        it "lets play continue" do
        end
      end
    end
  end
end
