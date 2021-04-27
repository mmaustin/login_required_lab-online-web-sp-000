class SessionsController < ApplicationController
    before_action :require_name
    skip_before_action :require_name, only: [:new, :destroy]

    def new
    end

    def create
        session[:name] = params[:name]
        redirect_to '/show'
    end

    def destroy
        session.delete :name
    end

    private

    def require_name
        if !params[:name] || params[:name].empty?
            redirect_to new_session_path
        end
    end

end