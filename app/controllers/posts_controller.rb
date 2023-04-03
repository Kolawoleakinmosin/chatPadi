class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path, notice: "Post was successfully created."
    else
      p @post.errors.full_messages
      render :index, status: :unprocessable_entity
    end
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
