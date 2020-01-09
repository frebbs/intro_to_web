feature "Attacking a player" do
  scenario "Player 1 attacks player 2" do
    visit_site
    click_button 'Attack'
    expect(page).to have_content "Dave attacked Kittens"
  end

  scenario "reduce player health by 5, to 75" do
    visit_site
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Kittens: 80 Health'
    expect(page).to have_content 'Kittens: 75 Health'
  end

  scenario 'be attacked by Player 2' do
    visit_site
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Kittens attacked Dave'
  end

  scenario 'reduce Player 1 HP by 5' do
    visit_site
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Dave: 80 Health'
    expect(page).to have_content 'Dave: 75 Health'
  end
end
