require "./questions"

class Turns
  attr_accessor :turn, :player1, :player2

  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end

  def turn_updater(turn)
    if turn == 1
      @turn = 2
    else
      @turn = 1
    end
    game_start
  end

  def life_updater(turn)
    turn == 1 ? @player1 -= 1 : @player2 -= 1
    if @player1 == 0
      end_game_p1
    elsif @player2 == 0
      end_game_p2
    end
  end

  def end_game_p1
    puts "Player 2 wins with a score of #{@player2}/3"
    puts "-----GAME OVER-----"
    puts "Good Bye!"
  end

  def end_game_p2
    puts "Player 1 wins with a score of #{@player1}/3"
    puts "-----GAME OVER-----"
    puts "Good Bye!"
  end

  #starts game
  def game_start
    puts "P1: #{player1} vs P2: #{player2}"
    puts "-----NEW TURN-----"
    q = Questions.new(turn)
    p q.question
    life_updater(@turn) if q.answer == false
    turn_updater(@turn)
  end
end
