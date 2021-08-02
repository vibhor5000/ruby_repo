puts "Enter a list of words separated by space or enter a sentence to find words count in that: "

                # length_of_words = string_input.split(" ").length
                # puts "Total words count is #{length_of_words}"
#--------------write the same logic without using split and length.--------------

# puts string_input.size
# puts string_input.count(' ') + 1

class A
    def total_words
        puts scan(/\w+/).count
    end
end

string_input = A.new
string_input = gets.chomp
string_input.total_words