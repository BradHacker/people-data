class PeopleController < ApplicationController
    def index
        @people = Person.order('first_name')
    end
    
    def new
        @person = Person.new
    end
    
    def create
        @person = Person.new person_params
        if @person.save
            redirect_to people_path
        else
            render :new
        end
    end
    
    def edit
        @person = Person.find_by id: params[:id]
    end
    
    def update
        @person = Person.find_by id: params[:id]
        @person.update_attributes person_params
        redirect_to people_url
    end
    
    def show
        @person = Person.find_by id: params[:id]
    end
    
private
    
    def person_params
        params[:person].permit(:first_name,:last_name,:nickname,:picture,:description,:gender)
    end
end