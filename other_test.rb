ar = [5, 4, nil, "", "hi"]
begin
 for i in 0...ar.length
   puts "Value of local variable is #{ar[i]}"
   raise "nil ERROR" if ar[i].nil?
 end
rescue => e
 puts e.inspect
end