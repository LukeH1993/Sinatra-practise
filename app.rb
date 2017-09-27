require 'sinatra'
require_relative './TodoManager.rb'

get '/todos/' do
	TodoManager.index
end

post '/todos' do
	id = params[:id].to_f
	TodoManager.show id
end

get '/todos/:id' do
	TodoManager.create "Walk the dog"
end

put '/todos/:id' do
	id = params[:id].to_f
	TodoManager.delete id
end

delete '/todos/:id' do
	id = params[:id].to_f
	TodoManager.update id, "Eat dinner"
end