class SessionsController < ApplicationController
    
    # def login
    #     @error = flash[:error]
    # end
    
    # def handle_login
    #     @user = User.find_by(first_name: params[:first_name])
    
    #     if @user && @user.authenticate(params[:password])
    #       # If the user is found AND their password matches
    #       redirect_to user_path(@user)
    #     else
    #       flash[:error] = "Incorrect username or password"
    #       redirect_to login_path
    #     end
    # end

    def new
        # don't need anything in here, cause we're not setting up a
        # blank model to couple with the form
      end
      
      def create
        # no strong params cause there is no mass assignment
        @user = User.find_by(first_name: params[:first_name])
        if @user && @user.authenticate(params[:password])
          redirect_to @user
        else
          redirect_to login_path
        end
      end

end
