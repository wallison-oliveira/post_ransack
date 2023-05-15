require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        name: "Name",
        age: 2,
        email: "Email",
        street: "Street",
        house_number: 3,
        neighborhood: "Neighborhood",
        city: "City",
        state: "State"
      ),
      Employee.create!(
        name: "Name",
        age: 2,
        email: "Email",
        street: "Street",
        house_number: 3,
        neighborhood: "Neighborhood",
        city: "City",
        state: "State"
      )
    ])
  end

  it "renders a list of employees" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Street".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Neighborhood".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
  end
end
