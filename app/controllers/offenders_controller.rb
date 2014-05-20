class OffendersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_offender, only: [:show]

  # GET /offenders
  # GET /offenders.json
  def index
    @search = Offender.search(params[:q])
    @offenders= @search.result.page(params[:page]).per(5)
    @search.build_condition
  end

  def search_home
    @search = Offender.search(params[:q])
    @offenders= @search.result
    @search.build_condition
  end

  # GET /offenders/1
  # GET /offenders/1.json
  # GET /offenders/new

  def show
  end
  # GET /offenders/1/edit


  # POST /offenders
  # POST /offenders.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offender
      @offender = Offender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offender_params
      params.require(:offender).permit(:name, :gender, :age, :address, :mobile_no, :occupation, :religion, :educational_background, :crimes, :father_name, :mother_name, :father_occupation, :mother_occupation, :family_income, :psychological_status, :image)
    end
end
