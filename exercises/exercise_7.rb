require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# cases that should fail
@employee1 = @store2.employees.create(first_name: "Daffy", last_name: "Duck", hourly_rate: "Duck")
puts @employee1.errors.full_messages
@employee2 = @store2.employees.create(first_name: "Daffy", hourly_rate: 50)
puts @employee2.errors.full_messages
@employee3 = @store2.employees.create(last_name: "Duck", hourly_rate: 50)
puts @employee3.errors.full_messages

@store3 = Store.create(name: "Bo", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
puts @store3.errors.full_messages
@store4 = Store.create(name: "Bobs", annual_revenue: -20, mens_apparel: true, womens_apparel: true)
puts @store4.errors.full_messages
@store5 = Store.create(name: "Bobs", annual_revenue: 20000, mens_apparel: false, womens_apparel: false)
puts @store5.errors.full_messages