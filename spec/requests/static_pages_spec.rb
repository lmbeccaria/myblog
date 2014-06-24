require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Myblog for is the best" }
  subject { page }

  shared_examples_for "all_static_pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title))}
  end

  describe "Home Page" do
    before { visit root_path }

    #it "should have the content 'My Blog'" do
    #  expect(page).to have_content('My Blog')
    #end
    #it { should have_content('My Blog') }
    #it { should have_title(full_title('Home')) }
    let (:heading) { 'My Blog' }
    let (:page_title) { 'Home' }
    it_should_behave_like "all_static_pages"
  end

  describe "Help page" do
    before { visit help_path }

    let (:heading) { 'Help' }
    let (:page_title) { 'Help' }
    it_should_behave_like "all_static_pages"
  end

  describe "About Us" do
    before { visit about_path }
    
    let (:heading) { 'About Us' }
    let (:page_title) { 'About Us' }
    it_should_behave_like "all_static_pages"
  end

  describe "Contact Us" do
    before { visit contact_path }

    let (:heading) { 'Contact Us' }
    let (:page_title) { 'Contact Us' }
    it_should_behave_like "all_static_pages"
  end

  it "should have the right links on the layout" do
    visit root_path

    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    
    click_link "Help"
    expect(page).to have_title(full_title('Help'))

    click_link "Contact"
    expect(page).to have_title(full_title('Contact Us'))

    click_link "Home"
    expect(page).to have_title(full_title('Home'))

    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))

    click_link "My Blog"
    expect(page).to have_title(full_title('Home'))
  end

end
