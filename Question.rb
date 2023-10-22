class Question
  # Create getter methods
  attr_reader :answer

  # Pick two random numbers between 1 and 20, answer will be sum of the two
  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1 + @num2
  end

  # Method to ask question
  def ask_question(name)
    puts "Player #{name}: What does #{@num1} plus #{@num2} equal?"
  end

  # Validate if the input is equal to the answer
  def is_correct(input)
    input == @answer
  end
end

# Test code
# question = Question.new
# question.ask_question(1)

# user_input = gets.to_i
# if question.is_correct(user_input)
#   puts "Correct!"
# else
#   puts "Incorrect. The answer is #{question.answer}."
# end