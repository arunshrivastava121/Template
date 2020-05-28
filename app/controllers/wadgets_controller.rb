class WadgetsController < ApplicationController
  before_action :set_wadget, only: [:show, :edit, :update, :destroy]

  # GET /wadgets
  # GET /wadgets.json
  def index
    @wadgets = Wadget.all
    WebNotificationsChannel.broadcast_to('web_notifications_channel', title: 'New things!', body: 'All the news fit to print')
  end

  # GET /wadgets/1
  # GET /wadgets/1.json
  def show
  end

  # GET /wadgets/new
  def new
    @wadget = Wadget.new
  end

  # GET /wadgets/1/edit
  def edit
  end

  # POST /wadgets
  # POST /wadgets.json
  def create
    @wadget = Wadget.new(wadget_params)

    respond_to do |format|
      if @wadget.save
        format.html { redirect_to @wadget, notice: 'Wadget was successfully created.' }
        format.json { render :show, status: :created, location: @wadget }
      else
        format.html { render :new }
        format.json { render json: @wadget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wadgets/1
  # PATCH/PUT /wadgets/1.json
  def update
    respond_to do |format|
      if @wadget.update(wadget_params)
        format.html { redirect_to @wadget, notice: 'Wadget was successfully updated.' }
        format.json { render :show, status: :ok, location: @wadget }
      else
        format.html { render :edit }
        format.json { render json: @wadget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wadgets/1
  # DELETE /wadgets/1.json
  def destroy
    @wadget.destroy
    respond_to do |format|
      format.html { redirect_to wadgets_url, notice: 'Wadget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wadget
      @wadget = Wadget.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wadget_params
      params.require(:wadget).permit(:name)
    end
end
