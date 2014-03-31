require 'capybara/rspec'
require 'rspec/core'
require_relative '../app'

Capybara.app = App

feature "User can add a task to the homeage" do
  scenario "User can visit homepage and see Welcome on the screen" do

    visit '/'
    expect(page).to have_content "Welcome"

  end
end