require 'rails_helper'

RSpec.describe "wadgets/new", type: :view do
  before(:each) do
    assign(:wadget, Wadget.new(
      name: "MyString"
    ))
  end

  it "renders new wadget form" do
    render

    assert_select "form[action=?][method=?]", wadgets_path, "post" do

      assert_select "input[name=?]", "wadget[name]"
    end
  end
end
