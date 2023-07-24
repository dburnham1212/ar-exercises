require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
#Surrey (annual_revenue of 224000, carries women's apparel only)
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
#Whistler (annual_revenue of 1900000 carries men's apparel only)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
#Yaletown (annual_revenue of 430000 carries men's and women's apparel)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

def display_stores(stores)
  for store in stores do
    puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
  end
end

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

display_stores(@mens_stores)

@womens_stores_over_one_mill = Store.where(womens_apparel: true, mens_apparel: false, annual_revenue: ..1000000 )

display_stores(@womens_stores_over_one_mill)