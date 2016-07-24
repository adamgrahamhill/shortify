class WebsitesController < ApplicationController
  before_action :set_website, only: [:destroy]
  def index
    @websites = Website.all
  end
  def new
    @website = Website.new
  end
  def create
    p params
    @website = Website.new(website_params)
    @website.save
    redirect_to websites_path
  end
  def destroy
    @website.destroy
    redirect_to websites_path
  end
  def external_link
    @external_link = Website.find_by(id: params[:seg])
    if @external_link
      redirect_to "#{@external_link.url}"
    else
      redirect_to root_path
    end
  end

  private
  def set_website
    @website = Website.find(params[:id])
  end
  def website_params
    params.require(:website).permit(:url)
  end
end
