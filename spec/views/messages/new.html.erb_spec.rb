require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :content => "MyText",
      :new => "MyString",
      :create => "MyString"
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", messages_path, "post" do
      assert_select "input#message_first_name[name=?]", "message[first_name]"
      assert_select "input#message_last_name[name=?]", "message[last_name]"
      assert_select "input#message_email[name=?]", "message[email]"
      assert_select "textarea#message_content[name=?]", "message[content]"
      assert_select "input#message_new[name=?]", "message[new]"
      assert_select "input#message_create[name=?]", "message[create]"
    end
  end
end
