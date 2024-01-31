require_relative 'ar.rb';

# Find all products with a stock quantity greater than 40.
prods= Product.where('stock_quantity > 40');

# Add one to the stock quantity of each of these products and then save these changes to the database.
prods.each do |prod|
    prod.stock_quantity+=1;
    prod.save;
end