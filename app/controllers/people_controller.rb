class PeopleController < ApplicationController
  def index
    @people = Person.all

    @flag = Role::EMPLOYEE | Role::ADMIN

    @role1 = (@flag & Role::EMPLOYEE) == Role::EMPLOYEE
    @role2 = (@flag & Role::ADMIN) == Role::ADMIN
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    @person.role = Role::EMPLOYEE

    if @person.save
      redirect_to people_path
    else
      render "new"
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to people_path
    else
      render "new"
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path
  end

  def show
    @person = Person.find(params[:id])
  end


  def person_params
    params.require(:person).permit(:name, :room, :internal_phone)
  end
end