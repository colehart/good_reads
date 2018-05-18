require 'rails_helper'

describe BookUser, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:rating) }
    it { should validate_presence_of(:review) }
  end
  describe 'relationships' do
    it { should belong_to(:book) }
    it { should belong_to(:user) }
  end
end
