require 'rspec'
require 'pry'
require_relative "../vendor.rb"

RSpec.describe Vendor do
  vendor_1 = Vendor.new('candy','2')
  vendor_2 = Vendor.new('bread','3')
  vendor_3 = Vendor.new('jeans','tons')
  vendor_4 = Vendor.new('bike','hey')

  describe ".item" do
    it "should be set to an item name input by user" do
      expect(vendor_1.item).to eq('candy')
      expect(vendor_2.item).to eq('bread')
    end
    it "should be set to 'string' datatype" do
      expect(vendor_1.item.class).to eq(String)
    end
    it "should not be set to number" do
      expect(vendor_1.item.class).not_to eq(Integer)
    end
  end

  describe ".item_qty" do
    it "should be set to 'Integer' datatype" do
      expect(vendor_1.item_qty.class).to eq(Integer)
      expect(vendor_2.item_qty.class).to eq(Integer)
    end
    it "should not be set to 'String' datatype" do
      expect(vendor_1.item_qty.class).not_to eq(String)
      expect(vendor_2.item_qty.class).not_to eq(String)
    end
    it "should be set to item quantity input by user" do
      expect(vendor_1.item_qty).to eq(2)
      expect(vendor_2.item_qty).to eq(3)
    end
    it "should return random number from 1-15 when input is 'tons'" do
      200.times do
        expect(vendor_3.item_qty).to be_between(1,15).inclusive
      end
    end
  end

  err_msg = "Invalid input, please enter number or phrase that contain 'tons'\n"
  describe ".despense" do
    it "should despense .item .item_qty times" do
      expect{vendor_1.despense}.to output("candy\ncandy\n").to_stdout
      expect{vendor_2.despense}.to output("bread\nbread\nbread\n").to_stdout
      expect{vendor_3.despense}.to output("jeans\n" * vendor_3.item_qty).to_stdout
    end
    it "should output string" do
      expect{vendor_3.despense.class}.to output(String).to_stdout
    end
    it "should print out 'Invalid, input' error" do
      expect{vendor_4.despense}.to output(err_msg).to_stdout
    end
  end
end
