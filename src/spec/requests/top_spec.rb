require 'rails_helper'

describe "#top" do
  subject { get :home }
  render_views

  it 'http access success' do
    is_expected.to have_http_status(:success)
  end

  let(:base_title) { 'Hello World!!' }

  it "get root" do
    get :home
    expect(response.status).to eq(200)
    expect(response.body).to match(/<title>#{base_title}<\/title>/i)
  end

end
