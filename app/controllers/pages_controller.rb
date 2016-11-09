class PagesController < ApplicationController
  
  def index
  end

  def home
    @posts = Post.all
  end

  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
      # target = User.find_by_username(@username).username
      # userurl = "/user/" + target
      # redirect_to userurl
    else
      redirect_to root_path, :notice => "User does not exist"
    end
    
    @users = User.all
    @posts = Post.all
    
    @userpost = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    
    @newpost = Post.new
    
  end

  def explore
  end
end
