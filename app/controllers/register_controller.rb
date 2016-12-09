class RegisterController < ApplicationController
  def new
     @details=User.new
  end
  def create
    @details = User.new(params.permit(:name,:password,:email,:mobile,:age,:address))
    if @details.save
      redirect_to controller: 'login', action: 'index'
    end
  end
end
