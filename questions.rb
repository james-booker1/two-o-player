class Questions
  attr_accessor :turn

  def initialize(turn)
    @turn = turn
    @number1 = rand(99)
    @number2 = rand(99)
    @answer = 0
  end

  def question
    puts "Player #{turn}: What is #{@number1} - #{@number2}?"
    print ">"
    @answer = $stdin.gets.chomp.to_i
  end

  def answer
    if @answer == @number1 - @number2
      puts "Player #{turn}: Yes, you are correct"
      true
    else
      puts "Player #{turn}: Seriously, No"
      false
    end
  end
end
