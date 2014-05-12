require 'spec_helper'

feature "Managing clothing items" do
  scenario "User can create clothing items" do
    visit '/'

    click_on 'Add New Clothing Item'
    fill_in 'Clothing Type', with: 'skirt'
    fill_in 'Clothing Material', with: 'cotton'
    fill_in 'Clothing Color', with: 'blue'

    click_on 'Create Clothing Item'

    expect(page).to have_content 'skirt'
    expect(page).to have_content 'cotton'
    expect(page).to have_content 'blue'
  end
end