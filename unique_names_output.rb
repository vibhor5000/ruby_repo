# "Write a Ruby program to get the unique names 

 def unique_names(names1, names2)
  (names1 + names2).uniq #instead of using uniq ,use another logic 
 end

names1 = ['Karan', 'Vibhor', 'Vibhor']
names2 = ['Kishor', 'Karan', 'Venkat', 'Kishor']

puts unique_names(names1, names2)



# expected o/p
# ['Karan', 'Vibhor', 'Kishor', 'Venkat']"