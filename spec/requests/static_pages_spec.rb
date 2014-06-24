require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Myblog for is the best" }
  subject { page }

  describe "Home Page" do
    before { visit root_path }

    #it "should have the content 'My Blog'" do
    #  expect(page).to have_content('My Blog')
    #end
    it { should have_content('My Blog') }
    it { should have_title("#{base_title} | Home") }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title("#{base_title} | Help") } 
  end

  describe "About Us" do
    before { visit about_path }
    
    it { should have_content('About Us') }
    it { should have_title("#{base_title} | About Us") }
  end

  describe "Contact Us" do
    before { visit contact_path }

    it { should have_content('Contact Us') } 
    it { should have_title("#{base_title} | Contact Us") }
  end

end
