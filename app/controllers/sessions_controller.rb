class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || (params[:name].length == 0)
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
    end
    redirect_to '/'
  end
end
