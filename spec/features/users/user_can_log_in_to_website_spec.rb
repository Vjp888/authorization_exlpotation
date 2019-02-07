require 'rails_helper'

RSpec.describe 'as a visitor', type: :feature do

  it 'should let a user log in with credentials' do
    User.create(full_name: "Steve Jobs", email: "1234@4321.com", password: "password")

    visit(new_session_path)

    fill_in 'Email', with: '1234@4321.com'
    fill_in 'Password', with: 'password'
    # save_and_open_page
    click_button 'Login'

    expect(current_path).to eq(session_path(:id))
  end
end
