feature 'Players names' do
  scenario 'getting players names' do
    visit('/')
    fill_in :player_1_name, with: 'player_1_name'
    fill_in :player_2_name, with: 'player_2_name'
    click_button 'Submit'
    expect(page).to have_content 'player_1_name vs. player_2_name'
  end
end
