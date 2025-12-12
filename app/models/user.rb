class User < ApplicationRecord
  has_secure_password

  before_save { self.email = email.downcase }

  validates :nickname, presence: true

  validates :email, presence: true, uniqueness: true

  validates :password, length: { minimum: 8 }, allow_nil: true
end
