class PostsController < ApplicationController

  before_action :set_post, only
  #get/post
  def index
  @post=Posts.all

  end

  #GET/posts/:id
  def show

  end

  #Gets/post/new
  def new
   #set_post
   @post= Post.new
  end

  #Post /posts
  def create
  #params = {post: {title:"my title", content:""}

  @post=Post.new(permitted_post_param)

  if @post.save
    redirect_to post_path(post)
  else
    render:new
  end
  end

  #Get /post/:id/edit
  def edit
   # set_post
   # @post=Post.find(params[:id])
  end

  def update
     if @post.update(permitted_post_param)
      redirect_to post_path(post)
    else
      render :edit
    end
  end

  #delete/post/:id
  def destroy
  #post= Post.find(params[:id])
  @post.destroy

  redirect_to post_path()
  end

  private

  def permitted_post_param
    param.require(:post).permit(:tittle, :content, :author_name)
end

  def set_post()
    @post= Post.find(params[:id])
  end


end
