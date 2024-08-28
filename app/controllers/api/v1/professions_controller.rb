module Api
    module V1
      class ProfessionsController < ApplicationController
        def index
          @professions = Profession.all
          render json: @professions
        end
      end
    end
  end
  