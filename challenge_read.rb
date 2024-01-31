require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

filtered_count = Product.where('name LIKE "C%" and price > 10').count;

puts "There are #{filtered_count} products above $10 with names that begin with the letter C in the table."

low_stock_count = Product.where('stock_quantity < 5').count;

puts "There are #{low_stock_count} products low in stock."

