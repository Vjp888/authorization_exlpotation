require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do

  it 'should let a user enter their information' do

    visit(new_user_path)

    fill_in 'Full name', with: "Steve Jobs"
    fill_in 'Email', with: "1234@4321.com"
    fill_in 'Password', with: "password"
    click_button 'Register'

    expect(User.all.first.full_name).to eq("Steve Jobs")
  end

end
