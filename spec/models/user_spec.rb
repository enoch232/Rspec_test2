require 'spec_helper'

describe User do
  it "has a valid factory" do
  	expect(FactoryGirl.build(:user, name: "Bob")).to be_valid
  end
  it "validates the presence of a name" do
  	FactoryGirl.build(:user, name: nil)
  	expect(User.all.count).to eq(0)
  end
end
