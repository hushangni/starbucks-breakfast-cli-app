https://www.starbucks.com/menu/catalog/product?food=hot-breakfast#view_control=product
starbucks-breakfast-cli-app

user types starbucks-breakfast

Shows list of items
1. Bacon Gouda & Egg Breakfast Sandwich
2. Certified Gluten-Free Breakfast Sandwich

Which Item would you like more information on?
types: Certified Gluten-Free Breakfast Sandwich

Show more info:
Certified Gluten-Free Breakfast Sandwich
Allergy Info:
Calories:
Ingredients:


We want an executable, that goes in bin.
So we can run ./bin/starbucks-breakfast for the program to start interacting with the user. 

The file people are running is ./bin/starbucks-breakfast
It creates a new controller of our CLI. Then it goes to our cli.rb class to interact with command line. 


What is a starbucks breakfast item. 
- has a name
- has an url

In the breakfast item itself.
- has a name
- has a description
- has allergy information
- has nutrition facts per serving (amount of g)
- has calories
- has ingredients
- has availability

Scraping Notes:
go into irb
require 'open-uri'
require 'nokogiri'
open('url')
document = _ (underscore sets it to the thing that was just returned)
content = document.read
parsed_content = Nokogiri::HTML(content)
parsed_content.css('')


