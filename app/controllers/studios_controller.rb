class StudiosController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    
    private
    
    def set_studio
      @studio = Studio.find(params[:id])
    end

    def studio_params
      params.require(:studio).permit(:name)
    end
end
