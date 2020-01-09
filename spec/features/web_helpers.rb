def visit_site
  visit('/')
  fill_in :player_1_name, with: "Dave"
  fill_in :player_2_name, with: "Kittens"
  click_button "Submit"
end