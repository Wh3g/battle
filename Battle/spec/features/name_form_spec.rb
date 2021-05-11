feature "entering names" do
  scenario "submit names" do
    visit('/')
    fill_in "player_1_name", with: "John"
    fill_in "player_2_name", with: "James"
    click_button "Submit"
    expect(page).to have_content "John vs. James"
  end
end