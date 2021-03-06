# Making the code look nice by centering the output
# Greetings
puts "\n***** Hello stranger, and welcome to my code my directory :D*****"
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
			@students << {name: name, cohort: cohort} #Hash where all the data goes back to my array
		else
			break
		end
	end
end
# Now my code is written, I define methods to print the directory outcome
# First, the header
def print_header
  puts "Academy list".center(100)
  puts "-------------".center(100)
end
# Then the list of names I received in the input method
def print_names_cohort(students)
  students.each do |student|
    puts "#{student[:name]}, #{student[:cohort]}".center(100)
  end
end
# Finally the last part 
def print_footer(students)
  puts "-------------".center(100)
  puts "#{@students.length} fantastic Makers ".center(100)
end
# Now , I am calling everything so that it appears nice and clean in Ruby

students = input_students
print_header
print_names_cohort(@students)
print_footer(students)

