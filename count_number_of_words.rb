puts "Enter a list of words separated by space or enter a sentence to find words count in that: "
string_input = gets.chomp

length_of_words = string_input.split(" ").length

puts "Total words count is #{length_of_words}"

#write the same logic without using split and length.