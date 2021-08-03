$currencies = {
    "quarter" => 25,
    "dime"    => 10,
    "nickel"  => 5,
    "penny"   => 1
}

def change_for1(amount)
  puts "u entered...#{amount}"
  
  result = {}
  
  #get the different types of currencies available
  keys = $currencies.keys
  total_amount = amount
  
  keys.each do |c|
    count = total_amount / $currencies[c]
    remaing_amount = total_amount - (count * $currencies[c])
    result[c] = count
    break if remaing_amount == 0
    total_amount = remaing_amount
  end
  
  result.delete_if {|k,v| v == 0 }  
end

#------------------APPROACH 2--------------------------

$output = {}
$i = 0
$keys = $currencies.keys  # ['quarter', 'dime', 'nickel', 'penny']
  
def change_for(amount)
  currency = $keys[$i]
  count = amount / $currencies[currency]
  remaing_amount = amount - (count * $currencies[currency])
  $output[currency] = count
  $i += 1
  change_for(remaing_amount) if remaing_amount > 0  

  $output.delete_if {|k,v| v == 0 }  
end


def read_input
  puts "Enter input amount to get the change:"
  amount = gets.chomp.to_i
  if amount < 0
    raise "Negative amount can't be accepted"
  elsif amount == 0
    puts "No change given for ZERO"
  else
    puts change_for(amount)
  end
rescue => e
  puts e.message
  retry
end

read_input