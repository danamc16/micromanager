require 'spec_helper'

describe "Pages" do
	describe "Home page" do

	  it "should have the content 'Sample App'" do
	    visit '/pages/home'
	    expect(page).to have_content('Micromanager')
	  end
	end

	describe "Login Page" do

    it "should have the content 'Help'" do
      visit '/pages/login'
      expect(page).to have_content('Log In')
    end
  end

end
