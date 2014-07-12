require 'spec_helper'

describe "Pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Micromanager') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Log In" do
    before { visit login_path }

    it { should have_content('Log In') }
    it { should have_title(full_title('Log In')) }
  end

end
