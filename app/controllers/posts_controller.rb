class PostsController < ApplicationController
 # index, show, new, edit, create, update and destroy

  def index
  end

  def show
      @post = Post.find(params[:id])
  end

  def new
      @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:success] = "Your post has been created. "
      redirect_to @post
    else
      flash[:alert] = "Halt, you fiend! You need an image to post here!"
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:image, :caption)
  end
end
