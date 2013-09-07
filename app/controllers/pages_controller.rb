class PagesController < ApplicationController
  def home
  	    @posts = Post.paginate :per_page => 10, :page => params[:page]
  end

  def about
  end
end
