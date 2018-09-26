class BloggersController < ApplicationController

  def index
    @bloggers = Blogger.all
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.create(blogger_params)

    if @blogger.errors
      render :new
    else
      redirect_to blogger_path(@blogger)
    end

  end

  def show
    @blogger = Blogger.find(params[:id])
  end


  private
  def blogger_params
    params.require(:blogger).permit(:name, :bio, :age)
  end

end