# START GAME
class Start

  def initialize
    @player1 = Player.new('Player 1', 3)
    @player2 = Player.new('Player 2', 3)
    @player_turn = 1
  end

  # START QUESTIONS
  def ask_q
    # Condition to continue game as long as players are alive
    while @player1.lives != 0 || @player2.lives != 0

      # PLAYER 1's TURN
      if @player_turn == 1

        # Assigning new question to question instance variable
        @question = Question.new

        # Requesting player input
        puts "\n\n--- NEW TURN ---"
        puts "😎 #{@player1.name}: What does #{@question.num1} + #{@question.num2} equal?"
        print '> '
        @answer = gets.chomp

        # Correct Answer
        if @answer == @question.sum.to_s
          puts "#{@player1.name}: ✅ Hey Hey! You smart fella :)"

          # Incorrect Answer
        else
          @player1.lives -= 1
          life_check(@player1.name, @player1.lives)
        end

        # SWITCHING PLAYERS
        @player_turn = 2
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"



      # PLAYER 2's TURN
      elsif @player_turn == 2

        # Assigning new question to question instance variable
        @question = Question.new

        # Requesting player input
        puts "\n\n--- NEW TURN ---"
        puts "🥺  #{@player2.name}: What does #{@question.num1} + #{@question.num2} equal?"
        print '> '
        @answer = gets.chomp

        # Correct Answer
        if @answer == @question.sum.to_s
          puts "#{@player2.name}: ✅ Hey Hey! You smart fella :)"

          # Incorrect Answer
        else
          @player2.lives -= 1
          life_check(@player2.name, @player2.lives)
        end

        # SWITCHING PLAYERS
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        @player_turn = 1
      end
    end
  end

  # Check players are still alive
  def life_check(name, lives)
    if lives.zero?
      puts "\n\n\n😵 #{name} has died. We have a winner!!!"
      puts "\n🏆 The final score was 😎 P1: #{@player1.lives}/3 vs 🥺  P2: #{@player2.lives}/3"
      puts "\n--- GAME OVER ---\n\n"
      exit(0)
    end
    puts "#{name}: 🔴 Wake up buddy. This is basic math, c'mon :("
  end
end
