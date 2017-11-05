class CreateShows < ActiveRecord::Migrate
  def change
    create_table :shows do |s|
      s.datetime :name
      s.datetime :network
      s.datetime :day
      s.integer :rating
    end
  end
end
