require 'capybara/rspec'
require 'rspec/core'
require_relative '../app'

Capybara.app = App

feature "User can add a product to the homeage" do
  scenario "User can add new product to the homepage" do

    visit '/'
    expect(page).to have_content "Welcome"

    click_on "Add a Product"
    fill_in 'new_product', with: "ring"
    click_on "Create Product"

    expect(page).to have_content "ring"

  end
end