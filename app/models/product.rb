class Product < ApplicationRecord
  include PublicActivity::Model
  tracked

  has_many :comments
end
