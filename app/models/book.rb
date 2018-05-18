class Book < ApplicationRecord
  validates_presence_of :title
  has_many :book_users
  has_many :users, through: :book_users
end
