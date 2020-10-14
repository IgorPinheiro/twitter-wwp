class TwitteersController < ApplicationController
  before_action :set_twitteer, only: [:show, :edit, :update, :destroy]

  # GET /twitteers
  # GET /twitteers.json
  def index
    @twitteers = Twitteer.all.order("created_at DESC")
    @twitteer = Twitteer.new
  end

  # GET /twitteers/1
  # GET /twitteers/1.json
  def show
  end

  # GET /twitteers/new
  def new
    @twitteer = Twitteer.new
  end

  # GET /twitteers/1/edit
  def edit
  end

  # POST /twitteers
  # POST /twitteers.json
  def create
    @twitteer = Twitteer.new(twitteer_params)

    respond_to do |format|
      if @twitteer.save
        format.html { redirect_to @twitteer, notice: 'Twitteer was successfully created.' }
        format.json { render :show, status: :created, location: @twitteer }
      else
        format.html { render :new }
        format.json { render json: @twitteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twitteers/1
  # PATCH/PUT /twitteers/1.json
  def update
    respond_to do |format|
      if @twitteer.update(twitteer_params)
        format.html { redirect_to @twitteer, notice: 'Twitteer was successfully updated.' }
        format.json { render :show, status: :ok, location: @twitteer }
      else
        format.html { render :edit }
        format.json { render json: @twitteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twitteers/1
  # DELETE /twitteers/1.json
  def destroy
    @twitteer.destroy
    respond_to do |format|
      format.html { redirect_to twitteers_url, notice: 'Twitteer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twitteer
      @twitteer = Twitteer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twitteer_params
      params.require(:twitteer).permit(:twitteer)
    end
end
