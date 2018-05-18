class BookUser < ApplicationRecord
  validates_presence_of :review, :rating
  belongs_to :book
  belongs_to :user
end
