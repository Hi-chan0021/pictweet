class TweetsController < ApplicationController
  
  before_action :move_to_index, except: :index
  
  def index
    @tweets = Tweet.all
  end
  
  def new
  end
  
  def create
    Tweet.create(name: tweet_params[:name], image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)
  end
  
  private
  def tweet_params
    params.permit(:name, :text, :image)
  end
  
  def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
end
