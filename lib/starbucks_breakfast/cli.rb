# Our cli controler
require_relative "./scraper.rb"
require_relative "breakfast.rb"
require "pry"

class StarbucksBreakfast::CLI

	BASE_PATH = "https://www.starbucks.com/menu/catalog/product?food=hot-breakfast#view_control=product"

	def call 
		make_items
		add_attributes_to_items
		list_items
		menu
	end

	def make_items
		items_array = Scraper.scrape_menu_page(BASE_PATH)
		StarbucksBreakfast::Breakfast.create_from_collection(items_array)
	end

	def add_attributes_to_items
		StarbucksBreakfast::Breakfast.all.each do |breakfast|
			attributes = Scraper.scrape_item_page(breakfast.item_url)
			breakfast.add_item_attributes(attributes)
		end
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

			if (input.to_i > 0) && (input.to_i <= StarbucksBreakfast::Breakfast.all.length)
				breakfast =  @breakfasts[input.to_i - 1]
				puts "\n #{breakfast.name} \n - Description: #{breakfast.desc} \n - Cal: #{breakfast.calories} \n - Allergy Information: #{breakfast.allergy} \n - Availability: #{breakfast.availability}"
			elsif input == "list"
				list_items
			elsif input == "exit"
				goodbye
			else
				puts "Not sure what you want!"
			end
		end
	end

	def goodbye
		puts "See you tomorrow for your most important meal of the day!"
	end
end