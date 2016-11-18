class Event < ApplicationRecord
	has_and_belongs_to_many :artists
	belongs_to :house, counter_cache: true
end
