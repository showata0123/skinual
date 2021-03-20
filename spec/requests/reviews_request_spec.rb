require 'rails_helper'

RSpec.describe "Reviews", type: :request do
  describe '#show' do
    let(:user)  { create(:user) }
    let(:review)  { create(:review, user: user) }

    before do 
      sign_in user
      get review_path(review.id)
    end

    it '正しく接続できること' do
      expect(response).to have_http_status "200"
    end

    it "showページにreview.nameが含まれていること" do
      expect(response.body).to include review.name
    end

    it "showページにreview.priceが含まれていること" do
      expect(response.body).to include review.price.to_s
    end

    it "showページにreview.descriptionが含まれていること" do
      expect(response.body).to include review.description
    end
  end
end
