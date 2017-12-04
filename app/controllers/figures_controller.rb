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

    @figure = Figure.create(params["figure"])
    binding.pry
    if !params[:landmark][:name].empty?
      @figure.landmarks << Landmark.create(name: params[:landmark])
    end

    if !params[:title][:name].empty?
      @figure.titles << Title.create(name: params[:title])

    end
    @figure.save
    redirect to '/figures'
  end
end
