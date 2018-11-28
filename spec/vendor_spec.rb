require 'rspec'
require 'pry'
require_relative "../vendor.rb"

RSpec.describe Vendor do
  vendor = Vendor.new('candy',10)
  describe ".item" do
    it "should be set to item name prompted by user" do
      expect(vendor.item).to eq(candy)
    end
  end
  describe ".item_qty" do
    it "should be set to item quaity prompted by user" do
      expect(vendor.item_qty).to eq(10)
    end
  end
end
