class PagesController < ApplicationController
  def home
  	if @user == nil
  		@user = User.new
  	end
  	 if signed_in?
      @group  = current_user.groups.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def login
  end
end
