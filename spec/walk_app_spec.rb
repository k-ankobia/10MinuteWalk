# frozen_string_literal: true
require 'walk_app'

RSpec.describe Walk do
  context 'when walk != 10 mins' do
    it 'should return false when a user takes longer than 10 mins ' do 
      walk = Walk.new
      expect(walk.calculate_time).to eq false
    end
  end
end