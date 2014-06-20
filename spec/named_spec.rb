require 'rspec'
require_relative 'spec_helper'
require_relative 'support/klass'

describe 'module Named' do
  before(:each) do
    @it = Klass.new.extend(MohojoWerks::Support::Named)
  end

  it 'should mix in a #name property' do
    expect(@it.respond_to? :name).to eq(true)
  end

  it 'should mix in a #name property that has read access' do
    expect {@it.name}.to_not raise_error
  end

  it 'should mix in a #name property that has write access' do
    expect {@it.name = 'name'}.to_not raise_error
  end

  it 'should return the correct value from the #name property' do
    return false unless @it.respond_to? :name
    @it.name = 'name'
    expect(@it.name).to eq('name')
  end
end