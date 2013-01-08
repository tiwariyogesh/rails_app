require 'spec_helper'

describe "StaticPages" do
   let(:base_title) { "Ruby on Rails Training App" }
  describe "Home page" do
    describe "GET /static_pages/home" do
            # it "should have the right title" do
              # visit '/static_pages/home'
              # page.should have_selector('title',
                    # #:text => "Ruby on Rails Training App | Home")
                    # :text => "Home")
            # end
      it "should have the base title" do
        visit '/static_pages/home'
        page.should have_selector('title', :text => "#{base_title}")
    end

      it "should have the content 'Training App'" do
        visit '/static_pages/home'
        page.should have_content('Training App')
      end
      
      it "should not have a custom page title" do
        visit '/static_pages/home'
        page.should_not have_selector('title', :text => "| Home")
      end
      
      it "should have the h1 'Training App'" do
        visit '/static_pages/home'
        page.should have_selector('h1', :text => 'Training App')
      end
    end
  end

  describe "Help page" do
    describe "GET /static_pages/help" do
      it "should have the content 'help App'" do
        visit '/static_pages/help'
        page.should have_content('help App')
      end
    end
  end
end