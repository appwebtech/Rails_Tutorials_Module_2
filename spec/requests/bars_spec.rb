require 'rails_helper'

RSpec.describe "Bars", type: :request do
  describe "GET /bars" do
    it "works! (now write some real specs)" do
      get bars_path
      expect(response).to have_http_status(200)
    end
  end
end
