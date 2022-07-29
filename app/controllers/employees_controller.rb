class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
      @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end


    def create
        @employee = Employee.new(employee_params)
        # respond_to do |format|
        #   if @employee.save
        #     format.html { redirect_to employee_url(@employee), notice: "employee was successfully created." }
        #     format.json { render :show, status: :created, location: @employee }
        #   else
        #     format.html { render :new, status: :unprocessable_entity }
        #     format.json { render json: @employee.errors, status: :unprocessable_entity }
        #   end
        # end
        if @employee.save
            redirect_to @employee
          else
            render :new
          end
        # redirect_to :action => @employee
    end

    private
        def set_employee
        @employee = Employee.find(params[:id])
      end

      def employee_params
        params.require(:employee).permit(:name, :age)
      end
end
