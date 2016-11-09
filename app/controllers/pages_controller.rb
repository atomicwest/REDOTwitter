class PagesController < ApplicationController
  
  def index
  end

  def home
  end

  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
      target = User.find_by_username(@username).username
      userurl = "/user/" + target
      redirect_to userurl
    else
      redirect_to root_path, :notice => "User does not exist"
    end
  end

  def explore
  end
end
