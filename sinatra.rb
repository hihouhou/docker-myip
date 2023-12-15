require 'sinatra'
require 'json'

set :bind, '0.0.0.0'
set :port, 8080  # Choisissez le port que vous préférez

get '/' do
  content_type :json
  { ip: request.ip }.to_json
end

