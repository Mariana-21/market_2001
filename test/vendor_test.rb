require './lib/vendor'
require './lib/item'
require 'minitest/autorun'
require 'minitest/pride'

class VendorTest < Minitest::Test

  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_instance_of Vendor, vendor
  end

  def test_it_has_attributes
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal "Rocky Mountain Fresh", vendor.name
    assert_equal ({}), vendor.inventory
  end

  def test_it_can_check_and_add_stock
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    assert_equal ({}), vendor.inventory

    vendor.add_item(item1)
    vendor.add_item(item2)

    vendor.check_stock(item1)
    vendor.stock(item1, 30)

    assert_equal ({item1 => 30}), vendor.inventory

    vendor.check_stock(item1)
    vendor.stock(item1, 25)
    vendor.stock(item2, 12)

    assert_equal ({item1 => 55, item2 => 12}), vendor.inventory

  end
end
