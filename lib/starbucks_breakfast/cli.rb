# Our cli controler
class StarbucksBreakfast::CLI

	def call 
		list_items
		menu
		goodbye
	end

	def list_items
		#get items
		puts "Starbucks Breakfast Items:"
		# We want some object called Breakfast, with class method called all. Returning all the breakfasts. 
		@breakfasts = StarbucksBreakfast::Breakfast.all
		@breakfasts.each.with_index(1) do |breakfast, i|
			puts "#{i}. #{breakfast.name} - Cal: #{breakfast.calories} - Availability: #{breakfast.availability}"
		end
	end

	def menu
		input = nil
		while input != "exit"
			puts "Enter the item number you want more info on or type list to see the menu list again, or type exit:"
			input = gets.strip.downcase

			if input.to_i > 0
				breakfast =  @breakfasts[input.to_i - 1]
				#TODO format this more clearly
				puts "\n #{breakfast.name} \n - Description: #{breakfast.desc} \n - Cal: #{breakfast.calories} \n - Allergy Information: #{breakfast.allergy} \n - Availability: #{breakfast.availability}"
			elsif input == "list"
				list_items
			else
				puts "Not sure what you want!"
			end
		end
	end

	def goodbye
		puts "See you tomorrow for your most important meal of the day!"
	end
end