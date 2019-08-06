require_relative 'config/environment'

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
    
  get '/goodbye/:name'
    "Goodbye, #{@user_name}."
  end
  
  get '/multiply/:number1/:number2'
    <%number1 * number2%>
end