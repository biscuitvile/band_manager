require 'acceptance_helper'

feature "Dashboard" do

  scenario "Visitor views dashboard" do
    visit '/'
    expect(page).to have_content 'Dashboard'
  end

end
