require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        # binding.pry
        @session = session
        erb :checkout
    end

end