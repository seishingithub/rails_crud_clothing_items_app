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

    click_on 'skirt'

    expect(page).to have_content 'skirt'
    expect(page).to have_content 'cotton'
    expect(page).to have_content 'blue'

    click_on 'Edit'
    fill_in 'clothing_item[clothing_type]', with: 'skort'
    fill_in 'clothing_item[clothing_material]', with: 'polyester'
    fill_in 'clothing_item[clothing_color]', with: 'green'

    click_on 'Update Clothing'

    expect(page).to have_no_content 'skirt'
    expect(page).to have_no_content 'cotton'
    expect(page).to have_no_content 'blue'

    expect(page).to have_content 'skort'
    expect(page).to have_content 'polyester'
    expect(page).to have_content 'green'

    click_on 'Delete Item'
    expect(page).to have_no_content 'skort'
    expect(page).to have_no_content 'polyester'
    expect(page).to have_no_content 'green'

  end
end