class MicropostsController < ApplicationController
    def index
    #@posts = Micropost.where(user: params[:user_id])
    @posts = Micropost.all
    if @posts
    render :action => 'index',:user_id=> $user
    end
  end

  def new
    @post = Micropost.new params[:id]
  end

  def create
    @post = Micropost.new(micropost_params)
    
    if @post.save
      redirect_to action: 'index',user_id: $user
    else
      render :action => 'new'
    end
  end

  def edit
    @post = Micropost.find params[:id]
  end

  def update
    @post = Micropost.find params[:id]
    if @post.update_attributes params.require(:micropost).permit(:name,:body,:user_id)
       redirect_to action: 'index',user_id: $user
    else
      render :action => :edit
    end
  end

  def destroy
    @post = Micropost.find params[:id]
    @post.destroy
    redirect_to action: 'index',user_id: $user
  end

  def show
    @post = Micropost.find params[:id]
  end
  private

  def micropost_params
    user_id=$user
    puts "chandraaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    puts user_id
    params.require(:micropost).permit(:name,:body,:user_id)
  end
end

