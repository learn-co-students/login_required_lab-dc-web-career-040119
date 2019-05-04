class SessionsController < ApplicationController

  def index
    if session[:name].blank?
      redirect_to '/login'
    end
  end

  def new

  end

  def create
    if params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end
end
