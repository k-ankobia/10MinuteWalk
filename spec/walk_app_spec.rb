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
  end
end