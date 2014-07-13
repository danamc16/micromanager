class GroupsController < ApplicationController
	before_action :signed_in_user
  def index
  end

  def create
    @group = current_user.groups.build(group_params)
    if @group.save
      flash[:success] = "Group created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'pages/home'
    end
  end

  def edit
  end

  def destroy
    @group.destroy
    redirect_to root_url
  end

  private

    def group_params
      params.require(:group).permit(:title)
    end

     def correct_user
      @group = current_user.groups.find_by(id: params[:id])
      redirect_to root_url if @group.nil?
    end
end
