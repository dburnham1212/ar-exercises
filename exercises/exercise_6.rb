require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Donald", last_name: "Duck", hourly_rate: 30)
@store1.employees.create(first_name: "Adam", last_name: "Sandler", hourly_rate: 40)
@store1.employees.create(first_name: "David", last_name: "Spade", hourly_rate: 45)
@store1.employees.create(first_name: "Rob", last_name: "Schnieder", hourly_rate: 55)
@store2.employees.create(first_name: "Mickey", last_name: "Mouse", hourly_rate: 40)
@store2.employees.create(first_name: "Minnie", last_name: "Mouse", hourly_rate: 25)
@store2.employees.create(first_name: "Bugs", last_name: "Bunny", hourly_rate: 25)
@store2.employees.create(first_name: "Lola", last_name: "Bunny", hourly_rate: 20)
@store2.employees.create(first_name: "Daffy", last_name: "Duck", hourly_rate: 25)
