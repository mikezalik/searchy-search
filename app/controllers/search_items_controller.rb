class SearchItemsController < ApplicationController
  before_action :set_search_item, only: [:show, :edit, :update, :destroy]

  # GET /search_items
  # GET /search_items.json
  def index
    @search_items = SearchItem.all
  end

  # GET /search_items/1
  # GET /search_items/1.json
  def show
  end

  # GET /search_items/new
  def new
    @search_item = SearchItem.new
  end

  # GET /search_items/1/edit
  def edit
  end

  # POST /search_items
  # POST /search_items.json
  def create
    @search_item = SearchItem.new(search_item_params)

    respond_to do |format|
      if @search_item.save
        format.html { redirect_to @search_item, notice: 'Search item was successfully created.' }
        format.json { render :show, status: :created, location: @search_item }
      else
        format.html { render :new }
        format.json { render json: @search_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_items/1
  # PATCH/PUT /search_items/1.json
  def update
    respond_to do |format|
      if @search_item.update(search_item_params)
        format.html { redirect_to @search_item, notice: 'Search item was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_item }
      else
        format.html { render :edit }
        format.json { render json: @search_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_items/1
  # DELETE /search_items/1.json
  def destroy
    @search_item.destroy
    respond_to do |format|
      format.html { redirect_to search_items_url, notice: 'Search item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_item
      @search_item = SearchItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def search_item_params
      params.require(:search_item).permit(:title, :text, :link, :keywords)
    end
end
