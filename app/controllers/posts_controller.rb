class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    byebug
    @post = Post.create(post_params)
      if @post.errors
        render :new
      else
        redirect_to post_path(@post)
      end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
      if @post.errors
        render :edit
      else
        redirect_to post_path(@post)
      end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
  end
end
