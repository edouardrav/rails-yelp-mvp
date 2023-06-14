class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: { message: "can't be blank" }
  validates :address, presence: { message: "can't be blank" }
  validates :category, presence: { message: "can't be blank" }
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], message: "doesn't exist"}
end
