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
	end

	def menu
		input = nil
		while input != "exit"
			puts "Enter the item number you want more info on or type list to see the menu list again, or type exit:"
			input = gets.strip.downcase
			case input
			when "1"
				puts "More info on breakfast item 1"
			when "2"
				puts "More info on breakfast item 2"
			when "list"
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