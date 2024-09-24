require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it 'must have an email' do
      user = User.new(email: nil)
      expect(user).to_not be_valid
    end
  end
end
