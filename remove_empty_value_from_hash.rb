h = {2013 => { "IND" => 2, "US" => "" }, 2014 => {"IND" => "", "US" => ""}, 2015 => {"IND" => nil, "US" => 6}}

def remove_empty_values(h)

    h.each_value {|v| p v.values}

end

puts remove_empty_values(h)

    

# new_hash = h.delete_if {|k, v| v.values == "" }


# puts new_hash


# p h.delete_if { |v| v.values == nil }

# a = h.to_a

# puts a

# h.each_value do |v|
#   p "#{v.values}"
# end
#expected o/p
# {2013 => {""IND"" => 2}, 2014 => {}, 2015 => {""US"" => 6}}"