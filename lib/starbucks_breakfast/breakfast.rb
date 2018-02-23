class StarbucksBreakfast::Breakfast

	attr_accessor :name, :item_url, :desc, :allergy, :availability, :calories
	
	@@all = []

	def initialize(item_hash)
		# Scrape the menu page
		item_hash.each{|key, value| self.send(("#{key}="), value)}
		@@all <<self
	end

	def self.create_from_collection(items_array)
		# Create Breakfast objects from item array
		items_array.each do |item|
			self.new(item)
		end
	end

	def add_item_attributes(attributes_hash)
		# Add attributes to each menu item using the array created from scraper class
		attributes_hash.each{|key, value| self.send(("#{key}="), value)}
		self
	end

	def self.all
		@@all
	end

end