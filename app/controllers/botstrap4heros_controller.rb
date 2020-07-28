class Botstrap4herosController < ApplicationController
  before_action :set_botstrap4hero, only: [:show, :edit, :update, :destroy]

  # GET /botstrap4heros
  # GET /botstrap4heros.json
  def index
    @botstrap4heros = Botstrap4hero.all
  end

  # GET /botstrap4heros/1
  # GET /botstrap4heros/1.json
  def show
  end

  # GET /botstrap4heros/new
  def new
    @botstrap4hero = Botstrap4hero.new
  end

  # GET /botstrap4heros/1/edit
  def edit
  end

  # POST /botstrap4heros
  # POST /botstrap4heros.json
  def create
    @botstrap4hero = Botstrap4hero.new(botstrap4hero_params)

    respond_to do |format|
      if @botstrap4hero.save
        format.html { redirect_to @botstrap4hero, notice: 'Botstrap4hero was successfully created.' }
        format.json { render :show, status: :created, location: @botstrap4hero }
      else
        format.html { render :new }
        format.json { render json: @botstrap4hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /botstrap4heros/1
  # PATCH/PUT /botstrap4heros/1.json
  def update
    respond_to do |format|
      if @botstrap4hero.update(botstrap4hero_params)
        format.html { redirect_to @botstrap4hero, notice: 'Botstrap4hero was successfully updated.' }
        format.json { render :show, status: :ok, location: @botstrap4hero }
      else
        format.html { render :edit }
        format.json { render json: @botstrap4hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /botstrap4heros/1
  # DELETE /botstrap4heros/1.json
  def destroy
    @botstrap4hero.destroy
    respond_to do |format|
      format.html { redirect_to botstrap4heros_url, notice: 'Botstrap4hero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_botstrap4hero
      @botstrap4hero = Botstrap4hero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def botstrap4hero_params
      params.require(:botstrap4hero).permit(:title, :context)
    end
end
