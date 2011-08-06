require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
class App < Sinatra::Base
  before do
    content_type "text/plain"
  end

  get '/' do
    'Hello World!'
  end

  get '/sleep' do
    sleep 1
    'ok'
  end
end
