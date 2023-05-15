require "rails_helper"

RSpec.describe EmployeesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/employees").to route_to("employees#index")
    end
  end
end
