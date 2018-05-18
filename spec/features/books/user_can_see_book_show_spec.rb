# spec/features/ books :show test
require 'rails_helper'

describe 'user sees one book' do
  it 'shows one book and a list of reviews' do
    user1 = User.create!('Ted Burnham')
    book1 = Book.create!(title: 'Moby Dick')
    review1 = user1.reviews.create!(description: 'So good.',
                                    rating: 1,
                                    book_id: book1)

    visit course_path(book1)

    expect(page).to have_content(book1.title)
  end

  # it 'shows all students' do
  #   course1 = Course.create!(title: 'English 101')
  #   student1 = course1.students.create!(name: 'Alan Turing')
  #   student2 = course1.students.create!(name: 'Judson Stevens')
  #
  #   visit course_path(course1)
  #
  #   expect(page).to have_content(student1.name)
  #   expect(page).to have_content(student2.name)
  # end
end
