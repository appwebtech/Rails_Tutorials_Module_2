class FoosController < ApplicationController
  before_action :set_foo, only: [:show, :update, :destroy]

  # GET /foos
  # GET /foos.json
  def index
    @foos = Foo.all
    render json: @foos
  end

  # GET /foos/1
  # GET /foos/1.json
  def show
    render json: @foo
  end

  # POST /foos
  # POST /foos.json
  def create
    @foo = Foo.new(foo_params)

    if @foo.save
      #render json: @foo, status: :created, location: @foo
      render :show, status: :created, location: @foo
    else
      render json: @foo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foos/1
  # PATCH/PUT /foos/1.json
  def update
    @foo = Foo.find(params[:id])
    
    if @foo.update(foo_params)
      head :no_content
    else
      render json: @foo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foos/1
  # DELETE /foos/1.json
  def destroy
    @foo.destroy

    head :no_content
  end

  private

    def set_foo
      @foo = Foo.find(params[:id])
    end

    def foo_params
      params.require(:foo).permit(:name)
    end
end
