class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @word = params[:word].chars
    # The word can’t be built out of the original grid
    @valid_word = true
    # iterer sur l'array @word et, pour chaque lettre de l'array
      # vérifier que la lettre apparait au moins autant de fois dans @letters
    @word.included?
    @valid_word = true
    
    if @word
      puts "Sorry but #{@word} can be built out of #{@letters}"
    # The word is valid according to the grid, but is not a valid English word
    if @word
      puts "Sorry but #{@word} doesn't seem to be a valid english word."
    # The word is valid according to the grid and is an English word
    else
    end
  end

  private
  def included?(letters, words)
    words.chars.all? do |letter|
      words.count(letter) <= letters.count(letter)
    end
  end
end
