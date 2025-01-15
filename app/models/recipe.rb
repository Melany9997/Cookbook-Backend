class Recipe < ApplicationRecord
  has_many :bookmarks

  validates :name, uniqueness: true
  validates :description, presence: true
  validates :rating, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end
