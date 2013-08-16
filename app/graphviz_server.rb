require 'sinatra'

class GraphvizServer < Sinatra::Base
  #use Rack::Auth::Basic, "Restricted Area" do |username, password|
  #  [username, password] == ['admin', 'admin']
  #end

  get '/' do
    output = ''

    IO.popen "dot -Tsvg", 'w+' do |f|
      f.puts 'digraph G {}'
      output = f.gets
      puts output
    end

    [200, {"Content-Type" => "text/plain"}, [output]]
  end
end