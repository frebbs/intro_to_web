feature 'Game Over' do
  context 'when player 1 reaches 0 health first' do
    before do
      visit_site
      attack_then_ok
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'Player 1 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Dave loses!'
    end
  end
end


