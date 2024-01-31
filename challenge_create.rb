require_relative 'ar.rb';

newProd = Product.new
beverages = Category.where(:name=>'Beverages').first
newProd.name = 'prod1'
newProd.price = 10
newProd.description = 'description 1'
newProd.stock_quantity = 4
newProd.category = beverages;

newProd.save

puts newProd.inspect

newProd2 = Product.create( name:  "prod2",
                        price: 10,
                        description:  "description 2" ,
                        stock_quantity:6,
                        category:beverages)

puts newProd2.inspect

newProd3 = Product.new( name:  "prod3",
                        price: 100,
                        description:  "description 3" ,
                        stock_quantity:99,
                        category:beverages)
newProd3.save

puts newProd3.inspect

err1 = Product.new( name:  "pr",
                        price: 100,
                        description:  "description 3" ,
                        stock_quantity:99,
                        category:beverages)
err1.save

puts err1.inspect

err2 = Product.new( name:  "prod 4",
                        price: 100,
                        description:  "description 3" ,
                        )
err2.save

puts err2.inspect