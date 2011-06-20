require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
class App < Sinatra::Base
  get '/' do
    'Hello World!'
  end

  get '/sleep' do
    sleep 1
    'ok'
  end
end
