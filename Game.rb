class Game
  attr_accessor :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  # Method to switch player based on current player
  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def print_lives
    puts "#{@player1.name}: #{@player1.lives}/3 VS #{@player2.name}: #{@player2.lives}/3"
  end

  # Method to roll the game
  def play
    loop do
      question = Question.new
      question.ask_question(@current_player.name)
      user_input = gets.to_i

      if question.is_correct(user_input)
        puts "Player #{@current_player.name}: Yes! You are correct."
        print_lives
      else
        puts "Player #{@current_player.name}: Seriously? No!"
        @current_player.decrease_lives
        print_lives
      end

      # When the player's lives left reach 0, loop ends
      if @current_player.lives == 0
        break
      end

      # Otherwise switch player and the game continue
      switch_player
      puts "-----NEW TURN-----"
    end

    # When the loop ends, announce the winner and the game ends
    winning_player = [@player1, @player2].find { |player| player.lives > 0 }
    puts "#{winning_player.name} wins with a score of #{winning_player.lives}/3"
    puts "-----GAME OVER-----"
    puts "Goodbye!"
  end
end
