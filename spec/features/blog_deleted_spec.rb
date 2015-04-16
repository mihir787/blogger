require 'rails_helper'

RSpec.describe "user can delete blog post completly" do
  it "removes trace of blog post" do
    visit new_article_path
    fill_in "article[title]", with: "fish"
    fill_in "article[body]", with: "yummy"
    click_link_or_button "Create Article"
    expect(page).to have_content("fish")
    expect(page).to have_content("yummy")
    visit article_path(1)
    click_link_or_button "delete"
    expect(page).not_to have_content("fish")
  end
end
