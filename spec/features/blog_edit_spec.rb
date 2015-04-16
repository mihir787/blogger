require 'rails_helper'

RSpec.describe "user can edit a blog" do
  context "edit both title and body" do
    it "saves and displays title and body" do
      visit new_article_path
      fill_in "article[title]", with: "fish"
      fill_in "article[body]", with: "yummy"
      click_link_or_button "Create Article"
      expect(page).to have_content("fish")
      expect(page).to have_content("yummy")
      click_link_or_button "edit"
      fill_in "article[title]", with: "game over"
      fill_in "article[body]", with: "flip"
      click_link_or_button "Update Article"
      expect(page).to have_content("game over")
      expect(page).to have_content("flip")
    end
  end
end
