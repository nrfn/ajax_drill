class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)
    respond_to do |format|
      format.json
    end
  end

  private
    def post_params
      params.require(:post).permit(:text)
    end
end
