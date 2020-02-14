require 'rails_helper'

RSpec.describe "View Studio Index Page", type: :feature do
  it "I see a list of studios and its movies" do
    visit '/studios'

    expect(page).to have_content("Studio Index")
    expect(page).to have_content("Fox")
    expect(page).to have_content("Minority Report")
    expect(page).to have_content("Ice Age")
    expect(page).to have_content("MGM")
    expect(page).to have_content("Ben Hur")


  end


end
