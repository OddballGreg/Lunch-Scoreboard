class LunchesController < ApplicationController
  before_action :set_lunch, only: [:show, :edit, :update, :destroy]

  def index
    @lunches = Lunch.all
  end

  def show
  end

  def new
    @lunch = Lunch.new
  end

  def edit
  end

  def create
    @lunch = Lunch.new(lunch_params.merge(user: current_user))

    respond_to do |format|
      if @lunch.save
        format.html { redirect_to @lunch, notice: 'Lunch was successfully created.' }
        format.json { render :show, status: :created, location: @lunch }
      else
        format.html { render :new }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @lunch.update(lunch_params)
        format.html { redirect_to @lunch, notice: 'Lunch was successfully updated.' }
        format.json { render :show, status: :ok, location: @lunch }
      else
        format.html { render :edit }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lunch.destroy
    respond_to do |format|
      format.html { redirect_to lunches_url, notice: 'Lunch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_lunch
      @lunch = Lunch.find(params[:id])
    end

    def lunch_params
      params.require(:lunch).permit(:name, :cost_rands, :cost_cents, :enjoyment, :prep_time_minutes)
    end
end
