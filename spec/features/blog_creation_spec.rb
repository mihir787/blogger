require 'rails_helper'

RSpec.describe "user creates a blog" do
  context "with a title and body" do
    it "saves and displays title and body" do
      visit new_article_path
      fill_in "article[title]", with: "fish"
      fill_in "article[body]", with: "yummy"
      click_link_or_button "Create Article"
      expect(page).to have_content("fish")
      expect(page).to have_content("yummy")
    end
  end
end
