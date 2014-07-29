require 'spec_helper'

describe User do
  describe "validations" do
    it {should validate_uniqueness_of :email}
    it {should have_many :feeds}
    it {should have_many :subscriptions}
  end

  #probably want something like this
  it 'articles captures all articles of all feeds'
    #psuedocode: create some articles with feeds using let blocks
    #create a user too. associate the articles and feeds and users properly
    #expect that articles returns articles.to_json
    #also there could be an issue with Article#articles having a local variable articles



end

