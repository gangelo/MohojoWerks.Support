require 'rspec'
require_relative 'spec_helper'
require_relative 'support/klass'

describe 'module Tagged' do
  before(:each) do
    @it = Klass.new.extend(MohojoWerks::Support::Tagged)
    #@it = Klass.new
  end

  it 'should mix in a #tags property' do
    expect(@it.respond_to? :tags).to eq(true)
  end

  it 'should mix in a #tags property that has read access' do
    expect {@it.tags}.to_not raise_error
  end

  it 'should mix in a #tags property that has write access' do
    expect {@it.tags = Array.new}.to_not raise_error
  end

  it 'should return the correct value from the #name property' do
    return false unless @it.respond_to? :tags
    @it.tags.push :tag
    expect(@it.tags.include?(:tag)).to eq(true)
  end
end