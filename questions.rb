class Questions
  def initialize()
    @question = "Player"
  end

  def number
    number1 = rand(1..99)
    number2 = rand(1..99)

    puts " #{@question}: What is #{number1} - #{number2}?"

    print ">"
    answer = $stdin.gets.chomp.to_i

    if answer == number1 - number2
      puts "Yes, you are correct"
      return true
    else
      puts "Seriously, No"
      return false
    end
  end
end

question = Questions.new()
question.number
