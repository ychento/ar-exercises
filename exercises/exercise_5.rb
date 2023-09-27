require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total Company Revenue: $#{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue per Store: $#{average_revenue}"

high_revenue_stores_count = Store.where('annual_revenue >= ?', 1_000_000).count
puts "Number of Stores Generating $1M or More in Annual Sales: #{high_revenue_stores_count}"

