class Comment < ApplicationRecord
  include PublicActivity::Model
  tracked

end
