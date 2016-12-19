class ReadsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @top_reads = Read.top_ten_reads
  end


  def create
    @read = Read.create(url: params[:url])
  end
end
