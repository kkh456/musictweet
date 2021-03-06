class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_like

  def create
    user = current_user
    tweet = Tweet.find(params[:tweet_id])
    like = Like.create(user_id: user.id, tweet_id: tweet.id)
  end

  def destroy
    user = current_user
    tweet = Tweet.find(params[:tweet_id])
    like = Like.create(user_id: user.id, tweet_id: tweet.id)
    like.delete
  end

  private
  def set_like
    @tweet = Tweet.find(params[tweet_id])
  end
end#test