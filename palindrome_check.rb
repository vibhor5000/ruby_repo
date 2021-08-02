#-------------------write a program to implement this logic without reverse-------------------

begin
	print "Enter a word on which you want to conduct a check if the string is palindrome or not\n:-> "
	string_reverse = ""
	string_input = gets.chomp
 	raise "The input provided by you is empty" if (string_input.strip.empty? || string_input.strip == "nil")

	indx = 1
	while string_input.length >= indx
		string_reverse += string_input[-indx]
		indx += 1
	end

	if string_reverse == string_input
		puts "The word you entered is palindrome" 
	else
		puts "The word you entered is not a palindrome"
	end
  	rescue => e
		puts e.message
	retry
end


#---------------------------------------------------------------------------------------------
# begin
# 	string_input = gets.chomp
# 	raise "error" if string_input.blank?
#   rescue => e
# 	puts e.message
# 	retry
#   end
#---------------------------------------------------------------------------------------------