class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path    
    else
      render :new
    end
  end

  def destroy
    roomdestroy = Room.find(params[:id])
    roomdestroy.destroy
    redirect_to rooms_path
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    
    if @room.update(room_params)
      redirect_to rooms_path, notice: "Modificado con exito"
    else
      render :edit
    end
    
  end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :price_per_night, :image_url)
    end
end
