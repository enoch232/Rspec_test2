require 'spec_helper'

describe Article do
  it 'has a valid factory' do
  	user = double(:user, user_id: 1)
  	expect(FactoryGirl.build(:article, title: "title", user_id: user.id)).to be_valid
  end
  it 'validates the presence of a title' do
  	expect(FactoryGirl.build(:article)).to be_invalid
  end
end
