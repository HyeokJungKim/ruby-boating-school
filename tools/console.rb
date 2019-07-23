require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jason = Student.new("Jason-Spaghetti")
martin = Student.new("Martin-Linguine")

lisa = Instructor.new("Lisa-Ragu")
oscar = Instructor.new("Oscar-Alfredo")

b1 = BoatingTest.new(jason, lisa, "30 Knots", "Passed")
b2 = BoatingTest.new(martin, oscar, "31 Knots", "Failed")

jason.add_boating_test(oscar, "32 Knots", "Passed")
jason.add_boating_test(oscar, "33 Knots", "Failed")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
