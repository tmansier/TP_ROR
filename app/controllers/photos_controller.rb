class PhotosController < ApplicationController

before_action :load_photo , only: [:show,:update,:edit,:destroy]
before_action :load_user

  def load_photo
    @p = Photo.find(params[:id])
  end

  def load_user
    @u = User.find(params[:user_id])
  end

  def photo_params
    params.require(:photo).permit(:filename,:user_id,:name)
  end

  def show
  end

  def index
    @photos = @u.photos
  end

  def new
    @p = Photo.new
  end

  def edit
  end

  def create
    @p = Photo.new(photo_params)
    @p.user = @u
    if @p.save
      redirect_to user_photos_path(@u)
    else
      render "new"
    end
  end

  def update
    @p.update_attributes(photo_params)
    if @p.valid?
      redirect_to user_photos_path(@u)
    else
      render "edit"
    end
  end

  def destroy
      @p.destroy
      redirect_to user_photos_path(@u)
  end









end
