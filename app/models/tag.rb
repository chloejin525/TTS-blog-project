class Tag < ApplicationRecord
	has_many :tagnames
	has_many :posts, through: :tagnames
end
