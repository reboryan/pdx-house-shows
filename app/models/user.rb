class User < ApplicationRecord
	has_one :house
	has_many :events
end
