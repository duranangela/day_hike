require 'rails_helper'

describe 'visitor sees trips show page' do
  it 'sees show page for individual trip' do
    trip1 = Trip.create(name: 'hike1', start_date: "8/20/18", end_date: "8/20/18")
    trail1 = trip1.trails.create(length: 4, name: 'trail1', address: 'mountains')
    trail2 = trip1.trails.create(length: 6, name: 'trail2', address: 'river')
    total_length = 10
    avg_distance = 5
    max_distance = 6

    visit trips_path

    click_on trip1.name

    expect(current_path).to eq(trip_path(trip1))
    expect(page).to have_content(trail1.name)
    expect(page).to have_content(trail1.address)
    expect(page).to have_content(trail1.length)
    expect(page).to have_content(trail2.name)
    expect(page).to have_content(trail2.address)
    expect(page).to have_content(trail2.length)

    expect(page).to have_content(total_length)
    expect(page).to have_content(avg_distance)
    expect(page).to have_content(max_distance)
  end
end
