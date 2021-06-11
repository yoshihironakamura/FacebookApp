class User < ApplicationRecord
  validates :email, presence: true, length: { maximum: 255 }
  validates :name,  presence: true, length: { maximum: 30 }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :blogs
end
