class UsersController < ApplicationController

  def index
    @users=User.all
  end
  private
  def set_user
    @user=current_user
  end
  def user_params
    params.require(:user).permit(:id, :email)
  end
end
