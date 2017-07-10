class Post < ApplicationRecord
	has_many :comments
	belongs_to :user
	has_many :tagnames
	has_many :tags, through: :tagnames

	paginates_per 3
end
