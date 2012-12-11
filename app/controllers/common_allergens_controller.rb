class CommonAllergensController < ApplicationController
  # GET /common_allergens
  # GET /common_allergens.json
  def index
    @common_allergens = CommonAllergen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @common_allergens }
    end
  end

  # GET /common_allergens/1
  # GET /common_allergens/1.json
  def show
    @common_allergen = CommonAllergen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @common_allergen }
    end
  end

  # GET /common_allergens/new
  # GET /common_allergens/new.json
  def new
    @common_allergen = CommonAllergen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @common_allergen }
    end
  end

  # GET /common_allergens/1/edit
  def edit
    @common_allergen = CommonAllergen.find(params[:id])
  end

  # POST /common_allergens
  # POST /common_allergens.json
  def create
    @common_allergen = CommonAllergen.new(params[:common_allergen])

    respond_to do |format|
      if @common_allergen.save
        format.html { redirect_to @common_allergen, notice: 'Common allergen was successfully created.' }
        format.json { render json: @common_allergen, status: :created, location: @common_allergen }
      else
        format.html { render action: "new" }
        format.json { render json: @common_allergen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /common_allergens/1
  # PUT /common_allergens/1.json
  def update
    @common_allergen = CommonAllergen.find(params[:id])

    respond_to do |format|
      if @common_allergen.update_attributes(params[:common_allergen])
        format.html { redirect_to @common_allergen, notice: 'Common allergen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @common_allergen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /common_allergens/1
  # DELETE /common_allergens/1.json
  def destroy
    @common_allergen = CommonAllergen.find(params[:id])
    @common_allergen.destroy

    respond_to do |format|
      format.html { redirect_to common_allergens_url }
      format.json { head :no_content }
    end
  end
end
