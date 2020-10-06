class User < ApplicationRecord
  attr_accessor :password_confirmation
  authenticates_with_sorcery!
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
end
