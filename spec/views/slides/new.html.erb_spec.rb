require 'spec_helper'

describe "slides/new" do
  before(:each) do
    assign(:slide, stub_model(Slide,
      :content => "MyString",
      :micropost_id => 1
    ).as_new_record)
  end

  it "renders new slide form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => slides_path, :method => "post" do
      assert_select "input#slide_content", :name => "slide[content]"
      assert_select "input#slide_micropost_id", :name => "slide[micropost_id]"
    end
  end
end
