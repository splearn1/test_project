# frozen_string_literal: true

class UserBlueprint < Blueprinter::Base
    identifier :id


    # associations :pets, blueprint: PetBlueprint, view: :normal do |user|
    #     user.pets.all
    # end

    view :normal do
        fields :first_name, :last_name, :email, :username

        association :pets, blueprint: PetBlueprint, view: :normal 
    end

end
