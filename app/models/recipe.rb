class Recipe < ApplicationRecord
  belongs_to :user
  #belongs_to :professor
  validates :name, presence: true
end
