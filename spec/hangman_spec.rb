# frozen_string_literal: true

require './hangman'

RSpec.describe Hangman do
  it "should start a new game" do
    subject.start
  end  
end
