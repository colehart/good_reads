require 'rails_helper'

describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
  # describe 'relationships' do
  #   it { should have_many(:book_users) }
  # end
end
