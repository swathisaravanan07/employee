class EmployeeDetailsController < ApplicationController
  before_action :set_employee_detail, only: %i[ show edit update destroy ]

  # GET /employee_details or /employee_details.json
  def index
    @employee_details = EmployeeDetail.all
  end

  # GET /employee_details/1 or /employee_details/1.json
  def show
  end

  # GET /employee_details/new
  def new
    @employee_detail = EmployeeDetail.new
  end

  # GET /employee_details/1/edit
  def edit
  end

  # POST /employee_details or /employee_details.json
  def create
    @employee_detail = EmployeeDetail.new(employee_detail_params)

    respond_to do |format|
      if @employee_detail.save
        format.html { redirect_to employee_detail_url(@employee_detail), notice: "Employee detail was successfully created." }
        format.json { render :show, status: :created, location: @employee_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_details/1 or /employee_details/1.json
  def update
    respond_to do |format|
      if @employee_detail.update(employee_detail_params)
        format.html { redirect_to employee_detail_url(@employee_detail), notice: "Employee detail was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_details/1 or /employee_details/1.json
  def destroy
    @employee_detail.destroy

    respond_to do |format|
      format.html { redirect_to employee_details_url, notice: "Employee detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_detail
      @employee_detail = EmployeeDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_detail_params
      params.require(:employee_detail).permit(:name, :age, :gender, :designation)
    end
end
