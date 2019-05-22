class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validates :user, uniqueness: {scope: :course}
end
