class Walk 
  attr_reader :x_coordinate, :y_coordinate

  CORD = {
    'n' => 1,
    's' => -1,
    'e' => 1,
    'w' => -1
  }
  

  def initialize(x_coordinate = 0, y_coordinate = 0)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
  end

  def ten_minute_walk(direction)
    false if direction.length != 10
  end

  def coordiantes(arr)
    new_arr = arr.map{
      |val| CORD[val]
    } 
    new_arr
  end
end