require 'sinatra_helper'

RSpec.describe 'IdeasController' do
  before(:all) do
    Idea.delete_all
  end

  after(:all) do
    Idea.delete_all
  end
end

let(:valid_params) {
  {
    idea: {
      name:       'name',
      description: 'description',
      picture:     Rack::Test::UploadedFile.new(__FILE__)
    }
  }
}

let(:empty_params) { {} }

describe 'get / and / ideas' do
  it 'allows access' do
    %w(/ /ideas).each do |path|
      get path
      expect(last_response).to be_ok
    end
  end
end
