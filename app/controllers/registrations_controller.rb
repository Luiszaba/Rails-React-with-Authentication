class RegistrationsController < ApplicationController

    def create
        # create and check for user error during registration
        user User.create!(email: params["user"]["email"],
        password: params["user"]["password"]),
        password_confirmation: params["user"]["password_confirmation"])
        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user
            }
        else
            # something went wrong.  please try again
            render json: { status: 500 }
        end 
    end
end
