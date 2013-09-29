require 'spec_helper'

describe "spots/show" do
  before(:each) do
    @spot = assign(:spot, stub_model(Spot,
      :name => "Name",
      :address => "MyText",
      :phone => "Phone",
      :price => "Price",
      :speed => "Speed",
      :outlets => 1,
      :review => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Phone/)
    rendered.should match(/Price/)
    rendered.should match(/Speed/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
