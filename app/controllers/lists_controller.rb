class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update]

  def index
    @lists = List.all
    @movies = Movie.all
  end

  def show; end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
