require 'rails_helper'

describe 'visitor sees trips index' do
  it 'sees index with trip names' do
    trip1 = Trip.create(name: 'hike1', start_date: "8/20/18", end_date: "8/20/18")
    trip2 = Trip.create(name: 'hike2', start_date: "8/21/18", end_date: "8/21/18")

    visit trips_path

    expect(page).to have_content(trip1.name)
    expect(page).to have_content(trip2.name)
  end
end
