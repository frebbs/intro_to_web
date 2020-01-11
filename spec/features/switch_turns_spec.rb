
feature 'Start game' do
  scenario 'with player 1' do
    visit_site
    expect(page).to have_content "It is currently Dave's turn"
  end

  scenario 'after player 1 attacks' do
    visit_site
    attack_then_ok
    expect(page).not_to have_content "Dave's turn"
    expect(page).to have_content "It is currently Kittens's turn"
  end
end
