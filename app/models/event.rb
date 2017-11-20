class Event < ApplicationRecord

  belongs_to :artist, optional: true
  belongs_to :venue, optional: true
  has_many :images

end
