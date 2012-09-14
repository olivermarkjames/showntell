require 'spec_helper'

describe "slides/index" do
  before(:each) do
    assign(:slides, [
      stub_model(Slide,
        :content => "Content",
        :micropost_id => 1
      ),
      stub_model(Slide,
        :content => "Content",
        :micropost_id => 1
      )
    ])
  end

  it "renders a list of slides" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
