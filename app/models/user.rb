class User < ApplicationRecord
  validates :name, :dob, :email, :phone_number, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, uniqueness: true

  has_many :posts, foreign_key: 'user_id'
end