class LandmarksController < ApplicationController

  get "/landmarks" do
    @landmarks = Landmark.all
    erb :"landmark/index"
  end

  get "/landmarks/new" do
    @figures = Figure.all
    erb :"landmark/new"
  end

  get "/landmarks/:id" do
    erb :"landmark/show"
  end

  post "/landmarks" do

  end

  get "/landmarks/:id/edit" do
    erb :"landmark/edit"
  end

  patch "/landmarks/:id" do

  end

  delete "/landmarks/:id" do
    landmark = Landmark.find(params[:id])
    landmark.destroy
    redirect "/landmarks"
  end



end
