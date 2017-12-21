class ExamplesController < ApplicationController
  def index
    @examples = Example.all
  end

  def upload_file
    @fileparser = FileParser.new(params[:file])
    @fileparser.store
    @examples = Example.all
    render :index
  end
end
