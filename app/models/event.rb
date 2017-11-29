class Event < ApplicationRecord
  paginates_per 12

  belongs_to :artist, optional: true
  belongs_to :venue, optional: true
  has_many :images
  has_many :genres, through: :artist
  belongs_to :user, optional: true


  scope :random_event, -> { order("RANDOM()") }


  def pretty_date
    Time.at(self.date).strftime('%A, %B %d, %Y')
  end

  def pretty_time
    Time.at(self.date.to_i).strftime('%I:%M %p')
  end

end
