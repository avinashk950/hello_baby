class ProtfoilosController < ApplicationController
  before_action :set_protfoilo, only: %i[ show edit update destroy ]

  # GET /protfoilos or /protfoilos.json
  def index
    @protfoilos = Protfoilo.all
  end

  # GET /protfoilos/1 or /protfoilos/1.json
  def show
  end

  # GET /protfoilos/new
  def new
    @protfoilo = Protfoilo.new
  end

  # GET /protfoilos/1/edit
  def edit
  end

  # POST /protfoilos or /protfoilos.json
  def create
    @protfoilo = Protfoilo.new(protfoilo_params)

    respond_to do |format|
      if @protfoilo.save
        format.html { redirect_to protfoilo_url(@protfoilo), notice: "Protfoilo was successfully created." }
        format.json { render :show, status: :created, location: @protfoilo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @protfoilo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /protfoilos/1 or /protfoilos/1.json
  def update
    respond_to do |format|
      if @protfoilo.update(protfoilo_params)
        format.html { redirect_to protfoilo_url(@protfoilo), notice: "Protfoilo was successfully updated." }
        format.json { render :show, status: :ok, location: @protfoilo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @protfoilo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /protfoilos/1 or /protfoilos/1.json
  def destroy
    @protfoilo.destroy

    respond_to do |format|
      format.html { redirect_to protfoilos_url, notice: "Protfoilo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_protfoilo
      @protfoilo = Protfoilo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def protfoilo_params
      params.require(:protfoilo).permit(:social_media, :user_id)
    end
end
