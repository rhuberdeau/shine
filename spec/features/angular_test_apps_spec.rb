require 'rails_helper'

RSpec.feature "AngularTestApps", type: :feature do
  let(:email) { "bob@example.com"}
  let(:password) { "password123"}

  before do 
    User.create!(email: email, password: password, password_confirmation: password)
  end
  scenario "Our Angular Test App is Working" do 
    visit "/angular_test"

    fill_in "Email", with: "bob@example.com"
    fill_in "Password", with: "password123"
    click_button "Log in"

    expect(page).to have_content("Name")
  end
end
