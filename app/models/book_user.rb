class BookUser < ApplicationRecord
  validates_presence_of :review, :rating

end
