require 'rails_helper'

feature 'Visitor view premium companies' do
  scenario 'successfully' do

    company = create(:company)
    category = create(:category)
    jobs = create_list(:job,5,company: company)

    visit root_path

    click_on company.name

    expect(page).to have_css('h1', text: company.name)
    expect(page).to have_xpath("//img[contains(@src,'estrela')]")
  end
end
