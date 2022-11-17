require 'rails_helper'

RSpec.describe 'Creating a group', type: :feature do
  scenario 'valid inputs' do
    visit new_group_path
    fill_in 'Name', with: 'Minneapolis'
    fill_in 'Icon', with: 'www.test.com'
    click_on 'Create Group'
    expect(page).to have_content('Minneapolis')
  end

  scenario 'invalid inputs' do
    visit new_group_path
    fill_in 'Name', with: ''
    click_on 'Create Group'
    expect(page).to have_content("Name can't be blank")
  end
end
