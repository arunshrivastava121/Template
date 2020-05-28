require 'rails_helper'

RSpec.describe "wadgets/index", type: :view do
  before(:each) do
    assign(:wadgets, [
      Wadget.create!(
        name: "Name"
      ),
      Wadget.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of wadgets" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
