require 'spec_helper'

describe Article do
  it 'has a valid factory' do
  	expect(FactoryGirl.build(:article, title: "title")).to be_valid
  end
  it 'validates the presence of a title' do
  	expect(FactoryGirl.build(:article)).to be_invalid
  end
end
