class PeoplesController < ApplicationController
  def Index
    @peoples = Person.all
  end

  def New
    @createdPeople = Person.new
  end

  def Create
    @person = Person.new(person_params)
    if @person.save
      redirect_to :action => "Index"
    else
      redirect_to :action => "New"
    end
  end

  def Edit
    @editedPerson = Person.find(params.require(:people_id))
  end

  def Update
    @person = Person.find_by(params.require(:person).permit(:id))
    if @person.update(person_params)
      redirect_to :action => "Index"
    else
      redirect_to :action => "New"
    end
  end

  def Delete
    @deletedPerson = Person.find(params.require(:people_id))
    @deletedPerson.destroy

    redirect_to :action => "Index"
  end

  def Show
    @showingPerson = Person.find(params.require(:people_id))
  end


  def person_params
    params.require(:person).permit(:name, :room, :internal_phone)
  end
end
