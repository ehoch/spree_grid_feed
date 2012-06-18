require 'spec_helper'

describe "Products Feed" do
  # before (:each) do
  #   @products = (0..11).collect { |i| FactoryGirl.create(:product) }
  # end
  
  it "should display 10 most recent products" do
    visit spree.products_path(:format => :xml)
    save_and_open_page
  end
  
end
