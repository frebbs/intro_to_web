feature "Enter player names" do
  scenario 'Allow players to Submit names' do
    visit_site
    expect(page).to have_content 'Dave vs. Kittens'
  end
end

feature "View player hit points" do
  scenario "player 1 hit point value" do
    visit_site
    expect(page).to have_content 'Dave: 80 Health'
  end
  scenario "player 2 hit point value" do
    visit_site
    expect(page).to have_content 'Kittens: 80 Health'
  end
end
