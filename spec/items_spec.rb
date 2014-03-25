require 'spec_helper'
require 'capybara/rspec'


require_relative '../app'



Capybara.app = App


feature "Manage Items" do
  scenario "Managing Items List" do
    visit '/'
    expect(page).to have_title("Awesome Foods")
    expect(page).to have_content("List of Items")
    click_link "New Item"
    expect(page).to have_title("Awesome Foods New Item Form")
    page.fill_in "item_name", :with => "Gyros with Tatziki"



  end
end


#page.fill_in 'item_name', :with => 'Channa Masala'