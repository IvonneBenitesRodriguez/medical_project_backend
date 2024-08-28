module Api
    module V1
      class SpecialtiesController < ApplicationController
        def index
          @specialties = Specialty.all
          render json: @specialties
        end
      end
    end
  end
  