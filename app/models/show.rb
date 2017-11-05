class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    show = self.where("rating = ?", Show.maximum(:rating))

    show[0] # becasue where returns result as array
  end
  def self.lowest_rating
    self.minimum(:rating)
  end
  def self.least_popular_show
    show = self.where("rating = ?", Show.minimum(:rating))

    show[0] # becasue where returns result as array
  end
  def self.ratings_sum
  end
  def self.popular_shows
  end
  def self.shows_by_alphabetical_order
  end
end
