class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@post_images = @user.post_images.page(params[:page]).reverse_order  # ここを記述
  end

　def edit
        @user = User.find(params[:id])
  end
end
