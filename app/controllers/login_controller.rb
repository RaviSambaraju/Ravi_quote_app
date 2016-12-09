class LoginController < ApplicationController

  def index
    
  end
  
  def check
    @name = params[:name]
    @pass = params[:password]  
    @yes = User.find_by(name: @name, password: @pass)
    $user= @yes.id
    puts @user
    if @yes
      render :action => 'check',:name=>@name,:user_id=> $user
    else
      render :action => 'sample'
    end
  end
  
  def next
    
  end
  
  
  def sample
    
  end
  
  
end
