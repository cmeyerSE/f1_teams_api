class DriversController < ApplicationController
    def index
        drivers = Driver.all
        render json: DriverSerializer.new(drivers)
    end

    def create
        driver = Driver.new(driver_params)
        if driver.save
            render json: DriverSerializer.new(driver)
        else
            render json: {error: "Could not save driver!"}
    end

    def destroy
        driver = Driver.find_by_id(params[:id])
        driver.destroy 
        render json: {message: "Successfully deleted #{driver.name}"}
    end

    private

    def driver_params
        params.require(:driver).permit(:name, :description, :skill, :team_id)
    end
end
