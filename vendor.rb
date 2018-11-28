require 'pry'

class Vendor
  attr_accessor :item, :item_qty
  def initialize(item,item_qty)
    @item = item
    @item_qty = item_qty.to_i
    if item_qty.index('tons') != nil
      @item_qty = rand(15) + 1
    elsif item_qty.to_i.class == Integer
      @item_qty = item_qty.to_i
    elsif item_qty.index('tons') == nil
      @item_qty = 0
    end
  end

  def raise_err
    if @item_qty == 0
      puts "Invalid input, please enter number or phrase that contain 'tons'"
    end
  end

  def despense
    raise_err

    @item_qty.times do
      puts @item
    end
    # binding.pry
  end
end


# puts "Hello, I'm the first and only Talking Vending Machine."
# puts "What would you like today?"
# print "> "
# item = gets.chomp
# puts "How many of those would you like?"
# print "> "
# item_qty = gets.chomp
#
# vendor = Vendor.new(item, item_qty)
#
# vendor.despense
#
# puts "There you go! Come again!"


#
# # prompting user to input shopping item
# puts "Hello, what would you like today?"
# item_name = gets.chomp
#
# # prompting user to input item quantity
# puts "How many items of #{item_name} would you like?"
# item_quantity = gets.chomp
#
# # outputing the result upon conditionals
# if item_quantity.index('tons')
#   while true do
#     rand_num = Random.rand(15)
#     rand_num.times do
#       puts item_name
#     end
#     break if rand_num == 0
#   end
#   puts "Here you go! Come to try something new next time!"
# elsif item_quantity.to_i > 0
#   item_quantity.to_i.times do
#     puts item_name
#   end
#   puts "Here you go! Come to try something new next time!"
# else
#   puts "Invalid input! Please, try again!"
# end
