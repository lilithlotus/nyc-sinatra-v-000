class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures' do

    @figure = Figure.new
    @figure.name = params[:figure][:name]
    @figure.title = params[:figure][:title_ids][]
    @figure.save
    redirect to '/figures'
  end
end
