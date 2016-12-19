require "rails_helper"

RSpec.feature "Top ten reads", :type => :feature do
  scenario "User sees top ten reads displayed in the index" do
    Read.create(url: "aol.com")
    Read.create(url: "aol.com")
    Read.create(url: "aol.com") # NUMBER TWO
    Read.create(url: "reddit.com")
    Read.create(url: "reddit.com") # NUMBER THREE
    Read.create(url: "google.com")
    Read.create(url: "google.com")
    Read.create(url: "google.com")
    Read.create(url: "google.com") # TOP LINK
    Read.create(url: "a.com")
    Read.create(url: "b.com")
    Read.create(url: "c.com")
    Read.create(url: "d.com")
    Read.create(url: "e.com")
    Read.create(url: "f.com")
    Read.create(url: "g.com")
    Read.create(url: "i.com") # TWELVE TOTAL

    visit '/'
    expect(page).to have_content("google.com 4")
    expect(page).to have_content("aol.com 3")
    expect(page).to have_content("reddit.com 2")
    expect(page).to have_selector('.read', count: 10)
  end
end
