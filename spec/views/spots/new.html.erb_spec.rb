require 'spec_helper'

describe "spots/new" do
  before(:each) do
    assign(:spot, stub_model(Spot,
      :name => "MyString",
      :address => "MyText",
      :phone => "MyString",
      :price => "MyString",
      :speed => "MyString",
      :outlets => 1,
      :review => "MyText"
    ).as_new_record)
  end

  it "renders new spot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spots_path, "post" do
      assert_select "input#spot_name[name=?]", "spot[name]"
      assert_select "textarea#spot_address[name=?]", "spot[address]"
      assert_select "input#spot_phone[name=?]", "spot[phone]"
      assert_select "input#spot_price[name=?]", "spot[price]"
      assert_select "input#spot_speed[name=?]", "spot[speed]"
      assert_select "input#spot_outlets[name=?]", "spot[outlets]"
      assert_select "textarea#spot_review[name=?]", "spot[review]"
    end
  end
end
