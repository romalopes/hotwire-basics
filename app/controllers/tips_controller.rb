class TipsController < ApplicationController
  before_action :set_tip, only: %i[ show edit update destroy ]

  # GET /tips or /tips.json
  def index
    @tips = Tip.all
  end

  # GET /tips/1 or /tips/1.json
  def show
  end

  # GET /tips/new
  def new
    @tip = Tip.new
  end

  # GET /tips/1/edit
  def edit
  end

  # POST /tips or /tips.json
  def create
    @tip = Tip.new(tip_params)

    respond_to do |format|
      if @tip.save
        format.turbo_stream
        # format.html { redirect_to @tip, notice: "Tip was successfully created." }
        # format.json { render :show, status: :created, location: @tip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tips/1 or /tips/1.json
  def update
    respond_to do |format|
      if @tip.update(tip_params)
        format.html { redirect_to @tip, notice: "Tip was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @tip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tips/1 or /tips/1.json
  def destroy
    @tip.destroy!

    respond_to do |format|
      format.html { redirect_to tips_path, notice: "Tip was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip
      @tip = Tip.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tip_params
      params.expect(tip: [ :title ])
    end
end
