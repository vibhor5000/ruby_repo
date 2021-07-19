class Vehicles

	attr_accessor :name, :year_of_manufacture, :color

	def seating_capacity
		puts "It seating capacity is 4" if self.class == Car
		puts "It seating capacity is 22" if self.class == Bus
		puts "It seating capacity is 6" if self.class == Boat
		puts "It seating capacity is 48" if self.class == Aeroplane

	end

	def fuel_type
		puts "It uses petrol" if self.class == Car
		puts "It uses CNG" if self.class == Bus
		puts "It uses diesel" if self.class == Boat
		puts "It uses aviation fuel" if self.class == Aeroplane

	end

	def rides_on
		puts "It ride on city roads" if self.class == Car
		puts "It ride on highway" if self.class == Bus
		puts "It ride in nearby lagoon " if self.class == Boat
		puts "It flies at 9km altitude" if self.class == Aeroplane
	end

end

class Car < Vehicles
end	

class Bus < Vehicles
end

class Aeroplane < Vehicles
end

class Boat < Vehicles
end


#initializing objects

	mercedes = Car.new
	mercedes.name = "GLS 750"
	mercedes.color = "Black"
	mercedes.year_of_manufacture = "2011"

	marcopolo = Bus.new
	marcopolo.name = "RM NU22"
	marcopolo.color = "Blue"
	marcopolo.year_of_manufacture = "2019"

	boeing = Aeroplane.new
	boeing.name = "Boeing 747"
	boeing.color = "Red"
	boeing.year_of_manufacture = "2007"

	juniper = Boat.new
	juniper.name = "M140"
	juniper.color = "Grey"
	juniper.year_of_manufacture = "2015"



		print "Which Vehicle would you like to use\n -> A Car ,\n or\n -> a Bus ,\n or\n -> a Boat ,\n or\n -> an Aeroplane \n please provide the input in lower case from the above options only :-> "

		input_by_user = gets.chomp

				
			if input_by_user == "car"
				puts "\n We have a Mercedes,\n Its model name is #{mercedes.name}, that comes in #{mercedes.color}\n and was built in #{mercedes.year_of_manufacture}" 
				elsif input_by_user == "bus"
					puts "\n We have a Marcopolo,\n Its model name is #{marcopolo.name}, that comes in #{marcopolo.color}\n and was built in #{marcopolo.year_of_manufacture}"
			 	elsif input_by_user == "boat"
					puts "\n We have a Juniper,\n Its model name is #{juniper.name}, that comes in #{juniper.color}\n and was built in #{juniper.year_of_manufacture}"
				elsif input_by_user == "aeroplane"
					puts "\n We have a Boeing,\n Its model name is #{boeing.name}, that comes in #{boeing.color}\n and was built in #{boeing.year_of_manufacture}" 
				else 
					puts "\n Please select from the mentioned Vehicles only"			
			end


	print "\n Now, As you know about the vehicle, would you like to know about the rest of the info this vehicle? \n\n  yes Or no : "
	
	another_input = gets.chomp


	if another_input == "no" 
		puts "\n Thank you for your time, have a nice day ahead"
	
		elsif another_input == "yes"

			print "\n The other info we have is\n * \"seating capacity\", \n * \"fuel type\" \n * \"rides on\" \n\n what would you like to know: "

			other_info_input = gets.chomp
			

			if other_info_input == "seating capacity" && input_by_user == "car" 
				puts mercedes.seating_capacity
			elsif other_info_input == "seating capacity" && input_by_user == "bus" 
				puts marcopolo.seating_capacity
			elsif other_info_input == "seating capacity" && input_by_user == "boat"
				puts juniper.seating_capacity
			elsif other_info_input == "seating capacity" && input_by_user == "aeroplane" 
				puts boeing.seating_capacity

			elsif other_info_input == "fuel type" && input_by_user == "car"
				puts mercedes.fuel_type
			elsif other_info_input == "seating capacity" && input_by_user == "bus"
				puts marcopolo.fuel_type
			elsif other_info_input == "seating capacity" && input_by_user == "boat" 
				puts juniper.fuel_type
			elsif other_info_input == "seating capacity" && input_by_user == "aeroplane" 
				puts boeing.fuel_type

			elsif other_info_input == "rides on" && input_by_user == "car"
				puts mercedes.rides_on
			elsif other_info_input == "seating capacity" && input_by_user == "bus" 
				puts marcopolo.rides_on
			elsif other_info_input == "seating capacity" && input_by_user == "boat"
				puts juniper.rides_on
			elsif other_info_input == "seating capacity" && input_by_user == "aeroplane"
				puts boeing.rides_on
		
			else
				"\n please enter valid input"

		end
	end










