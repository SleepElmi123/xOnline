require 'rails_helper'

RSpec.describe "posts/show", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :CodeName => "Code Name",
      :CEO => false,
      :Story => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
