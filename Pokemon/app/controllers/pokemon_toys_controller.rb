class PokemonToysController < ApplicationController
  before_action :set_pokemon_toy, only: [:show, :edit, :update, :destroy]

  # GET /pokemon_toys
  # GET /pokemon_toys.json
  def index
    @pokemon_toys = PokemonToy.all
  end

  # GET /pokemon_toys/1
  # GET /pokemon_toys/1.json
  def show
  end

  # GET /pokemon_toys/new
  def new
    @pokemon_toy = PokemonToy.new
  end

  # GET /pokemon_toys/1/edit
  def edit
  end

  # POST /pokemon_toys
  # POST /pokemon_toys.json
  def create
    @pokemon_toy = PokemonToy.new(pokemon_toy_params)

    respond_to do |format|
      if @pokemon_toy.save
        format.html { redirect_to @pokemon_toy, notice: 'Pokemon toy was successfully created.' }
        format.json { render :show, status: :created, location: @pokemon_toy }
      else
        format.html { render :new }
        format.json { render json: @pokemon_toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemon_toys/1
  # PATCH/PUT /pokemon_toys/1.json
  def update
    respond_to do |format|
      if @pokemon_toy.update(pokemon_toy_params)
        format.html { redirect_to @pokemon_toy, notice: 'Pokemon toy was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokemon_toy }
      else
        format.html { render :edit }
        format.json { render json: @pokemon_toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemon_toys/1
  # DELETE /pokemon_toys/1.json
  def destroy
    @pokemon_toy.destroy
    respond_to do |format|
      format.html { redirect_to pokemon_toys_url, notice: 'Pokemon toy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon_toy
      @pokemon_toy = PokemonToy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_toy_params
      params.require(:pokemon_toy).permit(:name, :content)
    end
end
