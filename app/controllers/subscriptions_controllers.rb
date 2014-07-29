class SubscriptionsController < ApplicationController

  def destroy
    feed = Feed.find(params[:id])
    Subscription.destroy(feed: feed, user: current_user)
  end

  #you can test this method with something like this

  # describe '#destroy' do
  #   #factory girl a feed
  #   it 'destroys a subscription or whatever' do
  #     expect{delete :destroy, :id => feed.id}.to change{Subscription.count}.by(-1)
  #   end
  # end

end
