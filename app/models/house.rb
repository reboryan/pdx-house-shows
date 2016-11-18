class House < ApplicationRecord
	belongs_to :user
	has_one :address
	has_many :events
end
