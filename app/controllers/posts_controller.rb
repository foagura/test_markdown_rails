class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all.order("created_at DESC")
  end

  def create
    Post.create(params.require(:post).permit(:content))
    redirect_to root_path
  end
end
