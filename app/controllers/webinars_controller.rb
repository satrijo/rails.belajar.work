class WebinarsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :all, :edit]

  def index
    @webinar = Webinar.order(created_at: :desc).limit(6)
  end

  def show
    @webinar1 = Webinar.all
    @webinar2 = @webinar1.sample(3)

    @webinar = Webinar.friendly.find(params[:id])

    unless @webinar.embed = true
      render 'webinars/video'
    else
      render 'webinars/artikel'
    end
  end

  def new
    @webinar = Webinar.new
  end

  def create
    @thread = Webinar.new(resource_params)
    @thread.user = current_user
    @thread.save
  end

  def edit
    @webinar = Webinar.friendly.find(params[:id])
  end

  def update
    @webinar = Webinar.friendly.find(params[:id])
    @webinar.update(resource_params)
    redirect_to content_all_path
  end

  def destroy
    @webinar = Webinar.friendly.find(params[:id])
    @webinar.destroy
    redirect_to content_all_path
  end

  def all
    @webinar = Webinar.all
    @webinar = @webinar.order(created_at: :desc)
  end

  def upcoming

  end

  def stories

  end



  private

  def resource_params
    params.require(:webinar).permit(:title, :speaker, :about, :date, :image, :embed, :content)
  end

end