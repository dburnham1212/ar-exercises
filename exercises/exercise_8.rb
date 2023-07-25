require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

@employee4 = @store2.employees.create(first_name: "Huey", last_name: "Duck", hourly_rate: 50)
puts "Employee 4 password: #{@employee4.password}"