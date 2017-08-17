class Product < ApplicationRecord
  include PublicActivity::Model
  tracked

  validates :name, :price, presence: true

  has_many :comments
end
