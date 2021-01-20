feature 'Attacking player 2' do
  scenario 'Check if player 1 can attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'player_1_name attacked player_2_name'
  end
end
