require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  #: is a dynamic route notation
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  #dynamic route to goodbye
  get '/goodbye/:name' do
    #stores the parameter of name given from user to person 
    @person_name = params[:name]
    #returns the personalized name given by user
    "Goodbye, #{@person_name}."
  end

  #dynamic route to multiply
  get '/multiply/:num1/:num2' do
    #takes in the two user given numbers and saves the product as @product 
    #.to_i is necessary to not get html error as params are strings 
    @product = params[:num1].to_i * params[:num2].to_i
    #returns the product to the user
    "#{@product}"
    #<p><%"#{@first * @second}"%></p>
  end

end
