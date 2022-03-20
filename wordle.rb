class Wordle

  def game
    @words = word_list
    @total_turns = 6
    @wordle_view = Array.new (@total_turns) {"_ _ _ _ _"}
    
    # Selecting random word as answer from the list of available words
    @answer = @words[rand(@words.size - 1)].upcase

  end

  def word_list
    word_list = []
    words = File.readlines("dictionary.txt", chomp: true)
  end

end

Wordle.new.game