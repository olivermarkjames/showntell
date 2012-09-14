require 'spec_helper'

describe "slides/edit" do
  before(:each) do
    @slide = assign(:slide, stub_model(Slide,
      :content => "MyString",
      :micropost_id => 1,
      :cover_image_uid => "MyString"
    ))
  end

  it "renders the edit slide form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => slides_path(@slide), :method => "post" do
      assert_select "input#slide_content", :name => "slide[content]"
      assert_select "input#slide_micropost_id", :name => "slide[micropost_id]"
      assert_select "input#slide_cover_image_uid", :name => "slide[cover_image_uid]"
    end
  end
end
