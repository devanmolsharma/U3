class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  #<Product id: 155, name: "Chai", description: "10 boxes x 30 bags", price: 0.18e2, stock_quantity: 39, category_id: 1, created_at: "2011-11-18 04:48:44.959733000 +0000", updated_at: "2011-11-18 04:48:44.959733000 +0000">

  validates :name,:description,:price,:stock_quantity,:category, presence: true
  validates :name,uniqueness: true , length: { minimum: 5 }

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category
end