class ApplicationController < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  register Sinatra::Twitter::Bootstrap::Assets

  get '/' do

  end

  get '/figures' do

  end

  get '/figures/new' do

  end

  get '/figures/:id' do

  end

  get '/figures/:id/edit' do

  end

  post '/figures' do

  end

  patch '/figures/:id' do

  end

  delete '/figures' do

  end
end
