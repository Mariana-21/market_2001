require './lib/item'
require 'minitest/autorun'
require 'minitest/pride'

class ItemTest < Minitest::Test

  def test_it_exists
    item = Item.new({name: 'Peach', price: "$0.75"})

    assert_instance_of Item, item
  end
end
