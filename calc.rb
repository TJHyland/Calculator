# Complete - take the first number
# Complete - take modifier
# Complete - take the last number
# Complete - puts result
# Partially complete - error checking (hard to do with numbers)
#   user input and modifiers should be checked for proper input type
# Complete - the result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear the calculator
# Complete - make + - * / work
# Incomplete - make clear work

require 'pry'

def get_first_num
  puts "Input a number"
  puts "Type 'clear' to clear the calculator"
  puts "Type 'exit' to exit the calculator"
  #num1.is_a? float -- use to check if input is a float, returns a boolean
  input1 = gets
  if input1.strip == "exit"
    SystemExit
  elsif
    input1.strip =="clear"
    system("clear")
    get_first_num
  else
    @num1 = input1.to_f
  # .to_f converts string into float
  get_operator
  end
end

def get_operator
  puts "Input operator"
  input2 = gets
  if input2.strip == "exit"
    SystemExit
  elsif
    input2.strip == "clear"
    system("clear")
    get_first_num
  else
    @operation = input2.strip
    if
      @operation != "+" and 
      @operation != "-" and
      @operation != "*" and
      @operation != "/"
      operator_error
    else
      get_second_num
    end
  end
end

def get_second_num
  puts "Input a number"
  input3 = gets
  if input3.strip == "exit"
    SystemExit
  elsif
    input3.strip == "clear"
    system("clear")
    get_first_num
  else
    @num2 = input3.to_f
    @num1 = eval("#{@num1} #{@operation} #{@num2}")
    puts @num1
    get_operator
  end
end

def operator_error
  puts "Invalid operator. Try +,-,*, or /"
  get_operator
end
get_first_num

# @answer = eval("#{@num1} #{@operation} #{@num2}")

# puts @answer

