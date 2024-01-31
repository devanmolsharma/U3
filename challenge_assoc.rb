require_relative 'ar.rb';
# Find the name of the category associated with one of the products you have found. (You should do this without referencing the products foreign key value. Use the product's "belongs to" association instead.)
cat = Product.all[0].category
# Beverages
print cat.name

# Find a specific category and use it to build and persist a new product associated with this category. (You should do this without manually setting the products foreign key. Look at the end of this example file to see how to build an ActiveRecord object by way of an "has many" association.)
newCust = cat.products.build( name:  "prod2",
price: 10,
description:  "description 2" ,
stock_quantity:6)

newCust.save

# Find a specific category and then use it to locate all the the associated products over a certain price.
MIN_PRICE = 10;
cat.products.where('price > ?',MIN_PRICE).each do |prod|
    print prod.inspect
    print
end