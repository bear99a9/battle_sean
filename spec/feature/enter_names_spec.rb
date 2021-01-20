feature 'Players names' do
  scenario 'getting players names' do
    sign_in_and_play
    expect(page).to have_content 'player_1_name vs. player_2_name'
  end
end
