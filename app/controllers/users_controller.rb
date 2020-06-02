class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(username: params[:username])
        render json: user
    end

    def create
        user = User.create(username: params[:username])
        if user.valid?
            render json: user
        else
            return "Creation failed - username is taken"
        end
    end
end
