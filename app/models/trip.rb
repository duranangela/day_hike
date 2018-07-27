class Trip < ApplicationRecord

  has_many :trail_trips
  has_many :trails, through: :trail_trips

  def total_length
    trails.sum(:length)
  end

  def avg_distance
    trails.average(:length)
  end

  def max_distance
    trails.maximum(:length)
  end

  def min_distance
    trails.minimum(:length)
  end

end
