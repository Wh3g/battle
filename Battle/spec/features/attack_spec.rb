feature "attack" do
  scenario "attack player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "John attacked James"
  end

  scenario "reduce player 2 hp by 10" do
    sign_in_and_play
    click_button "Attack"
    click_link "OK"
    expect(page).not_to have_content "James: 100hp"
    expect(page).to have_content "James: 90hp"
  end
end