class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all
  end

<<<<<<< Updated upstream
  def new
=======
  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }
>>>>>>> Stashed changes
  end

  def create
    Post.create(memo: params[:memo])
  end
end
