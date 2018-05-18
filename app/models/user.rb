class User < ApplicationRecord
  validates_presence_of :name
  has_many :book_users
  has_many :books, through: :book_users
end
