class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :rating numericality: {is_between: (1..5)}
  # pseudo code from memory would have looked up but lost internet for 20 minutes
end
