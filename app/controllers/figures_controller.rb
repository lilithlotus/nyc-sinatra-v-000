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
    @figure = Figure.new(name: params[:figure][:name])
    @figure.title = params[:title][:name]
    @figure.landmark = params[:landmark][:name]
    @figure.save
    redirect to '/figures'
  end
end
