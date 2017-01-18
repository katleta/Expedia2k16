class User < ActiveRecord::Base
  has_secure_password
  validates :username, :email, :password, presence: true
  validates :password, length: { in: 6..20 }
  validates :password, confirmation: true 
end
