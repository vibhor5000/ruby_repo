#"Write a Ruby program to get the unique names 
#instead of using uniq ,use another logic 

def unique_names(names1, names2)
  a = names1 + names2
  
  a.each do |x|
      a.delete_if do |var1| 
        var1 == x 
    end
      a<< x
  end
end
 
names1 = ['Karan', 'Vibhor', 'Vibhor']
names2 = ['Kishor', 'Karan', 'Venkat', 'Kishor']
p unique_names(names1, names2)

#-----------------------------------------------------------------------------------
# a.each do |var|
#     puts var
# end
# expected o/p
# ['Karan', 'Vibhor', 'Kishor', 'Venkat']"
#-----------------------------------------------------------------------------------