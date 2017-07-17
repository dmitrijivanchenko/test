class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def show
    @user = Post.find(params[:id])
  end

  def create
    @user = Post.new(post_params)
    if @user.save
      flash[:valid] = 'Posted!'
      redirect_to @post
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end