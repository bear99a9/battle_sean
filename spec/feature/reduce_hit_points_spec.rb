feature 'reduce player HP' do
  scenario 'when attached players 2 HP reduces by 10' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'player_2_name HP reduced by 10 to 90HP'
  end
end
