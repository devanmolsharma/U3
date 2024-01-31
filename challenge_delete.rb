require_relative 'ar.rb'
# Find one of the products you created in challenge_create.rb and delete it from the database.

myProd = Product.where(:name => "prod1")[0];
myProd.destroy  unless myProd.nil?