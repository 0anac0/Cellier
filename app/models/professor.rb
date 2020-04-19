class Professor < ApplicationRecord
  has_many :recipes, dependent: :destroy

  #belongs_to :user

  validates :name, presence: true
end
