require 'spec_helper'

describe "spots/index" do
  before(:each) do
    assign(:spots, [
      stub_model(Spot,
        :name => "Name",
        :address => "MyText",
        :phone => "Phone",
        :price => "Price",
        :speed => "Speed",
        :outlets => 1,
        :review => "MyText"
      ),
      stub_model(Spot,
        :name => "Name",
        :address => "MyText",
        :phone => "Phone",
        :price => "Price",
        :speed => "Speed",
        :outlets => 1,
        :review => "MyText"
      )
    ])
  end

  it "renders a list of spots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Speed".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
