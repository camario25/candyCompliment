class ComplimentsController < ApplicationController
  before_action :set_compliment, only: [:show, :update, :destroy]

  # GET /compliments
  # GET /compliments.json
  def index
    @compliments = Compliment.all
  end

  # GET /compliments/1
  # GET /compliments/1.json
  def show
  end

  # POST /compliments
  # POST /compliments.json
  def create
    @compliment = Compliment.new(compliment_params)

    if @compliment.save
      render :show, status: :created, location: @compliment
    else
      render json: @compliment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /compliments/1
  # PATCH/PUT /compliments/1.json
  def update
    if @compliment.update(compliment_params)
      render :show, status: :ok, location: @compliment
    else
      render json: @compliment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /compliments/1
  # DELETE /compliments/1.json
  def destroy
    @compliment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compliment
      @compliment = Compliment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compliment_params
      params.require(:compliment).permit(:text)
    end
end
