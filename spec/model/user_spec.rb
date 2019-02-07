require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    it { should validate_presence_of :full_name}
    it { should validate_presence_of :email}
    it { should validate_presence_of :password}
  end

  describe 'class methods' do
    describe '.authenticate' do
      it 'should return a user when correct email and password are sent' do
        steve = User.create(full_name: "Steve Jobs", email: "1234@4321.com", password: "password")
        jacob = User.create(full_name: "Jacobs Fletcher", email: "Dun@nam", password: "12345")

        good_cred = User.authenticate("1234@4321.com", "password")
        bad_cred = User.authenticate("1234@4321.com", "pssword")

        expect(good_cred).to eq(steve)
        expect(bad_cred).to eq(nil)
        expect(good_cred).to_not eq(jacob)
      end
    end
  end
end
