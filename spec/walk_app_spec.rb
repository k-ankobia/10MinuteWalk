# frozen_string_literal: true

require 'walk_app'

RSpec.describe Walk do
  context '#ten_minute_walk' do
    let(:app) { Walk.new }
    it ' returns false when a user takes longer than 10 mins ' do
      direction = %w[w s e e n n e s w w w]
      expect(app.ten_minute_walk(direction)).to eq false
    end

    it 'returns false when a user takes less than 10 mins ' do
      direction = %w[w s e e n n]
      expect(app.ten_minute_walk(direction)).to eq false
    end

    it 'returns true when a user takes arrives to starting position ' do
      direction = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']
      expect(app.ten_minute_walk(direction)).to eq true
    end

  end

  context '#coordinates' do
    let(:app) { Walk.new }

    it 'initialise the app with values of zero for x and y cordinates' do
      expect(app.x_coordinate).to eq 0
      expect(app.y_coordinate).to eq 0
    end

    it 'adds 1 to the x, y coordinate for values of n or e' do
      expect { app.coordiantes(['n']) }.to change { app.x_coordinate }.by(1)
      expect { app.coordiantes(['e']) }.to change { app.x_coordinate }.by(1)
    end

    it 'adds -1 to the x, y coordinate for values of s or w' do
      expect { app.coordiantes(['s']) }.to change { app.y_coordinate }.by(-1)
      expect { app.coordiantes(['w']) }.to change { app.y_coordinate }.by(-1)
    end
  end
end
