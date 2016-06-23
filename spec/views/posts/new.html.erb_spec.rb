require 'rails_helper'

RSpec.describe "posts/new", :type => :view do
  before(:each) do
    assign(:post, Post.new(
      :CodeName => "MyString",
      :CEO => false,
      :Story => "MyText"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_CodeName[name=?]", "post[CodeName]"

      assert_select "input#post_CEO[name=?]", "post[CEO]"

      assert_select "textarea#post_Story[name=?]", "post[Story]"
    end
  end
end
