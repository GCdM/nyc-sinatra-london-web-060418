class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :"figures/index"
  end

  get '/figures/new' do
    @figure = Figure.new
    erb :"figures/show"
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :"figures/show"
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    erb :"figures/edit"
  end

  post '/figures' do
    figure = Figure.create(params[:figure])
    redirect "/figures/#{figure.id}"
  end

  patch '/figures/:id' do
    figure = Figure.find(params[:id])
    figure.update(params[:figure])
    redirect :"figures/#{figure.id}"
  end

  delete '/figures/:id' do
    figure = Figure.find(params[:id])
    figure.destroy
    redirect :"figures"
  end
end
