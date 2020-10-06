class User < ApplicationRecord
  attr_accessor :password_confirmation
  authenticates_with_sorcery!
  validates :email, uniqueness: { case_sensitive: true }, presence: true
  validates :password, presence: true
end
