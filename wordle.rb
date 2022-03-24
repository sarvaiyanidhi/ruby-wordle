class Wordle

  class String 
    def colorize(color_code)
        "\e[#{color_code}m#{self}\e[0m"
    end

    def brown
        colorize(33)
    end

    def green
        colorize(32)
    end

    def grey
        colorize(37)
    end
  end

  def game
    words = word_list
    total_turns = 6
    @wordle_view = Array.new (total_turns) {"_ _ _ _ _"}

    puts "Let's start the game \n"
    puts @wordle_view
    
    # Selecting random word as answer from the list of available words
    @answer = words[rand(words.size - 1)].upcase
    puts @answer

    @player_turn = 0
    @player_answer = ""

    while @player_turn < total_turns && @player_answer != @answer do
      puts "Please guess your #{@player_turn + 1} word"
      @player_answer = gets.chomp().upcase

      if @player_answer.empty? || @player_answer.size != 5
        puts "Invalid word! Please enter valid 5 letter word"
      else
        @updated_wordle_view = validate_answer(@player_answer, @answer)
        @wordle_view[@player_turn] = @updated_wordle_view
        puts "Your answer \n"
        puts @wordle_view
        @player_turn += 1
      end
    end

  end

  def word_list
    word_list = []
    words = File.readlines("dictionary.txt", chomp: true)
  end

  def validate_answer(player_answer, answer)

    if player_answer == answer
      player_answer
    else
      
    end
  end

end

Wordle.new.game