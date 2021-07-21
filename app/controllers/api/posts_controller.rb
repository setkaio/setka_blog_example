module Api
  class PostsController < Api::ApplicationController
    def show
      respond_with post
    end

    def create
      Post.create(post_params)
      respond_with post
    end

    def update
      post.update(post_params)
      respond_with post
    end

    private

    def post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:id, :title, :body)
    end
  end
end
