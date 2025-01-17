require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/property/:id' do
    @property = all_properties.select do |property|
      property.id == params[:id]
    end
    #erb :
  end
    
  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
  
  get '/multiply/:number1/:number2' do
    # binding.pry
    @product = params[:number1].to_i * params[:number2].to_i
    #erb :multiply
    "#{@product}"
  end
end