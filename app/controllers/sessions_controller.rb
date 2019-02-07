class SessionsController < ApplicationController
  def new

  end

  def index

  end

  def show

  end


  def create
    user = User.authenticate(session_params[:email], session_params[:password])
    if user
      session[:current_user_id] = user.id

      redirect_to session_path(:id)
    else
      redirect_to sessions_path
    end

  end


private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
