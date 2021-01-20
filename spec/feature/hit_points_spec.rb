feature 'Shows hit point' do
  scenario 'show player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'player_2_name: 100HP'
  end
end
