class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def add_item(item)
    @inventory[item]
  end

  def stock(item, amount)
    # require "pry"; binding.pry
    @inventory[item] += amount
  end
end
