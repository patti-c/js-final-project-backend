class User < ApplicationRecord
  has_many :trips
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
