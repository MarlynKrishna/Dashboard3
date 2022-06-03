class UserController < ApplicationController
def create
  user = User.new(user_params)
  if user.save
    flash[:notice]="Signup successful"
    # redirect_to '/login'
  else
    flash[:notice]="Please try again"
    redirect_to '/signup'
  end
end

def new
end

def index
  @products=Product.all
  @customers=Customer.all
  response = HTTParty.get("http://api.weatherstack.com/current?access_key=2922cb3f95381610ab780765b383f370&query=New%20York")
  Rails.logger.info response.code

    Rails.logger.info response.body

    Rails.logger.info response.to_a

end
private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :email, :password)
  end
end
