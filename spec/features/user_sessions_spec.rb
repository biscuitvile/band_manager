require 'acceptance_helper'

feature "User sessions" do

  before { create :user, email: 'joe@example.com', password: 'password' }

  scenario "User signs in" do
    visit "/"
    expect(current_path).to eql "/login"
    fill_in "Email", with: 'joe@example.com'
    fill_in "Password", with: 'password'
    click_button "Sign in"
    expect(current_path).to eql "/"
    expect(page).to have_content "Dashboard"
  end

end
