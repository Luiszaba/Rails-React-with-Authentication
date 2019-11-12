class SessionsController < ApplicationController

    def create
        user = User
        # find user email params
        .find_by(email: params["user"]["email"])
        # run password against rails authentication method
        .try(:authenticate, params["user"]["password"])
    if user
        #store user id cookie
        session[:user_id] = user.id
        render json: {
            status: :created,
            logged_in: true,
            user: user
        }
    else
        # unauthorized code - "GET OUT!"
        render json: { status 401 }
    end
    end
end
