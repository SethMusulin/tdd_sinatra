require 'spec_helper'
require 'capybara/rspec'

require_relative '../app'

Capybara.app = App


feature "Manage Items" do
  scenario "Managing Items List" do
    visit '/'
    expect(page).to have_title("Awesome Foods")
    click_link("List of Items")
    click_link("Add New Item")
    expect(page).to have_content("Add Item Here")
    fill_in "item_name", with: "Cheeseburger"
    click_on "Create Item"
    expect(page).to have_content("Cheeseburger")
    click_link("Show Item")
    expect(page).to have_content("Cheeseburger")


  end
end