class PostsController < ApplicationController
 # index, show, new, edit, create, update and destroy

  def index

  end

  def new
      @post = Post.new
  end
end
