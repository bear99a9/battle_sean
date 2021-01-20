feature 'Shows hit point' do
  scenario 'show player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'player_1_name'
    fill_in :player_2_name, with: 'player_2_name'
    click_button 'Submit'
    expect(page).to have_content 'player_2_name: 100HP'
  end
end
