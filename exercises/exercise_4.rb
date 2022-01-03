require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


Store.create(
  name: 'Surrey',
  annual_revenue: 224000,
  womens_apparel: true,
  mens_apparel: false
)

Store.create(
  name: 'Whistler',
  annual_revenue: 1900000,
  womens_apparel: false,
  mens_apparel: true
)

Store.create(
  name: 'Yaletown',
  annual_revenue: 430000,
  womens_apparel: true,
  mens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true)
puts "Mens stores"
@mens_stores.each { |store| puts "#{store.name} #{store.annual_revenue}" }

@womens_stores = Store.where('womens_apparel = true AND annual_revenue < 1000000').order('annual_revenue')
puts "Womens Stores with revenue less than $1M"
@womens_stores.each { |store| puts "#{store.name} #{store.annual_revenue}" }