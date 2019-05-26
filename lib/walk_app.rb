# frozen_string_literal: true

class Walk
  attr_reader :x_coordinate, :y_coordinate

  CORD = {
    'n' => 1,
    's' => -1,
    'e' => 1,
    'w' => -1
  }.freeze

  def initialize(x_coordinate = 0, y_coordinate = 0)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
  end

  def ten_minute_walk(direction)
    if direction.length != 10 
      false 
    elsif @x_coordinate != 0 || @y_coordinate != 0 
      false 
    else 
      true
    end
  end

  def coordiantes(arr)
    arr.each do |x|
      if x == 'n' || x == 'e'
        @x_coordinate += 1
      elsif
        x == 's' || x == 'w'
        @y_coordinate -= 1
      end
    end
  end
end
