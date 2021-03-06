class SessionsController < ApplicationController

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if params[:name] == nil || params[:name].empty?

    session[:name] = params[:name]
    redirect_to controller: 'secrets', action: 'show'
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end 
end
