require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total revenue for all stores: #{Store.sum(:annual_revenue)}"
puts "Average revenue for all stores: #{Store.average(:annual_revenue)}"

puts "Total stores generating $1M or more #{Store.where(annual_revenue: 1000000..).size}"