class SecretsController < ApplicationController
    before_action :session_name

    def show
    end

    private
    
    def session_name
        redirect_to new_session_path unless session.include? :name
    end

end