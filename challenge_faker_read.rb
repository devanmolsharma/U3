require_relative 'ar.rb'

# Find all the categories in the database (including those that you added using Faker). 
cats = Category.all

# Display all category names and their associated products (name and price) in a nicely formatted list
cats.each do |cat|
print "-----------------#{cat.name}-----------------\n"
cat.products.each do |prod|
print "#{prod.name} sells for #{prod.price}\n"
end
end