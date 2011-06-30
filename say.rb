require 'sinatra'

get '/' do
  "Hello World!"
end

get '/say/:words' do
  words = params[:words].gsub(/[^\w\s]/,'')
  puts "gotcha. i'll \"say #{words}\""
  system("say #{words}")
end
