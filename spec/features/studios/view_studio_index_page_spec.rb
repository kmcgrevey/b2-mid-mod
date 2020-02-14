require 'rails_helper'

RSpec.describe "View Studio Index Page", type: :feature do
  it "I see a list of studios and its movies" do
    studio1 = Studio.create(name: "Fox")
    movie1 = Movie.create(name: "Minority Report")
    movie2 = Movie.create(name: "Ice Age")
    studio2 = Studio.create(name: "MGM")
    movie3 = Movie.create(name: "Ben Hur")

    visit '/studios'

    expect(current_path).to eq('/studios')
    expect(page).to have_content("Studio Index")
    expect(page).to have_content("Fox")
    expect(page).to have_content("Minority Report")
    expect(page).to have_content("Ice Age")
    expect(page).to have_content("MGM")
    expect(page).to have_content("Ben Hur")
  end
end
