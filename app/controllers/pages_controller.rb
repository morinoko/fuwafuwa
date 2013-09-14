class PagesController < ApplicationController
  http_basic_authenticate_with :name => "fuwafuwa", :password => "raburabu"
  def home
  	    @posts = Post.paginate :per_page => 10, :page => params[:page]
  end

  def about
  end
end
