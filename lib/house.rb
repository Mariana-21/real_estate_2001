class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @above_market_average = false
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    @above_market_average
  end
end
