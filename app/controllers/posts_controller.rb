class PostsController < ApplicationController
  def index
    @posts = Post.all.with_deleted.preload(:creator, :updater, :deleter)
  end
    
  def new
    @post = Post.new
  end

  def create
    Post.create!(params.require(:post).permit(:title, :body))
    redirect_to action: :index
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    Post.find(params[:id]).update!(params.require(:post).permit(:title, :body))
    redirect_to action: :index
  end

  def destroy
    Post.find(params[:id]).destroy!
    redirect_to action: :index
  end
end
