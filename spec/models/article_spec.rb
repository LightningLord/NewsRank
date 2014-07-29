require 'spec_helper'

describe Article do
  let (:article) {FactoryGirl.build(:article)}
  describe "validations" do
    it {should allow_value(1).for(:published)}
    it {should validate_uniqueness_of :canonical_url}
    it {should belong_to :feed}

    describe "#add_article" do
      it "adds an article to the database" do
        #probably want to do something like this:
        # expect {article.add_article(valid args)}.to change{Article.count}.by(1)

      end
    end
  end
end
