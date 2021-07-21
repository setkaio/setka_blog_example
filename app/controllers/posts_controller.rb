class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @setka = SetkaIntegration::Init.files
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @setka = SetkaIntegration::Init.files
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:id, :title, :body)
  end
end
