require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :content => "MyText",
      :new => "MyString",
      :create => "MyString"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_path(@message), "post" do
      assert_select "input#message_first_name[name=?]", "message[first_name]"
      assert_select "input#message_last_name[name=?]", "message[last_name]"
      assert_select "input#message_email[name=?]", "message[email]"
      assert_select "textarea#message_content[name=?]", "message[content]"
      assert_select "input#message_new[name=?]", "message[new]"
      assert_select "input#message_create[name=?]", "message[create]"
    end
  end
end
