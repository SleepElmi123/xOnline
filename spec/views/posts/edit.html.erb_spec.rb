require 'rails_helper'

RSpec.describe "posts/edit", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :CodeName => "MyString",
      :CEO => false,
      :Story => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_CodeName[name=?]", "post[CodeName]"

      assert_select "input#post_CEO[name=?]", "post[CEO]"

      assert_select "textarea#post_Story[name=?]", "post[Story]"
    end
  end
end
