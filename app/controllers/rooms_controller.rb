class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find(params[:id])
  end

  def search
    if params[:search].present?
      @rooms = Room.where("name LIKE ?", "%#{params[:search]}%")
    else
      @rooms = Room.all
    end
  end


  def create
    @room = Room.new(params.require(:room).permit(:room_name, :room_introduction, :room_fee, :room_address))
    if @room.save
      redirect_to :root
    else
      render :new
    end
  end
end
