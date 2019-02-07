class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.new(user_params)
    @user.save

    redirect_to(new_user_path)
  end

private

  def user_params
    params.require(:user).permit(:full_name, :email, :password)
  end
end
