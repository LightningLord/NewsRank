require 'spec_helper'

describe Feed do
  describe "validations" do
    it {should validate_uniqueness_of :feedly_feed_id}
    # Test attr_accesible
    # it {should allow_mass_assignment_of :attribute}
  end

  #use shoulda matchers to test associations
  describe '#update_feed' do
    it 'adds helper to db if conditions are met'
    #create a feed using a let block and make sure the conditions about time will pass
    #expect(FeedlyHelper.any_instance).to_receive(:add_to_db)
    #call update_feed
  end
end
