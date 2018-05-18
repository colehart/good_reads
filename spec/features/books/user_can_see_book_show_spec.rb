# spec/features/ books :show test
require 'rails_helper'

describe 'user sees one book' do
  it 'shows one book and a list of reviews' do
    user1 = User.create!('Ted Burnham')
    book1 = Book.create!(title: 'Moby Dick')
    review1 = user1.reviews.create!(description: 'So good.',
                                    rating: 1,
                                    book_id: book1)

    visit book_path(book1)

    expect(page).to have_content(book1.title)
  end
end
