class LandmarksController < ApplicationController

  get "/landmarks" do
    @landmarks = Landmark.all
    erb :"/landmark/index"
  end

  get "/landmarks/new" do
    @figures = Figure.all
    erb :"/landmark/new"
  end

  get "/landmarks/:id" do
    @landmark = Landmark.find(params[:id])
    erb :"/landmark/show"
  end

  post "/landmarks" do
    landmark = Landmark.create(params[:landmark])
    redirect "/landmarks/"
  end

  get "/landmarks/:id/edit" do
    @landmark = Landmark.find(params[:id])
    @figures = Figure.all
    erb :"/landmarks/edit"
  end

  patch "/landmarks/:id" do
    landmark = Landmark.find(params[:id])
    landmark.update(params[:landmark])
    redirect "/landmarks/#{landmark.id}"
  end

  delete "/landmarks/:id" do
    landmark = Landmark.find(params[:id])
    landmark.destroy
    redirect "/landmarks"
  end



end
