require 'nokogiri'
require 'open-uri'
require_relative './breakfast.rb'

class Scraper

	def self.scrape_menu_page(menu_url)
		#Open Document
		doc = Nokogiri::HTML(open(menu_url))

		#name - doc.css(".food ol li a")[0].text.strip
		#item_url - doc.css(".food ol li a")[0]["href"] need "https://www.starbucks.com" + /menu/food/hot-breakfast/bacon-gouda-breakfast-sandwich?foodZone=9999 

		items = []

		doc.css(".food ol li a").each do |breakfast|
			item = Hash.new
			item[:name] = breakfast.text.strip
			item[:item_url] = "https://www.starbucks.com" + breakfast["href"]
			items << item
		end

		items
	end

	def self.scrape_item_page(item_url)
		#Open Document
		doc = Nokogiri::HTML(open(item_url))

		#name - doc.css(".fields h1").text
		#desc - doc.css(".size2of3 h2").text
		#allergy - doc.css(".facts .other_details .allergy p").text
		#calories - doc.css(".facts .nutrition tr td").first.children[1].text.strip TEST THIS WITH OTHER PAGES
		#availability - doc.css(".fields #available strong").text.strip

		scraped_item = Hash.new

		scraped_item[:name] = doc.css(".fields h1").text
		scraped_item[:desc] = doc.css(".size2of3 h2").text
		scraped_item[:allergy] = doc.css(".facts .other_details .allergy p").text
		scraped_item[:calories] =  doc.css(".facts .nutrition tr td").first.children[1].text.strip
		scraped_item[:availability] = doc.css(".fields #available strong").text.strip

		scraped_item
	end

end
