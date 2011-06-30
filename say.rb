require 'sinatra'

get '/' do
  @phrase = "Hello, World!"
  erb :form
end

get '/say/:words' do
  words = params[:words].gsub(/[^\w\s]/,'')
  puts "gotcha. i'll \"say #{words}\""
  system("say #{words}")
end
