#Writing the code with more info from students
# Greetings
puts "\n***** Hello stranger, and welcome to my code my directory :D *****"
# 1st Method to get the Student input 
def input_students 
	@students = [] # This is a global method to be used everywhere in the Script by the way
	while true # Creating a loop in style
		print "\nWanna add a student to the directory? [y/n]: " #Activates Yes or No command
		if gets.chomp.strip.downcase == "y"
			print "Student name: " 
			name = gets.chomp.capitalize #Enter the name
			print "What about the cohort? "
			cohort =gets.chomp.capitalize #Enter cohort
			print "What is his/her background? "
			background =gets.chomp.capitalize #Enter details...
			print "any distinctive sign? "
			distinctive = gets.chomp.capitalize 
			@students << {name: name, cohort: cohort, background: background, distinctive: distinctive} #Hash where all the data goes back to my array
		else
			break
		end
	end
end
# Now my code is written, I define methods to print the directory outcome
# First, the header
def print_header
  puts "\nThanks to your input, here is the cohort list @ Makers Academy"
  puts "-------------"
end
# Then the list of names I received in the input method
def print_names_cohort(students)
  students.each do |student|
    puts "#{student[:name]}, #{student[:cohort]}, #{student[:background]}, #{student[:distinctive]}" 
  end
end
# Finally the last part 
def print_footer(students)
  puts "-------------"
  puts "There are #{@students.length} students, with very entertaining personalities shall I say"
end
# Now , I am calling everything so that it appears nice and clean in Ruby

students = input_students
print_header
print_names_cohort(@students)
print_footer(students)

