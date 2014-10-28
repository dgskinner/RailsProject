class UsersController < ApplicationController
  def index
    render json: User.all
  end
  
  def show
    self.render json: User.find(self.params[:id])
  end
  
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end
  
  def new
    render json: {'a_key' => 'a value'}
  end
  
  def edit
    
  end
  
  def update
    user = User.find(self.params[:id])
    if user.update(user_params)
      render json: user
    else
      render( json: user.errors.full_messages, status: :unprocessable_entity)
    end  
  end
  
  def destroy
    user = User.find(params[:id])
    if user.delete
      render json: user
    else
      render( json: user.errors.full_messages, status: :unprocessable_entity)
    end
  end
  
  private
  def user_params
     self.params[:user].permit(:username)
  end
end
