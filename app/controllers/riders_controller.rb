class RidersController < ApplicationController
    def index
        @riders = Rider.all
         if params[:search]
           @riders = Rider.search(params[:search])
         end
    end
  
  def show
    @rider = Rider.find(params[:id])
  end
    
    def new
        @rider = Rider.new
    end
    
    def edit
        @rider = Rider.find(params[:id])
    end
      
    def create
        @rider = Rider.new(rider_params)
        if @rider.save
        redirect_to @rider
        
        end
    end
   
    def update
        @rider = Rider.find(params[:id])
        if @rider.update(rider_params)
        redirect_to @rider
        else
        render 'edit'
        end
    end
    def destroy
     @rider = Rider.find(params[:id])
     @rider.destroy
     redirect_to riders_path
    end

 private
  def rider_params
    params.require(:rider).permit(:name, :age, :druzyna, :photo)
  end



end
