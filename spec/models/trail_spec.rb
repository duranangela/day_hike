require 'rails_helper'

describe Trail, type: :model do
  describe 'instance methods' do
    it 'should show total distance' do
      trip1 = Trip.create(name: 'hike1', start_date: "8/20/18", end_date: "8/20/18")
      trail1 = trip1.trails.create(length: 4, name: 'trail1', address: 'mountains')
      trail2 = trip1.trails.create(length: 6, name: 'trail2', address: 'river')

      result = 10

      expect(trip1.total_length).to eq(result)
    end
  end
end