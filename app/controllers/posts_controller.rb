class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @studios = Studio.all.order(:name)
    @posts = Post.all.order(:title)
    @post = Post.new
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    # @studio = Studio.find(params[:id])
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to action: "index"}
        format.js   {}
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :thumb, :model, :res, :time, :studio_id)
    end
end
