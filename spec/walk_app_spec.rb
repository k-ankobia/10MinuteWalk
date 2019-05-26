# frozen_string_literal: true
require 'walk_app'

RSpec.describe Walk do
  context '#calculate_time' do
    it ' returns false when a user takes longer than 10 mins ' do 
      direction = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w','w']
      walk = Walk.new
      expect(walk.calculate_time(direction)).to eq false
    end

    it 'returns false when a user takes less than 10 mins ' do 
      direction = ['w', 's', 'e', 'e', 'n', 'n']
      walk = Walk.new
      expect(walk.calculate_time(direction)).to eq false
    end


  end
end