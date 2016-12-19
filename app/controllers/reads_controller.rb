class ReadsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @reads = Read.all
  end


  def create
    @read = Read.find_or_create_by(url: params[:url])
    @read.increment(:hits, 1)
  end
end
