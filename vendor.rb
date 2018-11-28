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
      puts "Invalid input, please enter number or phrase that contains 'tons'"
    end
  end

  def despense
    raise_err

    @item_qty.times do
      puts @item
    end
  end
end
