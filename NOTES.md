https://www.starbucks.com/promo/food
starbucks-breakfast-cli-app

user types starbucks-breakfast

Shows list of items
- Bacon Gouda & Egg Breakfast Sandwich
- Certified Gluten-Free Breakfast Sandwich

Which Item would you like more information on?
types: Certified Gluten-Free Breakfast Sandwich

Show more info:
Certified Gluten-Free Breakfast Sandwich
Allergy Info:
Calories:
Ingredients:


We want an executable, that goes in bin.
In bin create a file named "starbucks-breakfast"
Put (
#!/usr/bin/env ruby

puts "hello world!"
)

in it as a test. 

In main directory run ruby bin/starbucks-breakfast
See if hello world prints as test. 

Then go into bin ls-lah, see you only have read and write permissions for starbucks-breakfast

chmod +x starbucks-breakfast (add executable permission for that file)

Now type ./starbucks-breakfast in bin directory see it prints. 

In bin/starbucks-breakfast, we dont want logic in here, we wanna encapsulate the logic. So keep it simple. 

We want in the file.
StarbucksBreakfast::CLI.new.call
We want a class called cli in the starbucks-breakfast folder. 


