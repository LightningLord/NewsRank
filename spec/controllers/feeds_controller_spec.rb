require 'spec_helper'

describe FeedsController do
  let(:user) { FactoryGirl.create :user }
  #moving the above let block into this scope will give all tests access to it
  describe '#index' do
    it "should return a JSON that corresponds to the current users feeds" do
      controller.stub(:current_user) { user }
      expect(controller.current_user).to receive(:feeds)
      get :index
      expect(response.header["Content-Type"]).to include "application/json"
    end
  end

  describe '#create' do
    it "should create an association between the current user and a feed"
      #not sure where assoicate_user is defined, but you can assert that it is called
      #and then you would test associate_user independently to make sure it works, but in the controller, it'll be enough to just make sure it's called

    it "should create a new feed if the feed doesn't exist in the database"
    #set up the correct feeds and articles etc using let blocks
    #assert that add_to_db is called
  end

  describe '#search' do
    #stub your api calls and have them return an object with the same format as the api and some dummy data
    #assert that search renders json as you would expect based on your dummy data
  end
end

