class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :"figures/index"
  end

  get '/figures/new' do
    @figure = Figure.new
    @titles = Title.all
    @landmarks = Landmark.all
    erb :"figures/new"
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :"figures/show"
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    @titles = Title.all
    @landmarks = Landmark.all
    erb :"figures/edit"
  end

  post '/figures' do
    figure = Figure.create(params[:figure])

    if !params[:new_title][:name].empty?
      figure.titles << Title.create(params[:new_title])
    end

    if !params[:new_landmark][:name].empty?
      figure.landmarks << Landmark.create(params[:new_landmark])
    end

    redirect "/figures/#{figure.id}"
  end

  patch '/figures/:id' do
    figure = Figure.find(params[:id])
    figure.update(params[:figure])

    if !params[:new_title][:name].empty?
      figure.titles << Title.create(params[:new_title])
    end

    if !params[:new_landmark][:name].empty?
      figure.landmarks << Landmark.create(params[:new_landmark])
    end

    redirect :"figures/#{figure.id}"
  end

  delete '/figures/:id' do
    figure = Figure.find(params[:id])
    figure.destroy
    redirect :"figures"
  end
end
