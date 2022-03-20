class Wordle

  def game
    @words = word_list
  end

  def word_list
    word_list = []
    words = File.readlines("dictionary.txt", chomp: true)
  end

end

Wordle.new.game