class Api::V1::UsersController < ApplicationController
def create
    @user = User.new(user_params)

# guardamos el usuario en la base de datos
    if @user.save
        render json: { message: "Your registration was successfully", user: @user }, status: :created
    else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end 
end

private

def user_params
    params.require(:user).permit(:name, :email, :city, profession_ids: [], specialty_ids: [])
end
end
