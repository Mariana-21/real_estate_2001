require './lib/room'
require './lib/house'
require 'minitest/autorun'
require 'minitest/pride'

class HouseTest < Minitest::Test

  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_has_attributes
    house = House.new("$400000", "123 sugar lane")
    assert_equal "$400000", house.price
    assert_equal "123 sugar lane", house.address
    assert_equal [], house.rooms
  end

  def test_rooms_can_be_added
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')

    house.add_room(room_1)
    house.add_room(room_2)

    assert_equal [room_1, room_2], house.rooms
  end

  def test_its_above_market_average
    house = House.new("$400000", "123 sugar lane")
    assert_equal false, house.above_market_average?
  end
end
