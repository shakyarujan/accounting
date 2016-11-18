class CalculationsController < ApplicationController
    def index
    @accounts = Calculation.all
    end
    
    def new
        @calculation = Calculation.new
    end
    def create
        @account = Calculation.create(idea_params)
        if @account.valid?
            # Implement later
               flash[:success] = "Your record has been posted!"
        else
            # Implement later
             flash[:alert] = "Woops! looks like there has beeen an error!"
        end
        redirect_to root_path
     end
    def edit
        @account = Calculation.find(params[:id])
    end
    def update
        @account = Calculation.find(params[:id])
     if @account.update(idea_params)
          flash[:success] = "Your record has been edited!"
        redirect_to root_path
     else
         flash[:alert] = "Woops! Looks like there has been an error!"

        redirect_to edit_idea_path(params[:id])
     end
    end
    def destroy
         @account = Calculation.find(params[:id])
        @account.destroy
        flash[:success] = "The idea was successfully deleted!"
        redirect_to root_path
    end
  private

  def idea_params
    params.require(:calculation).permit(:datetime, :title, :amount)
  end

  
end
