require 'rails_helper'

RSpec.describe "wadgets/edit", type: :view do
  before(:each) do
    @wadget = assign(:wadget, Wadget.create!(
      name: "MyString"
    ))
  end

  it "renders the edit wadget form" do
    render

    assert_select "form[action=?][method=?]", wadget_path(@wadget), "post" do

      assert_select "input[name=?]", "wadget[name]"
    end
  end
end
