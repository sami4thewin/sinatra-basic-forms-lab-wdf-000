require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    bruh = params[:age]
    ayo = bruh.slice(/[\d]*/)
    ayo = ayo.to_i
    @puppy = Puppy.new(params[:name], params[:breed], ayo)
    # binding.pry
    erb :display_puppy
  end

end
