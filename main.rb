require_relative './vendor.rb'

puts "Hello, I'm the first and only Talking Vending Machine."
puts "What would you like today?"
print "> "
item = gets.chomp
puts "How many of those would you like?"
print "> "
item_qty = gets.chomp

vendor = Vendor.new(item, item_qty)

vendor.despense

puts "There you go! Come again!"
