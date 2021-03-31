class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])  
  end
  
  # 投稿データの保存
  def create 
    @user = User.find(params[:id])
    @user = User.new(users)
    @user.user_id = current_user.id
    @user.save
    redirect_to users_path
  end
  
  def index
    @users = User.all
    @user = current_user.id
  end

  def edit
     @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:id])
  end
  
  def after_sign_out_path_for(resource)
    new_user_session_path
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
end