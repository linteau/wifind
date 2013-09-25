require 'spec_helper'

describe "StaticPages" do
  subject { page }
  
  describe "home" do
    before { visit root_path }
    it{ should have_selector('h1', text: "Stay connected in the Philippines!") }   
  end
  
  describe "findwifi" do
    before { visit findwifi_path }
    it { should have_selector('h1', text: "Where do you want to use the internet?") }   
  end
  
  describe "about" do
    before { visit about_path }
    
    it { should have_content('About Us')}
  end
  
  describe "contact" do
    before { visit contact_path }
    
    it { should have_content('Contact Us')}
  end
  
end
