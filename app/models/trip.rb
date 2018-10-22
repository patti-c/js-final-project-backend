class Trip < ApplicationRecord
  belongs_to :user
  validates :destination, presence: true
  validates :origin, presence: true
end
