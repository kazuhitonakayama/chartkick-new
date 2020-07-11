class PostsController < ApplicationController
  def index
    @posts = Post.all
    # @updateposts.update(post)
    # @posts.save
    @tags = Tag.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "投稿しました"
      redirect_to :root
    else
      render action: :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to :root
    else
      render action: :edit
    end
  end

  def show
    @post = Post.find(params[:id])
    # @post.time = @post.time + @post.comments.sum(:time)
    # @post.save
    @comments = @post.comments
    @comment = @post.comments.build
  end

  private
    def post_params
      params.require(:post).permit(:body,:detail, tag_ids: [])
    end
end
