require 'sinatra_helper'

RSpec.describe Idea do
  describe '#initialize' do
    it 'without name' do
      expect(described_class.new(name: nil, description: 'description')).to_not be_valid
    end

    it 'with valid' do
      expect(described_class.new(name: 'name', description: 'description')).to be_valid
    end
  end
end
