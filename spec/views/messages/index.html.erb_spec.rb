require 'spec_helper'

describe "messages/index" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :content => "MyText",
        :new => "New",
        :create => "Create"
      ),
      stub_model(Message,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :content => "MyText",
        :new => "New",
        :create => "Create"
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "New".to_s, :count => 2
    assert_select "tr>td", :text => "Create".to_s, :count => 2
  end
end
