class UsersController < ApplicationController
  def new
  end

  # 投稿データの保存
  def create  
  end
  
  def index
  end

  def edit
  end
  
  def destroy
  end
  
  def after_sign_out_path_for(resource)
      new_user_session_path
  end
  
  private

  def users
    params.require(:user).permit(:name, :introduce,:profile_image_id)
  end
  
end