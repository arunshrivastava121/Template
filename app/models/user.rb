class User < ApplicationRecord
  validates :first, presence: true
  validates :last, presence: true
  validates :email, presence: true
end
