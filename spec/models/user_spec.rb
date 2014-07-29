require 'spec_helper'

describe User do
  describe "validations" do
    it {should validate_uniqueness_of :email}
    it {should have_many :feeds}
  end



end

