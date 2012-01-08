require 'rubygems'
require 'sinatra'

get '/' do
  @phrase = "Hello, World!"
  erb :form
end

get '/say/:words' do
  words = params[:words].gsub(/[^\w\s]/,'')
  system("say #{words}")
  "gotcha. i'll \"say #{words}\""
end
