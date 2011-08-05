require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
class App < Sinatra::Base
  get '/' do
    'Hello World!'
  end

  get '/sleep' do
    fiber = Fiber.current
    EM::Timer.new(secs) { fiber.resume }
    Fiber.yield
    'ok'
  end
end
