require 'spec_helper'
require 'capybara/rspec'

require_relative '../app'

Capybara.app = App


feature "Manage Items" do
  scenario "Managing Items List" do
    visit '/'
    expect(page).to have_title("Awesome Foods")
    expect(page).to have_content("List of Items")


  end
end