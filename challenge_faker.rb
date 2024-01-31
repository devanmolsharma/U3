require_relative 'ar.rb'
Faker::Food.unique.clear
10.times do
    new_cat = Category.create(name:Faker::Food.unique.ethnic_category)
    10.times do
        new_prod = new_cat.products.build(name:Faker::Alphanumeric.alpha(number: 10),description:Faker::Alphanumeric.alpha(number: 10),stock_quantity:rand(100),price:rand(50))
        new_prod.save
    end
end