# QUESTION GENERATOR
class Question
  attr_accessor :num1, :num2, :sum

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @sum = @num1 + @num2
  end
end
