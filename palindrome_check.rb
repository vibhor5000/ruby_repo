
print "Enter a word on which you want to conduct a check if the string is palindrome or not\n:-> "

string_input = gets.chomp.downcase.gsub /[" "]/, ""

if string_input == string_input.reverse #write a program to implement this logic without reverse
 	puts "The word you entered is palindrome" 
 else
  	puts "The word you entered is not a palindrome"
end