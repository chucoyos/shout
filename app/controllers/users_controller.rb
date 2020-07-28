class UsersController < Clearance::UsersController

    def create
        @user = User.new(users_params)
        if @user.save
            redirect_to '/'
        end
    end
    private

    def users_params
        params.require(:user).permit(:username, :email, :password)
    end

end
