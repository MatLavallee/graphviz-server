require 'sinatra'

class GraphvizServer < Sinatra::Base
  get '/' do
    'Hello world!'
  end
end