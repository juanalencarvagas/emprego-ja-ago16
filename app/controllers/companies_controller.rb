class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
  end


  def create
    @company = Company.new(companies_param)
    if @company.save
      redirect_to @company
    else
      flash[:notice] = "Não foi possível criar a empresa"
      render 'new'
    end

  end

  private
  def companies_param
    params.require(:company).permit(:name,:location,:mail,:phone)
  end

  def set_companies
  end

end
