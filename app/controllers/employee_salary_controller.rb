class EmployeeSalaryController < ApplicationController
  def index

    @employee_name = params[:employee_name]
    @monthly_salary = params[:monthly_salary].to_f
    @working_days = params[:working_days].to_f
    @present_days = params[:present_days].to_f

    if @employee_name.present? && @monthly_salary > 0 && @working_days > 0 && @present_days >= 0
      @calculated_salary = (@monthly_salary / @working_days) * @present_days
    else
      @calculated_salary = nil
    end
  end

end
