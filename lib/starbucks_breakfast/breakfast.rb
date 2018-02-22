class StarbucksBreakfast::Breakfast

	attr_accessor :name, :url, :desc, :allergy, :availability, :calories
	def self.all
		puts <<-DOC.gsub /^\s*/, ''
			1. Bacon Gouda & Egg Breakfast Sandwich
			2. Certified Gluten-Free Breakfast Sandwich
		DOC

		item1 = self.new
		item1.name = "Bacon Gouda & Egg Breakfast Sandwich"
		item1.url = "https://www.starbucks.com/menu/food/hot-breakfast/bacon-gouda-breakfast-sandwich?foodZone=9999"
		item1.desc = "Sizzling Applewood smoked bacon, melty aged Gouda and a parmesan frittata are layered on an artisan roll for extra smoky breakfast goodness."
		item1.allergy = "Contains: Milk, Egg, Soy, Wheat"
		item1.availability = true
		item1.calories = 370

		item2 = self.new
		item2.name = "Certified Gluten-Free Breakfast Sandwich"
		item2.url = "https://www.starbucks.com/menu/food/hot-breakfast/gluten-free-breakfast-sandwich?foodZone=9999"
		item2.desc = "Tasty cherrywood-smoked Canadian bacon, a peppered egg patty and reduced-fat white cheddar on a gluten free roll. It's all prepared in a certified gluten-free environment and sealed for your safety. We then warm it in its own oven-safe parchment bag to avoid any cross-contamination. At last, a truly delicious breakfast sandwich for our gluten-free friends."
		item2.allergy = "Contains: Milk, Egg"
		item2.availability = true
		item2.calories = 280

		[item1, item2]

	end

end