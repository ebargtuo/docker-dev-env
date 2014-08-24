require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  "This is Sinatra"
end

