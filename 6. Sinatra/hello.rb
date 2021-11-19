require 'sinatra'
require 'json'
require 'faraday'

URL = 'https://wls7eex8n3.execute-api.us-west-2.amazonaws.com/default/books'

get '/hello/:nombre' do
  @nombre = params['nombre']
  response = Faraday.get(URL)
  @info = []
  if response.success?
    @info = JSON.parse(response.body)
  end
  erb :ejemplo
end
