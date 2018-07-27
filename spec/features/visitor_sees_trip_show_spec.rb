require 'rails_helper'

describe 'visitor sees trips show page' do
  it 'sees show page for individual trip' do
    trip1 = Trip.create(name: 'hike1', start_date: "8/20/18", end_date: "8/20/18")
    trip2 = Trip.create(name: 'hike2', start_date: "8/21/18", end_date: "8/21/18")

    visit trips_path

    click_on trip1.name

    expect(current_path).to eq(trip_path(trip1))
  end
end
