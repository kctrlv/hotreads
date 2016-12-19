class ReadsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @reads = Read.all
  end


  def create
    @read = Read.create(url: params[:url])
  end
end
