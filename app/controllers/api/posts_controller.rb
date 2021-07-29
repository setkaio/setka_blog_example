module Api
  class PostsController < Api::ApplicationController
    def show
      post = Post.find(params[:id])
      respond_with post
    end

    def create
      post = Post.create(post_params)
      respond_with post
    end

    def update
      post = Post.find(params[:id])
      post.update(post_params)
      respond_with post
    end

    private

    def post_params
      params.require(:post).permit(:id, :title, :body)
    end
  end
end
