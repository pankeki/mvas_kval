require 'rails_helper'

RSpec.describe "VetVisits", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/vet_visit/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/vet_visit/new"
      expect(response).to have_http_status(:success)
    end
  end

end
