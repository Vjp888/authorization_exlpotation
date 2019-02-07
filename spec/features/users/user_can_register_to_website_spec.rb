require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do

  it 'should let a user enter their information' do

    visit(new_user_path)

    fill_in 'Name', with: "Steve Jobs"
    fill_in 'E-Mail', with: "1234@4321.com"
    fill_in 'Password', with: "password"
    click_button 'Register'

    expect(current_path).to eq(root_path)
  end
end
