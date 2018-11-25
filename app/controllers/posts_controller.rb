class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    # @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to 'new'
    end
  end

  # add create method here
end
