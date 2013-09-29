require 'spec_helper'

describe "StaticPages" do
  subject { page }
  
  
  describe "home" do
    before { visit root_path }
    it{ should have_selector('h1', text: "Stay connected in the Philippines!") }   
  end
  
  describe "visit findwifi" do
    
    describe "user signed in" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        visit signin_path
        fill_in "Email", with: user.email
        fill_in "Password", with: user.password
        click_button "Sign in"
        visit findwifi_path
      end
      it { should have_selector('h1', text: "Where do you want to use the internet?") }    
    end
    
    describe "not signed in" do 
      before { visit findwifi_path }   
      it { should have_selector('h2', text: "Sign up") }  
    end
    
     
  end
  
  describe "about" do
    before { visit about_path }
    
    it { should have_content('About Us')}
  end
  
  describe "contact" do
    before { visit contact_path }
    
    it { should have_content('Contact Us')}
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "Home"
    expect(page).to have_title("Home")
    # click_link "Find-WIFI"
#     expect(page).to have_title("Find-WIFI")
    click_link "About"
    expect(page).to have_title("About Us")
    click_link "About Us"
    expect(page).to have_title("About Us")
    click_link "Contact"
    expect(page).to have_title("Contact")
  end
  
end
