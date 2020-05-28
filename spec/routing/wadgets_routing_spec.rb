require "rails_helper"

RSpec.describe WadgetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/wadgets").to route_to("wadgets#index")
    end

    it "routes to #new" do
      expect(get: "/wadgets/new").to route_to("wadgets#new")
    end

    it "routes to #show" do
      expect(get: "/wadgets/1").to route_to("wadgets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/wadgets/1/edit").to route_to("wadgets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/wadgets").to route_to("wadgets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/wadgets/1").to route_to("wadgets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/wadgets/1").to route_to("wadgets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/wadgets/1").to route_to("wadgets#destroy", id: "1")
    end
  end
end
