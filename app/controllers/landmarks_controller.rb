class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post 'landmarks' do
    @landmark = Landmark.new(name: params[:landmark][:name])
  end

end
