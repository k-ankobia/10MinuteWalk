# frozen_string_literal: true
require 'walk_app'

RSpec.describe Walk do
  context '#ten_minute_walk' do
    let(:app) {Walk.new}
    it ' returns false when a user takes longer than 10 mins ' do 
      direction = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w','w']
      expect(app.ten_minute_walk(direction)).to eq false
    end

    it 'returns false when a user takes less than 10 mins ' do 
      direction = ['w', 's', 'e', 'e', 'n', 'n']
      expect(app.ten_minute_walk(direction)).to eq false
    end

    it 'initialise the app with values of zero for x and y cordinates' do 
      expect(app.x_coordinate).to eq 0
      expect(app.y_coordinate).to eq 0
    end

    it 'assigns coordinates of 1 for n e' do 
      expect(app.coordiantes('n')).to eq 1
      expect(app.coordiantes('e')).to eq 1
    end

    it 'assigns coordinates of -1 for s w' do 
      expect(app.coordiantes('s')).to eq -1
      expect(app.coordiantes('w')).to eq -1
    end
  end
end